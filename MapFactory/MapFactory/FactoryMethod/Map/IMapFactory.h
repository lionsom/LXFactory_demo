//
//  IMapFactory.h
//  MapFactory
//
//  Created by linxiang on 2017/5/26.
//  Copyright © 2017年 minxing. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "IMapView.h"

// 地图工厂标准协议
@protocol IMapFactory <NSObject>

//生产什么内容？
//地图（UIView）
-(id<IMapView>)getView:(CGRect)frame;

@end
