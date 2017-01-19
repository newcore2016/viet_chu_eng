//
//  MenuViewController.swift
//  viet_chu
//
//  Created by Admin on 11/14/16.
//  Copyright © 2016 efode. All rights reserved.
//

import UIKit
import AVFoundation
import Speech

class MenuViewController: UIViewController, SFSpeechRecognizerDelegate {
    
    var alphabetArray = [Alphabet]()
    
    var characterArray = [String]()
    
    var colNo = 9 // default column number
    
    var rowNo = 2 // default row number
    
    var boardGame = UIImageView()
    
    var selectedIndex = 0
    
    var selectedTable: Table!
    
    let synthesizer = AVSpeechSynthesizer()
    
    var closeSound: AVAudioPlayer!
    
    var backBtn: UIButton!
    
    var speakBtn: UIButton!
    
    var label: UILabel!
    private let speechRecognizer = SFSpeechRecognizer(locale: Locale.init(identifier: "en-US"))
    private var recognitionRequest: SFSpeechAudioBufferRecognitionRequest?
    private var recognitionTask: SFSpeechRecognitionTask?
    private let audioEngine = AVAudioEngine()

    override func viewDidLoad() {
        super.viewDidLoad()
        speechRecognizer?.delegate = self
        label = UILabel(frame: CGRect(x: 0, y: 10, width: self.view.frame.width, height: 30))
        label.center = CGPoint(x: self.view.center.x, y: label.center.y)
        label.textAlignment = .center
        self.view.addSubview(label)
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "theme1")!)
        // setup font
        let cfURL = Bundle.main.url(forResource: "PENMP", withExtension: "TTF") as! CFURL
        CTFontManagerRegisterFontsForURL(cfURL, CTFontManagerScope.process, nil)
        let font = UIFont(name: "Penmanship Print", size: 40)!
        
        //load character
        let engTable: String = "abcdefghijklmnopqrstuvwxyz"
        let ENGTable: String = engTable.uppercased()
        let numberTable: String = "0123456789"
        var alphabetTable: String!
        if selectedTable == Table.alphabetLower {
            alphabetTable = engTable
        } else if selectedTable == Table.alphabetUpper {
            alphabetTable = ENGTable
        } else if selectedTable == Table.number {
            alphabetTable = numberTable
        }
        
        for i in 0..<alphabetTable.characters.count {
            let r = alphabetTable.index(alphabetTable.startIndex, offsetBy: i)
            let sub = alphabetTable[r]
            characterArray.append("\(sub)")
        }

        // Do any additional setup after loading the view.
        boardGame.frame = CGRect(x: 50, y: 50, width: UIScreen.main.bounds.width * 0.8 , height: (UIScreen.main.bounds.height * 0.8))
        let charEachRow:CGFloat = 8
        var rowCount:CGFloat = 1
        var colCount:CGFloat = 1
