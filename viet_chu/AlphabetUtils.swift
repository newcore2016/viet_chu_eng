//
//  Alphabet.swift
//  viet_chu
//
//  Created by Tri on 11/14/16.
//  Copyright © 2016 efode. All rights reserved.
//

import UIKit

import CoreText

class AlphabetUtils {
    
    class func getAlphabet(unicode: String) -> Alphabet {
        let alphabet = Alphabet()
        alphabet.unicode = unicode
        alphabet.path = AlphabetUtils.getCharacter(unicode)
        switch (unicode) {
        case "a" :
            alphabet.pointArrays = AlphabetUtils.getAPoints()
            alphabet.arrows = AlphabetUtils.getAArows()
        case "b":
            alphabet.pointArrays = AlphabetUtils.getBPoints()
            alphabet.arrows = AlphabetUtils.getBArows()
        case "c":
            alphabet.pointArrays = AlphabetUtils.getCPoints()
            alphabet.arrows = AlphabetUtils.getCArows()
        case "d":
            alphabet.pointArrays = AlphabetUtils.getDPoints()
            alphabet.arrows = AlphabetUtils.getDArows()
        case "e":
            alphabet.pointArrays = AlphabetUtils.getEPoints()
            alphabet.arrows = AlphabetUtils.getEArows()
        case "f":
            alphabet.pointArrays = AlphabetUtils.getFPoints()
            alphabet.arrows = AlphabetUtils.getFArows()
        case "g":
            alphabet.pointArrays = AlphabetUtils.getGPoints()
            alphabet.arrows = AlphabetUtils.getGArows()
        case "h":
            alphabet.pointArrays = AlphabetUtils.getHPoints()
            alphabet.arrows = AlphabetUtils.getHArows()
        case "i":
            alphabet.pointArrays = AlphabetUtils.getIPoints()
            alphabet.arrows = AlphabetUtils.getIArows()
        case "j":
            alphabet.pointArrays = AlphabetUtils.getJPoints()
            alphabet.arrows = AlphabetUtils.getJArows()
        case "k":
            alphabet.pointArrays = AlphabetUtils.getKPoints()
            alphabet.arrows = AlphabetUtils.getKArows()
        case "l":
            alphabet.pointArrays = AlphabetUtils.getLPoints()
            alphabet.arrows = AlphabetUtils.getLArows()
        case "m":
            alphabet.pointArrays = AlphabetUtils.getMPoints()
            alphabet.arrows = AlphabetUtils.getMArows()
        case "n":
            alphabet.pointArrays = AlphabetUtils.getNPoints()
            alphabet.arrows = AlphabetUtils.getNArows()
        case "o":
            alphabet.pointArrays = AlphabetUtils.getOPoints()
            alphabet.arrows = AlphabetUtils.getOArows()
        case "p":
            alphabet.pointArrays = AlphabetUtils.getPPoints()
            alphabet.arrows = AlphabetUtils.getPArows()
        case "q":
            alphabet.pointArrays = AlphabetUtils.getQPoints()
            alphabet.arrows = AlphabetUtils.getQArows()
        case "r":
            alphabet.pointArrays = AlphabetUtils.getRPoints()
            alphabet.arrows = AlphabetUtils.getRArows()
        case "s":
            alphabet.pointArrays = AlphabetUtils.getSPoints()
            alphabet.arrows = AlphabetUtils.getSArows()
        case "t":
            alphabet.pointArrays = AlphabetUtils.getTPoints()
            alphabet.arrows = AlphabetUtils.getTArows()
        case "u":
            alphabet.pointArrays = AlphabetUtils.getUPoints()
            alphabet.arrows = AlphabetUtils.getUArows()
        case "v":
            alphabet.pointArrays = AlphabetUtils.getVPoints()
            alphabet.arrows = AlphabetUtils.getVArows()
        case "w":
            alphabet.pointArrays = AlphabetUtils.getWPoints()
            alphabet.arrows = AlphabetUtils.getWArows()
        case "x":
            alphabet.pointArrays = AlphabetUtils.getXPoints()
            alphabet.arrows = AlphabetUtils.getXArows()
        case "y":
            alphabet.pointArrays = AlphabetUtils.getYPoints()
            alphabet.arrows = AlphabetUtils.getYArows()
        case "z":
            alphabet.pointArrays = AlphabetUtils.getZPoints()
            alphabet.arrows = AlphabetUtils.getZArows()
        case "A" :
            alphabet.pointArrays = AlphabetUtils.getA1Points()
            alphabet.arrows = AlphabetUtils.getA1Arows()
        case "B":
            alphabet.pointArrays = AlphabetUtils.getB1Points()
            alphabet.arrows = AlphabetUtils.getB1Arows()
        case "C":
            alphabet.pointArrays = AlphabetUtils.getC1Points()
            alphabet.arrows = AlphabetUtils.getC1Arows()
        case "D":
            alphabet.pointArrays = AlphabetUtils.getD1Points()
            alphabet.arrows = AlphabetUtils.getD1Arows()
        case "E":
            alphabet.pointArrays = AlphabetUtils.getE1Points()
            alphabet.arrows = AlphabetUtils.getE1Arows()
        case "F":
            alphabet.pointArrays = AlphabetUtils.getF1Points()
            alphabet.arrows = AlphabetUtils.getF1Arows()
        case "G":
            alphabet.pointArrays = AlphabetUtils.getG1Points()
            alphabet.arrows = AlphabetUtils.getG1Arows()
        case "H":
            alphabet.pointArrays = AlphabetUtils.getH1Points()
            alphabet.arrows = AlphabetUtils.getH1Arows()
        case "I":
            alphabet.pointArrays = AlphabetUtils.getI1Points()
            alphabet.arrows = AlphabetUtils.getI1Arows()
        case "J":
            alphabet.pointArrays = AlphabetUtils.getJ1Points()
            alphabet.arrows = AlphabetUtils.getJ1Arows()
        case "K":
            alphabet.pointArrays = AlphabetUtils.getK1Points()
            alphabet.arrows = AlphabetUtils.getK1Arows()
        case "L":
            alphabet.pointArrays = AlphabetUtils.getL1Points()
            alphabet.arrows = AlphabetUtils.getL1Arows()
        case "M":
            alphabet.pointArrays = AlphabetUtils.getM1Points()
            alphabet.arrows = AlphabetUtils.getM1Arows()
        case "N":
            alphabet.pointArrays = AlphabetUtils.getN1Points()
            alphabet.arrows = AlphabetUtils.getN1Arows()
        case "O":
            alphabet.pointArrays = AlphabetUtils.getO1Points()
            alphabet.arrows = AlphabetUtils.getO1Arows()
        case "P":
            alphabet.pointArrays = AlphabetUtils.getP1Points()
            alphabet.arrows = AlphabetUtils.getP1Arows()
        case "Q":
            alphabet.pointArrays = AlphabetUtils.getQ1Points()
            alphabet.arrows = AlphabetUtils.getQ1Arows()
        case "R":
            alphabet.pointArrays = AlphabetUtils.getR1Points()
            alphabet.arrows = AlphabetUtils.getR1Arows()
        case "S":
            alphabet.pointArrays = AlphabetUtils.getS1Points()
            alphabet.arrows = AlphabetUtils.getS1Arows()
        case "T":
            alphabet.pointArrays = AlphabetUtils.getT1Points()
            alphabet.arrows = AlphabetUtils.getT1Arows()
        case "U":
            alphabet.pointArrays = AlphabetUtils.getU1Points()
            alphabet.arrows = AlphabetUtils.getU1Arows()
        case "V":
            alphabet.pointArrays = AlphabetUtils.getV1Points()
            alphabet.arrows = AlphabetUtils.getV1Arows()
        case "W":
            alphabet.pointArrays = AlphabetUtils.getW1Points()
            alphabet.arrows = AlphabetUtils.getW1Arows()
        case "X":
            alphabet.pointArrays = AlphabetUtils.getX1Points()
            alphabet.arrows = AlphabetUtils.getX1Arows()
        case "Y":
            alphabet.pointArrays = AlphabetUtils.getY1Points()
            alphabet.arrows = AlphabetUtils.getY1Arows()
        case "Z":
            alphabet.pointArrays = AlphabetUtils.getZ1Points()
            alphabet.arrows = AlphabetUtils.getZ1Arows()
        case "0":
            alphabet.pointArrays = AlphabetUtils.get0Points()
            alphabet.arrows = AlphabetUtils.get0Arows()
        case "1":
            alphabet.pointArrays = AlphabetUtils.get1Points()
            alphabet.arrows = AlphabetUtils.get1Arows()
        case "2":
            alphabet.pointArrays = AlphabetUtils.get2Points()
            alphabet.arrows = AlphabetUtils.get2Arows()
        case "3":
            alphabet.pointArrays = AlphabetUtils.get3Points()
            alphabet.arrows = AlphabetUtils.get3Arows()
        case "4":
            alphabet.pointArrays = AlphabetUtils.get4Points()
            alphabet.arrows = AlphabetUtils.get4Arows()
        case "5":
            alphabet.pointArrays = AlphabetUtils.get5Points()
            alphabet.arrows = AlphabetUtils.get5Arows()
        case "6":
            alphabet.pointArrays = AlphabetUtils.get6Points()
            alphabet.arrows = AlphabetUtils.get6Arows()
        case "7":
            alphabet.pointArrays = AlphabetUtils.get7Points()
            alphabet.arrows = AlphabetUtils.get7Arows()
        case "8":
            alphabet.pointArrays = AlphabetUtils.get8Points()
            alphabet.arrows = AlphabetUtils.get8Arows()
        case "9":
            alphabet.pointArrays = AlphabetUtils.get9Points()
            alphabet.arrows = AlphabetUtils.get9Arows()
        default:
            break
        }
    
        return alphabet
    }
    
    class func getA() -> UIBezierPath {
        return getCharacter("a")
    }
    
    class func getAPoints() ->[[CGPoint]] {
        var pointArrays = [[CGPoint]]()
        var array1 = [CGPoint]()
        array1.append(CGPoint(x:142.1, y: 138.5))
        array1.append(CGPoint(x:63.6, y: 135.5))
        array1.append(CGPoint(x:61.1, y: 206.5))
        array1.append(CGPoint(x:143.1, y: 207.0))
        pointArrays.append(array1)
        
        array1 = [CGPoint]()
        array1.append(CGPoint(x:155.6, y: 116.5))
        array1.append(CGPoint(x:156.1, y: 230.0))
        pointArrays.append(array1)
        return pointArrays
    }
    
    class func getAArows() -> [UIBezierPath] {
        var arrows = [UIBezierPath]()
        var arrowPath = UIBezierPath.arrow(from: CGPoint(x:142.1, y: 138.5), to: CGPoint(x:119.1, y: 121.0), tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath)
        arrowPath = UIBezierPath.arrow(from: CGPoint(x:155.6, y: 116.5), to: CGPoint(x:155.6, y: 141.0), tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath)
        return arrows
    }
    
    // upper A
    class func getA1Points() ->[[CGPoint]] {
        var pointArrays = [[CGPoint]]()
        var array1 = [CGPoint]()
        array1.append(CGPoint(x: 104.1, y: 16.5))
        array1.append(CGPoint(x: 66.6, y: 144.5))
        array1.append(CGPoint(x: 43.6, y: 229.0))
        pointArrays.append(array1)
        
