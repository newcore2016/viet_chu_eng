//
//  DrawView.swift
//  viet_chu
//
//  Created by Tri on 11/14/16.
//  Copyright © 2016 efode. All rights reserved.
//

import UIKit
import AVFoundation

class DrawView: UIView {
    var character: String!
    var lines = [Line]()
    var lastPoint: CGPoint!
    var colorFlag = false
    var originalPath: CGPath!
    var drawPath = UIBezierPath()
    var pointArray = [CGPoint]()
    var pointArrays = [[CGPoint]]()
    var arrows = [UIBezierPath]()
    var isCompleted = false
    let synthesizer = AVSpeechSynthesizer()
    var drawWidth:CGFloat = 20
    var currenColor = UIColor.red
    
    var bellSound: AVAudioPlayer!
    var bellUrl: URL!
    
    func setupSound() {
        let path = Bundle.main.path(forResource: "bell", ofType: "wav")!
        bellUrl = URL(fileURLWithPath: path)
        do {
            bellSound = try AVAudioPlayer(contentsOf: bellUrl)
        } catch (let err as NSError) {
            print(err.debugDescription)
        }
    }
    
    func setOriginal(_ path: CGPath){
        originalPath = path
    }
    
    var firstPoint: CGPoint!
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        firstPoint = touches.first?.location(in: self) // TODO
        lastPoint = touches.first?.location(in: self)
        drawPath.move(to: lastPoint)
        drawPath.addLine(to: lastPoint)
        let line = Line(lastPoint, lastPoint!, currenColor.cgColor)
        lines.append(line)
        if pointArrays.count > 0 {
            pointArray = pointArrays[0]
            if pointArray.count > 0 {
                let point = pointArray[0]
                if compareTwoPoint(point, lastPoint!) {
                    print("Removed \(point)")
                    self.playBellSound()
                    pointArray.remove(at: 0)
                    pointArrays[0] = pointArray
                    
                }
            }
            if pointArray.count == 0 {
                print("Remove array")
                pointArrays.remove(at: 0)
                if !arrows.isEmpty {
                    arrows.remove(at: 0)
                }
                
            }
        }
        print(lastPoint)
        self.setNeedsDisplay()
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let newPoint = touches.first?.location(in: self)
        //        if !(newPoint?.equalTo(lastPoint))! {
        //            let line = Line(lastPoint, newPoint!)
        //            drawPath.addLine(to: newPoint!)
        //            lines.append(line)
        //            lastPoint = newPoint
        //            self.setNeedsDisplay()
        //        }
        let line = Line(lastPoint, newPoint!, currenColor.cgColor)
        drawPath.addLine(to: newPoint!)
        lines.append(line)
        lastPoint = newPoint
        
        if pointArrays.count > 0 {
            pointArray = pointArrays[0]
            if pointArray.count > 0 {
                let point = pointArray[0]
                if compareTwoPoint(point, newPoint!) {
                    print("Removed \(point)")
                    self.playBellSound()
                    pointArray.remove(at: 0)
                    pointArrays[0] = pointArray
                    
                }
            }
            if pointArray.count == 0 {
                print("Remove array")
                pointArrays.remove(at: 0)
                if !arrows.isEmpty {
                    arrows.remove(at: 0)
                }
                
            }
        }
        self.setNeedsDisplay()
    }
    
    var conLabel = UILabel()
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        if pointArrays.count == 0 {
            isCompleted = true
            // talk
            let utterance = AVSpeechUtterance(string: character)
            utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
            utterance.rate = 0.3
            synthesizer.stopSpeaking(at: .immediate)
            synthesizer.speak(utterance)
            conLabel.frame = CGRect(x: 0, y: 10, width: self.frame.width, height: 20)
            conLabel.textAlignment = .center
            conLabel.textColor = UIColor.blue
            conLabel.text = "Corrected"
            self.addSubview(conLabel)
        }
    }
    
    func compareTwoPoint(_ point1: CGPoint, _ point2: CGPoint) -> Bool {
        if abs(point1.x - point2.x) < 10 && abs(point1.y - point2.y) < 20 {
            print("Passed")
            return true
        }
        return false
    }
    
    override func draw(_ rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        context!.beginPath()
        context!.setLineCap(.round)
        
//        context!.setStrokeColor(UIColor.red.cgColor)
        if originalPath != nil {
            context!.setLineWidth(3)
            context?.addPath(originalPath)
            context!.strokePath()
        }
        
        context!.setLineWidth(2)
        context!.setStrokeColor(UIColor.purple.cgColor)
        
        let arrow = arrows.first
        if arrow != nil {
            //            print(arrow)
            UIColor.purple.setFill()
            arrow?.fill()
            context!.addPath((arrow?.cgPath)!)
            //            let xxPath = UIBezierPath.arrow(from: CGPoint(x: 0, y: 0), to: CGPoint(x: 100, y: 100), tailWidth: 1, headWidth: 10, headLength: 10)
            //            context!.addPath(xxPath.cgPath)
            context!.strokePath()
        }
        
        context!.setLineWidth(5)
        context!.setStrokeColor(UIColor.blue.cgColor)
        var points = pointArrays.first
        var fPoint: CGPoint!
        if points != nil {
            fPoint = points?.remove(at: 0)
            context!.setStrokeColor(UIColor.blue.cgColor)
            for point in points! {
                context!.move(to: point)
                context!.addLine(to: point)
                context!.strokePath()
            }
        }

        context!.setLineWidth(drawWidth)
        for line in lines {
            context!.setStrokeColor(line.color)
            context!.move(to: line.startPoint)
            context!.addLine(to: line.endPoint)
            context!.strokePath()
        }
        
        if fPoint != nil {
            context!.setStrokeColor(UIColor.purple.cgColor)
            context!.setLineWidth(10)
            context!.move(to: fPoint!)
            context!.addLine(to: fPoint!)
            context!.strokePath()
        }
    }
    
    func playBellSound() {
        if bellSound.isPlaying {
            bellSound.stop()
            do {
                bellSound = try AVAudioPlayer(contentsOf: bellUrl)
            } catch (let err as NSError) {
                print(err.debugDescription)
            }
        }
        bellSound.play()
    }
    
}
