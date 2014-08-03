//
//  Tap_meViewController.m
//  Tap me
//
//  Created by bear on 14/7/29.
//  Copyright (c) 2014年 com.bear. All rights reserved.
//

#import "Tap_meViewController.h"

@interface Tap_meViewController ()

@end

@implementation Tap_meViewController

- (IBAction)buttonPressed
{
   // scoreLabel.text = @"对，就是这里";
    count++;
    scoreLabel.text = [NSString stringWithFormat:@"得分 %i", count];
}

- (void)setupgame {
    seconds = 10;
    count = 0;
    
    timerLabel.text = [NSString stringWithFormat:@"倒计时: %i", seconds];
    scoreLabel.text = [NSString stringWithFormat:@"得分: %i", count];
    
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0f
                                             target:self
                                           selector:@selector(subtractTime)
                                           userInfo:nil
                                            repeats:YES];
    
}

- (void)subtractTime {
    
    seconds--;
    timerLabel.text = [NSString stringWithFormat:@"倒计时: %i",seconds];
    
    if (seconds == 0) {
        [timer invalidate];
        if (count > maxcount) {
            maxcount = count;
        }
         UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"时间到"
                                                message:[NSString stringWithFormat:@"你的得分 %i 最高分 %i", count, maxcount]
                                                delegate:self
                                                cancelButtonTitle:@"再玩一次"
                                               otherButtonTitles: nil];
        [alert show];
        
    }
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self setupgame];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 0){
        [self setupgame];
    }
}

@end
