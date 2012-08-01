//
//  OLIViewController.h
//  iCarouselOffByOne
//
//  Created by oliland on 01/08/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "iCarousel.h"

@interface OLIViewController : UIViewController<iCarouselDelegate, iCarouselDataSource>

@property (nonatomic, strong) IBOutlet iCarousel *carousel;

-(IBAction)firstItemPressed:(id)sender;

@end
