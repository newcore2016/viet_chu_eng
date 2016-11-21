//
//  ViewController.swift
//  viet_chu
//
//  Created by Tri on 11/9/16.
//  Copyright © 2016 efode. All rights reserved.
//

import UIKit
import CoreText
import AVFoundation

class ViewController: UIViewController {
    
    var leftMenu: UIView! // left menu
    var rightMenu: UIView! // right menu
    let drawView = DrawView() // draw view
    var originalView: UIImageView!
    var alphabetArray = [Alphabet]()
    var selectedIndex = 0
    let synthesizer = AVSpeechSynthesizer()
    var colorArray = [UIColor]()
    var penBtnArray = [UIButton]()
    var closeSound: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        drawView.frame = CGRect(x: self.view.frame.width * 2 / 10, y: 0, width: self.view.frame.width * 6.5 / 10, height: self.view.frame.height)
        self.drawView.backgroundColor = UIColor(patternImage: UIImage(named: "paper")!)
        drawView.setupSound()
        self.createDrawView()
        self.view.addSubview(drawView)
        
        // create left menu layout
        leftMenu = UIView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width * 2 / 10, height: self.view.frame.height))
        leftMenu.backgroundColor = UIColor(patternImage: UIImage(named: "theme2")!)
        // label : Tập viết chữ
