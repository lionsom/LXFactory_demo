//
//  IMapView.h
//  MapFactory
//
//  Created by linxiang on 2017/5/26.
//  Copyright © 2017年 minxing. All rights reserved.
//

//#import <Foundation/Foundation.h>

#import <UIKit/UIKit.h>

//地图MapView协议
@protocol IMapView <NSObject>

-(instancetype)initWithFrame:(CGRect)frame;

//有哪些标准？？
//返回具体的UIview （百度MapView、高德Mapview） 父类都是UIview

-(UIView *)getView;

// 。。。。 还有很多

@end
