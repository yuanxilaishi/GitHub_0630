//
//  ViewController.m
//  LocalNotification
//
//  Created by apple on 15/6/30.
//  Copyright (c) 2015年 shi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    if ([[UIApplication sharedApplication] respondsToSelector:@selector(registerUserNotificationSettings:)]){
        [[UIApplication sharedApplication] registerUserNotificationSettings:[UIUserNotificationSettings settingsForTypes:UIUserNotificationTypeAlert|UIUserNotificationTypeBadge|UIUserNotificationTypeSound categories:nil]];
    }
    UILocalNotification *local = [[UILocalNotification alloc] init];
    local.fireDate = [NSDate dateWithTimeIntervalSinceNow:10];
    local.alertBody = @"有一个本地通知";
    local.soundName = @"";
    local.applicationIconBadgeNumber = 1;
    [[UIApplication sharedApplication] scheduleLocalNotification:local];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
