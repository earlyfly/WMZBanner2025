//
//  SpecilFirstScaleDemo.m
//  WMZBanner
//
//  Created by wmz on 2020/8/19.
//  Copyright © 2020 wmz. All rights reserved.
//

#import "SpecilFirstScaleDemo.h"
#import "WMZBannerView.h"
@interface SpecilFirstScaleDemo ()

@end

@implementation SpecilFirstScaleDemo

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self styleOne];
}


- (void)styleOne{
    WMZBannerParam *param =  BannerParam()
    .wFrameSet(CGRectMake(10,100, BannerWitdh-20, BannerHeight*0.25))
    .wItemSizeSet(CGSizeMake((BannerWitdh-50)/3, BannerHeight*0.18))
    .wDataSet([self getData])
    .wScaleSet(YES)
    .wLineSpacingSet(10)
    .wRepeatSet(YES)
    .wHideBannerControlSet(YES)
    .wSpecialStyleSet(SpecialStyleFirstScale);
    WMZBannerView *viewOne = [[WMZBannerView alloc]initConfigureWithModel:param];
    [self.view addSubview:viewOne];
    
    /**
     WMZBannerParam *param =  BannerParam()
     .wFrameSet(CGRectMake(80,100, BannerWitdh-160, BannerHeight*0.25))
     .wItemSizeSet(CGSizeMake(ceil((BannerWitdh-190)/3), BannerHeight*0.18))
     .wDataSet([self getData])
 //    .wScaleSet(YES)
     .wLineSpacingSet(10)
     .wRepeatSet(YES)
     .wHideBannerControlSet(YES)
 //    .wSpecialStyleSet(SpecialStyleFirstScale)
     .wAutoScrollSecondSet(1)
     .wAutoScrollSet(YES);
     WMZBannerView *viewOne = [[WMZBannerView alloc]initConfigureWithModel:param];
     */
}

- (NSArray*)getData{
    return @[
        @"https://img2.baidu.com/it/u=2059387762,2920092647&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=646",
        @"https://img2.baidu.com/it/u=638000455,1936708189&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=875",
        @"https://img2.baidu.com/it/u=2236647065,4108091546&fm=253&fmt=auto&app=120&f=JPEG?w=500&h=889",
        @"https://img2.baidu.com/it/u=712516284,2643075479&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=890",
        @"https://img2.baidu.com/it/u=4061159612,3354557185&fm=253&fmt=auto&app=120&f=JPEG?w=500&h=874",
        @"https://img1.baidu.com/it/u=2586537779,3695364384&fm=253&fmt=auto&app=138&f=JPEG?w=800&h=1200",
      ];
}


@end
