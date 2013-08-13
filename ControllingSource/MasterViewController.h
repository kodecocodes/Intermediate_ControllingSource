//
//  MasterViewController.h
//  ControllingSource
//
//  Created by Felipe on 8/12/13.
//  Copyright (c) 2013 Felipe Laso Marsetti. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <CoreData/CoreData.h>

@interface MasterViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end
