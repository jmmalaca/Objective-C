//
//  mathz.m
//  testing - ObjC
//
//  Created by José Miguel Malaca on 29/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "mathz.h"

@implementation mathz
@synthesize resultado;

-(void) setNumeros: (int) a : (int) b{
    num1 = a;
    num2 = b;
}

-(void) add{
    resultado = num1 + num2;
}

-(void) print{
    NSLog(@"resu = %i",resultado);
}

@end