        array1 = [CGPoint]()
        array1.append(CGPoint(x: 104.1, y: 16.5))
        array1.append(CGPoint(x: 142.1, y: 145.0))
        array1.append(CGPoint(x: 165.1, y: 229.5))
        pointArrays.append(array1)
        
        array1 = [CGPoint]()
        array1.append(CGPoint(x: 66.6, y: 144.5))
        array1.append(CGPoint(x: 142.1, y: 145.0))
        pointArrays.append(array1)
        return pointArrays
    }
    
    class func getA1Arows() -> [UIBezierPath] {
        var arrows = [UIBezierPath]()
        var arrowPath = UIBezierPath.arrow(from: 	CGPoint(x: 104.1, y: 16.5)	, to:	CGPoint(x: 91.6, y: 53.5)		, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath)
        arrowPath = UIBezierPath.arrow(from: 	CGPoint(x: 104.1, y: 16.5)	, to:	CGPoint(x: 116.1, y: 53.5)		, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath)
        arrowPath = UIBezierPath.arrow(from: 	CGPoint(x: 66.6, y: 144.5)	, to:	CGPoint(x: 96.1, y: 145.5)		, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath)
        return arrows
    }
    
    class func getU() -> UIBezierPath {
        return getCharacter("u")
    }
    
    class func getUw() -> UIBezierPath {
        return getCharacter("ư")
    }
    
    class func getUPoints() ->[[CGPoint]] {
        var pointArrays = [[CGPoint]]()
        var array1 = [CGPoint]()
        array1.append(CGPoint(x: 63.1, y: 119.5))
        array1.append(CGPoint(x: 64.1, y: 192.0))
        array1.append(CGPoint(x: 140.1, y: 209.5))
        pointArrays.append(array1)
        array1 = [CGPoint]()
        array1.append(CGPoint(x: 152.1, y: 120.0))
        array1.append(CGPoint(x: 152.1, y: 227.0))
        pointArrays.append(array1)
        
        return pointArrays
    }
    
    class func getUArows() -> [UIBezierPath] {
        var arrows = [UIBezierPath]()
        let arrowPath = UIBezierPath.arrow(from:	CGPoint(x: 63.1, y: 119.5)	, to:	CGPoint(x: 63.1, y: 148.5)	, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath)
        let arrowPath1 = UIBezierPath.arrow(from:	CGPoint(x: 152.1, y: 120.0)	, to:	CGPoint(x: 152.1, y: 149.5)	, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath1)
        return arrows
    }
    
    class func getU1Points() ->[[CGPoint]] {
        var pointArrays = [[CGPoint]]()
        var array1 = [CGPoint]()
        array1.append(CGPoint(x: 46.6, y: 17.5))
        array1.append(CGPoint(x: 46.6, y: 114.5))
        array1.append(CGPoint(x: 106.1, y: 226.5))
        array1.append(CGPoint(x: 165.1, y: 114.0))
        array1.append(CGPoint(x: 164.6, y: 17.0))
        pointArrays.append(array1)
        return pointArrays
    }
    
    class func getU1Arows() -> [UIBezierPath] {
        var arrows = [UIBezierPath]()
        let arrowPath = UIBezierPath.arrow(from: 	CGPoint(x: 46.6, y: 17.5)	, to:	CGPoint(x: 46.6, y: 56.0)		, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath)
        return arrows
    }
    
    class func getZ()-> UIBezierPath{
        return getCharacter("z")
    }
    
    class func getZPoints()->[[CGPoint]]{
        var pointArrays = [[CGPoint]]()
        var array1 = [CGPoint]()
        array1.append(CGPoint(x: 59.6, y: 120.0))
        array1.append(CGPoint(x: 140.6, y: 120.0))
        pointArrays.append(array1)
        array1 = [CGPoint]()
        array1.append(CGPoint(x: 140.6, y: 120.0))
        array1.append(CGPoint(x: 69.6, y: 226.5))
        pointArrays.append(array1)
        array1 = [CGPoint]()
        array1.append(CGPoint(x: 69.6, y: 226.5))
        array1.append(CGPoint(x: 150.6, y: 226.5))
        pointArrays.append(array1)
        return pointArrays
    }
    
    class func getZArows() -> [UIBezierPath] {
        var arrows = [UIBezierPath]()
        let arrowPath = UIBezierPath.arrow(from:	CGPoint(x: 59.6, y: 120.0)	, to:	CGPoint(x: 96.1, y: 120.0)	, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath)
        let arrowPath1 = UIBezierPath.arrow(from:	CGPoint(x: 140.6, y: 120.0)	, to:	CGPoint(x: 116.1, y: 157.0)	, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath1)
        let arrowPath2 = UIBezierPath.arrow(from:	CGPoint(x: 69.6, y: 226.5)	, to:	CGPoint(x: 108.1, y: 226.5)	, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath2)
        return arrows
    }
    
    class func getZ1Points()->[[CGPoint]]{
        var pointArrays = [[CGPoint]]()
        var array1 = [CGPoint]()
        array1.append(CGPoint(x: 40.6, y: 21.5))
        array1.append(CGPoint(x: 161.1, y: 21.5))
        array1.append(CGPoint(x: 111.1, y: 115.0))
        array1.append(CGPoint(x: 48.1, y: 227.5))
        array1.append(CGPoint(x: 169.1, y: 225.5))
        pointArrays.append(array1)
        return pointArrays
    }
    
    class func getZ1Arows() -> [UIBezierPath] {
        var arrows = [UIBezierPath]()
        let arrowPath = UIBezierPath.arrow(from: 	CGPoint(x: 40.6, y: 21.5)	, to:	CGPoint(x: 87.1, y: 21.5)		, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath)
        return arrows
    }
    
    class func getY()-> UIBezierPath{
        return getCharacter("y")
    }
    
    class func getYPoints()->[[CGPoint]]{
        var pointArrays = [[CGPoint]]()
        var array1 = [CGPoint]()
        array1.append(CGPoint(x: 50.1, y: 120.0))
        array1.append(CGPoint(x: 104.6, y: 221.0))
        pointArrays.append(array1)
        array1 = [CGPoint]()
        array1.append(CGPoint(x: 160.6, y: 122.0))
        array1.append(CGPoint(x: 79.1, y: 282.5))
        pointArrays.append(array1)
        return pointArrays
    }
    
    class func getYArows() -> [UIBezierPath] {
        var arrows = [UIBezierPath]()
        let arrowPath = UIBezierPath.arrow(from:	CGPoint(x: 50.1, y: 120.0)	, to:	CGPoint(x: 68.6, y: 156.0)	, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath)
        let arrowPath1 = UIBezierPath.arrow(from:	CGPoint(x: 160.6, y: 122.0)	, to:	CGPoint(x: 137.1, y: 167.5)	, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath1)
        return arrows
    }
    
    class func getY1Points()->[[CGPoint]]{
        var pointArrays = [[CGPoint]]()
        var array1 = [CGPoint]()
        array1.append(CGPoint(x: 33.1, y: 19.0))
        array1.append(CGPoint(x: 106.6, y: 137.5))
        pointArrays.append(array1)
        array1 = [CGPoint]()
        array1.append(CGPoint(x: 179.6, y: 17.5))
        array1.append(CGPoint(x: 106.6, y: 137.5))
        array1.append(CGPoint(x: 105.6, y: 230.5))
        pointArrays.append(array1)
        return pointArrays
    }
    
    class func getY1Arows() -> [UIBezierPath] {
        var arrows = [UIBezierPath]()
        let arrowPath = UIBezierPath.arrow(from: 	CGPoint(x: 33.1, y: 19.0)	, to:	CGPoint(x: 53.1, y: 52.0)		, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath)
        let arrowPath1 = UIBezierPath.arrow(from: 	CGPoint(x: 179.6, y: 17.5)	, to:	CGPoint(x: 157.6, y: 51.5)		, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath1)
        return arrows
    }
    
    class func getX()-> UIBezierPath{
        return getCharacter("x")
        
    }
    
    class func getXPoints()->[[CGPoint]]{
        var pointArrays = [[CGPoint]]()
        var array1 = [CGPoint]()
        array1.append(CGPoint(x: 57.6, y: 117.5))
        array1.append(CGPoint(x: 154.6, y: 227.5))
        pointArrays.append(array1)
        array1 = [CGPoint]()
        array1.append(CGPoint(x: 150.1, y: 119.0))
        array1.append(CGPoint(x: 53.6, y: 228.5))
        pointArrays.append(array1)
        return pointArrays
    }
    
    class func getXArows() -> [UIBezierPath] {
        var arrows = [UIBezierPath]()
        let arrowPath = UIBezierPath.arrow(from:	CGPoint(x: 57.6, y: 117.5)	, to:	CGPoint(x: 84.1, y: 146.5)	, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath)
        let arrowPath1 = UIBezierPath.arrow(from:	CGPoint(x: 150.1, y: 119.0)	, to:	CGPoint(x: 125.1, y: 146.5)	, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath1)
        return arrows
    }
    
    class func getX1Points()->[[CGPoint]]{
        var pointArrays = [[CGPoint]]()
        var array1 = [CGPoint]()
        array1.append(CGPoint(x: 40.6, y: 18.5))
        array1.append(CGPoint(x: 106.1, y: 121.5))
        array1.append(CGPoint(x: 173.6, y: 230.5))
        pointArrays.append(array1)
        array1 = [CGPoint]()
        array1.append(CGPoint(x: 171.1, y: 17.0))
        array1.append(CGPoint(x: 106.1, y: 121.5))
        array1.append(CGPoint(x: 37.6, y: 230.5))
        pointArrays.append(array1)
        return pointArrays
    }
    
    class func getX1Arows() -> [UIBezierPath] {
        var arrows = [UIBezierPath]()
        let arrowPath = UIBezierPath.arrow(from: 	CGPoint(x: 40.6, y: 18.5)	, to:	CGPoint(x: 63.6, y: 53.0)		, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath)
        let arrowPath1 = UIBezierPath.arrow(from: 	CGPoint(x: 171.1, y: 17.0)	, to:	CGPoint(x: 148.6, y: 52.5)		, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath1)
        return arrows
    }
    
    class func getW()-> UIBezierPath{
        return getCharacter("w")
        
    }
    
    class func getWPoints()->[[CGPoint]]{
        var pointArrays = [[CGPoint]]()
        var array1 = [CGPoint]()
        array1.append(CGPoint(x: 39.1, y: 118.0))
        array1.append(CGPoint(x: 73.1, y: 223.0))
        pointArrays.append(array1)
        array1 = [CGPoint]()
        array1.append(CGPoint(x: 106.1, y: 143.0))
        array1.append(CGPoint(x: 73.1, y: 223.0))
        pointArrays.append(array1)
        array1 = [CGPoint]()
        array1.append(CGPoint(x: 106.1, y: 143.0))
        array1.append(CGPoint(x: 139.1, y: 223.0))
        pointArrays.append(array1)
        array1 = [CGPoint]()
        array1.append(CGPoint(x: 174.1, y: 118.5))
        array1.append(CGPoint(x: 139.1, y: 223.0))
        pointArrays.append(array1)
        return pointArrays
    }
    
