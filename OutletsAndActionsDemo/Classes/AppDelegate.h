@interface AppDelegate : NSObject <UIApplicationDelegate>
{
  UILabel *_label;
}

@property (nonatomic, retain) IBOutlet UILabel *label;

- (IBAction)buttonPressed:(id)sender;

@end
