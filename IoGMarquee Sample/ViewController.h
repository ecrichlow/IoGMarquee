/*******************************************************************************
 * ViewController.h
 *
 * Title:			IoGMarquee Sample
 * Description:		Sample App for IoGMarquee UI Enhancement
 *						This header file contains the template for the
 *						application's main (only) view
 * Author:			Eric Crichlow
 * Version:			1.0
 * Copyright:		(c) 2015 Infusions of Grandeur. All rights reserved.
 ********************************************************************************
 *	09/12/15		*	EGC	*	File creation date
 *******************************************************************************/

#import <UIKit/UIKit.h>
#import "IoGMarquee.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet IoGMarquee *liveFeedDisplay;

@end

