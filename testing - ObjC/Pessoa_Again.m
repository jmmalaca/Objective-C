//
//  Pessoa_Again.m
//  testing - ObjC
//
//  Created by José Miguel Malaca on 29/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Pessoa_Again.h"

@implementation Pessoa_Again
@synthesize  nome, idade;

    -(void) print : (int) vezes{
        int i = 0;
        for(i=0; i<vezes; i++)
            NSLog(@"O meu nome é: %@, tenho %i anos", nome, idade);
    }

@end
