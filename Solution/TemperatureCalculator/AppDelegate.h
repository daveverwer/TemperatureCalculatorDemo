@interface AppDelegate : NSObject <UIApplicationDelegate>

@property (nonatomic, retain) IBOutlet UITextField *fahrenheitTextField;
@property (nonatomic, retain) IBOutlet UILabel *celsiusLabel;

- (IBAction)convertButtonTapped;

@end
