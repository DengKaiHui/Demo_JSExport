//
//  MyPoint.m
//  Test_JSCore
//
//  Created by 纠结伦 on 2017/3/3.
//  Copyright © 2017年 纠结伦. All rights reserved.
//

#import "MyPoint.h"
#import "MypointExports.h"

@interface MyPoint () <MypointExports>

@end

@implementation MyPoint
@synthesize x = _x;
@synthesize y = _y;
//@dynamic x;
//@dynamic y;


- (instancetype)initWithX:(double)x
                        Y:(double)y {
    self = [super init];
    if (self) {
        self.x = x;
        self.y = y;
    }
    return self;
}

- (NSString *)description {
    NSString *str = [NSString stringWithFormat:@"(%f,%f)",self.x,self.y];
    return str;
}

+ (id)makePointWithX:(double)x Y:(double)y {
    MyPoint *point = [[MyPoint alloc] initWithX:x Y:y];
    return point;
}

@end
