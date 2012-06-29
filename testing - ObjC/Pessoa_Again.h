//
//  Pessoa_Again.h
//  testing - ObjC
//
//  Created by José Miguel Malaca on 29/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pessoa_Again : NSObject{
    NSString *nome;
    int idade;
}

@property NSString *nome;
@property int idade;


    -(void) print : (int) vezes;
    -(NSString*) nome;
    -(int) idade;

@end
