//
//  FISItem.m
//  iOShoppingCart
//
//  Created by Yoseob Lee on 6/8/15.
//  Copyright (c) 2015 FIS. All rights reserved.
//

#import "FISItem.h"

@implementation FISItem

-(instancetype)initWithName:(NSString *)name andPrice:(NSNumber *)price
{
    self = [super init];
    
    if (self)
    {
        _name = name;
        _price = price;
    }
    return self;
}


@end
