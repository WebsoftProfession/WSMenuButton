//
//  WSMenuControl.m
//  WSMenuButton
//
//  Created by Dotsquares on 4/4/17.
//  Copyright © 2017 WebsoftProfession. All rights reserved.
//

#import "WSMenuControl.h"

@implementation WSMenuControl

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.*/
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    if (!self.isOpen && topVlaue==0 && bottomValue==0) {
        topVlaue=8;
        bottomValue=8;
        if (self.menuStyle==WSMenuStyleDot) {
            leftRightLenght=10;
        }
        else{
            leftRightLenght=10;
        }
    }
    
    if (!self.WSMenuControlColor) {
        self.WSMenuControlColor=[UIColor purpleColor];
    }
    
    if (self.menuStyle==WSMenuStyleDot) {
        leftRightLenght=10;
    }
    
    CGPoint centerPoint=CGPointMake(rect.size.width/2, rect.size.height/2);
    CGPoint leftPointCenter=CGPointMake(rect.size.width/2-leftRightLenght, rect.size.height/2);
    CGPoint rightCenterPoint=CGPointMake(rect.size.width/2+leftRightLenght, rect.size.height/2);
    
    CGPoint topCenterPoint=CGPointMake(rect.size.width/2, rect.size.height/2-topVlaue);
    CGPoint topLeftPoint=CGPointMake(rect.size.width/2-leftRightLenght, rect.size.height/2-topVlaue);
    CGPoint topRightPoint=CGPointMake(rect.size.width/2+leftRightLenght, rect.size.height/2-topVlaue);
    
    CGPoint bottomCenterPoint=CGPointMake(rect.size.width/2, rect.size.height/2+bottomValue);
    CGPoint bottomLeftPoint=CGPointMake(rect.size.width/2-leftRightLenght, rect.size.height/2+bottomValue);
    CGPoint bottomRightPoint=CGPointMake(rect.size.width/2+leftRightLenght, rect.size.height/2+bottomValue);
    

    if (self.menuStyle==WSMenuStyleDot) {
        // center line
        UIBezierPath *centerDot=[UIBezierPath bezierPath];
        [centerDot addArcWithCenter:centerPoint radius:3 startAngle:0 endAngle:M_PI*2 clockwise:YES];
        [self.WSMenuControlColor setFill];
        [centerDot fill];
        
        UIBezierPath *leftDot=[UIBezierPath bezierPath];
        [leftDot addArcWithCenter:leftPointCenter radius:3 startAngle:0 endAngle:M_PI*2 clockwise:YES];
        [leftDot fill];
        
        UIBezierPath *rightDot=[UIBezierPath bezierPath];
        [rightDot addArcWithCenter:rightCenterPoint radius:3 startAngle:0 endAngle:M_PI*2 clockwise:YES];
        [rightDot fill];
        
        
        // top line
        UIBezierPath *topCenterDot=[UIBezierPath bezierPath];
        [topCenterDot addArcWithCenter:topCenterPoint radius:3 startAngle:0 endAngle:M_PI*2 clockwise:YES];
        [topCenterDot fill];
        
        UIBezierPath *topLeftDot=[UIBezierPath bezierPath];
        [topLeftDot addArcWithCenter:topLeftPoint radius:3 startAngle:0 endAngle:M_PI*2 clockwise:YES];
        [topLeftDot fill];
        
        UIBezierPath *topRightDot=[UIBezierPath bezierPath];
        [topRightDot addArcWithCenter:topRightPoint radius:3 startAngle:0 endAngle:M_PI*2 clockwise:YES];
        [topRightDot fill];
        
        
        // bottom line
        
        UIBezierPath *bottomCenterDot=[UIBezierPath bezierPath];
        [bottomCenterDot addArcWithCenter:bottomCenterPoint radius:3 startAngle:0 endAngle:M_PI*2 clockwise:YES];
        [bottomCenterDot fill];
        
        UIBezierPath *bottomLeftDot=[UIBezierPath bezierPath];
        [bottomLeftDot addArcWithCenter:bottomLeftPoint radius:3 startAngle:0 endAngle:M_PI*2 clockwise:YES];
        [bottomLeftDot fill];
        
        UIBezierPath *bottomRightDot=[UIBezierPath bezierPath];
        [bottomRightDot addArcWithCenter:bottomRightPoint radius:3 startAngle:0 endAngle:M_PI*2 clockwise:YES];
        [bottomRightDot fill];
    }
    else{
        // center line
        CGFloat red, green, blue, alpha;
        UIColor *lineColor=self.WSMenuControlColor;
        [lineColor getRed: &red
                   green: &green
                    blue: &blue
                   alpha: &alpha];
        
        UIColor *centerColor=[UIColor colorWithRed:red green:green blue:blue alpha:topVlaue/5];
//        if (self.isOpen) {
//            NSLog(@"");
//            centerColor=[UIColor colorWithRed:128 green:0 blue:128 alpha:0.0];
//        }
//        else{
//            
//        }
        
        
        UIBezierPath *centerLine=[UIBezierPath bezierPath];
        [centerLine moveToPoint:leftPointCenter];
        [centerLine addLineToPoint:CGPointMake(rect.size.width/2+10, rect.size.height/2)];
        [centerColor setStroke];
        [centerLine setLineWidth:3.0];
        centerLine.lineCapStyle=kCGLineCapRound;
        [centerLine stroke];
        
        
//        UIBezierPath *centerDot=[UIBezierPath bezierPath];
//        [centerDot moveToPoint:centerPoint];
//        [centerDot addLineToPoint:rightCenterPoint];
//        [centerDot setLineWidth:2.0];
//        [centerDot stroke];
//        
//        
//        
//        UIBezierPath *rightDot=[UIBezierPath bezierPath];
//        [rightDot moveToPoint:rightCenterPoint];
//        [rightDot addLineToPoint:rightCenterPoint];
//        [rightDot setLineWidth:2.0];
//        [rightDot stroke];
        
        
        // top line
        UIBezierPath *topLine=[UIBezierPath bezierPath];
//        CGPointMake(rect.size.width/2+leftRightLenght, rect.size.height/2);
        [topLine moveToPoint:topLeftPoint];
        //if (self.isOpen) {
            [topLine addLineToPoint:CGPointMake(rect.size.width/2+10, rect.size.height/2-8)];
//        }
//        else{
//            [topLine addLineToPoint:CGPointMake(rect.size.width/2+leftRightLenght, rect.size.height/2-5)];
//        }

        
        [self.WSMenuControlColor setStroke];
        [topLine setLineWidth:3.0];
        topLine.lineCapStyle=kCGLineCapRound;
        [topLine stroke];
        
//        UIBezierPath *topCenterDot=[UIBezierPath bezierPath];
//        [topCenterDot moveToPoint:topCenterPoint];
//        [topCenterDot addLineToPoint:topRightPoint];
//        [topCenterDot setLineWidth:2.0];
//        [topCenterDot stroke];
//        
//        UIBezierPath *topRightDot=[UIBezierPath bezierPath];
//        [topRightDot moveToPoint:topRightPoint];
//        [topRightDot addLineToPoint:topRightPoint];
//        [topRightDot setLineWidth:2.0];
//        [topRightDot stroke];
        
        
        // bottom line
        
        UIBezierPath *bottomLine=[UIBezierPath bezierPath];
        
        [bottomLine moveToPoint:bottomLeftPoint];
        //if (self.isOpen) {
            [bottomLine addLineToPoint:CGPointMake(rect.size.width/2+10, rect.size.height/2+8)];
//        }
//        else{
//            [bottomLine addLineToPoint:CGPointMake(rect.size.width/2+leftRightLenght, rect.size.height/2+5)];
//        }
        
        [self.WSMenuControlColor setStroke];
        [bottomLine setLineWidth:3.0];
        bottomLine.lineCapStyle=kCGLineCapRound;
        [bottomLine stroke];
        
//        UIBezierPath *bottomCenterDot=[UIBezierPath bezierPath];
//        [bottomCenterDot moveToPoint:bottomCenterPoint];
//        [bottomCenterDot addLineToPoint:bottomRightPoint];
//        [bottomCenterDot setLineWidth:2.0];
//        [bottomCenterDot stroke];
//        
//        
//        
//        UIBezierPath *bottomRightDot=[UIBezierPath bezierPath];
//        [bottomRightDot moveToPoint:bottomRightPoint];
//        [bottomRightDot addLineToPoint:bottomRightPoint];
//        [bottomRightDot setLineWidth:2.0];
//        [bottomRightDot stroke];
    }
    
    [self addTarget:self action:@selector(tapAction:) forControlEvents:UIControlEventTouchUpInside];
    
}

