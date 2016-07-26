//
//  ChangeFrameViewController.m
//  iOSUtilityClass
//
//  Created by Alara on 16/7/26.
//  Copyright © 2016年 Alara. All rights reserved.
//

#import "ChangeFrameViewController.h"
#import "UIView+Frame.h"

@implementation ChangeFrameViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self preparUI];
    
}

- (void)preparUI {

    UIView *view1 = [[UIView alloc] init];
    view1.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:view1];
    
    view1.x = 10.f;
    view1.y = 100.f;
    view1.width = 200;
    view1.height = 30;
    view1.centerX = self.view.centerX;
    
}
@end
