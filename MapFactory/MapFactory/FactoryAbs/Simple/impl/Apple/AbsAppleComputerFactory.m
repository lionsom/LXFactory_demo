//
//  AbsAppleComputerFactory.m
//  MapFactory
//
//  Created by linxiang on 2017/6/20.
//  Copyright © 2017年 minxing. All rights reserved.
//

#import "AbsAppleComputerFactory.h"

#import "AbsAppleComputerCpu.h"

#import "AbsAppleComputerDisplaycard.h"

@implementation AbsAppleComputerFactory

-(id<AbsComputerCpu>)getCpu {
    
    return [[AbsAppleComputerCpu alloc]init];
}

-(id<AbsComputerDisplaycard>)getDisplaycard {
    
    return [[AbsAppleComputerDisplaycard alloc]init];
}

@end