    class func getWArows() -> [UIBezierPath] {
        var arrows = [UIBezierPath]()
        let arrowPath = UIBezierPath.arrow(from:	CGPoint(x: 39.1, y: 118.0)	, to:	CGPoint(x: 51.1, y: 152.5)	, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath)
        let arrowPath1 = UIBezierPath.arrow(from:	CGPoint(x: 106.1, y: 143.0)	, to:	CGPoint(x: 90.6, y: 177.5)	, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath1)
        let arrowPath2 = UIBezierPath.arrow(from:	CGPoint(x: 106.1, y: 143.0)	, to:	CGPoint(x: 120.1, y: 174.5)	, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath2)
        let arrowPath3 = UIBezierPath.arrow(from:	CGPoint(x: 174.1, y: 118.5)	, to:	CGPoint(x: 162.6, y: 151.0)	, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath3)
        return arrows
    }
    
    class func getW1Points()->[[CGPoint]]{
        var pointArrays = [[CGPoint]]()
        var array1 = [CGPoint]()
        array1.append(CGPoint(x: 18.6, y: 17.0))
        array1.append(CGPoint(x: 41.1, y: 113.5))
        array1.append(CGPoint(x: 64.1, y: 218.0))
        array1.append(CGPoint(x: 105.6, y: 64.5))
        array1.append(CGPoint(x: 147.6, y: 218.5))
        array1.append(CGPoint(x: 170.6, y: 112.0))
        array1.append(CGPoint(x: 192.6, y: 17.0))
        pointArrays.append(array1)
        return pointArrays
    }
    
    class func getW1Arows() -> [UIBezierPath] {
        var arrows = [UIBezierPath]()
        let arrowPath = UIBezierPath.arrow(from: 	CGPoint(x: 18.6, y: 17.0)	, to:	CGPoint(x: 28.6, y: 56.0)		, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath)
        return arrows
    }
    
    class func getV()-> UIBezierPath{
        return getCharacter("v")
        
    }
    
    class func getVPoints()->[[CGPoint]]{
        var pointArrays = [[CGPoint]]()
        var array1 = [CGPoint]()
        array1.append(CGPoint(x: 50.6, y: 119.0))
        array1.append(CGPoint(x: 106.1, y: 222.0))
        pointArrays.append(array1)
        array1 = [CGPoint]()
        array1.append(CGPoint(x: 160.6, y: 120.0))
        array1.append(CGPoint(x: 106.1, y: 222.0))
        pointArrays.append(array1)
        return pointArrays
    }
    
    class func getVArows() -> [UIBezierPath] {
        var arrows = [UIBezierPath]()
        let arrowPath = UIBezierPath.arrow(from:	CGPoint(x: 50.6, y: 119.0)	, to:	CGPoint(x: 68.1, y: 151.5)	, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath)
        let arrowPath1 = UIBezierPath.arrow(from:	CGPoint(x: 160.6, y: 120.0)	, to:	CGPoint(x: 139.6, y: 158.5)	, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath1)
        return arrows
    }
    
    class func getV1Points()->[[CGPoint]]{
        var pointArrays = [[CGPoint]]()
        var array1 = [CGPoint]()
        array1.append(CGPoint(x: 32.1, y: 18.0))
        array1.append(CGPoint(x: 66.6, y: 114.0))
        array1.append(CGPoint(x: 106.1, y: 219.0))
        array1.append(CGPoint(x: 145.1, y: 113.5))
        array1.append(CGPoint(x: 179.6, y: 17.0))
        pointArrays.append(array1)
        return pointArrays
    }
    
    class func getV1Arows() -> [UIBezierPath] {
        var arrows = [UIBezierPath]()
        let arrowPath = UIBezierPath.arrow(from: 	CGPoint(x: 32.1, y: 18.0)	, to:	CGPoint(x: 46.1, y: 54.5)		, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath)
        return arrows
    }
    
    class func getB() -> UIBezierPath {
        return getCharacter("b")
    }
    
    class func getBPoints() -> [[CGPoint]] {
        var pointArrays = [[CGPoint]]()
        var array1 = [CGPoint]()
        array1.append(CGPoint(x: 58.6, y: 59.0))
        array1.append(CGPoint(x: 56.6, y: 226.5))
        pointArrays.append(array1)
        array1 = [CGPoint]()
        array1.append(CGPoint(x: 70.6, y: 139.0))
        array1.append(CGPoint(x: 146.1, y: 131.5))
        array1.append(CGPoint(x: 147.6, y: 211.5))
        array1.append(CGPoint(x: 69.1, y: 208.5))
        pointArrays.append(array1)
        return pointArrays
    }
    
    class func getBArows() -> [UIBezierPath] {
        var arrows = [UIBezierPath]()
        let arrowPath = UIBezierPath.arrow(from:	CGPoint(x: 58.6, y: 59.0)	, to:	CGPoint(x: 58.1, y: 80.5)	, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath)
        let arrowPath1 = UIBezierPath.arrow(from:	CGPoint(x: 70.6, y: 139.0)	, to:	CGPoint(x: 94.1, y: 120.5)	, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath1)
        return arrows
    }
    
    class func getB1Points() -> [[CGPoint]] {
        var pointArrays = [[CGPoint]]()
        var array1 = [CGPoint]()
        array1.append(CGPoint(x: 46.6, y: 21.0))
        array1.append(CGPoint(x: 46.6, y: 226.5))
        pointArrays.append(array1)
        array1 = [CGPoint]()
        array1.append(CGPoint(x: 46.6, y: 21.0))
        array1.append(CGPoint(x: 155.6, y: 63.0))
        array1.append(CGPoint(x: 62.1, y: 114.0))
        pointArrays.append(array1)
        array1 = [CGPoint]()
        array1.append(CGPoint(x: 62.1, y: 114.0))
        array1.append(CGPoint(x: 171.1, y: 170.0))
        array1.append(CGPoint(x: 46.6, y: 226.5))
        pointArrays.append(array1)
        return pointArrays
    }
    
    class func getB1Arows() -> [UIBezierPath] {
        var arrows = [UIBezierPath]()
        let arrowPath = UIBezierPath.arrow(from: 	CGPoint(x: 46.6, y: 21.0)	, to:	CGPoint(x: 46.6, y: 60.0)		, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath)
        let arrowPath1 = UIBezierPath.arrow(from: 	CGPoint(x: 46.6, y: 21.0)	, to:	CGPoint(x: 87.1, y: 21.5)		, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath1)
        let arrowPath2 = UIBezierPath.arrow(from: 	CGPoint(x: 62.1, y: 114.0)	, to:	CGPoint(x: 101.1, y: 114.0)		, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath2)
        return arrows
    }
    
    class func getT()-> UIBezierPath{
        return getCharacter("t")
        
    }
    
    class func getTPoints()->[[CGPoint]]{
        var pointArrays = [[CGPoint]]()
        var array1 = [CGPoint]()
        array1.append(CGPoint(x: 93.6, y: 72.5))
        array1.append(CGPoint(x: 93.1, y: 162.0))
        array1.append(CGPoint(x: 148.6, y: 222.5))
        pointArrays.append(array1)
        array1 = [CGPoint]()
        array1.append(CGPoint(x: 57.6, y: 119.0))
        array1.append(CGPoint(x: 141.1, y: 119))
        pointArrays.append(array1)
        return pointArrays
    }
    
    class func getTArows() -> [UIBezierPath] {
        var arrows = [UIBezierPath]()
        let arrowPath = UIBezierPath.arrow(from:	CGPoint(x: 93.6, y: 72.5)	, to:	CGPoint(x: 93.6, y: 104.5)	, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath)
        let arrowPath1 = UIBezierPath.arrow(from:	CGPoint(x: 57.6, y: 119.0)	, to:	CGPoint(x: 82.6, y: 119.0)	, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath1)
        return arrows
    }
    
    class func getT1Points()->[[CGPoint]]{
        var pointArrays = [[CGPoint]]()
        var array1 = [CGPoint]()
        array1.append(CGPoint(x: 106.6, y: 22.0))
        array1.append(CGPoint(x: 106.1, y: 114.5))
        array1.append(CGPoint(x: 106.1, y: 231.0))
        pointArrays.append(array1)
        array1 = [CGPoint]()
        array1.append(CGPoint(x: 30.6, y: 21.5))
        array1.append(CGPoint(x: 179.1, y: 21.5))
        pointArrays.append(array1)
        return pointArrays
    }
    
    class func getT1Arows() -> [UIBezierPath] {
        var arrows = [UIBezierPath]()
        let arrowPath = UIBezierPath.arrow(from: 	CGPoint(x: 106.6, y: 22.0)	, to:	CGPoint(x: 106.1, y: 60.0)		, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath)
        let arrowPath1 = UIBezierPath.arrow(from: 	CGPoint(x: 30.6, y: 21.5)	, to:	CGPoint(x: 68.1, y: 21.5)		, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath1)
        return arrows
    }
    
    class func getC() -> UIBezierPath {
        return getCharacter("c")
    }
    
    class func getCPoints() -> [[CGPoint]] {
        var pointArrays = [[CGPoint]]()
        var array1 = [CGPoint]()
        array1.append(CGPoint(x: 157.1, y: 136.0))
        array1.append(CGPoint(x: 71.1, y: 133.0))
        array1.append(CGPoint(x: 69.6, y: 214.0))
        array1.append(CGPoint(x: 156.6, y: 211.5))
        pointArrays.append(array1)
        return pointArrays
    }
    
    class func getCArows() -> [UIBezierPath] {
        var arrows = [UIBezierPath]()
        let arrowPath = UIBezierPath.arrow(from:	CGPoint(x: 157.1, y: 136.0)	, to:	CGPoint(x: 134.6, y: 124.5)	, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath)
        return arrows
    }
    
    class func getC1Points() -> [[CGPoint]] {
        var pointArrays = [[CGPoint]]()
        var array1 = [CGPoint]()
        array1.append(CGPoint(x: 170.6, y: 68.5))
        array1.append(CGPoint(x: 117.1, y: 19.0))
        array1.append(CGPoint(x: 45.6, y: 114.5))
        array1.append(CGPoint(x: 117.1, y: 227.5))
        array1.append(CGPoint(x: 172.6, y: 176.0))
        pointArrays.append(array1)
        return pointArrays
    }
    
    class func getC1Arows() -> [UIBezierPath] {
        var arrows = [UIBezierPath]()
        let arrowPath = UIBezierPath.arrow(from: 	CGPoint(x: 170.6, y: 68.5)	, to:	CGPoint(x: 161.1, y: 41.5)		, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath)
        return arrows
    }
    
    class func getS()-> UIBezierPath{
        return getCharacter("s")
        
    }
    
    class func getSPoints()->[[CGPoint]]{
        var pointArrays = [[CGPoint]]()
        var array1 = [CGPoint]()
        array1.append(CGPoint(x: 146.6, y: 129.0))
        array1.append(CGPoint(x: 64.6, y: 139.5))
        array1.append(CGPoint(x: 149.6, y: 195.0))
        array1.append(CGPoint(x: 64.6, y: 218.5))
        pointArrays.append(array1)
        return pointArrays
    }
    
    class func getSArows() -> [UIBezierPath] {
        var arrows = [UIBezierPath]()
        let arrowPath = UIBezierPath.arrow(from:	CGPoint(x: 146.6, y: 129.0)	, to:	CGPoint(x: 119.6, y: 119.5)	, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath)
        return arrows
    }
    
    class func getS1Points()->[[CGPoint]]{
        var pointArrays = [[CGPoint]]()
        var array1 = [CGPoint]()
        array1.append(CGPoint(x: 162.6, y: 64.5))
        array1.append(CGPoint(x: 104.6, y: 17.5))
        array1.append(CGPoint(x: 50.1, y: 78.5))
        array1.append(CGPoint(x: 149.1, y: 142.5))
        array1.append(CGPoint(x: 110.6, y: 227.5))
        array1.append(CGPoint(x: 45.6, y: 180.0))
        pointArrays.append(array1)
        return pointArrays
    }
    
