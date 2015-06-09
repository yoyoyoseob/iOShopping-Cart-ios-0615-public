//
//  FISItem.h
//  iOShoppingCart
//
//  Created by Yoseob Lee on 6/8/15.
//  Copyright (c) 2015 FIS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISItem : NSObject
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSNumber *price;

-(instancetype)initWithName:(NSString*)name andPrice:(NSNumber*)price;


@end
