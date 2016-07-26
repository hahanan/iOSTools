//
//  InputTextField.m
//  iOSUtilityClass
//
//  Created by 王康棋 on 16/7/26.
//  Copyright © 2016年 Alara. All rights reserved.
//

#import "InputTextField.h"
#import "Header.h"
#import "LeftImageView.h"

//#define Height_TextField  37
//#define Width_TextField   240
#define Width_BorderWidth 1.0 / 2

@implementation InputTextField

- (instancetype)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    
    return self;
}

- (void)prepareUIWithImage:(UIImage *)markImage {
    
    self.borderStyle = UITextBorderStyleRoundedRect;
    self.layer.borderColor = [UIColor colorWithHexString:@"eaeaea"].CGColor;
    self.layer.borderWidth = Width_BorderWidth;
    self.layer.masksToBounds = YES;
    self.layer.cornerRadius = self.frame.size.height / 2;
    self.font = [UIFont systemFontOfSize:13.f];
    self.backgroundColor = [UIColor whiteColor];
    self.clearButtonMode = UITextFieldViewModeWhileEditing;
    self.leftViewMode = UITextFieldViewModeAlways;
    self.tintColor = [UIColor fontColorWithGreen];
    
    LeftImageView *leftImageView = [[LeftImageView alloc] init];
    [leftImageView prepareViewWithImage:markImage];
    self.leftView = leftImageView;
}

//修改编辑位置
- (CGRect)editingRectForBounds:(CGRect)bounds{
    
    CGRect rect = bounds;
    rect.origin.x = CGRectGetMaxX(self.leftView.frame) + 8;
    bounds = rect;
    
    return bounds;
}
//修改text位置
- (CGRect)textRectForBounds:(CGRect)bounds{
    
    CGRect rect = bounds;
    rect.origin.x = CGRectGetMaxX(self.leftView.frame) + 8;
    bounds = rect;
    
    return bounds;
}
//修改placeholder位置
- (CGRect)placeholderRectForBounds:(CGRect)bounds{
    
    CGRect rect = bounds;
    rect.origin.x = CGRectGetMaxX(self.leftView.frame) + 8;
    bounds = rect;
    
    return bounds;
}
//修改左边view的位置
- (CGRect)leftViewRectForBounds:(CGRect)bounds{
    
    CGRect rect = bounds;
    rect.size.height = bounds.size.height;
    rect.size.width = bounds.size.height;
    rect.origin.y = 0;
    rect.origin.x = 0;
    bounds = rect;
    
    return bounds;
}
@end
