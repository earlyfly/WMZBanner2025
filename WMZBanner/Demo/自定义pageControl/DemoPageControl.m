//
//  DemoPageControl.m
//  WMZBanner
//
//  Created by wmz on 2019/12/19.
//  Copyright © 2019 wmz. All rights reserved.
//

#import "DemoPageControl.h"
#import "WMZBannerView.h"
@interface DemoPageControl ()

@end

@implementation DemoPageControl

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self styleDefault];
    [self styleOne];
    [self styleTwo];
    [self styleThree];
}

- (void)styleDefault{
    WMZBannerParam *param =  BannerParam()
    .wBannerControlColorSet([UIColor redColor])
    .wBannerControlSelectColorSet([UIColor orangeColor])
    //可设置此属性调整圆点间距
//    .wBannerControlSelectMarginSet(10)
    .wFrameSet(CGRectMake(10, 100, BannerWitdh-20, BannerHeight/6))
    .wDataSet([self getData]);
    WMZBannerView *viewOne = [[WMZBannerView alloc]initConfigureWithModel:param];
    viewOne.layer.cornerRadius = 5;
    viewOne.layer.masksToBounds = YES;
    [self.view addSubview:viewOne];
}

- (void)styleOne{
      WMZBannerParam *param =  BannerParam()
      .wBannerControlImageSet(@"bannerP1")
      .wBannerControlSelectImageSet(@"bannerP2")
      .wBannerControlImageSizeSet(CGSizeMake(8, 20))
      .wBannerControlSelectImageSizeSet(CGSizeMake(20, 20))
       //调整间距
      .wBannerControlSelectMarginSet(3)
      .wBannerControlPositionSet(BannerControlRight)
      .wFrameSet(CGRectMake(10, BannerHeight/3, BannerWitdh-20, BannerHeight/6))
      .wDataSet([self getData]);
      WMZBannerView *viewOne = [[WMZBannerView alloc]initConfigureWithModel:param];
      [self.view addSubview:viewOne];
}

- (void)styleTwo{
      WMZBannerParam *param =  BannerParam()
      .wFrameSet(CGRectMake(10, BannerHeight/2+20, BannerWitdh-20, BannerHeight/6))
      .wBannerControlImageSet(@"bannerP3")
      .wBannerControlSelectImageSet(@"bannerP4")
      .wBannerControlImageSizeSet(CGSizeMake(14, 14))
      .wBannerControlSelectImageSizeSet(CGSizeMake(14, 14))
      .wBannerControlPositionSet(BannerControlLeft)
      .wDataSet([self getData]);
      WMZBannerView *viewOne = [[WMZBannerView alloc]initConfigureWithModel:param];
      [self.view addSubview:viewOne];
}

- (void)styleThree{
      WMZBannerParam *param =  BannerParam()
      .wFrameSet(CGRectMake(10, BannerHeight*0.7+20, BannerWitdh-20, BannerHeight/6))
      .wBannerControlImageSet(@"bannerP3")
      .wBannerControlSelectImageSet(@"bannerP2")
      .wBannerControlImageSizeSet(CGSizeMake(10, 10))
      .wBannerControlSelectImageSizeSet(CGSizeMake(30, 30))
      //自定义pageControl的位置
      .wCustomControlSet(^(UIControl *pageControl) {
          //随意改变xy值
          CGRect rect = pageControl.frame;
          rect.origin.y =  10;
          pageControl.frame = rect;
      })
      .wDataSet([self getData]);
      WMZBannerView *viewOne = [[WMZBannerView alloc]initConfigureWithModel:param];
      [self.view addSubview:viewOne];
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
