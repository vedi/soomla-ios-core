//
// Created by Eugene Butusov on 25/12/15.
// Copyright (c) 2015 SOOMLA. All rights reserved.
//

#import "KeyValueDatabase+DatabaseSelector.h"
#import "SQLiteDatabase.h"
#import "UserDefaultsDatabase.h"


@implementation KeyValueDatabase (DatabaseSelector)

+(KeyValueDatabase *)databaseByType:(KeyValueDatabaseType)databaseType {
    switch (databaseType) {
        case KeyValueDatabaseTypeUserDefaults:
            return [UserDefaultsDatabase new];
        case KeyValueDatabaseTypeSQLite:
            return [SQLiteDatabase new];
        default:
            @throw [[NSException alloc] initWithName:@"SoomlaDatabaseException"
                                              reason:@"No actual key-value database found for specified type."
                                            userInfo:nil];
    }
}

@end