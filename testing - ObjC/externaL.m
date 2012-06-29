//
//  externaL.m
//  testing - ObjC
//
//  Created by José Miguel Malaca on 29/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "externaL.h"

static int myGlobalVar = 1;//only makes it global... not external

@implementation externaL

-(void) changeVar{
    extern int varGlobal;
    
    varGlobal = 0;
}

-(void) print{
    NSLog(@"myGlobalVar = %i",myGlobalVar);
}

@end
