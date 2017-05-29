//
//  WSMenuControl.h
//  WSMenuButton
//
//  Created by Dotsquares on 4/4/17.
//  Copyright © 2017 WebsoftProfession. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum{
    WSMenuStyleDot=1,
    WSMenuStyleLine,
} AnimationStyle;

@interface WSMenuControl : UIButton
{
    float topVlaue;
    float bottomValue;
    float leftRightLenght;
    NSTimer *timer;
    BOOL isRunning;
    
}
@property (assign) BOOL isOpen;
@property (assign) int menuStyle;
@property (nonatomic,strong) UIColor *WSMenuControlColor;

@end
