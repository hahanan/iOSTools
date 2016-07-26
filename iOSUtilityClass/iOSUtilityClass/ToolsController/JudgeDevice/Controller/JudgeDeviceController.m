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
    
    [self prepareUI];
   
}

- (void)prepareUI {

    UILabel *label = [[UILabel alloc] init];
    label.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:label];
    
    // 此方法只适用于真机使用,模拟器使用无效
    NSString *deviceString = [JudgeDeviceManager shareMatchManager].doDevicePlatform;
    if ([deviceString isEqualToString:@"iPhone 4S"] || [deviceString isEqualToString:@"iPhone 4"]) {
        
        label.frame = CGRectMake(10, 100, 80, 30);
        NSLog(@"设备为iPhone 4 或者iPhone 4s");
    }else {
        
        label.frame = CGRectMake(20, 100, 100, 30);
        NSLog(@"设备不是iPhone 4 或者iPhone 4s");
    }
}
@end
