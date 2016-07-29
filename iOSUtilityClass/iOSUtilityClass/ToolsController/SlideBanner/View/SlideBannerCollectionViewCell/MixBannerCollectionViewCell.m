//
//  MixBannerCollectionViewCell.m
//  iOSUtilityClass
//
//  Created by Alara on 16/7/27.
//  Copyright © 2016年 Alara. All rights reserved.
//

#import "MixBannerCollectionViewCell.h"
#import "SlideBannerModel.h"

@interface MixBannerCollectionViewCell ()

@property (nonatomic, strong) UILabel *nameLabel;

@property (nonatomic, strong) UILabel *ageLabel;

@end

@implementation MixBannerCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame {
   
    self = [super initWithFrame:frame];
    if (self) {
        
        [self prepareCollectionViewCell];
    }
    return self;
}

- (void)prepareCollectionViewCell {

    
    UIImageView *imageView = [[UIImageView alloc] init];
    imageView.frame = self.contentView.frame;
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    imageView.layer.cornerRadius = 2;
    imageView.layer.masksToBounds = YES;
    [self.contentView addSubview:imageView];
    self.imageView = imageView;
    
    UILabel *nameLabel = [[UILabel alloc] init];
    nameLabel.textAlignment = NSTextAlignmentCenter;
    nameLabel.font = [UIFont systemFontOfSize:13.f];
    [self.contentView addSubview:nameLabel];
    self.nameLabel = nameLabel;
    
    UILabel *ageLabel = [[UILabel alloc] init];
    ageLabel.textAlignment = NSTextAlignmentCenter;
    ageLabel.font = [UIFont systemFontOfSize:11.f];
    [self.contentView addSubview:ageLabel];
    self.ageLabel = ageLabel;
    
    static CGFloat Width = 132;
    static CGFloat Height_Image = 220;
    static CGFloat Height_Name = 13;
    static CGFloat Height_Age = 11;
    static CGFloat Space1 = 15;
    static CGFloat Space2 = 8;
    imageView.frame = CGRectMake(0, 0, Width, Height_Image);
    nameLabel.frame = CGRectMake(0, Height_Image + Space1, Width, Height_Name);
    ageLabel.frame = CGRectMake(0, Height_Image+ Space1 + Height_Name + Space2, Width, Height_Age);
}

- (void)setBannerModel:(SlideBannerModel *)bannerModel {
    
    self.imageView.image = bannerModel.image;
    self.nameLabel.text = bannerModel.name;
    self.ageLabel.text = bannerModel.age;
}
@end
