#import <UIKit/UIKit.h>

%subclass respringIcon : SBApplicationIcon
- (void)launch
{
	system("killall -9 SpringBoard");
}
/*- (void)launch
{
	UIAlertView *launchView = [[UIAlertView alloc] initWithTitle:nil message:nil delegate:nil cancelButtonTitle:nil otherButtonTitles:@"Safe Mode", @"Respring", nil];
	[launchView show];
	[launchView release];
}
- (void)alertView:(UIAlertView *)launchView clickedButtonAtIndex:(NSInteger)buttonIndex
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
}*/
%end