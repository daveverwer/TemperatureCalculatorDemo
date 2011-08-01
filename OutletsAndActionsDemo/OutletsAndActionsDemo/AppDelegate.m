#import "AppDelegate.h"

@implementation AppDelegate

@synthesize label = _label;

#pragma mark Actions
- (IBAction)buttonPressed
{
  // Code here will get executed when the button is pressed.
  self.label.text = @"Button tapped!";
}

#pragma mark Memory management
- (void)dealloc
{
  self.label = nil;
  [super dealloc];
}

@end
