//
//  FootBallCircleView.swift
//  FootBallRefreshView
//
//  Created by 武飞跃 on 2016/8/5.
//  Copyright © 2016年 RG. All rights reserved.
//

import UIKit

class FootBallCircleView: UIView {
 
    var leftCircle:CAShapeLayer!
    var centerCircle:CAShapeLayer!
    var rightCircle:CAShapeLayer!
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        createView()
    }
    
    func wave(value:CGFloat){
        leftCircle.path =   drawCanves(7 - value * 0.04,amountY: value * 0.36)
        centerCircle.path = drawCanves(7 , amountY: value * 0.07)
        rightCircle.path =  drawCanves(7 + value * 0.25, amountY: value * 0.22)
    }
    
    func createView(){
        leftCircle = fetchShapeLayer(7, amountY: 0)
        layer.addSublayer(leftCircle)
        
        centerCircle = fetchShapeLayer(7, amountY: 0)
        layer.addSublayer(centerCircle)
        
        rightCircle = fetchShapeLayer(7, amountY: 0)
        layer.addSublayer(rightCircle)
    }
    
    func fetchShapeLayer(amountX:CGFloat,amountY:CGFloat) -> CAShapeLayer {
        let shapeLayer = CAShapeLayer(layer:self.layer)
        shapeLayer.path = drawCanves(amountX,amountY: amountY)
        shapeLayer.strokeColor = UIColor.blueColor().CGColor
        shapeLayer.fillColor = UIColor.blackColor().CGColor
        shapeLayer.lineWidth = 0
        return shapeLayer
    }
    
    
    func drawCanves(amountX:CGFloat,amountY:CGFloat) -> CGPathRef{
        let bezierPath = UIBezierPath(ovalInRect:CGRect(x: amountX, y: amountY, width: 8, height: 8))
        return bezierPath.CGPath
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    


}
