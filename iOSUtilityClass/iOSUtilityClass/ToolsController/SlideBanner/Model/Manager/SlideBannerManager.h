//
//  SlideBannerManager.h
//  iOSUtilityClass
//
//  Created by Alara on 16/7/27.
//  Copyright © 2016年 Alara. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SlideBannerModel.h"
typedef enum : NSUInteger {
    FromEnterType1 = 1,
    FromEnterType2,
    FromEnterType3,
    FromEnterType4,
    FromEnterType5,
    FromEnterType6
} FromEnterType;

@interface SlideBannerManager : NSObject

+ (void)touchBannerViewWithBannerModel:(SlideBannerModel *)bannerModel
                         withFromEnterType:(FromEnterType)enterType
                                  with:(UIViewController *)pushSuperVC;

@end