//        let width = (boardGame.frame.width) / charEachRow
        let width = (boardGame.frame.width) / charEachRow
        let height:CGFloat = 80
        
        for i in 0..<characterArray.count {
            
            let alphabetBtn = UIButton()
            
            alphabetBtn.frame = CGRect(x: (colCount - 1) * width, y: height * (rowCount - 1) , width: width, height: height)
            let alphabet = AlphabetUtils.getAlphabet(unicode: characterArray[i])

            alphabetBtn.titleLabel!.font = font
            alphabetBtn.titleLabel?.textAlignment = .center
            alphabetBtn.titleLabel?.frame = alphabetBtn.frame
            let btnImage1 = UIImage(named: "button3")
            let btnImage2 = UIImage(named: "button2")
            alphabetBtn.setBackgroundImage(btnImage1, for: .normal)
            alphabetBtn.setBackgroundImage(btnImage2, for: .selected)
            alphabetBtn.setTitle(characterArray[i], for: .normal)
            alphabetBtn.setTitleColor(UIColor.red, for: .normal)
            let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.btnPressed(_:)))
            alphabetBtn.addGestureRecognizer(tapGesture)
            alphabetBtn.isUserInteractionEnabled = true
            alphabetBtn.tag = i
            alphabetArray.append(alphabet)
            boardGame.addSubview(alphabetBtn)
            colCount += 1
            if colCount > charEachRow {
                rowCount += 1
                colCount = 1
            }
            
        }
        boardGame.center = CGPoint(x: self.view.frame.midX, y: boardGame.center.y)
        boardGame.isUserInteractionEnabled = true
        self.view.addSubview(boardGame)
        
        //play button
        let playBtn = UIButton(frame: CGRect(x: UIScreen.main.bounds.width - 80, y: UIScreen.main.bounds.height * 0.03 , width: 80, height: 50))
        playBtn.setImage(UIImage(named: "penButton2"), for: .normal)
        playBtn.addTarget(self, action: #selector(self.playBtnPressed), for: .touchUpInside)
        self.view.addSubview(playBtn)
        
        //back button
        backBtn = UIButton(frame: CGRect(x: UIScreen.main.bounds.width - 80, y: UIScreen.main.bounds.height * 0.85 , width: 80, height: 30))
        backBtn.addTarget(self, action: #selector(self.backBtnPressed), for: .touchUpInside)
        backBtn.setImage(UIImage(named: "close1"), for: .normal)
        
        // speak button
        if selectedTable != Table.number {
            SFSpeechRecognizer.requestAuthorization { (authStatus) in  //4
                
                var isButtonEnabled = false
                
                switch authStatus {  //5
                case .authorized:
                    isButtonEnabled = true
                    
                case .denied:
                    isButtonEnabled = false
                    print("User denied access to speech recognition")
                    
                case .restricted:
                    isButtonEnabled = false
                    print("Speech recognition restricted on this device")
                    
                case .notDetermined:
                    isButtonEnabled = false
                    print("Speech recognition not yet authorized")
                }
                
                OperationQueue.main.addOperation() {
                    //                self.microphoneButton.isEnabled = isButtonEnabled
                    print(isButtonEnabled)
                }
            }
            speakBtn = UIButton(frame: CGRect(x: self.view.frame.width / 2, y: self.view.frame.height - 70, width: 80, height: 60))
            speakBtn.addTarget(self, action: #selector(self.letSpeak), for: .touchUpInside)
            //        speakBtn.backgroundColor = UIColor.red
            speakBtn.setImage(UIImage(named: "microphone"), for: .normal)
            speakBtn.center = CGPoint(x: self.view.center.x, y: speakBtn.center.y)
            speakBtn.setTitle("Speak", for: .normal)
            self.view.addSubview(speakBtn)

        }
        self.view.addSubview(backBtn)
    }
    
    func btnPressed(_ sender: UITapGestureRecognizer) {
        
        for subView in boardGame.subviews {
            let tmpButton = subView as! UIButton
            tmpButton.isSelected = false
        }
        
        let button  = sender.view as! UIButton
        button.isSelected = true
        selectedIndex = button.tag
        
        UIView.animate(withDuration: 0.3, animations: {
            button.transform = button.transform.rotated(by: 0.5)
        }, completion: {
            (value: Bool) in
            UIView.animate(withDuration: 0.3, animations: {
                button.transform = button.transform.rotated(by: -1)
            }, completion: {
            (value: Bool) in
                UIView.animate(withDuration: 0.3, animations: {
                    button.transform = button.transform.rotated(by: 0.5)
                })
            })
        })
        
        // talk
        let utterance = AVSpeechUtterance(string: (button.titleLabel?.text)!.lowercased())
        utterance.voice = AVSpeechSynthesisVoice(language: "vi-VN")
        utterance.rate = 0.5
        synthesizer.stopSpeaking(at: .immediate)
        synthesizer.speak(utterance)
    }
    
    func playBtnPressed() {
        performSegue(withIdentifier: "DrawSegue", sender: self)
    }
    
    func speechRecognizer(_ speechRecognizer: SFSpeechRecognizer, availabilityDidChange available: Bool) {
        if available {
            speakBtn.isEnabled = true
        } else {
            speakBtn.isEnabled = false
        }
    }
    
    func startRecording() {
        
        if recognitionTask != nil {
            recognitionTask?.cancel()
            recognitionTask = nil
        }
        
        let audioSession = AVAudioSession.sharedInstance()
        do {
            try audioSession.setCategory(AVAudioSessionCategoryPlayAndRecord, with: .defaultToSpeaker)
            try audioSession.setMode(AVAudioSessionModeMeasurement)
            try audioSession.setActive(true, with: .notifyOthersOnDeactivation)
        } catch {
            print("audioSession properties weren't set because of an error.")
        }
        
        recognitionRequest = SFSpeechAudioBufferRecognitionRequest()
        
        guard let inputNode = audioEngine.inputNode else {
            fatalError("Audio engine has no input node")
        }
        
        guard let recognitionRequest = recognitionRequest else {
            fatalError("Unable to create an SFSpeechAudioBufferRecognitionRequest object")
        }
        
        recognitionRequest.shouldReportPartialResults = true
        
        recognitionTask = speechRecognizer?.recognitionTask(with: recognitionRequest, resultHandler: { (result, error) in
            
            
            var isFinal = false
            if result != nil {
                isFinal = (result?.isFinal)!
                let tmp = result?.bestTranscription.formattedString
                for view in self.boardGame.subviews {
                    let btn = view as! UIButton
                    if tmp?.range(of: (btn.titleLabel?.text?.uppercased())!) != nil {
                        if !btn.isSelected {
                            UIView.animate(withDuration: 0.3, animations: {
                                btn.transform = btn.transform.rotated(by: 0.5)
                            }, completion: {
                                (value: Bool) in
                                UIView.animate(withDuration: 0.3, animations: {
                                    btn.transform = btn.transform.rotated(by: -1)
                                }, completion: {
                                    (value: Bool) in
                                    UIView.animate(withDuration: 0.3, animations: {
                                        btn.transform = btn.transform.rotated(by: 0.5)
                                    })
                                })
                            })
                            btn.isSelected = true
                        }
                        
                    }
                }
                
            }
            
            if error != nil || isFinal {
                self.audioEngine.stop()
                inputNode.removeTap(onBus: 0)
                
                self.recognitionRequest = nil
                self.recognitionTask = nil
                self.label.text = "Stopped"
                self.speakBtn.isEnabled = true
            }
        })
        
        let recordingFormat = inputNode.outputFormat(forBus: 0)
        inputNode.installTap(onBus: 0, bufferSize: 1024, format: recordingFormat) { (buffer, when) in
            self.recognitionRequest?.append(buffer)
        }
        
        
        
        do {
            audioEngine.prepare()
            try audioEngine.start()
        } catch {
            print("audioEngine couldn't start because of an error.")
        }
        
        label.text = "Let's speak, i'm listening :)!"
        
    }
    
    func backBtnPressed() {
        self.playCloseSound()
        self.dismiss(animated: true, completion: self.playCloseSound)
    }
    
    func letSpeak() {
        if audioEngine.isRunning {
            audioEngine.stop()
            recognitionRequest?.endAudio()
            speakBtn.isEnabled = false
            speakBtn.setTitle("Start Recording", for: .normal)
        } else {
            startRecording()
            speakBtn.setTitle("Stop Recording", for: .normal)
        }
    }
    
    // play close sound
    func playCloseSound() {
        let path = Bundle.main.path(forResource: "close", ofType: "wav")!
        let closeUrl = URL(fileURLWithPath: path)
        do {
            closeSound = try AVAudioPlayer(contentsOf: closeUrl)
            closeSound.play()
        } catch ( _ as NSError) {
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ViewController {
            destination.selectedIndex = self.selectedIndex
            destination.alphabetArray = self.alphabetArray
        }
    }
    
}

