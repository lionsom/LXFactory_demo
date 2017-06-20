//
//  AbsComputerFactory.h
//  MapFactory
//
//  Created by linxiang on 2017/6/20.
//  Copyright © 2017年 minxing. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "AbsComputerCpu.h"

#import "AbsComputerDisplaycard.h"

// 抽象工厂 电脑统一的工厂接口
@protocol AbsComputerFactory <NSObject>

//Cpu
-(id<AbsComputerCpu>)getCpu;

//Displaycard
-(id<AbsComputerDisplaycard>)getDisplaycard;

@end
