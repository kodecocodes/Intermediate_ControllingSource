//
//  AppDelegate.h
//  ControllingSource
//
//  Created by Felipe on 8/10/13.
//  Copyright (c) 2013 Felipe Laso Marsetti. All rights reserved.
//

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic, readonly) NSManagedObjectContext *managedObjectContext;
@property (strong, nonatomic, readonly) NSManagedObjectModel *managedObjectModel;
@property (strong, nonatomic, readonly) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@property (strong, nonatomic) UIWindow *window;

- (NSURL *)applicationDocumentsDirectory;
- (void)saveContext;

@end
