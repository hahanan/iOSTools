//
//  SlideBannerViewController.m
//  iOSUtilityClass
//
//  Created by Alara on 16/7/27.
//  Copyright © 2016年 Alara. All rights reserved.
//

#import "SlideBannerViewController.h"
#import "SlideBannerCollectionView.h"
#import "SlideBannerModel.h"
#import "SlideBannerManager.h"
#import "Header.h"

static CGFloat bannerViewHeight0  = 90;
static CGFloat bannerViewHeight1  = 70;
static CGFloat bannerViewHeight2  = 260;

@interface SlideBannerViewController () <SlideBannerCollectionViewDelegate>

// 纯图片多张
@property (nonatomic, strong) SlideBannerCollectionView *slideBannerView0;

@property (nonatomic, strong) NSMutableArray *slideDataArr0;

// 只有一张图片
@property (nonatomic, strong) SlideBannerCollectionView *slideBannerView1;

@property (nonatomic, strong) NSMutableArray *slideDataArr1;

// 测试可以点击放大图片
@property (nonatomic, strong) SlideBannerCollectionView *slideBannerView2;

@property (nonatomic, strong) NSMutableArray *slideDataArr2;

@end

@implementation SlideBannerViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor EnvironmentColorWithPromptbg];
    [self prepareData];
    [self prepareUI];
}

- (void)prepareData {

    
    UIImage *image0 = [UIImage imageNamed:@"Image-0"];
    UIImage *image1 = [UIImage imageNamed:@"Image-1"];
    UIImage *image2 = [UIImage imageNamed:@"Image-2"];
    UIImage *image3 = [UIImage imageNamed:@"Image-3"];
    UIImage *image4 = [UIImage imageNamed:@"Image-4"];
    UIImage *image5 = [UIImage imageNamed:@"Image-5"];
    UIImage *image6 = [UIImage imageNamed:@"Image-6"];
    UIImage *image7 = [UIImage imageNamed:@"Image-7"];
    UIImage *image8 = [UIImage imageNamed:@"Image-8"];

    NSMutableArray *imageArr = [NSMutableArray arrayWithObjects:image0,image1,image2,image3,image4,image5,image6,image7,image8, nil];
    
    _slideDataArr0 = [NSMutableArray array];
    for (int i= 0; i < imageArr.count; i ++) {
       
        SlideBannerModel *model = [SlideBannerModel new];
        model.image = imageArr[i];
        model.url = @"www.baidu.com";
        model.type = 1;
        [_slideDataArr0 addObject:model];
    }
    
    _slideDataArr1 = [NSMutableArray array];
    SlideBannerModel *model = [SlideBannerModel new];
    model.image = [UIImage imageNamed:@"Image-9"];
    model.url = @"www.baidu.com";
    model.type = 1;
    [_slideDataArr1 addObject:model];
    
    _slideDataArr2 = [NSMutableArray array];
    UIImage *image10 = [UIImage imageNamed:@"Image-10"];
    UIImage *image11 = [UIImage imageNamed:@"Image-11"];
    UIImage *image12 = [UIImage imageNamed:@"Image-12"];
    UIImage *image13 = [UIImage imageNamed:@"Image-13"];
    UIImage *image14 = [UIImage imageNamed:@"Image-14"];
    UIImage *image15 = [UIImage imageNamed:@"Image-15"];
    UIImage *image16 = [UIImage imageNamed:@"Image-16"];
    UIImage *image17 = [UIImage imageNamed:@"Image-17"];
    
    NSMutableArray *imageArr2 = [NSMutableArray arrayWithObjects:image10,image11,image12,image13,image14,image15,image16,image17, nil];
    
    NSString *url0 = @"http://img0.imgtn.bdimg.com/it/u=145227176,4293700814&fm=21&gp=0.jpg";
    NSString *url1 = @"http://img3.imgtn.bdimg.com/it/u=1887684384,1418368005&fm=21&gp=0.jpg";
    NSString *url2 = @"http://img3.imgtn.bdimg.com/it/u=2542388525,3020745686&fm=21&gp=0.jpg";
    NSString *url3 = @"http://img5.imgtn.bdimg.com/it/u=966795374,3362173561&fm=21&gp=0.jpg";
    NSString *url4 = @"http://img5.imgtn.bdimg.com/it/u=3776113128,172830017&fm=21&gp=0.jpg";
    NSString *url5 = @"http://img1.imgtn.bdimg.com/it/u=3031474685,1222435946&fm=21&gp=0.jpg";
    NSString *url6 = @"http://img5.imgtn.bdimg.com/it/u=921293582,3978521875&fm=21&gp=0.jpg";
    NSString *url7 = @"http://img1.imgtn.bdimg.com/it/u=1729731087,2091513628&fm=21&gp=0.jpg";
    NSMutableArray *urlArr = [NSMutableArray arrayWithObjects:url0,url1,url2,url3,url4,url5,url6,url7, nil];
    _slideDataArr2 = [NSMutableArray array];
    for (int i = 0; i < imageArr2.count; i ++) {
     
        SlideBannerModel *model = [SlideBannerModel new];
        model.image = imageArr2[i];
        model.url = urlArr[i];
        model.name = @"风景";
        model.age = @"18";
        model.type = 2;
        [_slideDataArr2 addObject:model];

    }
    
}
 - (void)prepareUI {
    
    _slideBannerView0 = [[SlideBannerCollectionView alloc] initWithFrame:CGRectMake(0, 100, self.view.width, bannerViewHeight0)];
     _slideBannerView0.itemWidth = 90;
    _slideBannerView0.delegate = self;
    _slideBannerView0.openPhotoBrow = NO;
    [self.view addSubview:_slideBannerView0];
     _slideBannerView0.bannerDataArr = _slideDataArr0;

     
     _slideBannerView1 = [[SlideBannerCollectionView alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(_slideBannerView0.frame) + 30, self.view.width, bannerViewHeight1)];
     _slideBannerView1.itemWidth = 90;
     _slideBannerView1.delegate = self;
     _slideBannerView1.openPhotoBrow = NO;
     [self.view addSubview:_slideBannerView1];
     _slideBannerView1.bannerDataArr = _slideDataArr1;
     
     _slideBannerView2 = [[SlideBannerCollectionView alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(_slideBannerView1.frame) + 30, self.view.width, bannerViewHeight2)];
     _slideBannerView2.itemWidth = 132;
     _slideBannerView2.delegate = self;
     _slideBannerView2.openPhotoBrow = YES;
     [self.view addSubview:_slideBannerView2];
     _slideBannerView2.bannerDataArr = _slideDataArr2;

}

#pragma mark - Delegate
- (void)selectBannerTag:(SlideBannerCollectionView *)bannerView didSelectItemAtIndex:(NSInteger)index {
    
    SlideBannerModel *selectModel = _slideDataArr0[index];
    [SlideBannerManager touchBannerViewWithBannerModel:selectModel withFromEnterType:FromEnterType1 with:self];
}
@end
