//
//  UIImage+Stretch.m
//  iOSUtilityClass
//
//  Created by Alara on 16/7/29.
//  Copyright © 2016年 Alara. All rights reserved.
//

#import "UIImage+Stretch.h"

@implementation UIImage (Stretch)

+ (UIImage *)resizableImage:(NSString *)imageName {
    
    UIImage *image = [self imageNamed:imageName];
    return [image stretchableImageWithLeftCapWidth:image.size.width * 0.5 topCapHeight:image.size.height * 0.5];
}
@end
