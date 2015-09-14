# IoGMarquee Sample

v1.0 / (c) 2015 Infusions of Grandeur / Written By: Eric Crichlow

## Background

IoGMarquee Sample is a sample app created as a showcase and tutorial for the IoGMarquee class, which is designed to provide a scrolling, repeating text display.

The class is a subclass of UIScrollView that serves the singular purpose of displaying text that’s too long to be fully shown at once and needs to be repeated continually.

By default the class doesn’t allow interaction, so the user can’t manually scroll the text.

## History

Version 1.0 :	Initial release

## Classes

IoGMarquee

This is the subclass of UIScrollView that is instantiated for the desired view controller.
It contains no properties accessible to the developer:

## Usage

Add the following 2 files to your project:

* IoGMarquee.h
* IoGMarquee.m

Add a UIScrollView to the desired view in Xcode’s Interface Builder and set its type to IoGMarquee in the Identity Inspector.

Add an outlet for the scrollview to the header for the containing view’s view controller.

	@property (weak, nonatomic) IBOutlet IoGMarquee *liveFeedDisplay;

Then, somewhere in the containing view controller, set up the marquee, which starts the text scrolling:

	NSString *marqueeMessage = @"      This is a test of the Emergency Broadcast System. The broadcasters of your area in voluntary cooperation with the FCC and federal, state and local authorities have developed this system to keep you informed in the event of an emergency.";

	[self.liveFeedDisplay setupForMessage:marqueeMessage withBackgroundColor:[UIColor blueColor] andForegroundColor:[UIColor greenColor]];

## Known Issues

	The scrolling message cannot be dynamically changed.

## Support

Questions, suggestions or contributions to the codebase can be submitted to support@infusionsofgrandeur.com

## License

Copyright 2015 Infusions of Grandeur

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

