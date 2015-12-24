/*
 Copyright (C) 2012-2015 Soomla Inc.
 
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

#import "UserDefaultsDatabase.h"
#import "SoomlaConfig.h"
#import "SoomlaUtils.h"


@implementation UserDefaultsDatabase

static NSString *SOOMLA_DATABASE_PREFIX = @"SOOMLA";

static NSString* TAG = @"SOOMLA UserDefaultsDatabase";

+(NSString *)expandKey:(NSString *)key {
    return [NSString stringWithFormat:@"%@.%@", SOOMLA_DATABASE_PREFIX, key];
}

- (void)setVal:(NSString *)val forKey:(NSString *)key {
    [[NSUserDefaults standardUserDefaults] setObject:val forKey:[[self class] expandKey:key]];
}

- (NSString*)getValForKey:(NSString *)key {
    NSString* result = [[NSUserDefaults standardUserDefaults] objectForKey:[[self class] expandKey:key]];
    return result;
}

- (void)deleteKeyValWithKey:(NSString *)key {
    [[NSUserDefaults standardUserDefaults] removeObjectForKey:[[self class] expandKey:key]];
}

- (NSArray *)getAllKeys {
    return [self getAllKeysUnwrapping:YES];
}

-(NSArray *)getAllKeysUnwrapping:(BOOL)unwrap {
    NSArray *rawKeys = [[[[NSUserDefaults standardUserDefaults] dictionaryRepresentation] allKeys]
            filteredArrayUsingPredicate:[NSPredicate
                    predicateWithFormat:@"SELF BEGINSWITH %@", [NSString stringWithFormat:@"%@.", SOOMLA_DATABASE_PREFIX]
            ]
    ];
    if (unwrap) {
        NSMutableArray *keys = [NSMutableArray new];
        for (NSString *key in rawKeys) {
            [keys addObject:[key substringFromIndex:[key rangeOfString:[NSString stringWithFormat:@"%@.", SOOMLA_DATABASE_PREFIX]].location]];
        }
        return keys;
    } else {
        return rawKeys;
    }
}

- (void)purgeDatabase {
    NSArray *allKeys = [self getAllKeysUnwrapping:NO];
    [allKeys enumerateObjectsUsingBlock:^(id key, NSUInteger idx, BOOL *stop) {
        [self deleteKeyValWithKey:(NSString *)key];
    }];
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


@end
