//
//  SlideBannerManager.m
//  iOSUtilityClass
//
//  Created by Alara on 16/7/27.
//  Copyright © 2016年 Alara. All rights reserved.
//

#import "SlideBannerManager.h"



@implementation SlideBannerManager

+ (void)touchBannerViewWithBannerModel:(SlideBannerModel *)bannerModel
                     withFromEnterType:(FromEnterType)enterType
                                  with:(UIViewController *)pushSuperVC {
    
    UIViewController *pushVC = [UIViewController new];
    if (bannerModel.bannerType == kbannerTypeWithURL) {
       
        NSLog(@"跳转网页");
    }else if (bannerModel.bannerType == kbannerTypeWithPhoto) {
        
        NSLog(@"点击放大图片");

    }
    
    [pushSuperVC.navigationController pushViewController:pushVC animated:YES];
}
@end
