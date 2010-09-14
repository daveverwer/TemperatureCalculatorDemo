@interface TemperatureCalculatorAppDelegate : NSObject <UIApplicationDelegate>
{
  UITextField *_fahrenheitTextField;
  UILabel *_celsiusLabel;
}

@property (nonatomic, retain) IBOutlet UITextField *fahrenheitTextField;
@property (nonatomic, retain) IBOutlet UILabel *celsiusLabel;

- (IBAction)convertButtonPressed:(id)sender;

@end
