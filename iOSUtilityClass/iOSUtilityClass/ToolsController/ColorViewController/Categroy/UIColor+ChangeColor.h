//
//  UIColor+ChangeColor.h
//  iOSUtilityClass
//
//  Created by Alara on 16/7/26.
//  Copyright © 2016年 Alara. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  RGB 颜色 宏(macro)
 */
#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

#define RGBA_COLOR(R, G, B, A) [UIColor colorWithRed:((R) / 255.0f) green:((G) / 255.0f) blue:((B) / 255.0f) alpha:A]
#define RGB_COLOR(R, G, B) [UIColor colorWithRed:((R) / 255.0f) green:((G) / 255.0f) blue:((B) / 255.0f) alpha:1.0f]

/**
 *  颜色
 *
 *  @param r R
 *  @param g G
 *  @param b B
 *  @param a 透明度
 *
 *  @return 颜色
 */
#define RGBA(r,g,b,a) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a]

/**
 *  RGB颜色的宏有透明度
 *
 *  @param rgbValue RGB
 *  @param a        透明度
 *
 *  @return 颜色
 */
#define UIColorFromRGBWithAlpha(rgbValue,a) [UIColor \
colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0xFF))/255.0 alpha:a]

@interface UIColor (ChangeColor)

// ------------------------------------------ RGB颜色的使用 -----------------------------------------
/**
 说明: 如果被点击区域是字体 那么字体颜色改变
      如果被点击区域是按钮 那么按钮背景变色,按钮上字体颜色不变
      如果被点击区域是一列 (如通讯信息列表),那么整列背景变色,其余不变
 */

#pragma mark - 字体颜色
///     提示字体颜色
+ (UIColor *) alertTextColor;

///     导航栏灰色
+ (UIColor *) naviBarGrayColor;

#pragma mark - 控件的背景颜色

///     蓝色  是否点击后
+ (UIColor *) blueWhenSelected:(BOOL)isSelected;

///     红色  是否点击后
+ (UIColor *) redWhenSelected:(BOOL)isSelected;

///     银色  是否点击后
+ (UIColor *) whiteWhenSelected:(BOOL)isSelected;

///     导航栏颜色
+ (UIColor *) navigationBarBackgroundColor;

///     半透明 黑色蒙版  0.7透明度
+ (UIColor *) translucentBlackColor;

#pragma mark - Response 新增
///     发求回应、展现，次标题颜色、线的颜色
+ (UIColor *)responseColor;

///     半透明 按钮颜色
+ (UIColor *)responseBtnColorIsHavePic:(BOOL)isHavePic;

///     求回应的title
+ (UIColor *)responseTitleColor;

///     求回应头像的阴影颜色
+ (UIColor *)responseShadowColor;

///     消息发送状态  送达颜色
+ (UIColor *)messageSendColor;
///     消息发送状态  失败颜色
+ (UIColor *)messageFailColor;

#pragma mark - 标准颜色
///     背景颜色 浅色
+ (UIColor *)bgColor8WithAlpha:(CGFloat)alpha;

///     背景颜色 深色
+ (UIColor *)bgColor5WithAlpha:(CGFloat)alpha;

///     线条颜色
+ (UIColor *)lineColorWithAlpha:(CGFloat)alpha;

///     浅色----小浅色
+ (UIColor *)lightColorWithAlpha:(CGFloat)alpha;

///     中色----中浅色
+ (UIColor *)middleColorWithAlpha:(CGFloat)alpha;

///     深色----深色
+ (UIColor *)darkColorWithAlpha:(CGFloat)alpha;

///     帖子卡片的 小清新灰色
+ (UIColor *)postListCardGrayD2Color;

///     正文颜色
+ (UIColor *)contentColorWithAlpha:(CGFloat)alpha;

///     大标题
+ (UIColor *)titleColorWithAlpha:(CGFloat)alpha;

+ (UIColor *)topicTitleColorWithAlpha:(CGFloat)alpha;

///     标准绿色
+ (UIColor *)greenColorWithAlpha:(CGFloat)alpha;

///     绿色的标题颜色
+ (UIColor *)titleGreenColorWithAlpha:(CGFloat)alpha;

#pragma mark - 出现过的颜色 不知道搁哪 就搁这吧
///     提示  升级头像 背景颜色
+ (UIColor *)remindUpgardColorWithAlpha:(CGFloat)alpha;

