//
//  CustomJSProtocol.h
//  Test_JSCore
//
//  Created by 纠结伦 on 2017/2/18.
//  Copyright © 2017年 纠结伦. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JavaScriptCore/JavaScriptCore.h>
@class MyPoint;
@protocol MypointExports <JSExport, NSObject>

@property (nonatomic, assign) double x;
@property (nonatomic, assign) double y;

- (NSString *)description;

+ (MyPoint *)makePointWithX:(double)x
                          Y:(double)y;

//JSExportAs(makePoint,
//+ (MyPoint *)makePointWithX:(double)x Y:(double)y
//);

@end
