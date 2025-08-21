//
//  DemoCard.m
//  WMZBanner
//
//  Created by wmz on 2019/12/17.
//  Copyright © 2019 wmz. All rights reserved.
//

#import "DemoCard.h"
#import "WMZBannerView.h"
#import "MyCell.h"
@interface DemoCard ()

@end

@implementation DemoCard

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self demoOne];
    [self demoTwo];
    [self demoThree];
}

- (void)demoOne{
    WMZBannerParam *param =
    BannerParam()
    //自定义视图必传
    .wMyCellClassNameSet(@"MyCell")
    .wMyCellSet(^UICollectionViewCell *(NSIndexPath *indexPath, UICollectionView *collectionView, id model, UIImageView *bgImageView,NSArray*dataArr) {
               //自定义视图
        MyCell *cell = (MyCell *)[collectionView dequeueReusableCellWithReuseIdentifier:NSStringFromClass([MyCell class]) forIndexPath:indexPath];
        cell.leftText.text = model[@"name"];
        [cell.icon sd_setImageWithURL:[NSURL URLWithString:model[@"icon"]] placeholderImage:nil];
        return cell;
    })
    .wFrameSet(CGRectMake(0, 100, BannerWitdh, BannerHeight*0.2))
    .wDataSet([self getData])
    //关闭pageControl
    .wHideBannerControlSet(YES)
    //开启缩放
    .wScaleSet(YES)
    //自定义item的大小
    .wItemSizeSet(CGSizeMake(BannerWitdh*0.55, BannerHeight*0.2))
    //固定移动的距离
    .wContentOffsetXSet(0.5)
    //循环
    .wRepeatSet(NO)
    //中间cell层级最上面
    .wZindexSet(YES)
    //整体左右间距  设置为size.width的一半 让最后一个可以居中
    .wSectionInsetSet(UIEdgeInsetsMake(0,50, 0, BannerWitdh*0.55*0.3))
    //间距
    .wLineSpacingSet(10)
    //开启背景毛玻璃
    .wEffectSet(YES)
    //点击左右居中
    .wClickCenterSet(YES)
    ;
    WMZBannerView *bannerView = [[WMZBannerView alloc]initConfigureWithModel:param];
    [self.view addSubview:bannerView];
}

- (void)demoTwo{
    WMZBannerParam *param =
    BannerParam()
   //自定义视图必传
   .wMyCellClassNameSet(@"MyCell")
   .wMyCellSet(^UICollectionViewCell *(NSIndexPath *indexPath, UICollectionView *collectionView, id model, UIImageView *bgImageView,NSArray*dataArr) {
              //自定义视图
       MyCell *cell = (MyCell *)[collectionView dequeueReusableCellWithReuseIdentifier:NSStringFromClass([MyCell class]) forIndexPath:indexPath];
       cell.leftText.text = model[@"name"];
       [cell.icon sd_setImageWithURL:[NSURL URLWithString:model[@"icon"]] placeholderImage:nil];
       return cell;
   })
   .wFrameSet(CGRectMake(0, BannerHeight*0.4, BannerWitdh, BannerHeight*0.2))
   .wDataSet([self getData])
   //关闭pageControl
   .wHideBannerControlSet(YES)
   //自定义item的大小
   .wItemSizeSet(CGSizeMake(BannerWitdh*0.55, BannerHeight*0.2))
   //固定移动的距离
   .wContentOffsetXSet(0.5)
//   //自动滚动
   .wAutoScrollSet(YES)
    //循环
    .wRepeatSet(YES)
   //整体左右间距  设置为size.width的一半 让最后一个可以居中
   .wSectionInsetSet(UIEdgeInsetsMake(0,20, 0, BannerWitdh*0.55*0.3))
   //间距
   .wLineSpacingSet(20)
   ;
   WMZBannerView *bannerView = [[WMZBannerView alloc]initConfigureWithModel:param];
   [self.view addSubview:bannerView];
}

- (void)demoThree{
     WMZBannerParam *param =
     BannerParam()
    //自定义视图必传
    .wMyCellClassNameSet(@"MyCell")
    .wMyCellSet(^UICollectionViewCell *(NSIndexPath *indexPath, UICollectionView *collectionView, id model, UIImageView *bgImageView,NSArray*dataArr) {
               //自定义视图
        MyCell *cell = (MyCell *)[collectionView dequeueReusableCellWithReuseIdentifier:NSStringFromClass([MyCell class]) forIndexPath:indexPath];
        cell.leftText.text = model[@"name"];
        [cell.icon sd_setImageWithURL:[NSURL URLWithString:model[@"icon"]] placeholderImage:nil];
        return cell;
    })
    .wFrameSet(CGRectMake(0, BannerHeight*0.7, BannerWitdh, BannerHeight*0.2))
    .wDataSet([self getData])
    //关闭pageControl
    .wHideBannerControlSet(YES)
    //开启缩放
    .wScaleSet(YES)
    //自定义item的大小
    .wItemSizeSet(CGSizeMake(BannerWitdh*0.2-10, BannerHeight*0.2))
    //固定移动的距离
    .wContentOffsetXSet(0.5)
     //循环
     .wRepeatSet(YES)
    //整体左右间距  设置为size.width的一半 让最后一个可以居中
    .wSectionInsetSet(UIEdgeInsetsMake(0,10, 0, BannerWitdh*0.55*0.3))
    //间距
    .wLineSpacingSet(10)
    ;
    WMZBannerView *bannerView = [[WMZBannerView alloc]initConfigureWithModel:param];
    [self.view addSubview:bannerView];
}
- (NSArray*)getData{
    return @[
      @{@"name":@"自定义文本1",@"icon":@"https://img2.baidu.com/it/u=2059387762,2920092647&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=646"},
      @{@"name":@"自定义文本2",@"icon":@"https://img2.baidu.com/it/u=638000455,1936708189&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=875"},
      @{@"name":@"自定义文本3",@"icon":@"https://img2.baidu.com/it/u=712516284,2643075479&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=890"}
      ];
}
- (void)dealloc{
    
}
@end