    class func getS1Arows() -> [UIBezierPath] {
        var arrows = [UIBezierPath]()
        let arrowPath = UIBezierPath.arrow(from: 	CGPoint(x: 162.6, y: 64.5)	, to:	CGPoint(x: 147.1, y: 34.5)		, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath)
        return arrows
    }
    
    class func getD() -> UIBezierPath {
        return getCharacter("d")
    }
    
    class func getDPoints() -> [[CGPoint]] {
        var pointArrays = [[CGPoint]]()
        var array1 = [CGPoint]()
        array1.append(CGPoint(x: 141.1, y: 137.5))
        array1.append(CGPoint(x: 58.6, y: 143.5))
        array1.append(CGPoint(x: 64.6, y: 212.0))
        array1.append(CGPoint(x: 142.6, y: 206.0))
        pointArrays.append(array1)
        array1 = [CGPoint]()
        array1.append(CGPoint(x: 154.6, y: 59.5))
        array1.append(CGPoint(x: 154.1, y: 228.0))
        pointArrays.append(array1)
        return pointArrays
    }
    
    class func getDArows() -> [UIBezierPath] {
        var arrows = [UIBezierPath]()
        let arrowPath = UIBezierPath.arrow(from:	CGPoint(x: 141.1, y: 137.5)	, to:	CGPoint(x: 110.1, y: 117.0)	, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath)
        let arrowPath1 = UIBezierPath.arrow(from:	CGPoint(x: 154.6, y: 59.5)	, to:	CGPoint(x: 153.6, y: 77.5)	, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath1)
        return arrows
    }
    
    class func getD1Points() -> [[CGPoint]] {
        var pointArrays = [[CGPoint]]()
        var array1 = [CGPoint]()
        array1.append(CGPoint(x: 46.6, y: 19.5))
        array1.append(CGPoint(x: 45.6, y: 225.5))
        pointArrays.append(array1)
        array1 = [CGPoint]()
        array1.append(CGPoint(x: 46.6, y: 19.5))
        array1.append(CGPoint(x: 174.1, y: 113.5))
        array1.append(CGPoint(x: 45.6, y: 225.5))
        pointArrays.append(array1)
        return pointArrays
    }
    
    class func getD1Arows() -> [UIBezierPath] {
        var arrows = [UIBezierPath]()
        let arrowPath = UIBezierPath.arrow(from: 	CGPoint(x: 46.6, y: 19.5)	, to:	CGPoint(x: 45.6, y: 58.0)		, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath)
        let arrowPath1 = UIBezierPath.arrow(from: 	CGPoint(x: 46.6, y: 19.5)	, to:	CGPoint(x: 88.6, y: 22.0)		, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath1)
        return arrows
    }
    
    class func getDD() -> UIBezierPath {
        return getCharacter("đ")
    }
    
    class func getDDPoints() -> [[CGPoint]] {
        var pointArrays = self.getDPoints()
        var array1 = [CGPoint]()
        array1.append(CGPoint(x: 170, y: 120))
        array1.append(CGPoint(x: 269, y: 120))
        pointArrays.append(array1)
        return pointArrays
    }
    
    class func getR()-> UIBezierPath{
        return getCharacter("r")
        
    }
    
    class func getRPoints()->[[CGPoint]]{
        var pointArrays = [[CGPoint]]()
        var array1 = [CGPoint]()
        array1.append(CGPoint(x: 86.1, y: 117.5))
        array1.append(CGPoint(x: 86.1, y: 227.5))
        pointArrays.append(array1)
        array1 = [CGPoint]()
        array1.append(CGPoint(x: 97.6, y: 136.0))
        array1.append(CGPoint(x: 150.1, y: 120.5))
        pointArrays.append(array1)
        return pointArrays
    }
    
    class func getRArows() -> [UIBezierPath] {
        var arrows = [UIBezierPath]()
        let arrowPath = UIBezierPath.arrow(from:	CGPoint(x: 86.1, y: 117.5)	, to:	CGPoint(x: 86.1, y: 149.0)	, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath)
        let arrowPath1 = UIBezierPath.arrow(from:	CGPoint(x: 97.6, y: 136.0)	, to:	CGPoint(x: 116.6, y: 121.5)	, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath1)
        return arrows
    }
    
    class func getR1Points()->[[CGPoint]]{
        var pointArrays = [[CGPoint]]()
        var array1 = [CGPoint]()
        array1.append(CGPoint(x: 48.1, y: 21.0))
        array1.append(CGPoint(x: 46.6, y: 114.0))
        array1.append(CGPoint(x: 46.1, y: 229.0))
        pointArrays.append(array1)
        array1 = [CGPoint]()
        array1.append(CGPoint(x: 48.1, y: 21.0))
        array1.append(CGPoint(x: 168.1, y: 78.0))
        array1.append(CGPoint(x: 60.6, y: 141.5))
        pointArrays.append(array1)
        array1 = [CGPoint]()
        array1.append(CGPoint(x: 121.1, y: 142.5))
        array1.append(CGPoint(x: 174.6, y: 230.5))
        pointArrays.append(array1)
        return pointArrays
    }
    
    class func getR1Arows() -> [UIBezierPath] {
        var arrows = [UIBezierPath]()
        let arrowPath = UIBezierPath.arrow(from: 	CGPoint(x: 48.1, y: 21.0)	, to:	CGPoint(x: 46.6, y: 60.5)		, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath)
        let arrowPath1 = UIBezierPath.arrow(from: 	CGPoint(x: 48.1, y: 21.0)	, to:	CGPoint(x: 88.6, y: 21.5)		, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath1)
        let arrowPath2 = UIBezierPath.arrow(from: 	CGPoint(x: 121.1, y: 142.5)	, to:	CGPoint(x: 137.6, y: 173.0)		, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath2)
        return arrows
    }
    
    class func getE() -> UIBezierPath {
        return getCharacter("e")
    }
    
    class func getEPoints() -> [[CGPoint]] {
        var pointArrays = [[CGPoint]]()
        var array1 = [CGPoint]()
        array1.append(CGPoint(x: 62.6, y: 167.0))
        array1.append(CGPoint(x: 154.6, y: 166.0))
        array1.append(CGPoint(x: 108.1, y: 118.0))
        array1.append(CGPoint(x: 108.6, y: 226.0))
        array1.append(CGPoint(x: 154.6, y: 211.0))
        pointArrays.append(array1)
        return pointArrays
    }
    
    class func getEArows() -> [UIBezierPath] {
        var arrows = [UIBezierPath]()
        let arrowPath = UIBezierPath.arrow(from:	CGPoint(x: 62.6, y: 167.0)	, to:	CGPoint(x: 101.1, y: 167.0)	, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath)
        return arrows
    }
    
    class func getE1Points() -> [[CGPoint]] {
        var pointArrays = [[CGPoint]]()
        var array1 = [CGPoint]()
        array1.append(CGPoint(x: 50.6, y: 21.5))
        array1.append(CGPoint(x: 50.1, y: 114.5))
        array1.append(CGPoint(x: 50.1, y: 225.5))
        pointArrays.append(array1)
        array1 = [CGPoint]()
        array1.append(CGPoint(x: 50.6, y: 21.5))
        array1.append(CGPoint(x: 168.1, y: 21.5))
        pointArrays.append(array1)
        array1 = [CGPoint]()
        array1.append(CGPoint(x: 50.1, y: 114.5))
        array1.append(CGPoint(x: 137.6, y: 114.5))
        pointArrays.append(array1)
        array1 = [CGPoint]()
        array1.append(CGPoint(x: 50.1, y: 225.5))
        array1.append(CGPoint(x: 168.6, y: 225.5))
        pointArrays.append(array1)
        return pointArrays
    }
    
    class func getE1Arows() -> [UIBezierPath] {
        var arrows = [UIBezierPath]()
        let arrowPath = UIBezierPath.arrow(from: 	CGPoint(x: 50.6, y: 21.5)	, to:	CGPoint(x: 50.1, y: 47.0)		, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath)
        let arrowPath1 = UIBezierPath.arrow(from: 	CGPoint(x: 50.6, y: 21.5)	, to:	CGPoint(x: 86.1, y: 21.5)		, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath1)
        let arrowPath2 = UIBezierPath.arrow(from: 	CGPoint(x: 50.1, y: 114.5)	, to:	CGPoint(x: 82.1, y: 113.0)		, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath2)
        let arrowPath3 = UIBezierPath.arrow(from: 	CGPoint(x: 50.1, y: 225.5)	, to:	CGPoint(x: 88.6, y: 226.0)		, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath3)
        return arrows
    }

    class func getFPoints() -> [[CGPoint]] {
        var pointArrays = [[CGPoint]]()
        var array1 = [CGPoint]()
        array1.append(CGPoint(x: 156.6, y: 63.5))
        array1.append(CGPoint(x: 101.1, y: 88.0))
        array1.append(CGPoint(x: 100.1, y: 227.0))
        pointArrays.append(array1)
        array1 = [CGPoint]()
        array1.append(CGPoint(x: 60.1, y: 120.0))
        array1.append(CGPoint(x: 144.6, y: 120.0))
        pointArrays.append(array1)
        return pointArrays
    }
    
    class func getFArows() -> [UIBezierPath] {
        var arrows = [UIBezierPath]()
        let arrowPath = UIBezierPath.arrow(from:	CGPoint(x: 156.6, y: 63.5)	, to:	CGPoint(x: 129.6, y: 59.5)	, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath)
        let arrowPath1 = UIBezierPath.arrow(from:	CGPoint(x: 60.1, y: 120.0)	, to:	CGPoint(x: 83.1, y: 120.0)	, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath1)
        return arrows
    }
    
    class func getF1Points() -> [[CGPoint]] {
        var pointArrays = [[CGPoint]]()
        var array1 = [CGPoint]()
        array1.append(CGPoint(x: 56.6, y: 21.0))
        array1.append(CGPoint(x: 57.1, y: 113.5))
        array1.append(CGPoint(x: 56.1, y: 230.0))
        pointArrays.append(array1)
        array1 = [CGPoint]()
        array1.append(CGPoint(x: 56.6, y: 21.0))
        array1.append(CGPoint(x: 170.6, y: 20.5))
        pointArrays.append(array1)
        array1 = [CGPoint]()
        array1.append(CGPoint(x: 57.1, y: 113.5))
        array1.append(CGPoint(x: 169.1, y: 114.0))
        pointArrays.append(array1)
        return pointArrays
    }
    
    class func getF1Arows() -> [UIBezierPath] {
        var arrows = [UIBezierPath]()
        let arrowPath = UIBezierPath.arrow(from: 	CGPoint(x: 56.6, y: 21.0)	, to:	CGPoint(x: 56.6, y: 53.0)		, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath)
        let arrowPath1 = UIBezierPath.arrow(from: 	CGPoint(x: 56.6, y: 21.0)	, to:	CGPoint(x: 90.6, y: 20.5)		, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath1)
        let arrowPath2 = UIBezierPath.arrow(from: 	CGPoint(x: 57.1, y: 113.5)	, to:	CGPoint(x: 92.1, y: 115.0)		, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath2)
        return arrows
    }
    
