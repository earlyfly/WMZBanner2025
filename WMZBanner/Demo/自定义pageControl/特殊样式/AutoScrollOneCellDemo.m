//
//  AutoScrollOneCellDemo.m
//  WMZBanner
//
//  Created by trs-fly on 2025/8/21.
//  Copyright © 2025 wmz. All rights reserved.
//

#import "AutoScrollOneCellDemo.h"
#import "WMZBannerView.h"

@interface AutoScrollOneCellDemo ()

@end

@implementation AutoScrollOneCellDemo

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self styleOne];
}


- (void)styleOne{
    WMZBannerParam *param =  BannerParam()
    .wFrameSet(CGRectMake(80,100, BannerWitdh-160, BannerHeight*0.25))
    .wItemSizeSet(CGSizeMake(ceil((BannerWitdh-190)/3), BannerHeight*0.18))// 注意宽度要向上取整，否则可能会不会自动滚动
    .wDataSet([self getData])
//    .wScaleSet(YES)
//    .wSpecialStyleSet(SpecialStyleFirstScale)
    .wLineSpacingSet(10)
    .wRepeatSet(YES)
    .wHideBannerControlSet(YES)
    .wAutoScrollSecondSet(1)
    .wAutoScrollSet(YES);
    WMZBannerView *viewOne = [[WMZBannerView alloc]initConfigureWithModel:param];
    [self.view addSubview:viewOne];
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
