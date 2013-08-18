//
//  DetailViewController.m
//  ControllingSource
//
//  Created by Felipe on 8/10/13.
//  Copyright (c) 2013 Felipe Laso Marsetti. All rights reserved.
//

#import "DetailViewController.h"

@implementation DetailViewController

#pragma mark - Private Methods

- (void)configureView
{
    // Update the user interface for the detail item.
    
    if (self.detailItem)
    {
        self.detailDescriptionLabel.text = [[self.detailItem valueForKey:@"timeStamp"] description];
    }
}

#pragma mark - Properties

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem)
    {
        _detailItem = newDetailItem;
        
        [self configureView];
    }
}

#pragma mark - View Controller

- (void)viewDidLoad
{
    [super viewDidLoad];

    [self configureView];
}


@end
