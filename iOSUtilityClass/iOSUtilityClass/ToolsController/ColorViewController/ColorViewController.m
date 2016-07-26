//
//  ColorViewController.m
//  iOSUtilityClass
//
//  Created by Alara on 16/7/26.
//  Copyright © 2016年 Alara. All rights reserved.
//

#import "ColorViewController.h"
#import "Header.h"

#define LabelWidth 200
#define LabelHeight 40
#define LabelSpace  20
#define LeftSpace   (Width - LabelWidth) / 2.0
@implementation ColorViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self prepareUI];
}

- (void)prepareUI {
    
    
    UILabel *label1 = [[UILabel alloc] initWithFrame:CGRectMake( LeftSpace, 100, LabelWidth, LabelHeight)];
    label1.backgroundColor = [UIColor EnvironmentColorWithContentdividebg];
    label1.text = @"测试1";
    label1.textColor = [UIColor fontColorWithTitleOrBar];
    [self.view addSubview:label1];
    
    UILabel *label2 = [[UILabel alloc] initWithFrame:CGRectMake( LeftSpace, CGRectGetMaxY(label1.frame) + LabelSpace, LabelWidth, LabelHeight)];
    label2.backgroundColor = [UIColor EnvironmentColorWithContentdividebg];
    label2.text = @"测试2";
    label2.textColor = [UIColor fontColorWithGreen];
    [self.view addSubview:label2];
    
    
}

@end