    class func getEE() -> UIBezierPath {
        return getCharacter("ê")
    }
    
    class func getEEPoints() -> [[CGPoint]] {
        var pointArrays = self.getEPoints()
        let array1 = self.getDauMuPoints()
        pointArrays.append(array1)
        return pointArrays
    }
    
    class func getQ()-> UIBezierPath{
        return getCharacter("q")
    }
    
    class func getQPoints()->[[CGPoint]]{
        var pointArrays = [[CGPoint]]()
        var array1 = [CGPoint]()
        array1.append(CGPoint(x: 142.6, y: 140.5))
        array1.append(CGPoint(x: 57.1, y: 145.0))
        array1.append(CGPoint(x: 66.6, y: 215.5))
        array1.append(CGPoint(x: 141.1, y: 207.5))
        pointArrays.append(array1)
        array1 = [CGPoint]()
        array1.append(CGPoint(x: 153.6, y: 118.5))
        array1.append(CGPoint(x: 153.6, y: 190.5))
        array1.append(CGPoint(x: 153.6, y: 280.0))
        pointArrays.append(array1)
        return pointArrays
    }
    
    class func getQArows() -> [UIBezierPath] {
        var arrows = [UIBezierPath]()
        let arrowPath = UIBezierPath.arrow(from:	CGPoint(x: 142.6, y: 140.5)	, to:	CGPoint(x: 116.1, y: 120.0)	, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath)
        let arrowPath1 = UIBezierPath.arrow(from:	CGPoint(x: 153.6, y: 118.5)	, to:	CGPoint(x: 153.6, y: 143.5)	, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath1)
        return arrows
    }
    
    class func getQ1Points()->[[CGPoint]]{
        var pointArrays = [[CGPoint]]()
        var array1 = [CGPoint]()
        array1.append(CGPoint(x: 106.1, y: 17.0))
        array1.append(CGPoint(x: 38.1, y: 114.5))
        array1.append(CGPoint(x: 105.6, y: 225.5))
        array1.append(CGPoint(x: 175.1, y: 116.0))
        array1.append(CGPoint(x: 106.1, y: 17.0))
        pointArrays.append(array1)
        array1 = [CGPoint]()
        array1.append(CGPoint(x: 137.1, y: 166.5))
        array1.append(CGPoint(x: 173.6, y: 229.5))
        pointArrays.append(array1)
        return pointArrays
    }
    
    class func getQ1Arows() -> [UIBezierPath] {
        var arrows = [UIBezierPath]()
        let arrowPath = UIBezierPath.arrow(from: 	CGPoint(x: 106.1, y: 17.0)	, to:	CGPoint(x: 63.1, y: 38.0)		, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath)
        let arrowPath1 = UIBezierPath.arrow(from: 	CGPoint(x: 137.1, y: 166.5)	, to:	CGPoint(x: 147.1, y: 182.0)		, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath1)
        return arrows
    }
    
    class func getG() -> UIBezierPath {
        return getCharacter("g")
    }
    
    class func getGPoints() -> [[CGPoint]] {
        var pointArrays = [[CGPoint]]()
        var array1 = [CGPoint]()
        array1.append(CGPoint(x: 142.1, y: 139.5))
        array1.append(CGPoint(x: 57.6, y: 143.0))
        array1.append(CGPoint(x: 61.1, y: 209.0))
        array1.append(CGPoint(x: 141.6, y: 207.0))
        pointArrays.append(array1)
        array1 = [CGPoint]()
        array1.append(CGPoint(x: 155.6, y: 120.5))
        array1.append(CGPoint(x: 154.6, y: 236.5))
        array1.append(CGPoint(x: 63.1, y: 268.0))
        pointArrays.append(array1)
        return pointArrays
    }
    
    class func getGArows() -> [UIBezierPath] {
        var arrows = [UIBezierPath]()
        let arrowPath = UIBezierPath.arrow(from:	CGPoint(x: 142.1, y: 139.5)	, to:	CGPoint(x: 115.6, y: 121.5)	, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath)
        let arrowPath1 = UIBezierPath.arrow(from:	CGPoint(x: 155.6, y: 120.5)	, to:	CGPoint(x: 155.1, y: 140.5)	, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath1)
        return arrows
    }
    
    class func getG1Points() -> [[CGPoint]] {
        var pointArrays = [[CGPoint]]()
        var array1 = [CGPoint]()
        array1.append(CGPoint(x: 164.6, y: 68.5))
        array1.append(CGPoint(x: 110.6, y: 18.5))
        array1.append(CGPoint(x: 38.6, y: 113.0))
        array1.append(CGPoint(x: 109.1, y: 226.5))
        array1.append(CGPoint(x: 165.6, y: 131.5))
        pointArrays.append(array1)
        array1 = [CGPoint]()
        array1.append(CGPoint(x: 165.6, y: 131.5))
        array1.append(CGPoint(x: 167.1, y: 229.0))
        pointArrays.append(array1)
        array1 = [CGPoint]()
        array1.append(CGPoint(x: 128.1, y: 131.0))
        array1.append(CGPoint(x: 165.6, y: 131.5))
        pointArrays.append(array1)
        return pointArrays
    }
    
    class func getG1Arows() -> [UIBezierPath] {
        var arrows = [UIBezierPath]()
        let arrowPath = UIBezierPath.arrow(from: 	CGPoint(x: 164.6, y: 68.5)	, to:	CGPoint(x: 150.6, y: 34.0)		, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath)
        let arrowPath1 = UIBezierPath.arrow(from: 	CGPoint(x: 165.6, y: 131.5)	, to:	CGPoint(x: 167.6, y: 161.0)		, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath1)
        let arrowPath2 = UIBezierPath.arrow(from: 	CGPoint(x: 128.1, y: 131.0)	, to:	CGPoint(x: 165.6, y: 131.5)		, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath2)
        return arrows
    }
    
    class func getH() -> UIBezierPath {
        return getCharacter("h")
    }
    
    class func getHPoints() -> [[CGPoint]] {
        var pointArrays = [[CGPoint]]()
        var array1 = [CGPoint]()
        array1.append(CGPoint(x: 56.6, y: 59.0))
        array1.append(CGPoint(x: 56.6, y: 146.5))
        array1.append(CGPoint(x: 55.1, y: 225.5))
        pointArrays.append(array1)
        array1 = [CGPoint]()
        array1.append(CGPoint(x: 70.6, y: 131.5))
        array1.append(CGPoint(x: 140.1, y: 144.0))
        array1.append(CGPoint(x: 145.6, y: 227.0))
        pointArrays.append(array1)
        return pointArrays
    }
    
    class func getHArows() -> [UIBezierPath] {
        var arrows = [UIBezierPath]()
        let arrowPath = UIBezierPath.arrow(from:	CGPoint(x: 56.6, y: 59.0)	, to:	CGPoint(x: 56.1, y: 79.5)	, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath)
        let arrowPath1 = UIBezierPath.arrow(from:	CGPoint(x: 70.6, y: 131.5)	, to:	CGPoint(x: 94.6, y: 119.0)	, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath1)
        return arrows
    }
    
    class func getH1Points() -> [[CGPoint]] {
        var pointArrays = [[CGPoint]]()
        var array1 = [CGPoint]()
        array1.append(CGPoint(x: 47.6, y: 19.5))
        array1.append(CGPoint(x: 46.1, y: 112.5))
        array1.append(CGPoint(x: 46.1, y: 229.0))
        pointArrays.append(array1)
        array1 = [CGPoint]()
        array1.append(CGPoint(x: 164.6, y: 19.5))
        array1.append(CGPoint(x: 164.6, y: 114.0))
        array1.append(CGPoint(x: 165.1, y: 228.5))
        pointArrays.append(array1)
        array1 = [CGPoint]()
        array1.append(CGPoint(x: 46.1, y: 112.5))
        array1.append(CGPoint(x: 164.6, y: 114.0))
        pointArrays.append(array1)
        return pointArrays
    }
    
    class func getH1Arows() -> [UIBezierPath] {
        var arrows = [UIBezierPath]()
        let arrowPath = UIBezierPath.arrow(from: 	CGPoint(x: 47.6, y: 19.5)	, to:	CGPoint(x: 46.6, y: 48.5)		, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath)
        let arrowPath1 = UIBezierPath.arrow(from: 	CGPoint(x: 164.6, y: 19.5)	, to:	CGPoint(x: 164.6, y: 49.5)		, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath1)
        let arrowPath2 = UIBezierPath.arrow(from: 	CGPoint(x: 46.1, y: 112.5)	, to:	CGPoint(x: 80.6, y: 113.0)		, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath2)
        return arrows
    }
    
    class func getI() -> UIBezierPath {
        return getCharacter("i")
    }
    
    class func getIPoints() -> [[CGPoint]] {
        var pointArrays = [[CGPoint]]()
        var array1 = [CGPoint]()
        array1.append(CGPoint(x: 106.6, y: 120.0))
        array1.append(CGPoint(x: 106.1, y: 229.0))
        pointArrays.append(array1)
        array1 = [CGPoint]()
        array1.append(CGPoint(x: 106.6, y: 61.0))
        pointArrays.append(array1)
        return pointArrays
    }
    
    class func getIArows() -> [UIBezierPath] {
        var arrows = [UIBezierPath]()
        let arrowPath = UIBezierPath.arrow(from:	CGPoint(x: 106.6, y: 120.0)	, to:	CGPoint(x: 105.6, y: 140.5)	, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath)
        let arrowPath1 = UIBezierPath.arrow(from:	CGPoint(x: 106.6, y: 61.0)	, to:	CGPoint(x: 106.6, y: 64.0)	, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath1)
        return arrows
    }
    
    class func getI1Points() -> [[CGPoint]] {
        var pointArrays = [[CGPoint]]()
        var array1 = [CGPoint]()
        array1.append(CGPoint(x: 106.1, y: 21.0))
        array1.append(CGPoint(x: 106.1, y: 113.5))
        array1.append(CGPoint(x: 106.1, y: 227.5))
        pointArrays.append(array1)
        array1 = [CGPoint]()
        array1.append(CGPoint(x: 66.6, y: 20.0))
        array1.append(CGPoint(x: 146.1, y: 21.0))
        pointArrays.append(array1)
        array1 = [CGPoint]()
        array1.append(CGPoint(x: 64.6, y: 226.0))
        array1.append(CGPoint(x: 147.6, y: 226.0))
        pointArrays.append(array1)
        return pointArrays
    }
    
    class func getI1Arows() -> [UIBezierPath] {
        var arrows = [UIBezierPath]()
        let arrowPath = UIBezierPath.arrow(from: 	CGPoint(x: 106.1, y: 21.0)	, to:	CGPoint(x: 105.6, y: 63.5)		, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath)
        let arrowPath1 = UIBezierPath.arrow(from: 	CGPoint(x: 66.6, y: 20.0)	, to:	CGPoint(x: 106.1, y: 21.0)		, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath1)
        let arrowPath2 = UIBezierPath.arrow(from: 	CGPoint(x: 64.6, y: 226.0)	, to:	CGPoint(x: 106.1, y: 226.0)		, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath2)
        return arrows
    }
    
    class func getK() -> UIBezierPath {
        return getCharacter("k")
    }
    
