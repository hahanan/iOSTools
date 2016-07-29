//
//  StretchingViewController.m
//  iOSUtilityClass
//
//  Created by Alara on 16/7/29.
//  Copyright © 2016年 Alara. All rights reserved.
//

#import "StretchingViewController.h"
#import "UIImage+Stretch.h"

@implementation StretchingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self prepearUI];
}

- (void)prepearUI {

    UIImage *image = [UIImage imageNamed:@"StrectcPIcture"];
    /**
     *  第一个参数:左边不拉伸区域的宽度 
     *  第二个参数:上面不拉伸的高度
     */
    image = [image stretchableImageWithLeftCapWidth:18 topCapHeight:12];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(0, 0, 240, 36);
    button.center = self.view.center;
    [button setTitle:@"按钮" forState:UIControlStateNormal];
    // 这里一定要用setBackgroundImage
    [button setBackgroundImage:image forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:button];
    
    UIImage *image1 = [UIImage imageNamed:@"StretchBubble"];
    /**
     *  按照距离边距的线拉伸的,取值不当会有重复的地方
     */
    image1 = [image1 resizableImageWithCapInsets:UIEdgeInsetsMake(23, 23, 24, 23)];
    UIImageView *imageView = [[UIImageView alloc] init];
    imageView.frame = CGRectMake(50, 100, 240 , 45);
    imageView.image = image1;
    [self.view addSubview:imageView];
    
    /**
     *  按照距离边距的线拉伸的,image自身的方法,即拉伸处理(说明需要保护的区域)
     *  resizingMode为拉伸方式:1.平铺拉伸 2.直接拉伸
     *
     */
    image1 = [image1 resizableImageWithCapInsets:UIEdgeInsetsMake(image1.size.height * 0.5, image1.size.height * 0.5,image1.size.height * 0.5, image1.size.height * 0.5) resizingMode:(UIImageResizingMode)UIImageResizingModeStretch];
    image1 = [image1 stretchableImageWithLeftCapWidth:image1.size.width * 0.5 topCapHeight:image1.size.height * 0.5];
    UIImageView *imageView1 = [[UIImageView alloc] init];
    imageView1.frame = CGRectMake(50, CGRectGetMaxY(imageView.frame) + 30, 240 , 45);
    imageView1.image = image1;
    [self.view addSubview:imageView1];
    
    // 第二种方法:给UIImage加类别,扩展一个新方法
    UIImage *image2 = [UIImage resizableImage:@"StretchBubble"];
    UIImageView *imageView2 = [[UIImageView alloc] init];
    imageView2.frame = CGRectMake(50, CGRectGetMaxY(imageView1.frame) + 30, 240 , 45);
    imageView2.image = image2;
    [self.view addSubview:imageView2];
    
}
@end
