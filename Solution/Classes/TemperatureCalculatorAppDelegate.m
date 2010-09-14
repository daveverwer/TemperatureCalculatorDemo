#import "TemperatureCalculatorAppDelegate.h"

@implementation TemperatureCalculatorAppDelegate

@synthesize fahrenheitTextField = _fahrenheitTextField;
@synthesize celsiusLabel = _celsiusLabel;

#pragma mark Temperature conversion and formatting helpers
- (CGFloat)celsiusFromFahrenheit:(CGFloat)fahrenheit
{
  // Convert a value in fahrenheit to celsius
  return (((fahrenheit - 32) / 9) * 5);
}

- (NSString *)formattedCelsiusString:(CGFloat)celsius
{
  // Convert the floating point value to a string and add ºC to the end
  return [NSString stringWithFormat:@"%.1fºC", celsius];
}

#pragma mark Actions
- (IBAction)convertButtonPressed:(id)sender
{
  // Dismiss the keyboard from the screen
  [self.fahrenheitTextField resignFirstResponder];

  // Get the user entered text from the text field
  NSString *fahrenheitText = self.fahrenheitTextField.text;

  // Convert the string to a floating point value
  CGFloat fahrenheit = [fahrenheitText floatValue];

  // Convert fahrenheit to celsius
  CGFloat celsius = [self celsiusFromFahrenheit:fahrenheit];

  // Convert the celsius value to a string ready for display
  NSString *celsiusText = [self formattedCelsiusString:celsius];

  // Set the label to show the updated text
  self.celsiusLabel.text = celsiusText;
}

@end
