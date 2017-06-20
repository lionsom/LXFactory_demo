//
//  ViewController.m
//  MapFactory
//
//  Created by linxiang on 2017/5/25.
//  Copyright © 2017年 minxing. All rights reserved.
//

#import "ViewController.h"

#import <BaiduMapAPI_Base/BMKBaseComponent.h>//引入base相关所有的头文件
#import <BaiduMapAPI_Map/BMKMapComponent.h>//引入地图功能所有的头文件

#import "MapFactory.h"

//高德地图
#import <MAMapKit/MAMapKit.h>
#import <AMapFoundationKit/AMapFoundationKit.h>

#import "IComputer.h"
#import "IComputerFactory.h"

#import "AppleComputer.h"
#import "AppleComputerFactory.h"

#import "IMapView.h"
#import "IMapFactory.h"
#import "BaiduMapView1.h"
#import "BaiduMapFactory.h"

//抽象工厂
#import "AbsComputerFactory.h"
#import "AbsComputerCpu.h"
#import "AbsAppleComputerDisplaycard.h"

#import "AbsAppleComputerFactory.h"
#import "AbsComputerCpu.h"
#import "AbsAppleComputerDisplaycard.h"


@interface ViewController ()
//百度地图
@property (nonatomic, strong) BMKMapView * mapView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    //基本实现
//    _mapView = [[BMKMapView alloc]initWithFrame:self.view.frame];
//    self.view = _mapView;
    
    //高德地图
//    ///地图需要v4.5.0及以上版本才必须要打开此选项（v4.5.0以下版本，需要手动配置info.plist）
//    [AMapServices sharedServices].enableHTTPS = YES;
//    ///初始化地图
//    MAMapView * mapView = [[MAMapView alloc] initWithFrame:self.view.bounds];
//    ///把地图添加至view
//    [self.view addSubview:mapView];
    
    
    //简单工厂进行设计
//    MapFactory * factory = [MapFactory sharedInstance:1];
//    UIView * view = [factory getView:self.view.frame];
//    self.view = view;
    
    
    //工厂方法-原理测试
//    id<IComputerFactory> factory = [[AppleComputerFactory alloc] init];
//    id<IComputer> computer = [factory getComputer];
//    [computer Create];
    
    //工厂方法-案例演示
//    id<IMapFactory> factory = [[BaiduMapFactory alloc] init];
//    id<IMapView> mapView = [factory getView:self.view.frame];
//    [self.view addSubview:[mapView getView]];
    
    //抽象工厂-原理测试
    id<AbsComputerFactory> factory = [[AbsAppleComputerFactory alloc]init];
    id<AbsComputerCpu> cpu = [factory getCpu];
    [cpu printInfo];
    id<AbsComputerDisplaycard> displaycard = [factory getDisplaycard];
    [displaycard printInfo];
    
}














- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
