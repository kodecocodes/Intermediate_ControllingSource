//
//  Quote.m
//  ControllingSource
//
//  Created by Felipe on 8/12/13.
//  Copyright (c) 2013 Felipe Laso Marsetti. All rights reserved.
//

#import "Quote.h"

@implementation Quote

@dynamic famousQuote;
@dynamic personName;

- (void)awakeFromInsert
{
    [super awakeFromInsert];
    
    NSString *quotesFilePath = [[NSBundle mainBundle]
                                pathForResource:@"QuotesList"
                                ofType:@"plist"];
    
    NSArray *quotesArray =
    [NSArray arrayWithContentsOfFile:quotesFilePath];
    NSUInteger quoteIndex = arc4random() % [quotesArray count];
    NSDictionary *quoteDictionary = quotesArray[quoteIndex];
    
    [self setPrimitiveValue:quoteDictionary[@"personName"]
                     forKey:@"personName"];
    [self setPrimitiveValue:quoteDictionary[@"famousQuote"]
                     forKey:@"famousQuote"];
}

@end
