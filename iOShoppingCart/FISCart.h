//
//  FISCart.h
//  iOShoppingCart
//
//  Created by Yoseob Lee on 6/8/15.
//  Copyright (c) 2015 FIS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FISItem.h"

@interface FISCart : NSObject
@property (nonatomic, strong) NSMutableArray *items;

-(NSNumber *)total;
-(NSNumber *)numOfItems;
-(void)addItem:(FISItem *)newItem;
-(void)removeItem:(FISItem *)itemToRemove;
-(NSArray *)itemsSortedByName;
-(NSArray *)itemsSortedByPrice;
-(NSArray *)itemsWithName:(NSString *)name;
-(NSArray *)itemsMoreExpensiveThan:(NSNumber *)price;

-(instancetype)init;


@end