//        let label = UILabel(frame: CGRect(x: 0, y: 10, width: leftMenu.frame.width, height: 20))
//        label.textAlignment = .center
//        label.textColor = UIColor.purple
//        label.text = "Writting game"
//        leftMenu.addSubview(label)
        
        // Image chữ cái mẫu
        originalView = UIImageView(frame: CGRect(x: 5, y: 40, width: leftMenu.frame.width - 10, height: leftMenu.frame.width - 10))
        originalView.backgroundColor = UIColor(patternImage: UIImage(named: "paper")!)
        createOriginalView()
        leftMenu.addSubview(originalView)
        
        // Add bảng màu
        let redBtn = UIButton(frame: CGRect(x: 15, y: originalView.frame.maxY + 20, width: leftMenu.frame.width - 10, height: 20))
        redBtn.tag = 0
        colorArray.append(UIColor.red)
        redBtn.setImage(UIImage(named: "redPen"), for: .normal)
        var changeColorGesture = UITapGestureRecognizer(target: self, action: #selector(self.changePenColor(_:)))
        redBtn.addGestureRecognizer(changeColorGesture)
        penBtnArray.append(redBtn)
        leftMenu.addSubview(redBtn)
        
        let yellowBtn = UIButton(frame: CGRect(x: 5, y: redBtn.frame.maxY + 20, width: leftMenu.frame.width - 10, height: 20))
        yellowBtn.tag = 1
        colorArray.append(UIColor.yellow)
        yellowBtn.setImage(UIImage(named: "yellowPen"), for: .normal)
        changeColorGesture = UITapGestureRecognizer(target: self, action: #selector(self.changePenColor(_:)))
        yellowBtn.addGestureRecognizer(changeColorGesture)
        penBtnArray.append(yellowBtn)
        leftMenu.addSubview(yellowBtn)
        
        let orangeBtn = UIButton(frame: CGRect(x: 5, y: yellowBtn.frame.maxY + 20, width: leftMenu.frame.width - 10, height: 20))
        orangeBtn.tag = 2
        colorArray.append(UIColor.orange)
        orangeBtn.setImage(UIImage(named: "orangePen"), for: .normal)
        changeColorGesture = UITapGestureRecognizer(target: self, action: #selector(self.changePenColor(_:)))
        orangeBtn.addGestureRecognizer(changeColorGesture)
        penBtnArray.append(orangeBtn)
        leftMenu.addSubview(orangeBtn)
        
        let greenBtn = UIButton(frame: CGRect(x: 5, y: orangeBtn.frame.maxY + 20, width: leftMenu.frame.width - 10, height: 20))
        greenBtn.tag = 3
        colorArray.append(UIColor.green)
        greenBtn.setImage(UIImage(named: "greenPen"), for: .normal)
        changeColorGesture = UITapGestureRecognizer(target: self, action: #selector(self.changePenColor(_:)))
        greenBtn.addGestureRecognizer(changeColorGesture)
        penBtnArray.append(greenBtn)
        leftMenu.addSubview(greenBtn)
        
        
        // Logo game
//        let logoGame = UILabel(frame: CGRect(x: 0, y: leftMenu.frame.height - 50, width: leftMenu.frame.width, height: 40 ))
//        logoGame.textAlignment = .center
//        logoGame.textColor = UIColor.purple
//        logoGame.text = "Logo game"
//        leftMenu.addSubview(logoGame)
        
        self.view.addSubview(leftMenu)
        
        // create right menu layout
        rightMenu = UIView(frame: CGRect(x: self.view.frame.width * 8.5 / 10, y: 0, width: self.view.frame.width * 1.5 / 10, height: self.view.frame.height))
        rightMenu.backgroundColor = UIColor(patternImage: UIImage(named: "theme2")!)
        // button Viết lại
        let resetBtn = UIButton(frame: CGRect(x: 5, y: 10, width: rightMenu.frame.width - 10, height: 40 ))
//        resetBtn.setTitle("Reset", for: .normal)
//        resetBtn.backgroundColor = UIColor.red
        resetBtn.setImage(UIImage(named: "replay1"), for: .normal)
        resetBtn.addTarget(self, action: #selector(self.createDrawView) , for: .touchUpInside)
        rightMenu.addSubview(resetBtn)
        
        // button Chữ kế tiếp
        let nextBtn = UIButton(frame: CGRect(x: 5, y: 10 + resetBtn.frame.maxY, width: rightMenu.frame.width - 10, height: 40 ))
//        nextBtn.setTitle("Next", for: .normal)
//        nextBtn.backgroundColor = UIColor.red
        nextBtn.setImage(UIImage(named: "next1"), for: .normal)
        nextBtn.addTarget(self, action: #selector(self.nextBtnPressed) , for: .touchUpInside)
        rightMenu.addSubview(nextBtn)
        
        // button Chữ liền trước
        let prevBtn = UIButton(frame: CGRect(x: 5, y: 10 + nextBtn.frame.maxY, width: rightMenu.frame.width - 10, height: 40 ))
//        prevBtn.setTitle("Previous", for: .normal)
//        prevBtn.backgroundColor = UIColor.red
        prevBtn.setImage(UIImage(named: "previous1"), for: .normal)
        prevBtn.addTarget(self, action: #selector(self.prevBtnPressed) , for: .touchUpInside)
        rightMenu.addSubview(prevBtn)
        
        // button Phát âm
        let talkBtn = UIButton(frame: CGRect(x: 5, y: 40 + prevBtn.frame.maxY, width: rightMenu.frame.width - 10, height: 40 ))
//        talkBtn.setTitle("Listen", for: .normal)
//        talkBtn.backgroundColor = UIColor.red
        talkBtn.setImage(UIImage(named: "speaker1"), for: .normal)
        talkBtn.addTarget(self, action: #selector(self.talkBtnPressed) , for: .touchUpInside)
        rightMenu.addSubview(talkBtn)
        
        // button Quay lại
        let backBtn = UIButton(frame: CGRect(x: 5, y: rightMenu.frame.height - 50 , width: rightMenu.frame.width - 10, height: 40 ))
//        backBtn.setTitle("Back", for: .normal)
        backBtn.setImage(UIImage(named: "close1"), for: .normal)
        backBtn.addTarget(self, action: #selector(self.backBtnPressed) , for: .touchUpInside)
        rightMenu.addSubview(backBtn)
        self.view.addSubview(rightMenu)
    }
    
    func nextBtnPressed() {
        if selectedIndex < alphabetArray.count - 1 {
            selectedIndex += 1
        }
        createDrawView()
        createOriginalView()
    }
    
    func prevBtnPressed() {
        if selectedIndex > 0 {
            selectedIndex -= 1
        }
        createDrawView()
        createOriginalView()
    }
    
    func talkBtnPressed() {
        // talk
        let utterance = AVSpeechUtterance(string: alphabetArray[selectedIndex].unicode)
        utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
        utterance.rate = 0.3
        synthesizer.stopSpeaking(at: .immediate)
        synthesizer.speak(utterance)
        
    }
    
    func backBtnPressed() {
        self.playCloseSound()
        dismiss(animated: true, completion: nil)
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
    
    // create draw view
    func createDrawView() {
        print("create new draw view")
        drawView.isUserInteractionEnabled = true
        drawView.isCompleted = false
        drawView.character = alphabetArray[selectedIndex].unicode
        drawView.lines = [Line]()
        drawView.tmpLines = [Line]()
        let tmpPath = UIBezierPath()
        tmpPath.append(alphabetArray[selectedIndex].path)
        let widthRatio = (drawView.frame.width - 40) / tmpPath.bounds.width
        let heightRatio = (drawView.frame.height - 40) / tmpPath.bounds.height
        var scaleRatio: CGFloat!
        if widthRatio > heightRatio {
            scaleRatio = heightRatio
        } else {
            scaleRatio = widthRatio
        }
        let trans2 = CGAffineTransform(scaleX: scaleRatio, y: scaleRatio)
        drawView.drawWidth = 20 * scaleRatio
        tmpPath.apply(trans2)
        drawView.pointArrays = alphabetArray[selectedIndex].pointArrays
        
        let transX = drawView.frame.width / 2 - tmpPath.bounds.midX
        let transY = drawView.frame.height / 2 - tmpPath.bounds.midY
        let trans = CGAffineTransform(translationX: transX, y: transY)
        tmpPath.apply(trans)
//        // translate points
        var newPointArrays = [[CGPoint]]()
        for points in alphabetArray[selectedIndex].pointArrays {
            var newPoints = [CGPoint]()
            for point in points {
                var point2 = point.applying(trans2)
                point2 = point2.applying(trans)
                newPoints.append(point2)
            }
            newPointArrays.append(newPoints)
        }
        // translate arrows
        var newArrows = [UIBezierPath]()
        for arrow in alphabetArray[selectedIndex].arrows {
            let newArrow = UIBezierPath()
            newArrow.append(arrow)
            newArrow.apply(trans2)
            newArrow.apply(trans)
            newArrows.append(newArrow)
        }
        drawView.arrows = newArrows
        drawView.pointArrays = newPointArrays
        
        drawView.setOriginal(tmpPath.cgPath)
        drawView.setNeedsDisplay()
    }
    
    func createOriginalView() {
        let tmpPath = UIBezierPath()
        tmpPath.append(alphabetArray[selectedIndex].path) // TODO get from an array
        let widthRatio = (originalView.frame.width - 10) / tmpPath.bounds.width
        let heightRatio = (originalView.frame.height - 10) / tmpPath.bounds.height
        var scaleRatio: CGFloat!
        if widthRatio > heightRatio {
            scaleRatio = heightRatio
        } else {
            scaleRatio = widthRatio
        }
        let trans2 = CGAffineTransform(scaleX: scaleRatio, y: scaleRatio)
        tmpPath.apply(trans2)
        let trans1 = CGAffineTransform(translationX: originalView.frame.width / 2 - tmpPath.bounds.midX, y: originalView.frame.height / 2 - tmpPath.bounds.midY)
        tmpPath.apply(trans1)
        originalView.image = ViewController.convertPathsToImage(paths: [tmpPath])
        originalView.contentMode = .topLeft
    }
    
    func changePenColor(_ sender: UITapGestureRecognizer) {
        let button = sender.view as! UIButton
        drawView.currenColor = colorArray[button.tag]
        for btn in penBtnArray {
            btn.frame.origin = CGPoint(x: 5, y: btn.frame.origin.y)
        }
        button.frame.origin = CGPoint(x: 15, y: button.frame.origin.y)
    }
    
    // convert path to image
    class func convertPathsToImage(paths: [UIBezierPath]) -> UIImage
    {
        let imageWidth: CGFloat = 200
        let imageHeight: CGFloat  = 200
        let strokeColor:UIColor = UIColor.red
        
        // Make a graphics context
        UIGraphicsBeginImageContextWithOptions(CGSize(width: imageWidth, height: imageHeight), false, 0.0)
        let context = UIGraphicsGetCurrentContext()
        
        context!.setStrokeColor(strokeColor.cgColor)
        context!.setFillColor(UIColor.red.cgColor)
        
        for path in paths {
            path.stroke()
            path.fill()
        }
        let image = UIGraphicsGetImageFromCurrentImageContext()
        
        UIGraphicsEndImageContext()
        
        return image!
    }
}




