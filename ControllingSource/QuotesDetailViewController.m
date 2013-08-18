//
//  QuotesDetailViewController.m
//  ControllingSource
//
//  Created by Felipe on 8/10/13.
//  Copyright (c) 2013 Felipe Laso Marsetti. All rights reserved.
//

#import "Quote.h"
#import "QuotesDetailViewController.h"

@interface QuotesDetailViewController ()

@property (weak, nonatomic) IBOutlet UILabel *famousQuoteLabel;
@property (weak, nonatomic) IBOutlet UILabel *personNameLabel;

@end

@implementation QuotesDetailViewController

#pragma mark - Private Methods

- (void)configureView
{
    self.famousQuoteLabel.text = self.quote.famousQuote;
    self.personNameLabel.text = self.quote.personName;
}

#pragma mark - Properties

- (void)setQuote:(Quote *)quote
{
    if (_quote != quote)
    {
        _quote = quote;
        
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
