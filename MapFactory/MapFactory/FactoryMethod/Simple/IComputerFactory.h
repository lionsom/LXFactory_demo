//
//  IComputerFactory.h
//  MapFactory
//
//  Created by linxiang on 2017/5/26.
//  Copyright © 2017年 minxing. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "IComputer.h"

//电脑工厂的标准 （协议）
//工厂制造：电脑（IComputer）
//不知道制造什么电脑
//但是知道：制造电脑遵循IComputer协议
@protocol IComputerFactory <NSObject>

-(id<IComputer>)getComputer;

@end
