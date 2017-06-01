//
//  AppleComputerFactory.m
//  MapFactory
//
//  Created by linxiang on 2017/5/26.
//  Copyright © 2017年 minxing. All rights reserved.
//

#import "AppleComputerFactory.h"
#import "AppleComputer.h"

@implementation AppleComputerFactory

-(id<IComputer>)getComputer {
    return [[AppleComputer alloc]init];
}

@end
