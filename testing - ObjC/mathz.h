//
//  mathz.h
//  testing - ObjC
//
//  Created by José Miguel Malaca on 29/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface mathz : NSObject{
@private
    int num1;
    int num2;
@protected
    int resultado;
}
@property int resultado;

-(void) setNumeros: (int) a : (int) b;
-(void) add;
-(void) print;

@end
