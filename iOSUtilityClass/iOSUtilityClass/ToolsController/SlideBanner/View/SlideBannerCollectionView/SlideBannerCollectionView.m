//
//  SlideBannerCollectionView.m
//  iOSUtilityClass
//
//  Created by Alara on 16/7/27.
//  Copyright © 2016年 Alara. All rights reserved.
//

#import "SlideBannerCollectionView.h"
#import "Header.h"
#import "SlideBannerModel.h"
#import "PureImageCollectionViewCell.h"
#import "MixBannerCollectionViewCell.h"
#import "SDPhotoBrowser.h"

static  NSString *headerIdentifier = @"SlideHeaderIdentifier";
static  NSString *footerIdentifier = @"SlideFooterIdentifier";
static  NSString *reuseIdentifier = @"pureReusezidentifier";
static  NSString *reuseIdentifier1 = @"mixReusezidentifier";


@interface SlideBannerCollectionView () <UICollectionViewDelegate, UICollectionViewDataSource, SDPhotoBrowserDelegate>

@property (nonatomic, strong) NSArray *modelsArr;

@property (nonatomic, strong) UIImageView *bannerImageView;

@end

@implementation SlideBannerCollectionView

- (instancetype)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
     
    }
    return self;
}

- (void)setItemWidth:(CGFloat)itemWidth {
    _itemWidth = itemWidth;
    self.backgroundColor = [UIColor EnvironmentColorWithContentdividebg];
    [self prepareCollectionView];

}
#pragma mark - 设置CollectionView的界面
/**
 *  设置CollectionView的界面
 */
- (void)prepareCollectionView {

    CGSize itemSize = CGSizeMake(_itemWidth + 7, self.height);
    CGSize headerSize = CGSizeMake(10, self.height);
    CGSize footerSize = CGSizeMake(3, self.height);
    
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    
    layout.headerReferenceSize = headerSize;
    layout.footerReferenceSize = footerSize;
    layout.minimumLineSpacing = 0;
    layout.itemSize = itemSize;
    layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    
    self.bannerCollectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, self.width, self.height) collectionViewLayout:layout];
    /*
     * 如果使用了导航控制器,collectionView顶部可能会出现大小为64的间距(删掉导航控制器这个间距就会消失),具体原因不明
     */
    self.bannerCollectionView.contentInset = UIEdgeInsetsMake(-64,0, 0, 0); // 此行代码根据你具体的控制器添加或者删除
    
    self.bannerCollectionView.showsHorizontalScrollIndicator = NO;
    self.bannerCollectionView.showsVerticalScrollIndicator = NO;
    self.bannerCollectionView.backgroundColor = [UIColor clearColor];
    self.bannerCollectionView.scrollsToTop = NO;
    self.bannerCollectionView.delegate = self;
    self.bannerCollectionView.dataSource = self;
    [self.bannerCollectionView registerClass:[PureImageCollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    [self.bannerCollectionView registerClass:[MixBannerCollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier1];
    [self.bannerCollectionView registerClass:[UICollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:headerIdentifier];
    [self.bannerCollectionView registerClass:[UICollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:footerIdentifier];
    [self addSubview:self.bannerCollectionView];
    self.bannerCollectionView.hidden = YES;
    
    // 若只有一张图片,那么就显示一张,它将占据整个屏幕,否则可以左右滑动
    self.bannerImageView = [[UIImageView alloc] initWithFrame:self.bounds];
    self.bannerImageView.contentMode = UIViewContentModeScaleAspectFit;
    self.bannerImageView.hidden = YES;
    [self addSubview:self.bannerImageView];
    
//    UITapGestureRecognizer *tapGR = [UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapSingleImageView)
    
}

- (void)setBannerDataArr:(NSArray *)bannerDataArr {
    
    if (bannerDataArr.count > 1) {
        
        self.bannerImageView.hidden = YES;
        self.bannerCollectionView.hidden = NO;
        self.modelsArr = [bannerDataArr copy];
        [self.bannerCollectionView reloadData];
    }else if (bannerDataArr.count > 0) {
      
        self.bannerImageView.hidden = NO;
        self.bannerCollectionView.hidden = YES;
        SlideBannerModel *bannerModel = bannerDataArr.firstObject;
        self.bannerImageView.image = bannerModel.image;
    }
}

#pragma mark - UICollectionViewDataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return self.modelsArr.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    SlideBannerModel *model = self.modelsArr[indexPath.item];
    if (model.bannerType == kbannerTypeWithURL) {
      
        PureImageCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
        if (cell == nil) {
            cell = [[PureImageCollectionViewCell alloc] initWithFrame:CGRectMake(0, 0, _itemWidth, cell.contentView.height)];
        }

        cell.bannerModel = model;
        return cell;

    }else if(model.bannerType == kbannerTypeWithPhoto) {
        
        MixBannerCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier1 forIndexPath:indexPath];
        if (cell == nil) {
            cell = [[MixBannerCollectionViewCell alloc] initWithFrame:CGRectMake(0, 0, _itemWidth, cell.contentView.height)];
        }
        cell.bannerModel = model;
        return cell;
    }

    UICollectionViewCell *cell = nil;
    return cell;
}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
    
    UICollectionReusableView *reusableview = nil;
    if (kind == UICollectionElementKindSectionHeader) {
        UICollectionReusableView *headerView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:headerIdentifier forIndexPath:indexPath];
        reusableview = headerView;
    }
    
    if (kind == UICollectionElementKindSectionFooter) {
        UICollectionReusableView *footerView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:footerIdentifier forIndexPath:indexPath];
        reusableview = footerView;
    }
    
    reusableview.backgroundColor = [UIColor clearColor];
    return reusableview;
}

#pragma mark - UICollectionViewDelegate
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
    if (_openPhotoBrow) {
        [self showPhotoBrowser:indexPath.item];
    }else {
        
        if (self.delegate && [self.delegate respondsToSelector:@selector(selectBannerTag:didSelectItemAtIndex:)]) {
            [self.delegate selectBannerTag:self didSelectItemAtIndex:indexPath.item];
        }
    }
}

#pragma mark - 是否点击后变为放大图片的方法
/**
 *  设置点击后图片放大
 *
 *  @param index 图片的坐标
 */
- (void)showPhotoBrowser:(NSInteger)index{
    
    SDPhotoBrowser *photoBrowser = [SDPhotoBrowser new];
    photoBrowser.delegate = self;
    photoBrowser.currentImageIndex = index;
    photoBrowser.imageCount = self.modelsArr.count;
    photoBrowser.sourceImagesContainerView = self.bannerCollectionView;
    
    [photoBrowser show];

}

#pragma mark - SDPhotoBrowserDelegate
// 返回临时占位图片（即原来的小图）
- (UIImage *)photoBrowser:(SDPhotoBrowser *)browser placeholderImageForIndex:(NSInteger)index
{
    // 不建议用此种方式获取小图，这里只是为了简单实现展示而已
    MixBannerCollectionViewCell *cell = (MixBannerCollectionViewCell *)[self collectionView:self.bannerCollectionView cellForItemAtIndexPath:[NSIndexPath indexPathForItem:index inSection:0]];
    
    return cell.imageView.image;
    
}


// 返回高质量图片的url
- (NSURL *)photoBrowser:(SDPhotoBrowser *)browser highQualityImageURLForIndex:(NSInteger)index
{
    SlideBannerModel *bannerModel = self.modelsArr[index];
    
    NSURL *imageURL = [NSURL URLWithString:bannerModel.url] ;
    return imageURL;
}

















@end
