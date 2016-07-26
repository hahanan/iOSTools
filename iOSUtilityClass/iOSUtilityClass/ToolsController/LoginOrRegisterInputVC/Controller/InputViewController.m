//
//  InputViewController.m
//  iOSUtilityClass
//
//  Created by 王康棋 on 16/7/26.
//  Copyright © 2016年 Alara. All rights reserved.
//

#import "InputViewController.h"
#import "Header.h"
#import "InputTextField.h"

static const CGFloat Width_TextField = 240;
static const CGFloat Height_TextField = 37;
static const CGFloat TextFieldSpace = 20;

@implementation InputViewController
- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor EnvironmentColorWithPromptbg];
    [self prepareUI];
    
}

- (void)prepareUI {

  CGFloat leftSpace = ([UIScreen mainScreen].bounds.size.width - Width_TextField) / 2.0;
    
    InputTextField *emailtextField = [[InputTextField alloc] initWithFrame:CGRectMake(leftSpace, 100, Width_TextField, Height_TextField)];
    [emailtextField prepareUIWithImage:[UIImage imageNamed:@"Email_Mark"]];
    emailtextField.placeholder = @"请输入注册邮箱或帐号";
    emailtextField.returnKeyType = UIReturnKeyNext;
    [self.view addSubview:emailtextField];
    
    InputTextField *secrettextField = [[InputTextField alloc] initWithFrame:CGRectMake(leftSpace, CGRectGetMaxY(emailtextField.frame) + TextFieldSpace, Width_TextField, Height_TextField)];
    [secrettextField prepareUIWithImage:[UIImage imageNamed:@"Secret_mark"]];
    secrettextField.placeholder = @"请输入注册密码";
    secrettextField.returnKeyType = UIReturnKeyNext;
    [self.view addSubview:secrettextField];
    
    
    InputTextField *usertextField = [[InputTextField alloc] initWithFrame:CGRectMake(leftSpace, CGRectGetMaxY(secrettextField.frame) + TextFieldSpace, Width_TextField, Height_TextField)];
    [usertextField prepareUIWithImage:[UIImage imageNamed:@"User_Mark"]];
    usertextField.placeholder = @"请输入登录邮箱或帐号";
    usertextField.returnKeyType = UIReturnKeyNext;
    [self.view addSubview:usertextField];

}
@end
