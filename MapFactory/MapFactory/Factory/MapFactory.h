//
//  MapFactory.h
//  MapFactory
//
//  Created by linxiang on 2017/5/25.
//  Copyright © 2017年 minxing. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <UIKit/UIKit.h>

//工厂的职责：创建地图（MapView）
@interface MapFactory : NSObject

//单例
+(MapFactory *) sharedInstance:(int)type;

-(instancetype)init:(int)type;

-(UIView *)getView:(CGRect)frame;

@end
