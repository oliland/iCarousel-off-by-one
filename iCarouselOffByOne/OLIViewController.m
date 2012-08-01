//
//  OLIViewController.m
//  iCarouselOffByOne
//
//  Created by oliland on 01/08/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "OLIViewController.h"

@interface OLIViewController ()

@end

@implementation OLIViewController

@synthesize carousel;

-(IBAction)firstItemPressed:(id)sender
{
    [self.carousel scrollToItemAtIndex:0 animated:YES];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.carousel.type = iCarouselTypeLinear;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

-(NSUInteger)numberOfItemsInCarousel:(iCarousel *)carousel
{
    return 10;
}

-(UIView *)carousel:(iCarousel *)carousel viewForItemAtIndex:(NSUInteger)index reusingView:(UIView *)view
{
    UILabel *label;
    if (view == nil) {
        view = [[[UIView alloc] initWithFrame:self.carousel.frame] autorelease];
        label = [[[UILabel alloc] initWithFrame:view.frame] autorelease];
        label.textAlignment = UITextAlignmentCenter;
        label.font = [UIFont boldSystemFontOfSize:50];
        label.textColor = [UIColor redColor];
        [view addSubview:label];
    } else {
        label = [view.subviews lastObject];
    }
    label.text = [NSString stringWithFormat:@"%d", index];
    return view;
}

-(CGFloat)carousel:(iCarousel *)carousel valueForOption:(iCarouselOption)option withDefault:(CGFloat)value
{
    switch (option) {
        case iCarouselOptionWrap:
            return YES;
        default:
            return value;
    }
}

@end