///     搜索界面的背景颜色
+ (UIColor *)searchBgColorWithAlpha:(CGFloat)alpha;

///     提醒的小圆点（新增粉丝、关注、点赞者）
+(UIColor *)redCircleColorWithAlpha:(CGFloat)alpha;

///     新版Cell主标题
+(UIColor *)newCellTitleColorWithAlpha:(CGFloat)alpha;

///     新版Cell副标题
+(UIColor *)newCellSubTitleColorWithAlpha:(CGFloat)alpha;

///     新版Cell内容
+(UIColor *)newCellContentColorWithAlpha:(CGFloat)alpha;

///     新版line颜色
+(UIColor *)newLineColorWithAlpha:(CGFloat)alpha;

///     新版背景颜色
+(UIColor *)newBackgroundColorWithAlpha:(CGFloat)alpha;

+(UIColor *)newBackgroundColor5WithAlpha:(CGFloat)alpha;

///     新版浅色背景
+(UIColor *)newBackgroundMiddleColorWithAlpha:(CGFloat)alpha;

+(UIColor *)timeColorWithAlpha:(CGFloat)alpha;

///     新版绿色
+(UIColor *)newGreenColorWithAlpha:(CGFloat)alpha;

+(UIColor *)newBorderLineColorWithAlpha:(CGFloat)alpha;

+(UIColor *)newHintColorWithAlpha:(CGFloat)alpha;

+(UIColor *)newHintBgColorWithAlpha:(CGFloat)alpha;

+(UIColor *)newPlaceholderColorWithAlpha:(CGFloat)alpha;

+(UIColor *)newHintContentColorWithAlpha:(CGFloat)alpha;

+(UIColor *)newWhiteColorWithAlpha:(CGFloat)alpha;

// ----------------------------------------- Hex值颜色的转换 ------------------------------------------
/**
 *  IOS类扩展之Hex值颜色转换
 *
 *  @param UIColor 十六进制颜色的色值
 *
 *  @return 颜色
 */
+ (UIColor *)colorWithHexString:(NSString *)color;

/**
 *  从十六进制字符串获取颜色,color:支持@“#123456”、 @“0X123456”、 @“123456”三种格式
 *
 *  @param color 十六进制颜色的色值
 *  @param alpha 透明度
 *
 *  @return 颜色
 */
+ (UIColor *)colorWithHexString:(NSString *)color alpha:(CGFloat)alpha;

// 字体颜色 标题与导航
+ (UIColor *)fontColorWithTitleOrBar;
+ (UIColor *)fontColorWithTitleOrBarWithAlpha:(CGFloat)alpha;
// 字体颜色 正文
+ (UIColor *)fontColorWithContent;
+ (UIColor *)fontColorWithContentWithAlpha:(CGFloat)alpha;
// 字体颜色 绿色
+ (UIColor *)fontColorWithGreen;
+ (UIColor *)fontColorWithGreenWithAlpha:(CGFloat)alpha;
// 字体颜色 点赞与评论数字
+ (UIColor *)fontColorWithPrompt;
+ (UIColor *)fontColorWithPromptWithAlpha:(CGFloat)alpha;
// 字体颜色 提示辅助类
+ (UIColor *)fontColorWithHint;+ (UIColor *)fontColorWithHintWithAlpha:(CGFloat)alpha;
// 环境颜色 导航栏图标
+ (UIColor *)EnvironmentColorWithTitleBG;
+ (UIColor *)EnvironmentColorWithTitleBGWithAlpha:(CGFloat)alpha;
// 环境颜色 上下导航栏分割颜色
+ (UIColor *)EnvironmentColorWithTitledividebg;
+ (UIColor *)EnvironmentColorWithTitledividebgWithAlpha:(CGFloat)alpha;
// 环境颜色 卡片内分割线
+ (UIColor *)EnvironmentColorWithContentdividebg;
+ (UIColor *)EnvironmentColorWithContentdividebgWithAlpha:(CGFloat)alpha;
// 环境颜色 二级导航,搜索背景
+ (UIColor *)EnvironmentColorWithPromptbg;
+ (UIColor *)EnvironmentColorWithPromptbgWithAlpha:(CGFloat)alpha;
// 环境颜色 内容背景色
+ (UIColor *)EnvironmentColorWithContentbg;
+ (UIColor *)EnvironmentColorWithContentbgWithAlpha:(CGFloat)alpha;

@end
