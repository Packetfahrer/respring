#import <UIKit/UIKit.h>

%subclass respringIcon : SBApplicationIcon
- (void)launch
{
	UIAlertView *launchView = [[UIAlertView alloc] initWithTitle:nil message:nil delegate:self cancelButtonTitle:nil otherButtonTitles:@"Safe Mode", @"Respring", nil];
	[self performSelector:@selector(dismissAlert:) withObject:launchView afterDelay:5];
	[launchView show];
	[launchView release];
}

%new(v@:@@)
- (void)dismissAlert:(UIAlertView *)alert
{
	[alert dismissWithClickedButtonIndex:-1 animated:YES];
}

%new(v@:@@)
- (void)alertView:(UIAlertView *)alert didDismissWithButtonIndex:(NSInteger)buttonIndex
{
	if (buttonIndex == 0)
	{
		system("touch /var/mobile/Library/Preferences/com.saurik.mobilesubstrate.dat");
		system("killall -9 SpringBoard");
	}
	if (buttonIndex == 1)
	{
		system("killall -9 SpringBoard");
	}
}
%end