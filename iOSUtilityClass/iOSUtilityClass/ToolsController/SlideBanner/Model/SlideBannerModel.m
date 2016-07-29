//
//  SlideBannerModel.m
//  iOSUtilityClass
//
//  Created by Alara on 16/7/27.
//  Copyright © 2016年 Alara. All rights reserved.
//

#import "SlideBannerModel.h"

@implementation SlideBannerModel

- (void)setType:(NSInteger)type {
    
    switch (type) {
        case 1:
            self.bannerType = kbannerTypeWithURL;
            break;
        case 2:
            self.bannerType = kbannerTypeWithPhoto;
            break;
        default:
            break;
    }
}
@end
