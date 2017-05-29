//
//  ViewController.h
//  WSMenuButton
//
//  Created by Dotsquares on 4/4/17.
//  Copyright © 2017 WebsoftProfession. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WSMenuControl.h"

@interface ViewController : UIViewController
{
    __weak IBOutlet WSMenuControl *wsMenuBtn;
    
}
- (IBAction)menuButtonAction:(id)sender;
@end

