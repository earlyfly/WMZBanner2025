//
//  DemoTianMao.m
//  WMZBanner
//
//  Created by wmz on 2019/12/16.
//  Copyright © 2019 wmz. All rights reserved.
//

#import "DemoTianMao.h"
#import "WMZBannerView.h"
#import "TianMaoCell.h"
@interface DemoTianMao ()
@property(nonatomic,strong)WMZBannerView *bannerView;
@end

@implementation DemoTianMao

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    WMZBannerParam *param =
    BannerParam()
    //自定义视图必传
    .wMyCellClassNameSet(@"TianMaoCell")
    .wMyCellSet(^UICollectionViewCell *(NSIndexPath *indexPath, UICollectionView *collectionView, id model, UIImageView *bgImageView,NSArray*dataArr) {
               //自定义视图
        TianMaoCell *cell = (TianMaoCell *)[collectionView dequeueReusableCellWithReuseIdentifier:NSStringFromClass([TianMaoCell class]) forIndexPath:indexPath];
        cell.titleLa.text = model[@"name"];
        cell.topLa.backgroundColor = model[@"color"];
        cell.bottomView.backgroundColor = model[@"color"];
        [cell.backImage sd_setImageWithURL:[NSURL URLWithString:model[@"icon"]] placeholderImage:nil];
        return cell;
    })
    .wFrameSet(CGRectMake(0, BannerHeight*0.3, BannerWitdh, BannerHeight*0.4))
    .wDataSet([self getData])
    //关闭pageControl
    .wHideBannerControlSet(YES)
    .wSelectIndexSet(1)
    //开启缩放
    .wScaleSet(YES)
    //自定义item的大小
    .wItemSizeSet(CGSizeMake(BannerWitdh*0.55, BannerHeight*0.4))
    //固定移动的距离
    .wContentOffsetXSet(0.32)
    //循环
    .wRepeatSet(YES)
    //毛玻璃背景的高度系数
    .wEffectHeightSet(0.8)
    //自动滚动
    .wAutoScrollSet(YES)
    //整体左右间距  设置为 (1-0.32)*wItemSize
    .wSectionInsetSet(UIEdgeInsetsMake(0,BannerWitdh*0.55*0.68, 0, BannerWitdh*0.55*0.68))
    //间距
    .wLineSpacingSet(10)
    //开启背景毛玻璃
    .wEffectSet(YES)
    
    ;
    self.bannerView = [[WMZBannerView alloc]initConfigureWithModel:param];
    [self.view addSubview:self.bannerView];
}

- (NSArray*)getData{
    return @[
      @{
          @"name":@"天猫精灵,每天晚安闹钟1",
          @"icon":@"https://img2.baidu.com/it/u=2059387762,2920092647&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=646"
              , @"color":BannerColor(0x035eef)
      },
      @{
          @"name":@"天猫精灵,每天晚安闹钟3",
        @"icon":@"https://img2.baidu.com/it/u=638000455,1936708189&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=875",
      @"color":BannerColor(0x00D762)},
      @{
          @"name":@"天猫精灵,每天晚安闹钟3",
        @"icon":@"https://img2.baidu.com/it/u=2236647065,4108091546&fm=253&fmt=auto&app=120&f=JPEG?w=500&h=889",
          @"color":BannerColor(0xD41B14)},
      @{
          @"name":@"天猫精灵,每天晚安闹钟4",
        @"icon":@"https://img2.baidu.com/it/u=712516284,2643075479&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=890"
          ,@"color":BannerColor(0xF5DE95)
      }
      ];
}


- (void)dealloc{
    
}

@end
