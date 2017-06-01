//
//  AppleComputerFactory.h
//  MapFactory
//
//  Created by linxiang on 2017/5/26.
//  Copyright © 2017年 minxing. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "IComputerFactory.h"

#import "IComputer.h"

//苹果电脑工厂：生产苹果电脑，遵循工厂协议
@interface AppleComputerFactory : NSObject <IComputerFactory>

-(id<IComputer>)getComputer;

@end