    class func getKPoints() -> [[CGPoint]] {
        var pointArrays = [[CGPoint]]()
        var array1 = [CGPoint]()
        array1.append(CGPoint(x: 65.1, y: 58.5))
        array1.append(CGPoint(x: 65.1, y: 142.0))
        array1.append(CGPoint(x: 65.1, y: 227.0))
        pointArrays.append(array1)
        array1 = [CGPoint]()
        array1.append(CGPoint(x: 134.6, y: 117.5))
        array1.append(CGPoint(x: 81.6, y: 173.5))
        pointArrays.append(array1)
        array1 = [CGPoint]()
        array1.append(CGPoint(x: 93.6, y: 179.5))
        array1.append(CGPoint(x: 142.6, y: 229.0))
        pointArrays.append(array1)
        return pointArrays
    }
    
    class func getKArows() -> [UIBezierPath] {
        var arrows = [UIBezierPath]()
        let arrowPath = UIBezierPath.arrow(from:	CGPoint(x: 65.1, y: 58.5)	, to:	CGPoint(x: 65.1, y: 82.5)	, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath)
        let arrowPath1 = UIBezierPath.arrow(from:	CGPoint(x: 134.6, y: 117.5)	, to:	CGPoint(x: 116.6, y: 134.5)	, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath1)
        let arrowPath2 = UIBezierPath.arrow(from:	CGPoint(x: 93.6, y: 179.5)	, to:	CGPoint(x: 106.6, y: 193.0)	, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath2)
        return arrows
    }
    
    class func getK1Points() -> [[CGPoint]] {
        var pointArrays = [[CGPoint]]()
        var array1 = [CGPoint]()
        array1.append(CGPoint(x: 49.1, y: 18.0))
        array1.append(CGPoint(x: 49.1, y: 121.5))
        array1.append(CGPoint(x: 48.6, y: 229.5))
        pointArrays.append(array1)
        array1 = [CGPoint]()
        array1.append(CGPoint(x: 155.1, y: 16.0))
        array1.append(CGPoint(x: 69.6, y: 122.0))
        pointArrays.append(array1)
        array1 = [CGPoint]()
        array1.append(CGPoint(x: 69.6, y: 122.0))
        array1.append(CGPoint(x: 159.6, y: 230.5))
        pointArrays.append(array1)
        return pointArrays
    }
    
    class func getK1Arows() -> [UIBezierPath] {
        var arrows = [UIBezierPath]()
        let arrowPath = UIBezierPath.arrow(from: 	CGPoint(x: 49.1, y: 18.0)	, to:	CGPoint(x: 48.6, y: 49.5)		, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath)
        let arrowPath1 = UIBezierPath.arrow(from: 	CGPoint(x: 155.1, y: 16.0)	, to:	CGPoint(x: 134.1, y: 41.0)		, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath1)
        let arrowPath2 = UIBezierPath.arrow(from: 	CGPoint(x: 69.6, y: 122.0)	, to:	CGPoint(x: 93.1, y: 151.5)		, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath2)
        return arrows
    }
    
    class func getL() -> UIBezierPath {
        return getCharacter("l")
    }
    
    class func getLPoints() -> [[CGPoint]] {
        var pointArrays = [[CGPoint]]()
        var array1 = [CGPoint]()
        array1.append(CGPoint(x: 105.6, y: 58.0))
        array1.append(CGPoint(x: 105.6, y: 149.5))
        array1.append(CGPoint(x: 105.6, y: 227.0))
        pointArrays.append(array1)
        return pointArrays
    }
    
    class func getLArows() -> [UIBezierPath] {
        var arrows = [UIBezierPath]()
        let arrowPath = UIBezierPath.arrow(from:	CGPoint(x: 105.6, y: 58.0)	, to:	CGPoint(x: 105.6, y: 88.5)	, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath)
        return arrows
    }
    
    class func getL1Points() -> [[CGPoint]] {
        var pointArrays = [[CGPoint]]()
        var array1 = [CGPoint]()
        array1.append(CGPoint(x: 58.1, y: 18.5))
        array1.append(CGPoint(x: 58.1, y: 114.0))
        array1.append(CGPoint(x: 58.6, y: 225.5))
        pointArrays.append(array1)
        array1 = [CGPoint]()
        array1.append(CGPoint(x: 58.6, y: 225.5))
        array1.append(CGPoint(x: 164.1, y: 225.5))
        pointArrays.append(array1)
        return pointArrays
    }
    
    class func getL1Arows() -> [UIBezierPath] {
        var arrows = [UIBezierPath]()
        let arrowPath = UIBezierPath.arrow(from: 	CGPoint(x: 58.1, y: 18.5)	, to:	CGPoint(x: 58.1, y: 51.0)		, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath)
        let arrowPath1 = UIBezierPath.arrow(from: 	CGPoint(x: 58.6, y: 225.5)	, to:	CGPoint(x: 97.1, y: 225.5)		, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath1)
        return arrows
    }
    
    class func getP()-> UIBezierPath{
        return getCharacter("p")
    }
    
    class func getPPoints()->[[CGPoint]]{
        var pointArrays = [[CGPoint]]()
        var array1 = [CGPoint]()
        array1.append(CGPoint(x: 58.1, y: 119.0))
        array1.append(CGPoint(x: 58.1, y: 187.0))
        array1.append(CGPoint(x: 58.1, y: 281.5))
        pointArrays.append(array1)
        array1 = [CGPoint]()
        array1.append(CGPoint(x: 68.1, y: 141.5))
        array1.append(CGPoint(x: 149.1, y: 135.5))
        array1.append(CGPoint(x: 152.6, y: 205.0))
        array1.append(CGPoint(x: 71.6, y: 209.0))
        pointArrays.append(array1)
        return pointArrays
    }
    
    class func getPArows() -> [UIBezierPath] {
        var arrows = [UIBezierPath]()
        let arrowPath = UIBezierPath.arrow(from:	CGPoint(x: 58.1, y: 119.0)	, to:	CGPoint(x: 58.1, y: 153.5)	, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath)
        let arrowPath1 = UIBezierPath.arrow(from:	CGPoint(x: 68.1, y: 141.5)	, to:	CGPoint(x: 90.1, y: 123.0)	, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath1)
        return arrows
    }
    
    class func getP1Points()->[[CGPoint]]{
        var pointArrays = [[CGPoint]]()
        var array1 = [CGPoint]()
        array1.append(CGPoint(x: 47.6, y: 21.0))
        array1.append(CGPoint(x: 45.6, y: 112.5))
        array1.append(CGPoint(x: 45.1, y: 229.5))
        pointArrays.append(array1)
        array1 = [CGPoint]()
        array1.append(CGPoint(x: 47.6, y: 21.0))
        array1.append(CGPoint(x: 168.1, y: 77.5))
        array1.append(CGPoint(x: 60.6, y: 141.5))
        pointArrays.append(array1)
        return pointArrays
    }
    
    class func getP1Arows() -> [UIBezierPath] {
        var arrows = [UIBezierPath]()
        let arrowPath = UIBezierPath.arrow(from: 	CGPoint(x: 47.6, y: 21.0)	, to:	CGPoint(x: 46.1, y: 56.0)		, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath)
        let arrowPath1 = UIBezierPath.arrow(from: 	CGPoint(x: 47.6, y: 21.0)	, to:	CGPoint(x: 84.1, y: 20.5)		, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath1)
        return arrows
    }
    
    class func getO()-> UIBezierPath{
        return getCharacter("o")
    }
    
    class func getOPoints()->[[CGPoint]]{
        var pointArrays = [[CGPoint]]()
        var array1 = [CGPoint]()
        array1.append(CGPoint(x: 149.6, y: 139.5))
        array1.append(CGPoint(x: 58.6, y: 145.0))
        array1.append(CGPoint(x: 76.6, y: 221.0))
        array1.append(CGPoint(x: 149.6, y: 209.0))
        array1.append(CGPoint(x: 149.6, y: 139.5))
        pointArrays.append(array1)
        return pointArrays
    }
    
    class func getOArows() -> [UIBezierPath] {
        var arrows = [UIBezierPath]()
        let arrowPath = UIBezierPath.arrow(from:	CGPoint(x: 149.6, y: 139.5)	, to:	CGPoint(x: 128.6, y: 123.5)	, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath)
        return arrows
    }
    
    class func getO1Points()->[[CGPoint]]{
        var pointArrays = [[CGPoint]]()
        var array1 = [CGPoint]()
        array1.append(CGPoint(x: 106.1, y: 19.0))
        array1.append(CGPoint(x: 39.1, y: 113.5))
        array1.append(CGPoint(x: 105.6, y: 227.5))
        array1.append(CGPoint(x: 174.6, y: 112.5))
        array1.append(CGPoint(x: 106.1, y: 19.0))
        pointArrays.append(array1)
        return pointArrays
    }
    
    class func getO1Arows() -> [UIBezierPath] {
        var arrows = [UIBezierPath]()
        let arrowPath = UIBezierPath.arrow(from: 	CGPoint(x: 106.1, y: 19.0)	, to:	CGPoint(x: 69.6, y: 35.0)		, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath)
        return arrows
    }
    
    class func getN()-> UIBezierPath{
        return getCharacter("n")
    }
    
    class func getNPoints()->[[CGPoint]]{
        var pointArrays = [[CGPoint]]()
        var array1 = [CGPoint]()
        array1.append(CGPoint(x: 57, y: 118.0))
        array1.append(CGPoint(x: 57, y: 175.5))
        array1.append(CGPoint(x: 57, y: 228.0))
        pointArrays.append(array1)
        array1 = [CGPoint]()
        array1.append(CGPoint(x: 66.1, y: 137.0))
        array1.append(CGPoint(x: 144.6, y: 156.0))
        array1.append(CGPoint(x: 145.6, y: 226.0))
        pointArrays.append(array1)
        return pointArrays
    }
    
    class func getNArows() -> [UIBezierPath] {
        var arrows = [UIBezierPath]()
        let arrowPath = UIBezierPath.arrow(from:	CGPoint(x: 57, y: 118.0)	, to:	CGPoint(x: 57, y: 152.0)	, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath)
        let arrowPath1 = UIBezierPath.arrow(from:	CGPoint(x: 66.1, y: 137.0)	, to:	CGPoint(x: 86.1, y: 121.5)	, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath1)
        return arrows
    }
    
    class func getN1Points()->[[CGPoint]]{
        var pointArrays = [[CGPoint]]()
        var array1 = [CGPoint]()
        array1.append(CGPoint(x: 45.1, y: 18.5))
        array1.append(CGPoint(x: 46.1, y: 114.0))
        array1.append(CGPoint(x: 46.1, y: 228.5))
        pointArrays.append(array1)
        array1 = [CGPoint]()
        array1.append(CGPoint(x: 45.1, y: 18.5))
        array1.append(CGPoint(x: 99.1, y: 114.0))
        array1.append(CGPoint(x: 165.6, y: 226.5))
        array1.append(CGPoint(x: 165.6, y: 114.0))
        array1.append(CGPoint(x: 165.6, y: 18.0))
        pointArrays.append(array1)
        return pointArrays
    }
    
    class func getN1Arows() -> [UIBezierPath] {
        var arrows = [UIBezierPath]()
        let arrowPath = UIBezierPath.arrow(from: 	CGPoint(x: 45.1, y: 18.5)	, to:	CGPoint(x: 46.6, y: 63.0)		, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath)
        let arrowPath1 = UIBezierPath.arrow(from: 	CGPoint(x: 45.1, y: 18.5)	, to:	CGPoint(x: 71.1, y: 62.0)		, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath1)
        return arrows
    }
    
