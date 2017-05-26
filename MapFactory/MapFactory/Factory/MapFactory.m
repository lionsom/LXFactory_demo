//
//  MapFactory.m
//  MapFactory
//
//  Created by linxiang on 2017/5/25.
//  Copyright © 2017年 minxing. All rights reserved.
//

#import "MapFactory.h"

//百度地图
#import <BaiduMapAPI_Base/BMKBaseComponent.h>//引入base相关所有的头文件
#import <BaiduMapAPI_Map/BMKMapComponent.h>//引入地图功能所有的头文件

//高德地图
#import <MAMapKit/MAMapKit.h>
#import <AMapFoundationKit/AMapFoundationKit.h>

@interface MapFactory()

@property (nonatomic, strong) UIView * mapView;

@property (nonatomic, assign) int type;

@end

@implementation MapFactory

+(MapFactory *) sharedInstance:(int)type
{
    static MapFactory *sharedInstace = nil;
    
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        sharedInstace = [[self alloc] init:type];
    });
    
    return sharedInstace;
}

-(instancetype)init:(int)type {
    self = [super init];
    if (self) {
        _type = type;
        if (_type == 0) {
            BMKMapManager * mapManager = [[BMKMapManager alloc]init];
            // 如果要关注网络及授权验证事件，请设定     generalDelegate参数
            BOOL ret = [mapManager start:@"8pWkXFMFuUkB64oHx5HEFNcm1DQgUpl0"  generalDelegate:nil];
            if (!ret) {
                NSLog(@"manager start failed!");
            }
        }else if (_type == 1){
            [[AMapServices sharedServices] setEnableHTTPS:YES];
            [AMapServices sharedServices].apiKey = @"dccb939e6bbfc473b0d611779543e881";
        }
        
    }
    return self;
}



- (UIView *)getView:(CGRect)frame {
    switch (_type) {
        case 0:
            if (self.mapView == nil) {
                _mapView = [[BMKMapView alloc] initWithFrame:frame];
            }
            break;
        case 1:
            if (self.mapView == nil) {
                _mapView = [[MAMapView alloc] initWithFrame:frame];
            }
            break;
        default:
            break;
    }
    return _mapView;
}

@end