-(void)tapAction:(UIButton *)btn{
    NSLog(@"from class");
    if (!isRunning) {
        isRunning=YES;
        if (!self.isOpen) {
            bottomValue=8;
            topVlaue=8;
            if (self.menuStyle==WSMenuStyleDot) {
                leftRightLenght=8;
            }
            else{
                leftRightLenght=8;
            }
            self.isOpen=YES;
            
            timer=[NSTimer scheduledTimerWithTimeInterval:0.02 target:self selector:@selector(startAnimation:) userInfo:nil repeats:YES];
        }
        else{
            bottomValue=0;
            topVlaue=0;
            self.isOpen=NO;
            timer=[NSTimer scheduledTimerWithTimeInterval:0.02 target:self selector:@selector(startAnimation:) userInfo:nil repeats:YES];
        }
    }
    
}


-(void)startAnimation:(NSTimer *)tm{
    if (self.isOpen) {
        topVlaue-=0.5;
        bottomValue-=0.5;
        leftRightLenght-=0.5;
        
        if (topVlaue<=0) {
            isRunning=NO;
            [timer invalidate];
            timer=nil;
        }
    }
    else{
        topVlaue+=0.5;
        bottomValue+=0.5;
        leftRightLenght+=0.5;
        if (topVlaue>=8) {
            isRunning=NO;
            [timer invalidate];
            timer=nil;
        }
    }
    [self setNeedsDisplay];
}

@end
