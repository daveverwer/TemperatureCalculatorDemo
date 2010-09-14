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
  // ---------------- //
  // INSERT CODE HERE //
  // ---------------- //
}

@end
