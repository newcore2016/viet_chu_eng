//
//  MenuViewController.swift
//  viet_chu
//
//  Created by Admin on 11/14/16.
//  Copyright © 2016 efode. All rights reserved.
//

import UIKit
import AVFoundation

class MenuViewController: UIViewController {
    
    var alphabetArray = [Alphabet]()
    
    var characterArray = [String]()
    
    var colNo = 9 // default column number
    
    var rowNo = 2 // default row number
    
    var boardGame = UIImageView()
    
    var selectedIndex = 0
    
    var selectedTable: Table!
    
    let synthesizer = AVSpeechSynthesizer()
    
    var closeSound: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
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
            let btnImage1 = UIImage(named: "button1")
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
        
        
        //ten game
        let name = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
        name.center = CGPoint(x: 50, y: 30)
        name.textAlignment = .center
        name.text = "Game "
        self.view.addSubview(name)
        
        //logo
        let logo = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
        logo.center = CGPoint(x: 50, y: UIScreen.main.bounds.height - 30)
        logo.textAlignment = .center
        logo.text = "Logo "
        self.view.addSubview(logo)
        
        //play button
        let playBtn = UIButton(frame: CGRect(x: UIScreen.main.bounds.width - 80, y: UIScreen.main.bounds.height * 0.03 , width: 80, height: 50))
//        playBtn.setTitle("Viết chữ", for: .normal)
//        playBtn.backgroundColor = UIColor.purple
        playBtn.setImage(UIImage(named: "penButton"), for: .normal)
        playBtn.addTarget(self, action: #selector(self.playBtnPressed), for: .touchUpInside)
        self.view.addSubview(playBtn)
        
        //back button
        let backBtn = UIButton(frame: CGRect(x: UIScreen.main.bounds.width - 80, y: UIScreen.main.bounds.height * 0.85 , width: 80, height: 30))
//        backBtn.setTitle("Quay lại", for: .normal)
//        backBtn.backgroundColor = UIColor.purple
        backBtn.addTarget(self, action: #selector(self.backBtnPressed), for: .touchUpInside)
        backBtn.setImage(UIImage(named: "close"), for: .normal)
        self.view.addSubview(backBtn)
    }
    
    func btnPressed(_ sender: UITapGestureRecognizer) {
        print("pressed")
        for subView in boardGame.subviews {
            let tmpButton = subView as! UIButton
            tmpButton.isSelected = false
        }
        let button  = sender.view as! UIButton
        button.isSelected = true
        selectedIndex = button.tag
        
        // talk
        let utterance = AVSpeechUtterance(string: (button.titleLabel?.text)!.lowercased())
        utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
        utterance.rate = 0.5
        synthesizer.stopSpeaking(at: .immediate)
        synthesizer.speak(utterance)
    }
    
    func playBtnPressed() {
        performSegue(withIdentifier: "DrawSegue", sender: self)
    }
    
    func backBtnPressed() {
        self.playCloseSound()
        print("close")
        self.dismiss(animated: true, completion: self.playCloseSound)
    }
    
    // play close sound
    func playCloseSound() {
        let path = Bundle.main.path(forResource: "close", ofType: "wav")!
        let closeUrl = URL(fileURLWithPath: path)
        do {
            closeSound = try AVAudioPlayer(contentsOf: closeUrl)
            closeSound.play()
        } catch (let err as NSError) {
            print(err.debugDescription)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ViewController {
            destination.selectedIndex = self.selectedIndex
            destination.alphabetArray = self.alphabetArray
        }
    }
    
}

