//
//  pontoXY.h
//  testing - ObjC
//
//  Created by José Miguel Malaca on 29/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface pontoXY : NSObject{
    int x;
    int y;
}

@property int x,y;

-(void) setXY: (int) xVal: (int) yVal;
-(void) print;
@end
