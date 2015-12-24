/*
 Copyright (C) 2012-2014 Soomla Inc.
 
 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 
 http://www.apache.org/licenses/LICENSE-2.0
 
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 */

#import "KeyValDatabase.h"
#import "SoomlaConfig.h"
#import "SoomlaUtils.h"


@implementation KeyValDatabase

- (void)setVal:(NSString *)val forKey:(NSString *)key{
    [[NSUserDefaults standardUserDefaults] setObject:val forKey:key];
}

- (NSString*)getValForKey:(NSString *)key{
    NSString* result = [[NSUserDefaults standardUserDefaults] objectForKey:key];
    return result;
}

- (void)deleteKeyValWithKey:(NSString *)key {
    [[NSUserDefaults standardUserDefaults] removeObjectForKey:key];
}

- (NSArray *)getAllKeys {
    NSArray *keys = [[[NSUserDefaults standardUserDefaults] dictionaryRepresentation] allKeys];
    return keys;
}

//-------- Possible unnecessary or obsolete methods ---------//
- (NSDictionary*)getKeysValsForQuery:(NSString*)query {
    NSLog(@"getKeysValsForQuery: query: %@",query);
    NSException *e = [NSException
                      exceptionWithName:@"NotImplemented"
                      reason:@"Just finding what is used"
                      userInfo:nil];
    @throw e;
}

- (NSArray*)getValsForQuery:(NSString*)query {
    NSLog(@"getValsForQuery: query: %@",query);
    NSException *e = [NSException
                      exceptionWithName:@"NotImplemented"
                      reason:@"Just finding what is used"
                      userInfo:nil];
    @throw e;
}

- (NSString*)getOneForQuery:(NSString*)query {
    NSLog(@"getOneForQuery: query: %@",query);
    NSException *e = [NSException
                      exceptionWithName:@"NotImplemented"
                      reason:@"Just finding what is used"
                      userInfo:nil];
    @throw e;
}

- (int)getCountForQuery:(NSString*)query {
    NSLog(@"getCountForQuery: query: %@",query);
    NSException *e = [NSException
                      exceptionWithName:@"NotImplemented"
                      reason:@"Just finding what is used"
                      userInfo:nil];
    @throw e;
}

- (void)purgeDatabase {
    // if necessary we could iterate over all the keys
    // and delete those keys that begin with DB_KEY_PREFIX
    NSLog(@"purgeDatabase");
    NSException *e = [NSException
                      exceptionWithName:@"NotImplemented"
                      reason:@"If we need this then we "
                      userInfo:nil];
    @throw e;
}


static NSString* TAG = @"SOOMLA KeyValDatabase";

//--------- I believe this are obsolete also ------//
//+ (NSString*) keyGoodBalance:(NSString*)itemId {
//    return [NSString stringWithFormat:@"good.%@.balance", itemId];
//}
//
//+ (NSString*) keyGoodEquipped:(NSString*)itemId {
//    return [NSString stringWithFormat:@"good.%@.equipped", itemId];
//}
//
//+ (NSString*) keyGoodUpgrade:(NSString*)itemId {
//    return [NSString stringWithFormat:@"good.%@.currentUpgrade", itemId];
//}
//
//+ (NSString*) keyCurrencyBalance:(NSString*)itemId {
//    return [NSString stringWithFormat:@"currency.%@.balance", itemId];
//}
//
//+ (NSString*) keyMetaStoreInfo {
//    return @"meta.storeinfo";
//}


@end
