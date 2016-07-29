//
//  MixBannerCollectionViewCell.h
//  iOSUtilityClass
//
//  Created by Alara on 16/7/27.
//  Copyright © 2016年 Alara. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SlideBannerModel;
@interface MixBannerCollectionViewCell : UICollectionViewCell

@property (nonatomic, strong) SlideBannerModel *bannerModel;

@property (nonatomic, strong) UIImageView *imageView;

@end
