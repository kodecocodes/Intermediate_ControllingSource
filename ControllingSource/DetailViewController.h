//
//  DetailViewController.h
//  ControllingSource
//
//  Created by Felipe on 8/10/13.
//  Copyright (c) 2013 Felipe Laso Marsetti. All rights reserved.
//


@interface DetailViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@property (strong, nonatomic) id detailItem;

@end