    class func getM() -> UIBezierPath {
        return getCharacter("m")
    }
    
    class func getMPoints() -> [[CGPoint]] {
        var pointArrays = [[CGPoint]]()
        var array1 = [CGPoint]()
        array1.append(CGPoint(x: 51.6, y: 120.5))
        array1.append(CGPoint(x: 51.6, y: 172.0))
        array1.append(CGPoint(x: 51.6, y: 227.5))
        pointArrays.append(array1)
        array1 = [CGPoint]()
        array1.append(CGPoint(x: 60.1, y: 126.5))
        array1.append(CGPoint(x: 105.1, y: 172.0))
        array1.append(CGPoint(x: 105.1, y: 227.5))
        pointArrays.append(array1)
        array1 = [CGPoint]()
        array1.append(CGPoint(x: 113.1, y: 129.0))
        array1.append(CGPoint(x: 159.6, y: 172.0))
        array1.append(CGPoint(x: 159.6, y: 227.5))
        pointArrays.append(array1)
        return pointArrays
    }
    
    class func getMArows() -> [UIBezierPath] {
        var arrows = [UIBezierPath]()
        let arrowPath = UIBezierPath.arrow(from:	CGPoint(x: 51.6, y: 120.5)	, to:	CGPoint(x: 51.6, y: 143.5)	, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath)
        let arrowPath1 = UIBezierPath.arrow(from:	CGPoint(x: 60.1, y: 126.5)	, to:	CGPoint(x: 78.6, y: 116.5)	, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath1)
        let arrowPath2 = UIBezierPath.arrow(from:	CGPoint(x: 113.1, y: 129.0)	, to:	CGPoint(x: 133.1, y: 116.5)	, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath2)
        return arrows
    }
    
    class func getM1Points() -> [[CGPoint]] {
        var pointArrays = [[CGPoint]]()
        var array1 = [CGPoint]()
        array1.append(CGPoint(x: 44.1, y: 19.0))
        array1.append(CGPoint(x: 44.6, y: 114.0))
        array1.append(CGPoint(x: 45.1, y: 228.0))
        pointArrays.append(array1)
        array1 = [CGPoint]()
        array1.append(CGPoint(x: 44.1, y: 19.0))
        array1.append(CGPoint(x: 105.6, y: 166.0))
        array1.append(CGPoint(x: 167.6, y: 19.0))
        array1.append(CGPoint(x: 165.6, y: 115.5))
        array1.append(CGPoint(x: 165.1, y: 228.0))
        pointArrays.append(array1)
        return pointArrays
    }
    
    class func getM1Arows() -> [UIBezierPath] {
        var arrows = [UIBezierPath]()
        let arrowPath = UIBezierPath.arrow(from: 	CGPoint(x: 44.1, y: 19.0)	, to:	CGPoint(x: 44.6, y: 55.5)		, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath)
        let arrowPath1 = UIBezierPath.arrow(from: 	CGPoint(x: 44.1, y: 19.0)	, to:	CGPoint(x: 66.6, y: 74.5)		, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath1)
        let arrowPath2 = UIBezierPath.arrow(from:	CGPoint(x: 113.1, y: 129.0)	, to:	CGPoint(x: 133.1, y: 116.5)	, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath2)
        return arrows
    }
    
    class func getTest() -> UIBezierPath {
        let cfURL = Bundle.main.url(forResource: "HLHOCTRO", withExtension: "TTF") as! CFURL
        CTFontManagerRegisterFontsForURL(cfURL, CTFontManagerScope.process, nil)
        let font = UIFont(name: "HL hoctro", size: 64)!
        
        var unichars = [UniChar]("d".utf16)
        var glyphs = [CGGlyph](repeating: 0, count: unichars.count)
        CTFontGetGlyphsForCharacters(font, &unichars, &glyphs, unichars.count)
        let cgpath = CTFontCreatePathForGlyph(font, glyphs[0], nil)!
        let path = UIBezierPath(cgPath: cgpath)
        let trans = CGAffineTransform(scaleX: 6, y: -6)
        path.apply(trans)
        let translate = CGAffineTransform(translationX: 50, y: 350)
        path.apply(translate)
        return path
    }
    
    class func getDauAw() -> UIBezierPath {
        let path1 = UIBezierPath()
        let startPoint = CGPoint(x: 134, y:55.8125)
        path1.move(to: startPoint)
        path1.addQuadCurve(to: CGPoint(x: 144.875, y:81.21875), controlPoint: CGPoint(x: 135.6875, y:70.25))
        path1.addQuadCurve(to:  CGPoint(x: 165.5, y:92.1875), controlPoint: CGPoint(x: 154.0625, y:92.1875))
        path1.addQuadCurve(to:  CGPoint(x: 185.9375, y:81.03125), controlPoint: CGPoint(x: 176.9375, y:92.1875))
        path1.addQuadCurve(to:  CGPoint(x: 196.625, y:55.8125), controlPoint: CGPoint(x: 194.9375, y:69.875))
        path1.addLine(to: CGPoint(x: 220.625, y:55.8125))
        path1.addQuadCurve(to:  CGPoint(x: 210.03125, y:89.46875), controlPoint: CGPoint(x: 218.375, y:76.625))
        path1.addQuadCurve(to:  CGPoint(x: 189.875, y:109.625), controlPoint: CGPoint(x: 201.6875, y:102.3125))
        path1.addQuadCurve(to:  CGPoint(x: 165.5, y:116.9375), controlPoint: CGPoint(x: 178.0625, y:116.9375))
        path1.addQuadCurve(to:  CGPoint(x: 141.03125, y:109.625), controlPoint: CGPoint(x: 152.9375, y:116.9375))
        path1.addQuadCurve(to:  CGPoint(x: 120.78125, y:89.46875), controlPoint: CGPoint(x: 129.125, y:102.3125))
        path1.addQuadCurve(to:  CGPoint(x: 110, y:55.8125), controlPoint: CGPoint(x: 112.4375, y:76.625))
        path1.close()
        let trans = CGAffineTransform(scaleX: 0.8, y: 0.8)
        path1.apply(trans)
        let translate = CGAffineTransform(translationX: 50, y: 10)
        path1.apply(translate)
        return path1
    }
    
    class func getDauAwPoints() -> [CGPoint] {
        var array1 = [CGPoint]()
        array1.append(CGPoint(x:149.5, y: 63.0))
        array1.append(CGPoint(x:183.0, y: 94.0))
        array1.append(CGPoint(x:216.0, y: 63.5))
        return array1
    }
    
    class func getAw() -> UIBezierPath {
        return getCharacter("ă")
    }
    
    class func getAwPoints() -> [[CGPoint]] {
        var pointArrays = self.getAPoints()
        pointArrays.append(self.getDauAwPoints())
        return pointArrays
    }
    
    class func getAA() -> UIBezierPath {
        return getCharacter("â")
    }
    
    class func getAAPoints() -> [[CGPoint]] {
        var pointArrays = self.getAPoints()
        pointArrays.append(self.getDauMuPoints())
        return pointArrays
    }
    
    class func getJ()-> UIBezierPath{
        return getCharacter("j")
    }
    
    class func getJPoints()->[[CGPoint]]{
        var pointArrays = [[CGPoint]]()
        var array1 = [CGPoint]()
        array1.append(CGPoint(x: 120.1, y: 120.0))
        array1.append(CGPoint(x: 119.1, y: 224.0))
        array1.append(CGPoint(x: 56.1, y: 276.5))
        pointArrays.append(array1)
        array1 = [CGPoint]()
        array1.append(CGPoint(x: 118.6, y: 60.0))
        pointArrays.append(array1)
        return pointArrays
    }
    
    class func getJArows() -> [UIBezierPath] {
        var arrows = [UIBezierPath]()
        let arrowPath = UIBezierPath.arrow(from:	CGPoint(x: 120.1, y: 120.0)	, to:	CGPoint(x: 119.6, y: 140.0)	, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath)
        let arrowPath1 = UIBezierPath.arrow(from:	CGPoint(x: 118.6, y: 60.0)	, to:	CGPoint(x: 119.1, y: 68.0)	, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath1)
        return arrows
    }
    
    class func getJ1Points()->[[CGPoint]]{
        var pointArrays = [[CGPoint]]()
        var array1 = [CGPoint]()
        array1.append(CGPoint(x: 116.1, y: 20.5))
        array1.append(CGPoint(x: 115.1, y: 114.5))
        array1.append(CGPoint(x: 114.1, y: 189.5))
        array1.append(CGPoint(x: 41.1, y: 219.0))
        pointArrays.append(array1)
        array1 = [CGPoint]()
        array1.append(CGPoint(x: 75.1, y: 19.5))
        array1.append(CGPoint(x: 156.1, y: 19.0))
        pointArrays.append(array1)
        return pointArrays
    }
    
    class func getJ1Arows() -> [UIBezierPath] {
        var arrows = [UIBezierPath]()
        let arrowPath = UIBezierPath.arrow(from: 	CGPoint(x: 116.1, y: 20.5)	, to:	CGPoint(x: 114.6, y: 59.0)		, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath)
        let arrowPath1 = UIBezierPath.arrow(from: 	CGPoint(x: 75.1, y: 19.5)	, to:	CGPoint(x: 116.1, y: 20.5)		, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath1)
        return arrows
    }
    
    class func getOO() -> UIBezierPath{
        return getCharacter("ô")
    }
    
    class func getOOPoints() -> [[CGPoint]]{
        var array1 = self.getOPoints()
        array1.append(self.getDauMuPoints())
        return array1
    }
    
    class func getDauMu() -> UIBezierPath{
        let path = UIBezierPath()
        let startPoint = CGPoint(x: 111.0, y: 110.0)
        path.move(to: startPoint)
        path.addLine(to: CGPoint(x:155.5,y: 50.0))
        path.addLine(to: CGPoint(x:178.5,y: 50.5))
        path.addLine(to: CGPoint(x:220.5,y: 110.0))
        path.addLine(to: CGPoint(x:191.0,y: 111.0))
        path.addLine(to: CGPoint(x:167.5,y: 80.5))
        path.addLine(to: CGPoint(x:141.0,y: 110.5))
        path.close()
        let trans = CGAffineTransform(scaleX: 0.8, y: 0.8)
        path.apply(trans)
        let translate = CGAffineTransform(translationX: 50, y: 10)
        path.apply(translate)
        
        return path
    }
    
    class func getDauMuPoints() -> [CGPoint]{
        var array1 = [CGPoint]()
        array1.append(CGPoint(x:152.0,y: 94.5))
        array1.append(CGPoint(x:183.0,y: 58.5))
        array1.append(CGPoint(x:212.5,y: 92.0))
        return array1
    }
    
    class func getOW() -> UIBezierPath{
        return getCharacter("ơ")
    }
    
    class func getDauOW() -> UIBezierPath{
        let path = UIBezierPath()
        path.move(to:  CGPoint(x:215.5, y:134.0))
        path.addQuadCurve(to:  CGPoint(x:209.0, y:96.0), controlPoint: CGPoint(x:220.5, y:113.5))
        path.addQuadCurve(to:  CGPoint(x:212.5, y:80.0), controlPoint: CGPoint(x:197.0, y:86.5))
        path.addQuadCurve(to:  CGPoint(x:233.0, y:101.0), controlPoint: CGPoint(x:230.0, y:86.0))
        path.addQuadCurve(to:  CGPoint(x:233.0, y:127.5), controlPoint: CGPoint(x:237.5, y:114.5))
        path.addLine(to: CGPoint(x:227.0, y:143.5))
        path.close()
        return path
        
    }
    
