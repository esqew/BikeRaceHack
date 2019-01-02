#import <UIKit/UIKit.h>

// unlock all achievements
%hook Achievement

- (_Bool)isCompleted {
        return TRUE;
}

%end

// unlimited pokes (a.k.a. be annoying)
%hook MultiplayerGame

- (_Bool)canShowPoke {
	return YES;
}

%end

// unlimited track vouchers
%hook MyTracksManager

- (int)getRemainingTrackVouchers {
	return 99;
}

%end

