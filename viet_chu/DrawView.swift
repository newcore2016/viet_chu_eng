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
    var tmpLines = [Line]()
    var lines = [Line]()
    var lastPoint: CGPoint!
    var colorFlag = false
    var originalPath: CGPath!
    var pointArray = [CGPoint]()
    var pointArrays = [[CGPoint]]()
    var arrows = [UIBezierPath]()
    var isCompleted = false
    let synthesizer = AVSpeechSynthesizer()
    var drawWidth:CGFloat = 20
    var currenColor = UIColor.red
    
    var bellSound: AVAudioPlayer!
    var bellUrl: URL!
    
    var starImage: UIImage!
    
    func setupSound() {
        let path = Bundle.main.path(forResource: "bell", ofType: "wav")!
        bellUrl = URL(fileURLWithPath: path)
        do {
            bellSound = try AVAudioPlayer(contentsOf: bellUrl)
        } catch (let err as NSError) {
            print(err.debugDescription)
        }
        starImage = UIImage(named: "star2")
    }
    
    func setOriginal(_ path: CGPath){
        originalPath = path
    }
    
    var firstPoint: CGPoint!
    
    var tmpPointArrays: [[CGPoint]]!
    var isNewTouch = false
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        isNewTouch = true
        tmpPointArrays = [[CGPoint]]()
//        tmpPointArrays = pointArrays
        
        for pArray in pointArrays {
            tmpPointArrays.append(pArray)
        }
        firstPoint = touches.first?.location(in: self) // TODO
        lastPoint = touches.first?.location(in: self)
        let line = Line(lastPoint, lastPoint!, currenColor.cgColor)
        lines.append(line)
        if pointArrays.count > 0 {
            pointArray = pointArrays[0]
            if pointArray.count > 0 {
                let point = pointArray[0]
                if compareTwoPoint(point, lastPoint!) {
                    self.playBellSound()
                    let starView = UIImageView()
                    starView.center = CGPoint(x: lastPoint.x - 20, y: lastPoint.y - 20)
                    starView.image = starImage
                    self.addSubview(starView)
                    UIView.animate(withDuration: 0.3, animations: {
                        starView.frame.size = CGSize(width: 25, height: 25)
                        starView.center = CGPoint(x: starView.center.x - 20, y: starView.center.y - 20)
                    }, completion: {
                        finished in
                        starView.removeFromSuperview()
                    })
                    pointArray.remove(at: 0)
                    pointArrays[0] = pointArray
                    
                }
            }
            if pointArray.count == 0 {
                pointArrays.remove(at: 0)
                if !arrows.isEmpty {
                    arrows.remove(at: 0)
                }
            }
        }
        self.setNeedsDisplay()
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if (touches.first?.view?.isUserInteractionEnabled)! {
            let newPoint = touches.first?.location(in: self)
            let line = Line(lastPoint, newPoint!, currenColor.cgColor)
            lines.append(line)
            lastPoint = newPoint
            controlPoint: if pointArrays.count > 0 {
                pointArray = pointArrays[0]
                if pointArray.count > 0 {
                    let point = pointArray[0]
                    if compareTwoPoint(point, newPoint!) {
                        self.playBellSound()
                        let starView = UIImageView()
                        starView.center = lastPoint
                        starView.image = starImage
                        self.addSubview(starView)
                        UIView.animate(withDuration: 0.5, animations: {
                            starView.frame.size = CGSize(width: 25, height: 25)
                            starView.center = CGPoint(x: starView.center.x - 30, y: starView.center.y - 30)
                        }, completion: {
                            finished in
                            starView.removeFromSuperview()
                        })
                        pointArray.remove(at: 0)
                        pointArrays[0] = pointArray
                        if pointArray.count == 0 {
                            isNewTouch = false
                            tmpLines = lines
                            pointArrays.remove(at: 0)
                            if !arrows.isEmpty {
                                arrows.remove(at: 0)
                            }
                        }
                        break controlPoint
                    } else {
                        // kiểm tra nét mới trước khi kiểm tra points
                        if isNewTouch {
                            for p in pointArray {
                                if compareTwoPoint(p, newPoint!) {
                                    touches.first?.view?.isUserInteractionEnabled = false
                                    lines = tmpLines
                                    pointArrays = tmpPointArrays!
                                    break controlPoint
                                }
                            }
                        }
                        
                    }
                    
                }
            }
            self.setNeedsDisplay()
        }
    }
    
    var conImage = UIImageView() // congratulation image
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        touches.first?.view?.isUserInteractionEnabled = true
        // if there is no pointArray removed
        if pointArrays.count  == tmpPointArrays.count {
            lines = tmpLines
            pointArrays = tmpPointArrays!
        }
        else {
            tmpLines = lines
            if pointArrays.count == 0{
                isCompleted = true
                self.isUserInteractionEnabled = false
                // talk
                let utterance = AVSpeechUtterance(string: character.lowercased())
                utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
                utterance.rate = 0.3
                synthesizer.stopSpeaking(at: .immediate)
                synthesizer.speak(utterance)
                conImage.center = CGPoint(x: self.frame.width / 2, y: self.frame.height / 2)
                conImage.frame.size = CGSize(width: 5, height: 5)
                conImage.image = UIImage(named: "smile2")
                self.addSubview(conImage)
                self.originalPath = nil
                UIView.animate(withDuration: 0.5, animations: {
                    self.conImage.frame.size = CGSize(width: 100, height: 100)
                }, completion: {
                    finished in
                    DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(1), execute: {
                        self.conImage.removeFromSuperview()
                    })
                })
            }
        }
        self.setNeedsDisplay()
        
    }
    
    func compareTwoPoint(_ point1: CGPoint, _ point2: CGPoint) -> Bool {
        if abs(point1.x - point2.x) < 20 && abs(point1.y - point2.y) < 20 {
            return true
        }
        return false
    }
    
    override func draw(_ rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        context!.beginPath()
        context!.setLineCap(.round)
        if originalPath != nil {
            context!.setLineWidth(3)
            context?.addPath(originalPath)
            context!.strokePath()
        }
        
        context!.setLineWidth(2)
        context!.setStrokeColor(UIColor.purple.cgColor)
        
        let arrow = arrows.first
        if arrow != nil {
            UIColor.purple.setFill()
            arrow?.fill()
            context!.addPath((arrow?.cgPath)!)
            context!.strokePath()
        }
        
        context!.setLineWidth(5)
        context!.setStrokeColor(UIColor.blue.cgColor)
        var points = pointArrays.first
        var fPoint: CGPoint!
        if points != nil && (points?.count)! > 0 {
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
