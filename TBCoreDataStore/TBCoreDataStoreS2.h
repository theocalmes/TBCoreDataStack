//
//  TBCoreDataStoreS2.h
//  TBCoreDataStore
//
//  Created by Theodore Calmes on 1/17/14.
//  Copyright (c) 2014 thoughtbot. All rights reserved.
//

@import CoreData;
@import Foundation;

@interface TBCoreDataStoreS2 : NSObject

+ (instancetype)defaultStore;

+ (NSManagedObjectContext *)newMainQueueContext;
+ (NSManagedObjectContext *)defaultPrivateQueueContext;
+ (NSManagedObjectContext *)newPrivateQueueContext;

+ (NSManagedObjectID *)managedObjectIDFromString:(NSString *)managedObjectIDString;

@end
