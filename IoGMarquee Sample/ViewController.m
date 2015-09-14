/*******************************************************************************
 * ViewController.m
 *
 * Title:			IoGMarquee Sample
 * Description:		Sample App for IoGMarquee UI Enhancement
 *						This header file contains the implementation for the
 *						application's main (only) view
 * Author:			Eric Crichlow
 * Version:			1.0
 * Copyright:		(c) 2015 Infusions of Grandeur. All rights reserved.
 ********************************************************************************
 *	09/12/15		*	EGC	*	File creation date
 *******************************************************************************/

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad
{

	[super viewDidLoad];

	NSString			*marqueeMessage = @"      This is a test of the Emergency Broadcast System. The broadcasters of your area in voluntary cooperation with the FCC and federal, state and local authorities have developed this system to keep you informed in the event of an emergency.";

	[self.liveFeedDisplay setupForMessage:marqueeMessage withBackgroundColor:[UIColor blueColor] andForegroundColor:[UIColor greenColor]];
}

@end
