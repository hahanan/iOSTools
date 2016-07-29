//
//  SlideBannerModel.h
//  iOSUtilityClass
//
//  Created by Alara on 16/7/27.
//  Copyright © 2016年 Alara. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, BannerType){
    kbannerTypeWithURL = 1,      // 跳转网页
    kbannerTypeWithPhoto = 2,    // 点击放大图片

};
@interface SlideBannerModel : NSObject

/**
 *  图片
 */
@property (nonatomic, copy) UIImage *image;

/**
 *  网址
 */
@property (nonatomic, copy) NSString *url;


/**
 *  需要跟后台定义,1 = 跳转网页; 2 = 放大图片;
 */
@property(nonatomic, assign) NSInteger type;

/**
 *  Banner类型
 */
@property(nonatomic, assign) BannerType bannerType;

/**
 *  姓名
 */
@property (nonatomic, copy) NSString *name;

/**
 *  年龄
 */
@property (nonatomic, copy) NSString *age;

@end
