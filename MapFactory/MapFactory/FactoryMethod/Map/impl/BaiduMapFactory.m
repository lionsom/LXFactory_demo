//
//  BaiduMapFactory.m
//  MapFactory
//
//  Created by linxiang on 2017/5/26.
//  Copyright © 2017年 minxing. All rights reserved.
//

#import "BaiduMapFactory.h"

#import "BaiduMapView1.h"

//百度地图工厂
@implementation BaiduMapFactory

// 返回具体的UIView
-(id<IMapView>)getView:(CGRect)frame{
    
    return [[BaiduMapView1 alloc]initWithFrame:frame];
}


@end
