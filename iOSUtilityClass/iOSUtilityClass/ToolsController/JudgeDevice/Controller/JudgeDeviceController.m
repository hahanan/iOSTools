//
//  JudgeDeviceController.m
//  iOSUtilityClass
//
//  Created by Alara on 16/7/26.
//  Copyright © 2016年 Alara. All rights reserved.
//

#import "JudgeDeviceController.h"
#import "JudgeDeviceManager.h"

@implementation JudgeDeviceController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    NSString *deviceString = [JudgeDeviceManager shareMatchManager].doDevicePlatform;
    if ([deviceString isEqualToString:@"iPhone 4S"] || [deviceString isEqualToString:@"iPhone 4"]) {
       
        NSLog(@"设备为iPhone 4 或者iPhone 4s");
    }else {
        
        NSLog(@"设备不是iPhone 4 或者iPhone 4s");

    }
}
@end
