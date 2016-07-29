//
//  SlideBannerCollectionView.h
//  iOSUtilityClass
//
//  Created by Alara on 16/7/27.
//  Copyright © 2016年 Alara. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SlideBannerCollectionView;

@protocol SlideBannerCollectionViewDelegate <NSObject>

- (void)selectBannerTag:(SlideBannerCollectionView *)bannerView didSelectItemAtIndex:(NSInteger)index;

@end

@interface SlideBannerCollectionView : UIView

/**
 *  传入这个banner的数据
 */
@property (nonatomic, copy) NSArray *bannerDataArr;

/**
 *  显示这个Banner的CollectionView
 */
@property (nonatomic, strong) UICollectionView *bannerCollectionView;

@property (nonatomic, strong) id<SlideBannerCollectionViewDelegate> delegate;

/**
 *  是否可以点击的方法
 */

@property (nonatomic, assign) BOOL openPhotoBrow;

@property (nonatomic, assign) CGFloat itemWidth;

@end
