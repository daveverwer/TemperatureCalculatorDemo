#import "AppDelegate.h"

@implementation AppDelegate

@synthesize label = _label;

#pragma mark Actions
- (IBAction)buttonPressed:(id)sender
{
  // Change the text on the label when the button is touched
  self.label.text = @"Button Pressed!";
}

#pragma mark Memory management
- (void)dealloc
{
  self.label = nil;
  [super dealloc];
}

@end
