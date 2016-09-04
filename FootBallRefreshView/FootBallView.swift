//
//  FootBallView.swift
//  CAShapeLayerTest
//
//  Created by 武飞跃 on 2016/8/1.
//  Copyright © 2016年 RG. All rights reserved.
//

import UIKit

class FootBallView: UIView {
    
    private var bezierPath:UIBezierPath!
    private var bezierLayer:FootBallLayer!
    private var moveUpDist: CGFloat!
    private var upDuration:CGFloat
    private var timingFunc:CAMediaTimingFunction!
    private var fillColor:UIColor!
    
    init(frame: CGRect, timingFunc:CAMediaTimingFunction, moveUpDuration:CGFloat, moveUpDist:CGFloat, color:UIColor) {
        
        self.fillColor = color
        self.upDuration = moveUpDuration
        self.timingFunc = timingFunc
        self.moveUpDist = moveUpDist
        super.init(frame: frame)
      
        self.frame.size = CGSize(width: 30, height: 30)
        self.configView()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func configView(){

        bezierLayer = FootBallLayer()
        bezierLayer.position = CGPoint.zero
        bezierLayer.frame = self.bounds
        self.layer.addSublayer(bezierLayer)
        bezierLayer.upDuration = 1
        bezierLayer.timeFunc = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        
        bezierLayer.fillColor = fillColor.CGColor
        bezierLayer.path = drawCanvas()
        
    }
    
    func endAnimation(){
        bezierLayer.moveDown(moveUpDist)
        self.bezierLayer.stopAnimation()
        
    }
    
    func didRelease(){
        self.bezierLayer.animation()
    }

    private func drawCanvas() -> CGPath{
        
        let bezierPath = UIBezierPath()
        bezierPath.moveToPoint(CGPointMake(14.34, 0))
        bezierPath.addCurveToPoint(CGPointMake(15.53, 0), controlPoint1: CGPointMake(14.74, 0), controlPoint2: CGPointMake(15.14, 0))
        bezierPath.addCurveToPoint(CGPointMake(15.63, 0.01), controlPoint1: CGPointMake(15.57, 0), controlPoint2: CGPointMake(15.6, 0.01))
        bezierPath.addCurveToPoint(CGPointMake(17.81, 0.26), controlPoint1: CGPointMake(16.36, 0.09), controlPoint2: CGPointMake(17.09, 0.14))
        bezierPath.addCurveToPoint(CGPointMake(22.96, 2.18), controlPoint1: CGPointMake(19.65, 0.56), controlPoint2: CGPointMake(21.37, 1.2))
        bezierPath.addCurveToPoint(CGPointMake(27.51, 6.65), controlPoint1: CGPointMake(24.81, 3.33), controlPoint2: CGPointMake(26.31, 4.84))
        bezierPath.addCurveToPoint(CGPointMake(29.32, 10.34), controlPoint1: CGPointMake(28.26, 7.81), controlPoint2: CGPointMake(28.89, 9.03))
        bezierPath.addCurveToPoint(CGPointMake(29.95, 13.73), controlPoint1: CGPointMake(29.68, 11.44), controlPoint2: CGPointMake(29.87, 12.57))
        bezierPath.addCurveToPoint(CGPointMake(30, 14.25), controlPoint1: CGPointMake(29.97, 13.9), controlPoint2: CGPointMake(29.98, 14.07))
        bezierPath.addCurveToPoint(CGPointMake(30, 15.91), controlPoint1: CGPointMake(30, 14.8), controlPoint2: CGPointMake(30, 15.36))
        bezierPath.addCurveToPoint(CGPointMake(29.98, 15.98), controlPoint1: CGPointMake(29.99, 15.93), controlPoint2: CGPointMake(29.98, 15.96))
        bezierPath.addCurveToPoint(CGPointMake(29.9, 16.98), controlPoint1: CGPointMake(29.95, 16.31), controlPoint2: CGPointMake(29.94, 16.65))
        bezierPath.addCurveToPoint(CGPointMake(28.94, 20.78), controlPoint1: CGPointMake(29.76, 18.29), controlPoint2: CGPointMake(29.47, 19.56))
        bezierPath.addCurveToPoint(CGPointMake(25.49, 25.83), controlPoint1: CGPointMake(28.11, 22.68), controlPoint2: CGPointMake(26.99, 24.38))
        bezierPath.addCurveToPoint(CGPointMake(20.66, 28.93), controlPoint1: CGPointMake(24.09, 27.18), controlPoint2: CGPointMake(22.47, 28.2))
        bezierPath.addCurveToPoint(CGPointMake(18.2, 29.66), controlPoint1: CGPointMake(19.87, 29.25), controlPoint2: CGPointMake(19.06, 29.54))
        bezierPath.addCurveToPoint(CGPointMake(16.3, 29.91), controlPoint1: CGPointMake(17.57, 29.76), controlPoint2: CGPointMake(16.94, 29.83))
        bezierPath.addCurveToPoint(CGPointMake(15.47, 30), controlPoint1: CGPointMake(16.03, 29.94), controlPoint2: CGPointMake(15.75, 30.01))
        bezierPath.addCurveToPoint(CGPointMake(13.56, 29.9), controlPoint1: CGPointMake(14.83, 29.99), controlPoint2: CGPointMake(14.19, 29.96))
        bezierPath.addCurveToPoint(CGPointMake(11.73, 29.63), controlPoint1: CGPointMake(12.94, 29.85), controlPoint2: CGPointMake(12.33, 29.79))
        bezierPath.addCurveToPoint(CGPointMake(7.67, 28.05), controlPoint1: CGPointMake(10.32, 29.25), controlPoint2: CGPointMake(8.94, 28.77))
        bezierPath.addCurveToPoint(CGPointMake(2.59, 23.34), controlPoint1: CGPointMake(5.59, 26.89), controlPoint2: CGPointMake(3.91, 25.29))
        bezierPath.addCurveToPoint(CGPointMake(0.05, 16.22), controlPoint1: CGPointMake(1.12, 21.18), controlPoint2: CGPointMake(0.26, 18.81))
        bezierPath.addCurveToPoint(CGPointMake(0, 15.78), controlPoint1: CGPointMake(0.03, 16.07), controlPoint2: CGPointMake(0.02, 15.93))
        bezierPath.addCurveToPoint(CGPointMake(0, 14.35), controlPoint1: CGPointMake(0, 15.31), controlPoint2: CGPointMake(0, 14.83))
        bezierPath.addCurveToPoint(CGPointMake(0.02, 14.25), controlPoint1: CGPointMake(0.01, 14.32), controlPoint2: CGPointMake(0.02, 14.28))
        bezierPath.addCurveToPoint(CGPointMake(0.15, 12.98), controlPoint1: CGPointMake(0.06, 13.83), controlPoint2: CGPointMake(0.09, 13.4))
        bezierPath.addCurveToPoint(CGPointMake(1.64, 8.22), controlPoint1: CGPointMake(0.39, 11.31), controlPoint2: CGPointMake(0.89, 9.73))
        bezierPath.addCurveToPoint(CGPointMake(6.73, 2.51), controlPoint1: CGPointMake(2.82, 5.87), controlPoint2: CGPointMake(4.52, 3.97))
        bezierPath.addCurveToPoint(CGPointMake(13.71, 0.07), controlPoint1: CGPointMake(8.85, 1.12), controlPoint2: CGPointMake(11.17, 0.27))
        bezierPath.addCurveToPoint(CGPointMake(14.34, 0), controlPoint1: CGPointMake(13.92, 0.05), controlPoint2: CGPointMake(14.13, 0.02))
        bezierPath.closePath()
        bezierPath.moveToPoint(CGPointMake(20.75, 13.06))
        bezierPath.addCurveToPoint(CGPointMake(20.73, 13.05), controlPoint1: CGPointMake(20.74, 13.06), controlPoint2: CGPointMake(20.74, 13.05))
        bezierPath.addCurveToPoint(CGPointMake(20.71, 12.73), controlPoint1: CGPointMake(20.72, 12.94), controlPoint2: CGPointMake(20.72, 12.84))
        bezierPath.addCurveToPoint(CGPointMake(20.58, 12.46), controlPoint1: CGPointMake(20.7, 12.63), controlPoint2: CGPointMake(20.68, 12.53))
        bezierPath.addCurveToPoint(CGPointMake(15.48, 8.88), controlPoint1: CGPointMake(18.87, 11.27), controlPoint2: CGPointMake(17.17, 10.08))
        bezierPath.addCurveToPoint(CGPointMake(15.29, 8.87), controlPoint1: CGPointMake(15.41, 8.84), controlPoint2: CGPointMake(15.36, 8.84))
        bezierPath.addCurveToPoint(CGPointMake(14.27, 9.34), controlPoint1: CGPointMake(14.95, 9.03), controlPoint2: CGPointMake(14.61, 9.18))
        bezierPath.addCurveToPoint(CGPointMake(9.8, 11.38), controlPoint1: CGPointMake(12.78, 10.02), controlPoint2: CGPointMake(11.29, 10.7))
        bezierPath.addCurveToPoint(CGPointMake(9.68, 11.54), controlPoint1: CGPointMake(9.72, 11.42), controlPoint2: CGPointMake(9.68, 11.46))
        bezierPath.addCurveToPoint(CGPointMake(9.59, 12.38), controlPoint1: CGPointMake(9.65, 11.82), controlPoint2: CGPointMake(9.62, 12.1))
        bezierPath.addCurveToPoint(CGPointMake(9.3, 15.12), controlPoint1: CGPointMake(9.49, 13.29), controlPoint2: CGPointMake(9.39, 14.21))
        bezierPath.addCurveToPoint(CGPointMake(9.02, 17.67), controlPoint1: CGPointMake(9.2, 15.97), controlPoint2: CGPointMake(9.12, 16.82))
        bezierPath.addCurveToPoint(CGPointMake(9.11, 17.86), controlPoint1: CGPointMake(9.01, 17.76), controlPoint2: CGPointMake(9.04, 17.81))
        bezierPath.addCurveToPoint(CGPointMake(14.07, 21.47), controlPoint1: CGPointMake(10.76, 19.06), controlPoint2: CGPointMake(12.42, 20.27))
        bezierPath.addCurveToPoint(CGPointMake(14.24, 21.5), controlPoint1: CGPointMake(14.13, 21.52), controlPoint2: CGPointMake(14.17, 21.53))
        bezierPath.addCurveToPoint(CGPointMake(17.4, 20.21), controlPoint1: CGPointMake(15.29, 21.07), controlPoint2: CGPointMake(16.35, 20.65))
        bezierPath.addCurveToPoint(CGPointMake(20.02, 18.93), controlPoint1: CGPointMake(18.3, 19.84), controlPoint2: CGPointMake(19.18, 19.43))
        bezierPath.addCurveToPoint(CGPointMake(20.14, 18.74), controlPoint1: CGPointMake(20.1, 18.89), controlPoint2: CGPointMake(20.13, 18.83))
        bezierPath.addCurveToPoint(CGPointMake(20.2, 18.1), controlPoint1: CGPointMake(20.15, 18.53), controlPoint2: CGPointMake(20.18, 18.32))
        bezierPath.addCurveToPoint(CGPointMake(20.44, 15.63), controlPoint1: CGPointMake(20.28, 17.28), controlPoint2: CGPointMake(20.36, 16.45))
        bezierPath.addCurveToPoint(CGPointMake(20.59, 14.21), controlPoint1: CGPointMake(20.49, 15.16), controlPoint2: CGPointMake(20.54, 14.68))
        bezierPath.addCurveToPoint(CGPointMake(20.75, 13.06), controlPoint1: CGPointMake(20.64, 13.83), controlPoint2: CGPointMake(20.7, 13.44))
        bezierPath.closePath()
        bezierPath.moveToPoint(CGPointMake(25.65, 9.47))
        bezierPath.addCurveToPoint(CGPointMake(25.49, 7.05), controlPoint1: CGPointMake(25.64, 8.66), controlPoint2: CGPointMake(25.63, 7.85))
        bezierPath.addCurveToPoint(CGPointMake(24.82, 5.59), controlPoint1: CGPointMake(25.4, 6.5), controlPoint2: CGPointMake(25.25, 5.98))
        bezierPath.addCurveToPoint(CGPointMake(24.3, 5.11), controlPoint1: CGPointMake(24.65, 5.43), controlPoint2: CGPointMake(24.48, 5.26))
        bezierPath.addCurveToPoint(CGPointMake(21.36, 3), controlPoint1: CGPointMake(23.38, 4.33), controlPoint2: CGPointMake(22.35, 3.69))
        bezierPath.addCurveToPoint(CGPointMake(20.32, 2.51), controlPoint1: CGPointMake(21.04, 2.78), controlPoint2: CGPointMake(20.7, 2.61))
        bezierPath.addCurveToPoint(CGPointMake(20.07, 2.47), controlPoint1: CGPointMake(20.24, 2.49), controlPoint2: CGPointMake(20.15, 2.46))
        bezierPath.addCurveToPoint(CGPointMake(18.45, 2.7), controlPoint1: CGPointMake(19.53, 2.54), controlPoint2: CGPointMake(18.99, 2.6))
        bezierPath.addCurveToPoint(CGPointMake(16.26, 3.28), controlPoint1: CGPointMake(17.71, 2.83), controlPoint2: CGPointMake(16.97, 2.99))
        bezierPath.addCurveToPoint(CGPointMake(15.5, 3.69), controlPoint1: CGPointMake(16, 3.38), controlPoint2: CGPointMake(15.75, 3.55))
        bezierPath.addCurveToPoint(CGPointMake(15.43, 3.81), controlPoint1: CGPointMake(15.46, 3.71), controlPoint2: CGPointMake(15.43, 3.77))
        bezierPath.addCurveToPoint(CGPointMake(15.47, 5.36), controlPoint1: CGPointMake(15.44, 4.33), controlPoint2: CGPointMake(15.45, 4.84))
        bezierPath.addCurveToPoint(CGPointMake(15.51, 7.45), controlPoint1: CGPointMake(15.48, 6.05), controlPoint2: CGPointMake(15.5, 6.75))
        bezierPath.addCurveToPoint(CGPointMake(15.51, 8.35), controlPoint1: CGPointMake(15.51, 7.75), controlPoint2: CGPointMake(15.5, 8.05))
        bezierPath.addCurveToPoint(CGPointMake(15.66, 8.68), controlPoint1: CGPointMake(15.51, 8.47), controlPoint2: CGPointMake(15.54, 8.6))
        bezierPath.addCurveToPoint(CGPointMake(20.76, 12.34), controlPoint1: CGPointMake(17.36, 9.9), controlPoint2: CGPointMake(19.06, 11.12))
        bezierPath.addCurveToPoint(CGPointMake(20.92, 12.36), controlPoint1: CGPointMake(20.8, 12.36), controlPoint2: CGPointMake(20.88, 12.38))
        bezierPath.addCurveToPoint(CGPointMake(25.49, 10.93), controlPoint1: CGPointMake(22.45, 11.89), controlPoint2: CGPointMake(23.97, 11.41))
        bezierPath.addCurveToPoint(CGPointMake(25.6, 10.78), controlPoint1: CGPointMake(25.58, 10.91), controlPoint2: CGPointMake(25.6, 10.87))
        bezierPath.addCurveToPoint(CGPointMake(25.65, 9.47), controlPoint1: CGPointMake(25.62, 10.35), controlPoint2: CGPointMake(25.63, 9.91))
        bezierPath.closePath()
        bezierPath.moveToPoint(CGPointMake(24.49, 21.49))
        bezierPath.addCurveToPoint(CGPointMake(24.38, 21.33), controlPoint1: CGPointMake(24.52, 21.42), controlPoint2: CGPointMake(24.47, 21.37))
        bezierPath.addCurveToPoint(CGPointMake(22.69, 20.43), controlPoint1: CGPointMake(23.82, 21.03), controlPoint2: CGPointMake(23.26, 20.73))
        bezierPath.addCurveToPoint(CGPointMake(20.27, 19.13), controlPoint1: CGPointMake(21.89, 19.99), controlPoint2: CGPointMake(21.08, 19.56))
        bezierPath.addCurveToPoint(CGPointMake(20.13, 19.13), controlPoint1: CGPointMake(20.23, 19.11), controlPoint2: CGPointMake(20.16, 19.11))
        bezierPath.addCurveToPoint(CGPointMake(18.2, 20.14), controlPoint1: CGPointMake(19.54, 19.56), controlPoint2: CGPointMake(18.88, 19.86))
        bezierPath.addCurveToPoint(CGPointMake(14.37, 21.66), controlPoint1: CGPointMake(16.93, 20.65), controlPoint2: CGPointMake(15.65, 21.16))
        bezierPath.addCurveToPoint(CGPointMake(14.21, 21.85), controlPoint1: CGPointMake(14.27, 21.7), controlPoint2: CGPointMake(14.23, 21.75))
        bezierPath.addCurveToPoint(CGPointMake(13.97, 22.98), controlPoint1: CGPointMake(14.14, 22.23), controlPoint2: CGPointMake(14.05, 22.6))
        bezierPath.addCurveToPoint(CGPointMake(13.26, 26.31), controlPoint1: CGPointMake(13.74, 24.09), controlPoint2: CGPointMake(13.5, 25.2))
        bezierPath.addCurveToPoint(CGPointMake(13.3, 26.43), controlPoint1: CGPointMake(13.25, 26.35), controlPoint2: CGPointMake(13.27, 26.41))
        bezierPath.addCurveToPoint(CGPointMake(14.83, 27.4), controlPoint1: CGPointMake(13.81, 26.76), controlPoint2: CGPointMake(14.32, 27.07))
        bezierPath.addCurveToPoint(CGPointMake(16.63, 28.35), controlPoint1: CGPointMake(15.4, 27.77), controlPoint2: CGPointMake(15.98, 28.13))
        bezierPath.addCurveToPoint(CGPointMake(18.24, 28.36), controlPoint1: CGPointMake(17.17, 28.54), controlPoint2: CGPointMake(17.69, 28.59))
        bezierPath.addCurveToPoint(CGPointMake(22.02, 26.79), controlPoint1: CGPointMake(19.49, 27.83), controlPoint2: CGPointMake(20.76, 27.31))
        bezierPath.addCurveToPoint(CGPointMake(22.63, 26.48), controlPoint1: CGPointMake(22.23, 26.7), controlPoint2: CGPointMake(22.42, 26.58))
        bezierPath.addCurveToPoint(CGPointMake(23.72, 25.21), controlPoint1: CGPointMake(23.18, 26.21), controlPoint2: CGPointMake(23.52, 25.77))
        bezierPath.addCurveToPoint(CGPointMake(24.49, 21.49), controlPoint1: CGPointMake(24.15, 24.01), controlPoint2: CGPointMake(24.34, 22.77))
        bezierPath.closePath()
        bezierPath.moveToPoint(CGPointMake(6, 7.99))
        bezierPath.addCurveToPoint(CGPointMake(4.48, 8.9), controlPoint1: CGPointMake(5.48, 8.3), controlPoint2: CGPointMake(4.98, 8.6))
        bezierPath.addCurveToPoint(CGPointMake(2.66, 10.18), controlPoint1: CGPointMake(3.84, 9.28), controlPoint2: CGPointMake(3.2, 9.67))
        bezierPath.addCurveToPoint(CGPointMake(1.98, 11.18), controlPoint1: CGPointMake(2.36, 10.46), controlPoint2: CGPointMake(2.08, 10.73))
        bezierPath.addCurveToPoint(CGPointMake(1.56, 13.82), controlPoint1: CGPointMake(1.79, 12.05), controlPoint2: CGPointMake(1.59, 12.92))
        bezierPath.addCurveToPoint(CGPointMake(1.5, 16.92), controlPoint1: CGPointMake(1.52, 14.85), controlPoint2: CGPointMake(1.51, 15.89))
        bezierPath.addCurveToPoint(CGPointMake(1.57, 17.09), controlPoint1: CGPointMake(1.5, 16.98), controlPoint2: CGPointMake(1.53, 17.05))
        bezierPath.addCurveToPoint(CGPointMake(3.29, 18.81), controlPoint1: CGPointMake(2.14, 17.67), controlPoint2: CGPointMake(2.72, 18.24))
        bezierPath.addCurveToPoint(CGPointMake(4.22, 19.77), controlPoint1: CGPointMake(3.6, 19.13), controlPoint2: CGPointMake(3.91, 19.45))
        bezierPath.addCurveToPoint(CGPointMake(4.73, 20.28), controlPoint1: CGPointMake(4.39, 19.94), controlPoint2: CGPointMake(4.56, 20.11))
        bezierPath.addCurveToPoint(CGPointMake(5, 20.29), controlPoint1: CGPointMake(4.81, 20.35), controlPoint2: CGPointMake(4.9, 20.35))
        bezierPath.addCurveToPoint(CGPointMake(8.71, 17.81), controlPoint1: CGPointMake(6.23, 19.46), controlPoint2: CGPointMake(7.48, 18.63))
        bezierPath.addCurveToPoint(CGPointMake(8.8, 17.67), controlPoint1: CGPointMake(8.76, 17.78), controlPoint2: CGPointMake(8.79, 17.72))
        bezierPath.addCurveToPoint(CGPointMake(9.11, 14.79), controlPoint1: CGPointMake(8.9, 16.71), controlPoint2: CGPointMake(9.01, 15.75))
        bezierPath.addCurveToPoint(CGPointMake(9.46, 11.44), controlPoint1: CGPointMake(9.23, 13.68), controlPoint2: CGPointMake(9.34, 12.56))
        bezierPath.addCurveToPoint(CGPointMake(9.4, 11.27), controlPoint1: CGPointMake(9.47, 11.37), controlPoint2: CGPointMake(9.45, 11.32))
        bezierPath.addCurveToPoint(CGPointMake(7.21, 9.15), controlPoint1: CGPointMake(8.67, 10.57), controlPoint2: CGPointMake(7.94, 9.86))
        bezierPath.addCurveToPoint(CGPointMake(6, 7.99), controlPoint1: CGPointMake(6.8, 8.76), controlPoint2: CGPointMake(6.4, 8.38))
        bezierPath.closePath()
        bezierPath.moveToPoint(CGPointMake(29.79, 16.49))
        bezierPath.addCurveToPoint(CGPointMake(29.8, 16.41), controlPoint1: CGPointMake(29.79, 16.46), controlPoint2: CGPointMake(29.8, 16.43))
        bezierPath.addCurveToPoint(CGPointMake(29.6, 12.63), controlPoint1: CGPointMake(29.82, 15.14), controlPoint2: CGPointMake(29.78, 13.88))
        bezierPath.addCurveToPoint(CGPointMake(28.67, 9.22), controlPoint1: CGPointMake(29.43, 11.46), controlPoint2: CGPointMake(29.16, 10.31))
        bezierPath.addCurveToPoint(CGPointMake(27.61, 7.15), controlPoint1: CGPointMake(28.35, 8.51), controlPoint2: CGPointMake(27.97, 7.84))
        bezierPath.addCurveToPoint(CGPointMake(27.3, 6.64), controlPoint1: CGPointMake(27.52, 6.97), controlPoint2: CGPointMake(27.42, 6.8))
        bezierPath.addCurveToPoint(CGPointMake(25.42, 6.12), controlPoint1: CGPointMake(26.86, 6), controlPoint2: CGPointMake(26.16, 5.81))
        bezierPath.addCurveToPoint(CGPointMake(25.53, 6.41), controlPoint1: CGPointMake(25.46, 6.21), controlPoint2: CGPointMake(25.49, 6.31))
        bezierPath.addCurveToPoint(CGPointMake(25.82, 8.32), controlPoint1: CGPointMake(25.73, 7.03), controlPoint2: CGPointMake(25.8, 7.67))
        bezierPath.addCurveToPoint(CGPointMake(25.83, 9.66), controlPoint1: CGPointMake(25.84, 8.77), controlPoint2: CGPointMake(25.84, 9.22))
        bezierPath.addCurveToPoint(CGPointMake(25.76, 10.5), controlPoint1: CGPointMake(25.82, 9.94), controlPoint2: CGPointMake(25.78, 10.22))
        bezierPath.addCurveToPoint(CGPointMake(25.97, 11.2), controlPoint1: CGPointMake(25.74, 10.76), controlPoint2: CGPointMake(25.78, 10.99))
        bezierPath.addCurveToPoint(CGPointMake(26.32, 11.75), controlPoint1: CGPointMake(26.11, 11.36), controlPoint2: CGPointMake(26.22, 11.56))
        bezierPath.addCurveToPoint(CGPointMake(26.84, 12.89), controlPoint1: CGPointMake(26.5, 12.13), controlPoint2: CGPointMake(26.71, 12.5))
        bezierPath.addCurveToPoint(CGPointMake(27.99, 16.28), controlPoint1: CGPointMake(27.24, 14.01), controlPoint2: CGPointMake(27.61, 15.15))
        bezierPath.addCurveToPoint(CGPointMake(28.14, 16.39), controlPoint1: CGPointMake(28.02, 16.36), controlPoint2: CGPointMake(28.05, 16.39))
        bezierPath.addCurveToPoint(CGPointMake(28.8, 16.43), controlPoint1: CGPointMake(28.36, 16.4), controlPoint2: CGPointMake(28.58, 16.42))
        bezierPath.addCurveToPoint(CGPointMake(29.79, 16.49), controlPoint1: CGPointMake(29.13, 16.45), controlPoint2: CGPointMake(29.45, 16.47))
        bezierPath.closePath()
        bezierPath.moveToPoint(CGPointMake(1.94, 10.61))
        bezierPath.addCurveToPoint(CGPointMake(2.05, 10.51), controlPoint1: CGPointMake(1.98, 10.57), controlPoint2: CGPointMake(2.02, 10.54))
        bezierPath.addCurveToPoint(CGPointMake(2.67, 9.88), controlPoint1: CGPointMake(2.25, 10.3), controlPoint2: CGPointMake(2.43, 10.05))
        bezierPath.addCurveToPoint(CGPointMake(4.43, 8.64), controlPoint1: CGPointMake(3.24, 9.45), controlPoint2: CGPointMake(3.83, 9.04))
        bezierPath.addCurveToPoint(CGPointMake(5.5, 8), controlPoint1: CGPointMake(4.77, 8.41), controlPoint2: CGPointMake(5.12, 8.17))
        bezierPath.addCurveToPoint(CGPointMake(6.18, 7.39), controlPoint1: CGPointMake(5.8, 7.86), controlPoint2: CGPointMake(6.02, 7.68))
        bezierPath.addCurveToPoint(CGPointMake(7.98, 4.84), controlPoint1: CGPointMake(6.7, 6.49), controlPoint2: CGPointMake(7.26, 5.61))
        bezierPath.addCurveToPoint(CGPointMake(9.38, 3.26), controlPoint1: CGPointMake(8.46, 4.33), controlPoint2: CGPointMake(8.91, 3.79))
        bezierPath.addCurveToPoint(CGPointMake(9.43, 2.99), controlPoint1: CGPointMake(9.45, 3.18), controlPoint2: CGPointMake(9.47, 3.1))
        bezierPath.addCurveToPoint(CGPointMake(9.03, 1.91), controlPoint1: CGPointMake(9.29, 2.63), controlPoint2: CGPointMake(9.16, 2.27))
        bezierPath.addCurveToPoint(CGPointMake(8.56, 1.74), controlPoint1: CGPointMake(8.9, 1.55), controlPoint2: CGPointMake(8.9, 1.55))
        bezierPath.addCurveToPoint(CGPointMake(6.87, 2.68), controlPoint1: CGPointMake(8, 2.05), controlPoint2: CGPointMake(7.42, 2.34))
        bezierPath.addCurveToPoint(CGPointMake(4.46, 4.72), controlPoint1: CGPointMake(5.98, 3.25), controlPoint2: CGPointMake(5.19, 3.95))
        bezierPath.addCurveToPoint(CGPointMake(2.29, 7.51), controlPoint1: CGPointMake(3.64, 5.58), controlPoint2: CGPointMake(2.94, 6.53))
        bezierPath.addCurveToPoint(CGPointMake(1.56, 8.88), controlPoint1: CGPointMake(2, 7.95), controlPoint2: CGPointMake(1.74, 8.39))
        bezierPath.addCurveToPoint(CGPointMake(1.54, 9.56), controlPoint1: CGPointMake(1.48, 9.1), controlPoint2: CGPointMake(1.46, 9.33))
        bezierPath.addCurveToPoint(CGPointMake(1.94, 10.61), controlPoint1: CGPointMake(1.67, 9.9), controlPoint2: CGPointMake(1.8, 10.25))
        bezierPath.closePath()
        bezierPath.moveToPoint(CGPointMake(9.69, 3.04))
        bezierPath.addCurveToPoint(CGPointMake(9.74, 3.04), controlPoint1: CGPointMake(9.72, 3.04), controlPoint2: CGPointMake(9.73, 3.04))
        bezierPath.addCurveToPoint(CGPointMake(12.68, 3.07), controlPoint1: CGPointMake(10.72, 2.93), controlPoint2: CGPointMake(11.7, 2.93))
        bezierPath.addCurveToPoint(CGPointMake(14.78, 3.44), controlPoint1: CGPointMake(13.38, 3.17), controlPoint2: CGPointMake(14.08, 3.31))
        bezierPath.addCurveToPoint(CGPointMake(15.87, 3.32), controlPoint1: CGPointMake(15.4, 3.56), controlPoint2: CGPointMake(15.4, 3.57))
        bezierPath.addCurveToPoint(CGPointMake(15.92, 3.29), controlPoint1: CGPointMake(15.89, 3.31), controlPoint2: CGPointMake(15.9, 3.3))
        bezierPath.addCurveToPoint(CGPointMake(16.73, 2.9), controlPoint1: CGPointMake(16.19, 3.16), controlPoint2: CGPointMake(16.45, 3.01))
        bezierPath.addCurveToPoint(CGPointMake(19.08, 2.37), controlPoint1: CGPointMake(17.48, 2.61), controlPoint2: CGPointMake(18.28, 2.47))
        bezierPath.addCurveToPoint(CGPointMake(20.1, 2.25), controlPoint1: CGPointMake(19.41, 2.32), controlPoint2: CGPointMake(19.74, 2.29))
        bezierPath.addCurveToPoint(CGPointMake(20.04, 1.98), controlPoint1: CGPointMake(20.08, 2.16), controlPoint2: CGPointMake(20.07, 2.07))
        bezierPath.addCurveToPoint(CGPointMake(19.69, 1.12), controlPoint1: CGPointMake(19.93, 1.69), controlPoint2: CGPointMake(19.82, 1.4))
        bezierPath.addCurveToPoint(CGPointMake(19.42, 0.88), controlPoint1: CGPointMake(19.64, 1.02), controlPoint2: CGPointMake(19.53, 0.91))
        bezierPath.addCurveToPoint(CGPointMake(18.01, 0.53), controlPoint1: CGPointMake(18.95, 0.75), controlPoint2: CGPointMake(18.48, 0.63))
        bezierPath.addCurveToPoint(CGPointMake(14.66, 0.24), controlPoint1: CGPointMake(16.9, 0.3), controlPoint2: CGPointMake(15.78, 0.26))
        bezierPath.addCurveToPoint(CGPointMake(13.1, 0.39), controlPoint1: CGPointMake(14.13, 0.22), controlPoint2: CGPointMake(13.62, 0.32))
        bezierPath.addCurveToPoint(CGPointMake(11.72, 0.61), controlPoint1: CGPointMake(12.64, 0.45), controlPoint2: CGPointMake(12.17, 0.49))
        bezierPath.addCurveToPoint(CGPointMake(9.88, 1.2), controlPoint1: CGPointMake(11.1, 0.77), controlPoint2: CGPointMake(10.49, 1))
        bezierPath.addCurveToPoint(CGPointMake(9.1, 1.47), controlPoint1: CGPointMake(9.62, 1.29), controlPoint2: CGPointMake(9.36, 1.38))
        bezierPath.addCurveToPoint(CGPointMake(9.69, 3.04), controlPoint1: CGPointMake(9.3, 2), controlPoint2: CGPointMake(9.49, 2.52))
        bezierPath.closePath()
        bezierPath.moveToPoint(CGPointMake(23.57, 25.98))
        bezierPath.addCurveToPoint(CGPointMake(24.17, 26.02), controlPoint1: CGPointMake(23.78, 26), controlPoint2: CGPointMake(23.97, 26.02))
        bezierPath.addCurveToPoint(CGPointMake(24.84, 26), controlPoint1: CGPointMake(24.39, 26.03), controlPoint2: CGPointMake(24.62, 26.03))
        bezierPath.addCurveToPoint(CGPointMake(25.52, 25.52), controlPoint1: CGPointMake(25.14, 25.95), controlPoint2: CGPointMake(25.33, 25.73))
        bezierPath.addCurveToPoint(CGPointMake(27.94, 22.25), controlPoint1: CGPointMake(26.43, 24.51), controlPoint2: CGPointMake(27.24, 23.42))
        bezierPath.addCurveToPoint(CGPointMake(29.68, 17.48), controlPoint1: CGPointMake(28.83, 20.77), controlPoint2: CGPointMake(29.48, 19.2))
        bezierPath.addCurveToPoint(CGPointMake(29.74, 16.71), controlPoint1: CGPointMake(29.71, 17.23), controlPoint2: CGPointMake(29.72, 16.97))
        bezierPath.addCurveToPoint(CGPointMake(28, 16.59), controlPoint1: CGPointMake(29.15, 16.67), controlPoint2: CGPointMake(28.57, 16.63))
        bezierPath.addCurveToPoint(CGPointMake(27.23, 18.25), controlPoint1: CGPointMake(27.82, 17.18), controlPoint2: CGPointMake(27.56, 17.73))
        bezierPath.addCurveToPoint(CGPointMake(24.84, 21.26), controlPoint1: CGPointMake(26.53, 19.33), controlPoint2: CGPointMake(25.74, 20.34))
        bezierPath.addCurveToPoint(CGPointMake(24.69, 21.59), controlPoint1: CGPointMake(24.74, 21.35), controlPoint2: CGPointMake(24.7, 21.46))
        bezierPath.addCurveToPoint(CGPointMake(24.51, 22.82), controlPoint1: CGPointMake(24.63, 22), controlPoint2: CGPointMake(24.6, 22.41))
        bezierPath.addCurveToPoint(CGPointMake(23.57, 25.98), controlPoint1: CGPointMake(24.29, 23.89), controlPoint2: CGPointMake(24.05, 24.97))
        bezierPath.closePath()
        bezierPath.moveToPoint(CGPointMake(1.38, 17.27))
        bezierPath.addCurveToPoint(CGPointMake(0.84, 17.98), controlPoint1: CGPointMake(1.2, 17.51), controlPoint2: CGPointMake(1.04, 17.76))
        bezierPath.addCurveToPoint(CGPointMake(0.7, 18.64), controlPoint1: CGPointMake(0.65, 18.18), controlPoint2: CGPointMake(0.65, 18.39))
        bezierPath.addCurveToPoint(CGPointMake(1.98, 22), controlPoint1: CGPointMake(0.93, 19.84), controlPoint2: CGPointMake(1.38, 20.94))
        bezierPath.addCurveToPoint(CGPointMake(5.23, 26.01), controlPoint1: CGPointMake(2.84, 23.51), controlPoint2: CGPointMake(3.91, 24.86))
        bezierPath.addCurveToPoint(CGPointMake(6.2, 26.84), controlPoint1: CGPointMake(5.55, 26.29), controlPoint2: CGPointMake(5.88, 26.56))
        bezierPath.addCurveToPoint(CGPointMake(6.37, 26.83), controlPoint1: CGPointMake(6.26, 26.88), controlPoint2: CGPointMake(6.3, 26.92))
        bezierPath.addCurveToPoint(CGPointMake(7.23, 25.71), controlPoint1: CGPointMake(6.65, 26.45), controlPoint2: CGPointMake(6.94, 26.08))
        bezierPath.addCurveToPoint(CGPointMake(7.23, 25.56), controlPoint1: CGPointMake(7.28, 25.65), controlPoint2: CGPointMake(7.27, 25.61))
        bezierPath.addCurveToPoint(CGPointMake(6.85, 24.99), controlPoint1: CGPointMake(7.1, 25.37), controlPoint2: CGPointMake(6.98, 25.18))
        bezierPath.addCurveToPoint(CGPointMake(5.05, 21.32), controlPoint1: CGPointMake(6.09, 23.85), controlPoint2: CGPointMake(5.37, 22.68))
        bezierPath.addCurveToPoint(CGPointMake(4.39, 20.24), controlPoint1: CGPointMake(4.95, 20.9), controlPoint2: CGPointMake(4.71, 20.55))
        bezierPath.addCurveToPoint(CGPointMake(2.02, 17.79), controlPoint1: CGPointMake(3.58, 19.45), controlPoint2: CGPointMake(2.74, 18.68))
        bezierPath.addCurveToPoint(CGPointMake(1.38, 17.27), controlPoint1: CGPointMake(1.85, 17.58), controlPoint2: CGPointMake(1.64, 17.4))
        bezierPath.closePath()
        bezierPath.moveToPoint(CGPointMake(17.37, 28.73))
        bezierPath.addCurveToPoint(CGPointMake(17.28, 28.71), controlPoint1: CGPointMake(17.33, 28.72), controlPoint2: CGPointMake(17.31, 28.71))
        bezierPath.addCurveToPoint(CGPointMake(15.91, 28.26), controlPoint1: CGPointMake(16.8, 28.64), controlPoint2: CGPointMake(16.34, 28.47))
        bezierPath.addCurveToPoint(CGPointMake(13.22, 26.63), controlPoint1: CGPointMake(14.96, 27.8), controlPoint2: CGPointMake(14.07, 27.25))
        bezierPath.addCurveToPoint(CGPointMake(12.98, 26.55), controlPoint1: CGPointMake(13.16, 26.59), controlPoint2: CGPointMake(13.06, 26.55))
        bezierPath.addCurveToPoint(CGPointMake(9.81, 26.31), controlPoint1: CGPointMake(11.92, 26.48), controlPoint2: CGPointMake(10.86, 26.49))
        bezierPath.addCurveToPoint(CGPointMake(8.08, 25.98), controlPoint1: CGPointMake(9.23, 26.21), controlPoint2: CGPointMake(8.64, 26.17))
        bezierPath.addCurveToPoint(CGPointMake(7.53, 25.82), controlPoint1: CGPointMake(7.9, 25.92), controlPoint2: CGPointMake(7.71, 25.88))
        bezierPath.addCurveToPoint(CGPointMake(7.38, 25.86), controlPoint1: CGPointMake(7.46, 25.79), controlPoint2: CGPointMake(7.42, 25.81))
        bezierPath.addCurveToPoint(CGPointMake(6.56, 26.94), controlPoint1: CGPointMake(7.11, 26.22), controlPoint2: CGPointMake(6.83, 26.58))
        bezierPath.addCurveToPoint(CGPointMake(6.61, 27.13), controlPoint1: CGPointMake(6.49, 27.03), controlPoint2: CGPointMake(6.5, 27.07))
        bezierPath.addCurveToPoint(CGPointMake(7.61, 27.7), controlPoint1: CGPointMake(6.94, 27.32), controlPoint2: CGPointMake(7.28, 27.5))
        bezierPath.addCurveToPoint(CGPointMake(9.1, 28.55), controlPoint1: CGPointMake(8.09, 28.01), controlPoint2: CGPointMake(8.57, 28.32))
        bezierPath.addCurveToPoint(CGPointMake(12.68, 29.58), controlPoint1: CGPointMake(10.25, 29.03), controlPoint2: CGPointMake(11.45, 29.35))
        bezierPath.addCurveToPoint(CGPointMake(15.22, 29.88), controlPoint1: CGPointMake(13.52, 29.74), controlPoint2: CGPointMake(14.36, 29.9))
        bezierPath.addCurveToPoint(CGPointMake(16.64, 29.6), controlPoint1: CGPointMake(15.71, 29.86), controlPoint2: CGPointMake(16.19, 29.81))
        bezierPath.addCurveToPoint(CGPointMake(17.37, 28.73), controlPoint1: CGPointMake(17.02, 29.43), controlPoint2: CGPointMake(17.28, 29.16))
        bezierPath.closePath()
        bezierPath.usesEvenOddFillRule = true;

        
        return bezierPath.CGPath
        
    }
    
    
}

class FootBallLayer: CAShapeLayer {
    var timeFunc : CAMediaTimingFunction!
    var upDuration: Double!
    
