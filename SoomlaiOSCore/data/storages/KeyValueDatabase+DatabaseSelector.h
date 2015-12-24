//
// Created by Eugene Butusov on 25/12/15.
// Copyright (c) 2015 SOOMLA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KeyValueDatabase.h"

typedef enum {
    KeyValueDatabaseTypeUserDefaults = 0,
    KeyValueDatabaseTypeSQLite
} KeyValueDatabaseType;

@interface KeyValueDatabase (DatabaseSelector)

+(KeyValueDatabase *)databaseByType:(KeyValueDatabaseType)databaseType;

@end