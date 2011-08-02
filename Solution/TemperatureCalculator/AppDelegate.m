#import "AppDelegate.h"

@implementation AppDelegate

@synthesize fahrenheitTextField = _fahrenheitTextField;
@synthesize celsiusLabel = _celsiusLabel;

#pragma mark Temperature conversion and formatting helpers
- (double)celsiusFromFahrenheit:(double)fahrenheit
{
  // Convert a value in fahrenheit to celsius
  return (((fahrenheit - 32) / 9) * 5);
}

- (NSString *)formattedCelsiusString:(double)celsius
{
  // Convert the floating point value to a string and add ºC to the end
  return [NSString stringWithFormat:@"%.1fºC", celsius];
}

#pragma mark Actions
- (IBAction)convertButtonTapped
{
  // Dismiss the keyboard from the screen
  [self.fahrenheitTextField resignFirstResponder];

  // Get the user entered text from the text field
  NSString *fahrenheitText = self.fahrenheitTextField.text;

  // Convert the string to a floating point value
  double fahrenheit = [fahrenheitText doubleValue];

  // Convert fahrenheit to celsius
  double celsius = [self celsiusFromFahrenheit:fahrenheit];

  // Convert the celsius value to a string ready for display
  NSString *celsiusText = [self formattedCelsiusString:celsius];

  // Set the label to show the updated text
  self.celsiusLabel.text = celsiusText;
}

#pragma mark Memory management
- (void)dealloc
{
  self.fahrenheitTextField = nil;
  self.celsiusLabel = nil;
  [super dealloc];
}

@end
