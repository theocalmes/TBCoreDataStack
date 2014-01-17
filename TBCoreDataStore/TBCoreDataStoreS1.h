//
//  TBCoreDataStore.h
//  TBCoreDataStore
//
//  Created by Theodore Calmes on 1/3/14.
//  Copyright (c) 2014 thoughtbot. All rights reserved.
//

@import CoreData;
@import Foundation;

@interface TBCoreDataStoreS1 : NSObject

+ (instancetype)defaultStore;

+ (NSManagedObjectContext *)mainQueueContext;
+ (NSManagedObjectContext *)privateQueueContext;

+ (NSManagedObjectID *)managedObjectIDFromString:(NSString *)managedObjectIDString;

@end
