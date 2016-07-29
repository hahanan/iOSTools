//
//  PureImageCollectionViewCell.m
//  iOSUtilityClass
//
//  Created by Alara on 16/7/27.
//  Copyright © 2016年 Alara. All rights reserved.
//

#import "PureImageCollectionViewCell.h"
#import "SlideBannerModel.h"

@interface PureImageCollectionViewCell ()

@end

@implementation PureImageCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
      
        self.backgroundColor = [UIColor clearColor];
        [self prepareCollectioViewCell];
    }
    return self;
}

- (void)prepareCollectioViewCell {
    
    UIImageView *imageView = [[UIImageView alloc] init];
    imageView.frame = self.contentView.frame;
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    imageView.layer.cornerRadius = 2;
    imageView.layer.masksToBounds = YES;
    [self.contentView addSubview:imageView];
    self.bannerImageView = imageView;
    
}

- (void)setBannerModel:(SlideBannerModel *)bannerModel {
    
    self.bannerImageView.image = bannerModel.image;
}

@end
