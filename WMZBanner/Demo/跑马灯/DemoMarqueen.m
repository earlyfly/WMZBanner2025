


//
//  DemoMarqueen.m
//  WMZBanner
//
//  Created by wmz on 2019/12/19.
//  Copyright © 2019 wmz. All rights reserved.
//

#import "DemoMarqueen.h"
#import "WMZBannerView.h"
@interface DemoMarqueen ()

@end

@implementation DemoMarqueen

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
     /*
      *横向
      */
     WMZBannerParam *param =  BannerParam()
     .wFrameSet(CGRectMake(10, BannerHeight/6, BannerWitdh-20, BannerHeight/4))
     .wDataSet([self getData])
    //开启跑马灯
     .wMarqueeSet(YES)
     //开启循环滚动
     .wRepeatSet(YES)
     //速率
    .wMarqueeRateSet(0.6);
     WMZBannerView *viewOne = [[WMZBannerView alloc]initConfigureWithModel:param];
     [self.view addSubview:viewOne];
    
    
     /*
      *纵向
      */
     WMZBannerParam *param1 =  BannerParam()
     .wFrameSet(CGRectMake(10, BannerHeight/2, BannerWitdh-20, BannerHeight/4))
     .wDataSet([self getData])
    //开启跑马灯
     .wMarqueeSet(YES)
     //开启循环滚动
     .wRepeatSet(YES)
    //不可拖动
     .wCanFingerSlidingSet(NO)
     //纵向
     .wVerticalSet(YES);
    
     WMZBannerView *viewOne1 = [[WMZBannerView alloc]initConfigureWithModel:param1];
     [self.view addSubview:viewOne1];
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
