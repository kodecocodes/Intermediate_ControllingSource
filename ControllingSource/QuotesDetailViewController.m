//
//  QuotesDetailViewController.m
//  ControllingSource
//
//  Created by Felipe on 8/10/13.
//  Copyright (c) 2013 Felipe Laso Marsetti. All rights reserved.
//

#import "QuotesDetailViewController.h"

@interface QuotesDetailViewController ()

@property (weak, nonatomic) IBOutlet UILabel *famousQuoteLabel;
@property (weak, nonatomic) IBOutlet UILabel *personNameLabel;

@end

@implementation QuotesDetailViewController

#pragma mark - Private Methods

- (void)configureView
{
    self.famousQuoteLabel.text = [self.detailItem valueForKey:@"famousQuote"];
    self.personNameLabel.text = [self.detailItem valueForKey:@"personName"];
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