    class func getOWPoints()->[[CGPoint]]{
        var pointArrays = self.getOPoints()
        var array1 = [CGPoint]()
        array1.append(CGPoint(x:208.5,y: 86.0))
        array1.append(CGPoint(x:225.5,y: 104.0))
        array1.append(CGPoint(x:220.5,y: 137.5))
        pointArrays.append(array1)
        return pointArrays
    }
    
    class func getCharacter(_ character: String) -> UIBezierPath {
        let cfURL = Bundle.main.url(forResource: "PENMP", withExtension: "TTF") as! CFURL
        CTFontManagerRegisterFontsForURL(cfURL, CTFontManagerScope.process, nil)
        let font = UIFont(name: "Penmanship Print", size: 40)!
        var unichars = [UniChar](character.utf16)
        var glyphs = [CGGlyph](repeating: 0, count: unichars.count)
        CTFontGetGlyphsForCharacters(font, &unichars, &glyphs, unichars.count)
        let cgpath = CTFontCreatePathForGlyph(font, glyphs[0], nil)!
        let path = UIBezierPath(cgPath: cgpath)
        let trans = CGAffineTransform(scaleX: 8, y: -8)
        path.apply(trans)
        let translate = CGAffineTransform(translationX: 10 - path.bounds.minX, y: 10 - path.bounds.minY)
        path.apply(translate)
        return path
    }
    
    class func get0Points()->[[CGPoint]]{
        var pointArrays = [[CGPoint]]()
        var array1 = [CGPoint]()
        array1.append(CGPoint(x: 105.6, y: 18.5))
        array1.append(CGPoint(x: 46.1, y: 114.0))
        array1.append(CGPoint(x: 105.6, y: 226.0))
        array1.append(CGPoint(x: 165.1, y: 112.5))
        array1.append(CGPoint(x: 105.6, y: 18.5))
        pointArrays.append(array1)
        return pointArrays
    }
    
    class func get0Arows() -> [UIBezierPath] {
        var arrows = [UIBezierPath]()
        let arrowPath = UIBezierPath.arrow(from:	CGPoint(x: 105.6, y: 18.5)	, to:	CGPoint(x: 81.1, y: 26.5)	, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath)
        return arrows
    }
    
    class func get1Points()->[[CGPoint]]{
        var pointArrays = [[CGPoint]]()
        var array1 = [CGPoint]()
        array1.append(CGPoint(x: 56.6, y: 71.0))
        array1.append(CGPoint(x: 108.1, y: 19.0))
        array1.append(CGPoint(x: 105.1, y: 121.5))
        array1.append(CGPoint(x: 105.1, y: 224.5))
        pointArrays.append(array1)
        array1 = [CGPoint]()
        array1.append(CGPoint(x: 64.1, y: 226.0))
        array1.append(CGPoint(x: 145.1, y: 226))
        pointArrays.append(array1)
        return pointArrays
    }
    
    class func get1Arows() -> [UIBezierPath] {
        var arrows = [UIBezierPath]()
        let arrowPath = UIBezierPath.arrow(from:	CGPoint(x: 56.6, y: 71.0)	, to:	CGPoint(x: 82.6, y: 48.0)	, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath)
        let arrowPath1 = UIBezierPath.arrow(from:	CGPoint(x: 64.1, y: 226.0)	, to:	CGPoint(x: 94.1, y: 226.0)	, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath1)
        return arrows
    }
    
    class func get2Points()->[[CGPoint]]{
        var pointArrays = [[CGPoint]]()
        var array1 = [CGPoint]()
        array1.append(CGPoint(x: 52.1, y: 78.5))
        array1.append(CGPoint(x: 104.6, y: 17.5))
        array1.append(CGPoint(x: 146.6, y: 110.5))
        array1.append(CGPoint(x: 56.6, y: 225.0))
        array1.append(CGPoint(x: 159.1, y: 225.0))
        pointArrays.append(array1)
        return pointArrays
    }
    
    class func get2Arows() -> [UIBezierPath] {
        var arrows = [UIBezierPath]()
        let arrowPath = UIBezierPath.arrow(from:	CGPoint(x: 52.1, y: 78.5)	, to:	CGPoint(x: 57.6, y: 49.5)	, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath)
        return arrows
    }
    
    class func get3Points()->[[CGPoint]]{
        var pointArrays = [[CGPoint]]()
        var array1 = [CGPoint]()
        array1.append(CGPoint(x: 44.1, y: 19.5))
        array1.append(CGPoint(x: 150.6, y: 20.0))
        array1.append(CGPoint(x: 68.6, y: 111.5))
        array1.append(CGPoint(x: 164.6, y: 168.0))
        array1.append(CGPoint(x: 39.6, y: 206.5))
        pointArrays.append(array1)
        return pointArrays
    }
    
    class func get3Arows() -> [UIBezierPath] {
        var arrows = [UIBezierPath]()
        let arrowPath = UIBezierPath.arrow(from:	CGPoint(x: 44.1, y: 19.5)	, to:	CGPoint(x: 82.1, y: 19.5)	, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath)
        return arrows
    }
    
    class func get4Points()->[[CGPoint]]{
        var pointArrays = [[CGPoint]]()
        var array1 = [CGPoint]()
        array1.append(CGPoint(x: 135.1, y: 19.5))
        array1.append(CGPoint(x: 36.1, y: 166.5))
        array1.append(CGPoint(x: 164.6, y: 165.5))
        pointArrays.append(array1)
        array1 = [CGPoint]()
        array1.append(CGPoint(x: 132.6, y: 19.5))
        array1.append(CGPoint(x: 132.6, y: 119.0))
        array1.append(CGPoint(x: 132.6, y: 226.0))
        pointArrays.append(array1)
        return pointArrays
    }
    
    class func get4Arows() -> [UIBezierPath] {
        var arrows = [UIBezierPath]()
        let arrowPath = UIBezierPath.arrow(from:	CGPoint(x: 135.1, y: 19.5)	, to:	CGPoint(x: 109.1, y: 55.5)	, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath)
        let arrowPath1 = UIBezierPath.arrow(from:	CGPoint(x: 132.6, y: 19.5)	, to:	CGPoint(x: 132.6, y: 67.5)	, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath1)
        return arrows
    }
    
    class func get5Points()->[[CGPoint]]{
        var pointArrays = [[CGPoint]]()
        var array1 = [CGPoint]()
        array1.append(CGPoint(x: 54.1, y: 21.0))
        array1.append(CGPoint(x: 51.6, y: 117.5))
        array1.append(CGPoint(x: 164.1, y: 171.5))
        array1.append(CGPoint(x: 38.6, y: 206.5))
        pointArrays.append(array1)
        array1 = [CGPoint]()
        array1.append(CGPoint(x: 54.1, y: 21.0))
        array1.append(CGPoint(x: 152.1, y: 19.5))
        pointArrays.append(array1)
        return pointArrays
    }
    
    class func get5Arows() -> [UIBezierPath] {
        var arrows = [UIBezierPath]()
        let arrowPath = UIBezierPath.arrow(from:	CGPoint(x: 54.1, y: 21.0)	, to:	CGPoint(x: 53.1, y: 48.5)	, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath)
        let arrowPath1 = UIBezierPath.arrow(from:	CGPoint(x: 54.1, y: 21.0)	, to:	CGPoint(x: 80.6, y: 20.0)	, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath1)
        return arrows
    }
    
    class func get6Points()->[[CGPoint]]{
        var pointArrays = [[CGPoint]]()
        var array1 = [CGPoint]()
        array1.append(CGPoint(x: 145.6, y: 16.0))
        array1.append(CGPoint(x: 55.6, y: 134.0))
        array1.append(CGPoint(x: 105.6, y: 225.5))
        array1.append(CGPoint(x: 158.6, y: 140.0))
        array1.append(CGPoint(x: 99.1, y: 111.5))
        pointArrays.append(array1)
        return pointArrays
    }
    
    class func get6Arows() -> [UIBezierPath] {
        var arrows = [UIBezierPath]()
        let arrowPath = UIBezierPath.arrow(from:	CGPoint(x: 145.6, y: 16.0)	, to:	CGPoint(x: 119.6, y: 50.0)	, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath)
        return arrows
    }
    
    class func get7Points()->[[CGPoint]]{
        var pointArrays = [[CGPoint]]()
        var array1 = [CGPoint]()
        array1.append(CGPoint(x: 39.1, y: 21.5))
        array1.append(CGPoint(x: 159.1, y: 20.5))
        array1.append(CGPoint(x: 116.1, y: 113.0))
        array1.append(CGPoint(x: 61.6, y: 227.5))
        pointArrays.append(array1)
        return pointArrays
    }
    
    class func get7Arows() -> [UIBezierPath] {
        var arrows = [UIBezierPath]()
        let arrowPath = UIBezierPath.arrow(from:	CGPoint(x: 39.1, y: 21.5)	, to:	CGPoint(x: 88.1, y: 21.5)	, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath)
        return arrows
    }
    
    class func get8Points()->[[CGPoint]]{
        var pointArrays = [[CGPoint]]()
        var array1 = [CGPoint]()
        array1.append(CGPoint(x: 105.6, y: 19.0))
        array1.append(CGPoint(x: 51.1, y: 60.5))
        array1.append(CGPoint(x: 105.6, y: 113.0))
        array1.append(CGPoint(x: 161.1, y: 60.5))
        array1.append(CGPoint(x: 105.6, y: 19.0))
        pointArrays.append(array1)
        array1 = [CGPoint]()
        array1.append(CGPoint(x: 105.6, y: 113.0))
        array1.append(CGPoint(x: 46.6, y: 172.5))
        array1.append(CGPoint(x: 105.6, y: 227.0))
        array1.append(CGPoint(x: 163.6, y: 172.5))
        array1.append(CGPoint(x: 105.6, y: 113.0))
        pointArrays.append(array1)
        return pointArrays
    }
    
    class func get8Arows() -> [UIBezierPath] {
        var arrows = [UIBezierPath]()
        let arrowPath = UIBezierPath.arrow(from:	CGPoint(x: 105.6, y: 19.0)	, to:	CGPoint(x: 78.1, y: 25.5)	, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath)
        let arrowPath1 = UIBezierPath.arrow(from:	CGPoint(x: 105.6, y: 113.0)	, to:	CGPoint(x: 69.6, y: 125.5)	, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath1)
        return arrows
    }
    
    class func get9Points()->[[CGPoint]]{
        var pointArrays = [[CGPoint]]()
        var array1 = [CGPoint]()
        array1.append(CGPoint(x: 155.1, y: 111.5))
        array1.append(CGPoint(x: 105.1, y: 19.0))
        array1.append(CGPoint(x: 55.6, y: 111.5))
        array1.append(CGPoint(x: 155.1, y: 111.5))
        array1.append(CGPoint(x: 66.6, y: 227.5))
        pointArrays.append(array1)
        return pointArrays
    }
    
    class func get9Arows() -> [UIBezierPath] {
        var arrows = [UIBezierPath]()
        let arrowPath = UIBezierPath.arrow(from:	CGPoint(x: 155.1, y: 111.5)	, to:	CGPoint(x: 165.6, y: 83.0)	, tailWidth: 1, headWidth: 6, headLength: 6)
        arrows.append(arrowPath)
        return arrows
    }
    
}
