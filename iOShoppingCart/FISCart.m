//
//  FISCart.m
//  iOShoppingCart
//
//  Created by Yoseob Lee on 6/8/15.
//  Copyright (c) 2015 FIS. All rights reserved.
//

#import "FISCart.h"
#import "FISItem.h"

@implementation FISCart

-(instancetype)init
{
    self = [super init];
    
    if (self)
    {
        _items = [[NSMutableArray alloc] init];
    }
    return self;
}

-(NSNumber *)total // Returns total cost of the cart
{
    NSInteger total = 0;
    for (FISItem *goods in self.items){
        total = ([goods.price integerValue] + total);
    }
    return @(total);
}


-(NSNumber *)numOfItems // Returns # items in the cart
{
    return @(self.items.count);
}


-(void)addItem:(FISItem *)newItem // Adds item to the cart array
{
    [self.items addObject:newItem];
}


-(void)removeItem:(FISItem *)itemToRemove // Removes item from the cart array
{
    [self.items removeObject:itemToRemove];
}


-(NSArray *)itemsSortedByName // Returns array of items sorted by name
{
    NSSortDescriptor *sortByName = [[NSSortDescriptor alloc] initWithKey:@"name" ascending:YES selector:@selector(localizedStandardCompare:)];
    
    NSArray *sortedArray = [self.items sortedArrayUsingDescriptors:@[sortByName]];
    
    return sortedArray;
}


-(NSArray *)itemsSortedByPrice // Returns array of items sorted by price
{
    NSSortDescriptor *sortByPrice = [NSSortDescriptor sortDescriptorWithKey:@"price" ascending:YES];
    
    NSArray *sortedArray = [self.items sortedArrayUsingDescriptors:@[sortByPrice]];
    
    return sortedArray;
}


-(NSArray *)itemsWithName:(NSString *)name // Returns an array of items with "name"
{
    NSPredicate *returnItemsWithName = [NSPredicate predicateWithFormat:@"self.name == %@", name];
    NSArray *sortedArray = [self.items filteredArrayUsingPredicate:returnItemsWithName];
    
    return sortedArray;
}


-(NSArray *)itemsMoreExpensiveThan:(NSNumber *)price // Returns array of items more expensive than "price"
{
    NSPredicate *returnMoreExpensiveItems = [NSPredicate predicateWithFormat:@"self.price > %@", price];
    NSArray *sortedArray = [self.items filteredArrayUsingPredicate:returnMoreExpensiveItems];
    
    return sortedArray;
    
    
}


@end
