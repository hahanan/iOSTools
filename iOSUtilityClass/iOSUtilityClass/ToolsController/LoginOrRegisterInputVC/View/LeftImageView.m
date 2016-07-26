//
//  LeftImageView.m
//  iOSUtilityClass
//
//  Created by 王康棋 on 16/7/26.
//  Copyright © 2016年 Alara. All rights reserved.
//

#import "LeftImageView.h"
#import "Header.h"


static const CGFloat Width_CarveLine = 1.0 / 2;
static const CGFloat Height_CarveLine = 33.0 / 2;

static const CGFloat Width_LeftImageView = 77.0 / 2;
static const CGFloat Height_LeftImageView = 74.0 / 2;

@implementation LeftImageView

- (instancetype)init {
    
    self = [super init];
    if (self) {
        
        self.frame = CGRectMake(0, 0, Width_LeftImageView, Height_LeftImageView);
    }
    return self;
}

- (void)prepareViewWithImage:(UIImage *)image {
    
    UIImageView *imageView = [[UIImageView alloc] init];
    imageView.frame = CGRectMake(0, 0, image.size.width, image.size.height);
    imageView.image = image;
    imageView.contentMode = UIViewContentModeCenter;
    imageView.center = self.center;
    [self addSubview:imageView];
    
    
    UIView *carveLine = [[UIView alloc] init];
    carveLine.frame = CGRectMake(Width_LeftImageView - Width_CarveLine - 3 , 10, Width_CarveLine, Height_CarveLine);
    carveLine.backgroundColor = [UIColor EnvironmentColorWithContentdividebg];
    [self addSubview:carveLine];

}
@end
