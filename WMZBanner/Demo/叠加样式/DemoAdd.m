






//
//  DemoAdd.m
//  WMZBanner
//
//  Created by wmz on 2019/12/17.
//  Copyright © 2019 wmz. All rights reserved.
//

#import "DemoAdd.h"
#import "WMZBannerView.h"
@interface DemoAdd ()

@end

@implementation DemoAdd

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    /*
     *横向
     */
    WMZBannerParam *param =  BannerParam()
    .wFrameSet(CGRectMake(10,100, BannerWitdh-40, BannerHeight*0.35))
    .wItemSizeSet(CGSizeMake(BannerWitdh-60, BannerHeight*0.25))
    .wDataSet([self getData])
    .wEventScrollEndSet(^(id anyID, NSInteger index, BOOL isCenter, UICollectionViewCell *cell) {
            NSLog(@"滚动到第%ld个",index);
    })
    //设置item的间距
    .wLineSpacingSet(15)
    //开启卡片叠加模式
    .wCardOverLapSet(YES)
    //毛玻璃背景
    .wEffectSet(YES)
    //循环
    .wRepeatSet(YES)
    //开启自动滚动
    .wAutoScrollSet(YES)
    ;
    WMZBannerView *viewOne = [[WMZBannerView alloc]initConfigureWithModel:param];
    [self.view addSubview:viewOne];



    /*
    *纵向
    */
     WMZBannerParam *param1 =
    BannerParam()
    .wEventScrollEndSet(^(id anyID, NSInteger index, BOOL isCenter, UICollectionViewCell *cell) {
        NSLog(@"滚动到第%ld个",index);
    })
    .wFrameSet(CGRectMake(10,  CGRectGetMaxY(viewOne.frame)+30 , BannerWitdh-20, BannerHeight*0.35))
    .wItemSizeSet(CGSizeMake(BannerWitdh/2, BannerHeight*0.3))
    .wDataSet([self getData])
    .wHideBannerControlSet(NO)
    //设置item的间距
    .wLineSpacingSet(40)
    //开启卡片叠加模式
    .wCardOverLapSet(YES)
    //缩放系数
    .wScaleFactorSet(0.6)
    //毛玻璃背景
    .wEffectSet(YES)
    .wRepeatSet(YES)
    //开启自动滚动
    .wAutoScrollSet(YES)
    //显示个数
    .wCardOverLapCountSet(3)
    //开启透明度变化 default NO
    .wCardOverAlphaOpenSet(YES)
    //透明度最小系数 default 0.1
    .wCardOverMinAlphaSet(0.1)
    //开启纵向
    .wVerticalSet(YES);
    WMZBannerView *viewTwo = [[WMZBannerView alloc]initConfigureWithModel:param1];

    [self.view addSubview:viewTwo];
    
}

- (NSArray*)getData{
    return @[
      @"https://img2.baidu.com/it/u=2059387762,2920092647&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=646",
      @"https://img2.baidu.com/it/u=638000455,1936708189&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=875",
      @"https://img2.baidu.com/it/u=2236647065,4108091546&fm=253&fmt=auto&app=120&f=JPEG?w=500&h=889",
      @"https://img2.baidu.com/it/u=712516284,2643075479&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=890"
      ];
}
- (void)dealloc{
    
}

@end
