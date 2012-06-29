//
//  Rectangulo.m
//  testing - ObjC
//
//  Created by José Miguel Malaca on 29/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Rectangulo.h"

@implementation Rectangulo
@synthesize  altura, largura;

-(pontoXY*) origem{
    return origem;
}

-(void) setOrigem: (pontoXY*) orig{
    origem = orig;
}

-(void) print{
    NSLog(@"altura: %i, largura %i com origem em: ", altura, largura);
}

@end