    func animation(){
        self.hidden = false
        let rotate = CABasicAnimation(keyPath: "transform.rotation.z")
        rotate.fromValue = 0
        rotate.toValue = M_PI * 2
        rotate.duration = 1
        rotate.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
        rotate.repeatCount = HUGE
        rotate.fillMode = kCAFillModeForwards
        rotate.removedOnCompletion = false
        self.addAnimation(rotate, forKey: rotate.keyPath)
    }
    
    func stopAnimation(){
        self.hidden = true
        self.removeAllAnimations()
    }
    
    func moveUp(distance:CGFloat){
        let move = CABasicAnimation(keyPath:"position")
        move.fromValue = NSValue(CGPoint:position)
        move.toValue = NSValue(CGPoint:CGPoint(x: position.x, y: position.y - distance))
        move.timingFunction = timeFunc
        move.duration = upDuration
        move.fillMode = kCAFillModeForwards
        move.removedOnCompletion = false
        self.addAnimation(move, forKey: move.keyPath)
        
        
    }
    
    func moveDown(distance:CGFloat){
        let move = CABasicAnimation(keyPath:"position")
        move.fromValue = NSValue(CGPoint:CGPoint(x: position.x, y: position.y - distance))
        move.toValue = NSValue(CGPoint:position)
        move.timingFunction = timeFunc
        move.duration = upDuration
        move.fillMode = kCAFillModeForwards
        move.removedOnCompletion = false
        self.addAnimation(move, forKey: move.keyPath)
    }

}

