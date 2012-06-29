//
//  pontoXY.m
//  testing - ObjC
//
//  Created by José Miguel Malaca on 29/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "pontoXY.h"

@implementation pontoXY
@synthesize x,y;

-(void) setXY: (int) xVal: (int) yVal{
    x = xVal;
    y = yVal;
}

-(void) print{
    NSLog(@"x: %i, y: %i", x, y);
}
@end
