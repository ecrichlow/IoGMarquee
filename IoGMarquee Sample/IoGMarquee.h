/*******************************************************************************
 * IoGMarquee.h
 *
 * Title:			IoGMarquee
 * Description:		Scrolling Text UI Enhancement
 *						This file contains the template for the enhancement's
 *						single implementation file
 * Author:			Eric Crichlow
 * Version:			1.0
 * Copyright:		(c) 2015 Infusions of Grandeur. All rights reserved.
 ********************************************************************************
 *	09/12/15		*	EGC	*	File creation date
 *******************************************************************************/

#import <UIKit/UIKit.h>

#define MARQUEE_FONT_SIZE							16
#define MARQUEE_UPDATE_TIMER_INTERVAL				0.05		// Can be adjuted to change speed of the scroll
#define MARQUEE_SCROLL_X_DISTANCE					1			// Can be adjusted to change smoothness of the scroll
#define MARQUEE_LABEL_MARGIN						10			// Can be adjusted to change space between end of message and re-start of message

@interface IoGMarquee : UIScrollView

- (void)setupForMessage:(NSString *)marqueeMessage withBackgroundColor:(UIColor *)background andForegroundColor:(UIColor *)foreground;		// Sets up the Marquee to display the supplied text

@end
