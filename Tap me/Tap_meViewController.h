//
//  Tap_meViewController.h
//  Tap me
//
//  Created by bear on 14/7/29.
//  Copyright (c) 2014年 com.bear. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Tap_meViewController : UIViewController <UIAlertViewDelegate>
{
IBOutlet UILabel *scoreLabel;
IBOutlet UILabel *timerLabel;
    NSInteger count;
    NSInteger seconds;
    NSTimer *timer;
    NSInteger maxcount;
}
- (IBAction)buttonPressed;
@end
