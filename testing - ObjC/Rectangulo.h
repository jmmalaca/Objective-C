//
//  Rectangulo.h
//  testing - ObjC
//
//  Created by José Miguel Malaca on 29/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class pontoXY;

@interface Rectangulo : NSObject{
    int altura;
    int largura;
    pontoXY *origem;
}

@property int altura, largura;

-(pontoXY*) origem;
-(void) setOrigem: (pontoXY*) orig;
-(void) print;

@end
