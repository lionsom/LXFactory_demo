//
//  BaiduMapView1.m
//  MapFactory
//
//  Created by linxiang on 2017/5/26.
//  Copyright © 2017年 minxing. All rights reserved.
//

#import "BaiduMapView1.h"

#import <BaiduMapAPI_Base/BMKBaseComponent.h>//引入base相关所有的头文件
#import <BaiduMapAPI_Map/BMKMapComponent.h>//引入地图功能所有的头文件

@interface BaiduMapView1()

@property (nonatomic, strong) BMKMapView * mapView;

@end

@implementation BaiduMapView1

-(instancetype)initWithFrame:(CGRect)frame {
    self = [super init];
    if (self) {
        //初始化MapView
        _mapView = [[BMKMapView alloc]initWithFrame:frame];
    }
    return self;
}


//返回具体的UIview （百度MapView、高德Mapview） 父类都是UIview
-(UIView *)getView {
    return _mapView;
}

@end
