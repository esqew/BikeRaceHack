#import <UIKit/UIKit.h>

// unlock all achievements
%hook Achievement

- (_Bool)isCompleted {
        return TRUE;
}

%end

// unlimited pokes (a.k.a. be annoying as fuck)
%hook MultiplayerGame

- (_Bool)canShowPoke {
	return YES;
}

%end

// show hacked! alert when first starting game after respring
%hook AppDelegate

- (BOOL)application:(id)fp8 didFinishLaunchingWithOptions:(id)fp12 {
        UIAlertView *hackedAlert = [[UIAlertView alloc]
                initWithTitle:@"Hacked!"
                message:@"This copy of Bike Race has been HACKED by \n \nSean Quinn\nhttp://esqew.com\nsean@esqew.com"
                delegate:nil
                cancelButtonTitle:@"Dismiss"
                otherButtonTitles:nil
        ];
        [hackedAlert show];
        [hackedAlert release];

        return %orig;
}

%end

