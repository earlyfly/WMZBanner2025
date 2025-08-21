//
//  demoNormal.m
//  WMZBanner
//
//  Created by wmz on 2019/12/16.
//  Copyright © 2019 wmz. All rights reserved.
//

#import "demoNormal.h"
#import "WMZBannerView.h"
@interface demoNormal ()

@end

@implementation demoNormal

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    
    /*
     *横向
     */
    WMZBannerParam *param =
    BannerParam()
//    .wEventDidScrollSet(^(long contentoffet) {
//        NSLog(@"%ld",contentoffet);
//    })
    .wFrameSet(CGRectMake(10, BannerHeight/6, BannerWitdh-20, BannerHeight/4))
    .wDataSet(@[])
    //自定义图片圆角
    .wCustomImageRadioSet(5)
    //开启循环滚动
    .wRepeatSet(YES)
    //设置item的间距
//    .wLineSpacingSet(10)
    //开启自动滚动
    .wAutoScrollSet(YES)
    //自动滚动时间
    .wAutoScrollSecondSet(3)
    
    ;
    WMZBannerView *viewOne = [[WMZBannerView alloc]initConfigureWithModel:param];
    viewOne.layer.cornerRadius = 5;
    viewOne.layer.masksToBounds = YES;
    
    [self.view addSubview:viewOne];
    
    //模拟刷新数据
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        param.wDataSet([self getData]);
        [viewOne updateUI];
    });
    
    
    
    /*
     *纵向
     */
    WMZBannerParam *param1 =  BannerParam()
    .wFrameSet(CGRectMake(10, BannerHeight/2, BannerWitdh-20, BannerHeight/4))
    .wDataSet([self getData])
    //开启循环滚动
    .wRepeatSet(YES)
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
