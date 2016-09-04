//
//  FootBallViewHeader.swift
//  FootBallRefreshView
//
//  Created by 武飞跃 on 2016/8/1.
//  Copyright © 2016年 RG. All rights reserved.
//

import UIKit
import MJRefresh

class FootBallViewHeader: MJRefreshHeader {

    var ballView:FootBallView!
    var circleView:FootBallCircleView!
    
    //重写父类方法，完成初始化配置
    override func prepare() {
        super.prepare()
        //设置控件的高度
        self.mj_h = 50
        
        ballView = FootBallView(
            frame:CGRect.zero,
            timingFunc: CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut),
            moveUpDuration: 0.2,
            moveUpDist: 30 * 1.2,
            color: UIColor.blackColor()
        )
        
        ballView.hidden = true
        
        circleView = FootBallCircleView(frame:CGRect.zero)
        
        addSubview(circleView)
        addSubview(ballView)
        
        
    }
    //在这里设置子控件的位置和尺寸
    override func placeSubviews() {
        super.placeSubviews()
        ballView.frame = CGRectMake(self.mj_w * 0.50 - 15, self.mj_h * 0.50 - 15, 50, 50)
        circleView.frame = CGRectMake(self.mj_w * 0.50 - 15, self.mj_h * 0.50 - 15 , 50, 50)
    }
    
    //MARK: - ScrollDelegate
    override func scrollViewContentSizeDidChange(change: [NSObject : AnyObject]!) {
        super.scrollViewContentSizeDidChange(change)
    }
    override func scrollViewContentOffsetDidChange(change: [NSObject : AnyObject]!) {
        super.scrollViewContentOffsetDidChange(change)
    }
    override func scrollViewPanStateDidChange(change: [NSObject : AnyObject]!) {
        super.scrollViewPanStateDidChange(change)
    }
    //监听控件的刷新状态
    override var state: MJRefreshState {
        
        willSet{
            
            if newValue == state {
                return
            }
            
            switch newValue {
            case .Idle:       //普通闲置状
                self.circleView.hidden = false
                self.ballView.endAnimation()
                break
            case .Pulling:    //松开进行刷新的状态
                
                break
            case .Refreshing: //正在刷新的状态
                self.circleView.hidden = true
                self.ballView.hidden = false
                ballView.didRelease()
                
                
                break
            case .NoMoreData: //所有数据加载完毕，没有更多的数据了
                
                break
            case .WillRefresh: //即将刷新的状态
                
                break
                
            }
        }
        
    }
    //监听拖拽比例
    var _pullingPercent: CGFloat?
    
    override var pullingPercent: CGFloat {
        
        didSet{
            circleView.wave(oldValue * self.mj_h)
        }
        
    }

}
