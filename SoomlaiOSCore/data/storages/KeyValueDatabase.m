//
// Created by Eugene Butusov on 25/12/15.
// Copyright (c) 2015 SOOMLA. All rights reserved.
//

#import "KeyValueDatabase.h"


@implementation KeyValueDatabase {

}

+ (NSString*) keyGoodBalance:(NSString*)itemId {
    return [NSString stringWithFormat:@"good.%@.balance", itemId];
}

+ (NSString*) keyGoodEquipped:(NSString*)itemId {
    return [NSString stringWithFormat:@"good.%@.equipped", itemId];
}

+ (NSString*) keyGoodUpgrade:(NSString*)itemId {
    return [NSString stringWithFormat:@"good.%@.currentUpgrade", itemId];
}

+ (NSString*) keyCurrencyBalance:(NSString*)itemId {
    return [NSString stringWithFormat:@"currency.%@.balance", itemId];
}

+ (NSString*) keyMetaStoreInfo {
    return @"meta.storeinfo";
}

@end