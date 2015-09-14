/*******************************************************************************
 * IoGMarquee.m
 *
 * Title:			IoGMarquee
 * Description:		Scrolling Text UI Enhancement
 *						This is the enhancement's single implementation file
 * Author:			Eric Crichlow
 * Version:			1.0
 * Copyright:		(c) 2015 Infusions of Grandeur. All rights reserved.
 ********************************************************************************
 *	09/12/15		*	EGC	*	File creation date
 *******************************************************************************/

#import "IoGMarquee.h"

@interface IoGMarquee ()
@property (strong, nonatomic) NSString *marqueeText;
@property (strong, nonatomic) UIColor *foreColor;
@property (strong, nonatomic) UIColor *backColor;
@property (strong, nonatomic) UILabel *marqueeLabelA;
@property (strong, nonatomic) UILabel *marqueeLabelB;
@property (strong, nonatomic) NSTimer *marqueeUpdateTimer;
@end

@implementation IoGMarquee

#pragma mark - View Life Cycle

- (void)setupForMessage:(NSString *)marqueeMessage withBackgroundColor:(UIColor *)background andForegroundColor:(UIColor *)foreground
{

	self.marqueeText = marqueeMessage;
	self.foreColor = foreground;
	self.backColor = background;

	self.backgroundColor = self.backColor;
	self.userInteractionEnabled = NO;			// This line can be removed to allow the user to manually scroll the text
	self.marqueeLabelA = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
	self.marqueeLabelA.font = [UIFont boldSystemFontOfSize:MARQUEE_FONT_SIZE];
	self.marqueeLabelA.backgroundColor = [UIColor clearColor];
	self.marqueeLabelA.textColor = self.foreColor;
	self.marqueeLabelA.text = self.marqueeText;
	[self.marqueeLabelA sizeToFit];
	self.marqueeLabelB = [[UILabel alloc] initWithFrame:CGRectMake(self.marqueeLabelA.frame.size.width + MARQUEE_LABEL_MARGIN, 0, self.marqueeLabelA.frame.size.width, self.marqueeLabelA.frame.size.height)];
	self.marqueeLabelB.font = [UIFont boldSystemFontOfSize:MARQUEE_FONT_SIZE];
	self.marqueeLabelB.backgroundColor = [UIColor clearColor];
	self.marqueeLabelB.textColor = self.foreColor;
	self.marqueeLabelB.text = self.marqueeText;
	[self addSubview:self.marqueeLabelA];
	[self addSubview:self.marqueeLabelB];
	self.contentSize = CGSizeMake(self.marqueeLabelA.frame.size.width + MARQUEE_LABEL_MARGIN + self.marqueeLabelB.frame.size.width, self.marqueeLabelA.frame.size.height);
	self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, self.frame.size.width, self.marqueeLabelA.frame.size.height);
	self.marqueeUpdateTimer = [NSTimer scheduledTimerWithTimeInterval:MARQUEE_UPDATE_TIMER_INTERVAL target:self selector:@selector(updateMarquee:) userInfo:nil repeats:YES];
}

- (void)updateMarquee:(NSTimer *)timer
{
	
	[self performSelectorOnMainThread:@selector(updateMarqueeTextPosition) withObject:nil waitUntilDone:NO];
}

- (void)updateMarqueeTextPosition
{
	
	CGPoint				offset = self.contentOffset;
	
	[self scrollRectToVisible:CGRectMake(offset.x + MARQUEE_SCROLL_X_DISTANCE, 0, self.frame.size.width, self.frame.size.height) animated:NO];
	if (offset.x >= self.marqueeLabelA.frame.size.width + MARQUEE_LABEL_MARGIN)
		{
		[self scrollRectToVisible:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height) animated:NO];
		}
}


@end
