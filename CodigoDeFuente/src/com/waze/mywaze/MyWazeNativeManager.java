// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.mywaze;

import android.app.Activity;
import android.app.backup.BackupManager;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.waze.AppService;
import com.waze.MainActivity;
import com.waze.NativeManager;
import com.waze.WazeBackupAgent;
import com.waze.ifs.async.RunnableUICallback;
import com.waze.ifs.ui.ActivityBase;
import com.waze.ifs.ui.VideoActivity;
import com.waze.install.GuidedTourActivity;
import com.waze.install.InstallNativeManager;
import com.waze.mywaze.moods.MoodsActivity;
import com.waze.mywaze.social.FacebookActivity;
import com.waze.mywaze.social.FoursquareActivity;
import com.waze.mywaze.social.FoursquareCheckedinActivity;
import com.waze.mywaze.social.FoursquareListActivity;
import com.waze.mywaze.social.SocialActivity;
import com.waze.mywaze.social.TwitterActivity;
import com.waze.phone.PhoneAlreadyAWazerActivity;
import com.waze.phone.PhoneLoginActivity;
import com.waze.phone.PhoneNumberSignInActivity;
import com.waze.phone.PhoneVerifyYourAccountFailureActivity;
import com.waze.phone.PhoneVerifyYourNumbersActivity;
import com.waze.profile.MinimalSignInActivity;
import com.waze.profile.ProfileLauncher;
import com.waze.profile.RegisterActivity;
import com.waze.profile.SignInActivity;
import com.waze.profile.WelcomeActivity;
import com.waze.social.facebook.FacebookWrapper;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package com.waze.mywaze:
//            MyWazeData, Group, MyWazeActivity

public class MyWazeNativeManager
{
    public static interface ActiveGroupListener
    {

        public abstract void onComplete(Group group);
    }

    public static interface FacebookCallback
    {

        public abstract void onFacebookSettings(FacebookSettings facebooksettings);
    }

    public static class FacebookSettings
        implements Serializable
    {

        private static final long serialVersionUID = 1L;
        public boolean loggedIn;

        public FacebookSettings()
        {
        }
    }

    public static interface FoursquareCallback
    {

        public abstract void onFoursquareSettings(FoursquareSettings foursquaresettings);
    }

    public static class FoursquareSettings
        implements Serializable
    {

        private static final long serialVersionUID = 1L;
        public boolean checkInAfterLogin;
        public boolean enableTweetBadge;
        public boolean enableTweetLogin;
        public boolean loggedIn;

        public FoursquareSettings()
        {
        }
    }

    public static interface GetGroupsListener
    {

        public abstract void onComplete(Group agroup[]);
    }

    public static interface IFriendsChanged
    {

        public abstract void onFriendsChanged();
    }

    public static interface ISetUserUpdateResult
    {

        public abstract void SetUserUpdateResult(boolean flag);
    }

    public static abstract class LoginCallback
    {

        public abstract void onLogin(boolean flag);

        public LoginCallback()
        {
        }
    }

    public static interface PrivacyCallback
    {

        public abstract void onPrivacySettings(PrivacySettings privacysettings);
    }

    public static class PrivacySettings
    {

        public int twitterShowProf;
        public int visibility;

        public PrivacySettings()
        {
        }
    }

    public static interface ProfileCallback
    {

        public abstract void onProfile(ProfileSettings profilesettings);
    }

    public static class ProfileSettings
    {

        public boolean allowPings;
        public String nickName;
        public String password;
        public boolean randomUser;
        public String userName;

        public ProfileSettings()
        {
        }
    }

    public static interface TwitterCallback
    {

        public abstract void onTwitterSettings(TwitterSettings twittersettings);
    }

    public static class TwitterSettings
        implements Serializable
    {

        private static final long serialVersionUID = 1L;
        public boolean loggedIn;
        public int postDriving;
        public boolean postMunching;
        public boolean postReports;
        public boolean showMunching;

        public TwitterSettings()
        {
        }
    }

    public static interface UrlCallback
    {

        public abstract void onUrl(String s);
    }

    private static final class UrlSelector extends Enum
    {

        private static final UrlSelector ENUM$VALUES[];
        public static final UrlSelector URL_COUPONS;
        public static final UrlSelector URL_FACEBOOKCONNECT;
        public static final UrlSelector URL_FACEBOOKLIKE;
        public static final UrlSelector URL_FACEBOOKSHARE;
        public static final UrlSelector URL_FORGOTPASSWORD;
        public static final UrlSelector URL_FOURSQUARECONNECT;
        public static final UrlSelector URL_GROUPS;
        public static final UrlSelector URL_SCOREBOARD;
        public static final UrlSelector URL_TWITTERCONNECT;
        public static final UrlSelector URL_TWITTERCONNECTPLUSINITIAL;
        public static final UrlSelector URL_TWITTERFOLLOW;

        public static UrlSelector valueOf(String s)
        {
            return (UrlSelector)Enum.valueOf(com/waze/mywaze/MyWazeNativeManager$UrlSelector, s);
        }

        public static UrlSelector[] values()
        {
            UrlSelector aurlselector[] = ENUM$VALUES;
            int i = aurlselector.length;
            UrlSelector aurlselector1[] = new UrlSelector[i];
            System.arraycopy(aurlselector, 0, aurlselector1, 0, i);
            return aurlselector1;
        }

        static 
        {
            URL_GROUPS = new UrlSelector("URL_GROUPS", 0);
            URL_SCOREBOARD = new UrlSelector("URL_SCOREBOARD", 1);
            URL_COUPONS = new UrlSelector("URL_COUPONS", 2);
            URL_FACEBOOKCONNECT = new UrlSelector("URL_FACEBOOKCONNECT", 3);
            URL_FOURSQUARECONNECT = new UrlSelector("URL_FOURSQUARECONNECT", 4);
            URL_FORGOTPASSWORD = new UrlSelector("URL_FORGOTPASSWORD", 5);
            URL_FACEBOOKSHARE = new UrlSelector("URL_FACEBOOKSHARE", 6);
            URL_FACEBOOKLIKE = new UrlSelector("URL_FACEBOOKLIKE", 7);
            URL_TWITTERFOLLOW = new UrlSelector("URL_TWITTERFOLLOW", 8);
            URL_TWITTERCONNECT = new UrlSelector("URL_TWITTERCONNECT", 9);
            URL_TWITTERCONNECTPLUSINITIAL = new UrlSelector("URL_TWITTERCONNECTPLUSINITIAL", 10);
            UrlSelector aurlselector[] = new UrlSelector[11];
            aurlselector[0] = URL_GROUPS;
            aurlselector[1] = URL_SCOREBOARD;
            aurlselector[2] = URL_COUPONS;
            aurlselector[3] = URL_FACEBOOKCONNECT;
            aurlselector[4] = URL_FOURSQUARECONNECT;
            aurlselector[5] = URL_FORGOTPASSWORD;
            aurlselector[6] = URL_FACEBOOKSHARE;
            aurlselector[7] = URL_FACEBOOKLIKE;
            aurlselector[8] = URL_TWITTERFOLLOW;
            aurlselector[9] = URL_TWITTERCONNECT;
            aurlselector[10] = URL_TWITTERCONNECTPLUSINITIAL;
            ENUM$VALUES = aurlselector;
        }

        private UrlSelector(String s, int i)
        {
            super(s, i);
        }
    }

    public static interface UserCarCallback
    {

        public abstract void onUserCar(String s);
    }


    private static final String PREF_LAST_PHONE = "socialContactsLastPhoneUsed";
    private static final String PREF_PHONE_PREFIX = "socialContactsPhoneRecovery_";
    private static MyWazeNativeManager instance;
    private MyWazeData mConflictingDataUser;
    ArrayList mFriendsChangedListeners;
    private boolean mIsInvisible;
    private boolean mWasFbTokenSet;
    private boolean mWasLoginSuccess;
    private LoginCallback pendingLogin;
    private RegisterActivity pendingRegister;

    private MyWazeNativeManager()
    {
        mIsInvisible = false;
        mWasLoginSuccess = false;
        mWasFbTokenSet = false;
        mConflictingDataUser = new MyWazeData();
        mFriendsChangedListeners = new ArrayList(4);
        initNTV();
    }

    private void FacebookConnect()
    {
        AppService.Post(new Runnable() {

            final MyWazeNativeManager this$0;

            public void run()
            {
                FacebookWrapper.getInstance().authorize(AppService.getActiveActivity(), null, false);
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                super();
            }
        });
    }

    private void FacebookConnectPublish()
    {
        AppService.Post(new Runnable() {

            final MyWazeNativeManager this$0;

            public void run()
            {
                FacebookWrapper.getInstance().authorize_publish(AppService.getActiveActivity(), null);
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                super();
            }
        });
    }

    private void FacebookRegisterConnect()
    {
        AppService.Post(new Runnable() {

            final MyWazeNativeManager this$0;

            public void run()
            {
                FacebookWrapper.getInstance().SignIn(AppService.getActiveActivity(), null, true);
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                super();
            }
        });
    }

    private native void ImportFacebookNTV();

    private native void SetInvisibleNTV(boolean flag);

    private native void ShowUserScreenIfNeededNTV();

    private native void afterConnectToFacebookNTV();

    private native void afterConnectToFoursquareNTV();

    private native void afterConnectToTwitterNTV();

    private native void authorizePublishCallbackNTV(boolean flag);

    private void closePendingRegister()
    {
        if (pendingRegister != null && pendingRegister.isAlive())
        {
            pendingRegister.finish();
            pendingRegister = null;
        }
    }

    private native void completeSignupNTV();

    private native void doLoginNTV(String s, String s1, String s2);

    private native void doLoginOkNTV(String s, String s1, String s2, boolean flag);

    private native void facebookDisconnectNTV();

    private native void facebookDisconnectNowNTV();

    private native void facebookResolveConflictNTV();

    private void facebook_settings_dialog_open()
    {
        AppService.Post(new Runnable() {

            final MyWazeNativeManager this$0;
            private final FacebookSettings val$settings;

            public void run()
            {
                Intent intent = new Intent(AppService.getAppContext(), com/waze/mywaze/social/FacebookActivity);
                intent.putExtra("com.waze.mywaze.facebooksettings", settings);
                AppService.showActivity(intent);
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                settings = facebooksettings;
                super();
            }
        });
    }

    private native void foursquareCheckinNTV();

    private native void foursquareDisconnectNTV();

    private native void foursquareSetTweetBadgeNTV(boolean flag);

    private native void foursquareSetTweetLoginNTV(boolean flag);

    private native Group getActiveGroupNTV();

    private native boolean getAllowPMNTV();

    private native boolean getAllowPingsNTV();

    private native String getDisplayNameNTV();

    private native String getEmailNTV();

    private native String getFaceBookNickNTV();

    private FacebookSettings getFacebookSettings()
    {
        FacebookSettings facebooksettings = new FacebookSettings();
        facebooksettings.loggedIn = getFacebookLoggedInNTV();
        return facebooksettings;
    }

    private native String getFirstNameNTV();

    private native boolean getFoursquareEnableTweetBadgeNTV();

    private native boolean getFoursquareEnableTweetLoginNTV();

    private native boolean getFoursquareLoggedInNTV();

    private native Group[] getGroupsNTV();

    public static MyWazeNativeManager getInstance()
    {
        if (instance == null)
        {
            instance = new MyWazeNativeManager();
        }
        return instance;
    }

    private native String getJoinedStrNTV();

    private native String getLastNameNTV();

    private native String getLastShareDriveURLNTV();

    private native String getNickNameNTV();

    private native int getNumberOfFriendsNTV();

    private native int getNumberOfFriendsOnlineNTV();

    private native int getNumberOfFriendsPendingNTV();

    private native String getPasswordNTV();

    private native String getPhoneNumberNTV();

    private native String getSocialJoinedStrNTV();

    private native String getSocialMoodNTV();

    private native String getSocialUserNameNTV();

    private native boolean getTwitterLoggedInNTV();

    private native String getTwitterPasswordNTV();

    private native int getTwitterPostDrivingModeNTV();

    private native boolean getTwitterPostMunchingNTV();

    private native boolean getTwitterPostReportsNTV();

    private native boolean getTwitterShowMunchingNTV();

    private native int getTwitterShowProfNTV();

    private native String getTwitterUsernameNTV();

    private void getUrl(final UrlSelector selector, final UrlCallback callback, final int width, final int height)
    {
        NativeManager.Post(new RunnableUICallback() {

            final MyWazeNativeManager this$0;
            String url;
            private final UrlCallback val$callback;
            private final int val$height;
            private final UrlSelector val$selector;
            private final int val$width;

            public void callback()
            {
                Log.d("WAZE", "getGroupsEvent - callback");
                callback.onUrl(url);
            }

            public void event()
            {
                Log.d("WAZE", "getGroupsEvent - event");
                url = getUrlNTV(selector.ordinal(), width, height);
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                selector = urlselector;
                width = i;
                height = j;
                callback = urlcallback;
                super();
            }
        });
    }

    private native String getUrlNTV(int i, int j, int k);

    private native String getUserCarNTV();

    private native String getUserNameNTV();

    private native int getUserVisibilityNTV();

    private native String getWelcomeNameNTV();

    private native void initNTV();

    private native boolean myCouponsEnabledNTV();

    private native void registerUserNTV(String s, String s1, String s2, String s3, boolean flag);

    private native void selectFoursquareVenueNTV(int i);

    private native void sendSocialAddFriendsNTV(int ai[], String s);

    private native void sendSocialInviteFriendsNTV(int ai[], String as[], String s);

    private native void sendSocialRemoveFriendsNTV(int ai[], String s);

    private native void setAllowPMNTV(boolean flag);

    private native void setAllowPingsNTV(boolean flag);

    private native void setContactSignInNTV(boolean flag, boolean flag1, String s, String s1);

    private native void setFacebookSignInNTV(String s);

    private native void setFacebookTokenNTV(String s, long l);

    private native void setNamesNTV(String s, String s1, String s2, String s3, String s4);

    private native void setSelectedGroupNTV(String s, String s1);

    private native void setTwitterShowProfNTV(int i);

    private native void setUserCarNTV(String s);

    private native void setUserVisibilityNTV(int i);

    private native void setVisibilityNTV();

    private native void skipSignupNTV();

    private native void twitterConnectNTV(String s, String s1);

    private native void twitterDisconnectNTV();

    private native void twitterSetDrivingModeNTV(int i);

    private native void twitterSetMunchingModeNTV(boolean flag);

    private native void twitterSetPasswordNTV(String s);

    private native void twitterSetReportModeNTV(boolean flag);

    private native void twitterSetUsernameNTV(String s);

    private native void updateFacebookTokenNTV(String s, long l);

    private void updatePermissions(final String readPermissions[])
    {
        AppService.Post(new Runnable() {

            final MyWazeNativeManager this$0;
            private final String val$readPermissions[];

            public void run()
            {
                FacebookWrapper.getInstance().updatePermissions(readPermissions);
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                readPermissions = as;
                super();
            }
        });
    }

    private native void updateTwitterNTV(String s, String s1, boolean flag);

    private native boolean validateNicknameNTV(String s);

    private native boolean validatePasswordNTV(String s);

    private native boolean validateUserNTV(String s, String s1, String s2, String s3, String s4, boolean flag);

    public void ClearToken()
    {
        AppService.Post(new Runnable() {

            final MyWazeNativeManager this$0;

            public void run()
            {
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                super();
            }
        });
    }

    public native boolean FacebookEnabledNTV();

    public native boolean FoursquareEnabledNTV();

    public void GetAllowPM(final SocialActivity cb)
    {
        NativeManager.Post(new RunnableUICallback() {

            boolean AllowPing;
            final MyWazeNativeManager this$0;
            private final SocialActivity val$cb;

            public void callback()
            {
                Log.d("WAZE", "ProfileSettings - callback");
                cb.SetAllowPM(AllowPing);
            }

            public void event()
            {
                Log.d("WAZE", "ProfileSettings - event");
                AllowPing = getAllowPMNTV();
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                cb = socialactivity;
                super();
            }
        });
    }

    public void GetAllowPing(final SocialActivity cb)
    {
        NativeManager.Post(new RunnableUICallback() {

            boolean AllowPing;
            final MyWazeNativeManager this$0;
            private final SocialActivity val$cb;

            public void callback()
            {
                Log.d("WAZE", "ProfileSettings - callback");
                cb.SetAllowPing(AllowPing);
            }

            public void event()
            {
                Log.d("WAZE", "ProfileSettings - event");
                AllowPing = getAllowPingsNTV();
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                cb = socialactivity;
                super();
            }
        });
    }

    public String GetDisplayName()
    {
        return getDisplayNameNTV();
    }

    public boolean GetInvisible()
    {
        return mIsInvisible;
    }

    public String GetLastShareURL()
    {
        return getLastShareDriveURLNTV();
    }

    public native boolean GroupsEnabledNTV();

    public void ImportFacebook()
    {
        NativeManager.Post(new Runnable() {

            final MyWazeNativeManager this$0;

            public void run()
            {
                ImportFacebookNTV();
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                super();
            }
        });
    }

    public native boolean MarketEnabledNTV();

    public void OnSettingChange_SetVisibilty()
    {
        NativeManager.Post(new Runnable() {

            final MyWazeNativeManager this$0;

            public void run()
            {
                setVisibilityNTV();
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                super();
            }
        });
    }

    public void SetallowPM(final boolean allow)
    {
        NativeManager.Post(new Runnable() {

            final MyWazeNativeManager this$0;
            private final boolean val$allow;

            public void run()
            {
                setAllowPMNTV(allow);
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                allow = flag;
                super();
            }
        });
    }

    public void ShowUserScreenIfNeeded()
    {
        NativeManager.Post(new Runnable() {

            final MyWazeNativeManager this$0;

            public void run()
            {
                ShowUserScreenIfNeededNTV();
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                super();
            }
        });
    }

    public native boolean TwitterEnabledNTV();

    public void addFriendsChangedListener(IFriendsChanged ifriendschanged)
    {
        mFriendsChangedListeners.add(ifriendschanged);
    }

    public void allowPings(final boolean allow)
    {
        NativeManager.Post(new Runnable() {

            final MyWazeNativeManager this$0;
            private final boolean val$allow;

            public void run()
            {
                setAllowPingsNTV(allow);
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                allow = flag;
                super();
            }
        });
    }

    public void authorizePublishCallback(final boolean result)
    {
        NativeManager.Post(new Runnable() {

            final MyWazeNativeManager this$0;
            private final boolean val$result;

            public void run()
            {
                authorizePublishCallbackNTV(result);
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                result = flag;
                super();
            }
        });
    }

    public void completeSignup()
    {
        NativeManager.Post(new Runnable() {

            final MyWazeNativeManager this$0;

            public void run()
            {
                completeSignupNTV();
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                super();
            }
        });
    }

    public void doLogin(final String username, final String password, final String nickname, LoginCallback logincallback)
    {
        pendingLogin = logincallback;
        NativeManager.Post(new Runnable() {

            final MyWazeNativeManager this$0;
            private final String val$nickname;
            private final String val$password;
            private final String val$username;

            public void run()
            {
                doLoginNTV(username, password, nickname);
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                username = s;
                password = s1;
                nickname = s2;
                super();
            }
        });
    }

    public void doLoginOk(final String username, final String password, final String nickname, final boolean allowPings, LoginCallback logincallback)
    {
        pendingLogin = logincallback;
        AppService.Post(new Runnable() {

            final MyWazeNativeManager this$0;
            private final boolean val$allowPings;
            private final String val$nickname;
            private final String val$password;
            private final String val$username;

            public void run()
            {
                doLoginOkNTV(username, password, nickname, allowPings);
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                username = s;
                password = s1;
                nickname = s2;
                allowPings = flag;
                super();
            }
        });
    }

    public void facebookDisconnect()
    {
        NativeManager.Post(new Runnable() {

            final MyWazeNativeManager this$0;

            public void run()
            {
                facebookDisconnectNTV();
                NativeManager.getInstance().logAnalytics("FACEBOOK_DISCONNECT", false, false);
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                super();
            }
        });
    }

    public void facebookDisconnectNow()
    {
        NativeManager.Post(new Runnable() {

            final MyWazeNativeManager this$0;

            public void run()
            {
                facebookDisconnectNowNTV();
                NativeManager.getInstance().logAnalytics("FACEBOOK_DISCONNECT", false, false);
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                super();
            }
        });
    }

    public void facebookPostConnect()
    {
        NativeManager.Post(new Runnable() {

            final MyWazeNativeManager this$0;

            public void run()
            {
                afterConnectToFacebookNTV();
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                super();
            }
        });
    }

    public void facebookResolveConflict()
    {
        NativeManager.Post(new Runnable() {

            final MyWazeNativeManager this$0;

            public void run()
            {
                facebookResolveConflictNTV();
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                super();
            }
        });
    }

    public void facebookTokenSet()
    {
        mWasFbTokenSet = true;
        AppService.Post(new Runnable() {

            final MyWazeNativeManager this$0;

            public void run()
            {
                if (AppService.getActiveActivity() instanceof GuidedTourActivity)
                {
                    ((GuidedTourActivity)AppService.getActiveActivity()).onFacebookTokenSet();
                } else
                {
                    if (AppService.getActiveActivity() instanceof PhoneNumberSignInActivity)
                    {
                        ((PhoneNumberSignInActivity)AppService.getActiveActivity()).onPinTokenSet();
                        return;
                    }
                    if (AppService.getActiveActivity() instanceof PhoneAlreadyAWazerActivity)
                    {
                        ((PhoneAlreadyAWazerActivity)AppService.getActiveActivity()).onPinTokenSet();
                        return;
                    }
                    if (AppService.getActiveActivity() instanceof PhoneVerifyYourAccountFailureActivity)
                    {
                        ((PhoneVerifyYourAccountFailureActivity)AppService.getActiveActivity()).onPinTokenSet();
                        return;
                    }
                    if (AppService.getActiveActivity() instanceof PhoneNumberSignInActivity)
                    {
                        ((PhoneNumberSignInActivity)AppService.getActiveActivity()).onPinTokenSet();
                        return;
                    }
                    if (AppService.getActiveActivity() instanceof MainActivity)
                    {
                        ((MainActivity)AppService.getActiveActivity()).onFacebookTokenSet();
                        return;
                    }
                    if (AppService.getActiveActivity() instanceof PhoneLoginActivity)
                    {
                        ((PhoneLoginActivity)AppService.getActiveActivity()).onFacebookTokenSet();
                        return;
                    }
                    if (AppService.getActiveActivity() instanceof PhoneVerifyYourNumbersActivity)
                    {
                        ((PhoneVerifyYourNumbersActivity)AppService.getActiveActivity()).onPinTokenSet();
                        return;
                    }
                    if (AppService.getActiveActivity() instanceof MinimalSignInActivity)
                    {
                        ((MinimalSignInActivity)AppService.getActiveActivity()).onFacebookTokenSet();
                        return;
                    }
                }
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                super();
            }
        });
    }

    public boolean facebookUpdateToken()
    {
        FacebookWrapper facebookwrapper = FacebookWrapper.getInstance();
        if (facebookwrapper.isSessionValid())
        {
            updateFacebookTokenNTV(facebookwrapper.getToken(), facebookwrapper.getExpirationTime());
            return true;
        } else
        {
            return false;
        }
    }

    public void facebook_show_conflicting_users(final String userName, final String last_seen, final int points, final int rank)
    {
        NativeManager.Post(new Runnable() {

            final MyWazeNativeManager this$0;
            private final String val$last_seen;
            private final int val$points;
            private final int val$rank;
            private final String val$userName;

            public void run()
            {
                mConflictingDataUser.mPts = points;
                mConflictingDataUser.mRank = rank;
                mConflictingDataUser.mUserName = userName;
                mConflictingDataUser.mLastSeen = last_seen;
                if (AppService.getMainActivity() != null)
                {
                    AppService.getMainActivity().openConflictingActivity();
                }
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                points = i;
                rank = j;
                userName = s;
                last_seen = s1;
                super();
            }
        });
    }

    public void foursquareCheckin()
    {
        NativeManager.Post(new Runnable() {

            final MyWazeNativeManager this$0;

            public void run()
            {
                foursquareCheckinNTV();
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                super();
            }
        });
    }

    public void foursquareDisconnect()
    {
        NativeManager.Post(new Runnable() {

            final MyWazeNativeManager this$0;

            public void run()
            {
                foursquareDisconnectNTV();
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                super();
            }
        });
    }

    public void foursquarePostConnect()
    {
        NativeManager.Post(new Runnable() {

            final MyWazeNativeManager this$0;

            public void run()
            {
                afterConnectToFoursquareNTV();
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                super();
            }
        });
    }

    public void foursquareSetTweetBadge(final boolean mode)
    {
        NativeManager.Post(new Runnable() {

            final MyWazeNativeManager this$0;
            private final boolean val$mode;

            public void run()
            {
                foursquareSetTweetBadgeNTV(mode);
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                mode = flag;
                super();
            }
        });
    }

    public void foursquareSetTweetLogin(final boolean mode)
    {
        NativeManager.Post(new Runnable() {

            final MyWazeNativeManager this$0;
            private final boolean val$mode;

            public void run()
            {
                foursquareSetTweetLoginNTV(mode);
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                mode = flag;
                super();
            }
        });
    }

    public void getActiveGroup(final ActiveGroupListener listener)
    {
        NativeManager.Post(new RunnableUICallback() {

            Group group;
            final MyWazeNativeManager this$0;
            private final ActiveGroupListener val$listener;

            public void callback()
            {
                listener.onComplete(group);
            }

            public void event()
            {
                group = getActiveGroupNTV();
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                listener = activegrouplistener;
                super();
            }
        });
    }

    public native boolean getContactLoggedInNTV();

    public void getCouponsUrl(UrlCallback urlcallback, int i, int j)
    {
        getUrl(UrlSelector.URL_COUPONS, urlcallback, i, j);
    }

    public void getFacebookConnectUrl(UrlCallback urlcallback, int i, int j)
    {
        getUrl(UrlSelector.URL_FACEBOOKCONNECT, urlcallback, i, j);
    }

    public void getFacebookLikeUrl(UrlCallback urlcallback, int i, int j)
    {
        getUrl(UrlSelector.URL_FACEBOOKLIKE, urlcallback, i, j);
    }

    public native boolean getFacebookLoggedInNTV();

    public void getFacebookSettings(final FacebookCallback cb)
    {
        NativeManager.Post(new RunnableUICallback() {

            FacebookSettings settings;
            final MyWazeNativeManager this$0;
            private final FacebookCallback val$cb;

            public void callback()
            {
                Log.d("WAZE", "getFacebookSettings - callback");
                cb.onFacebookSettings(settings);
            }

            public void event()
            {
                Log.d("WAZE", "getFacebookSettings - event");
                settings = getFacebookSettings();
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                cb = facebookcallback;
                super();
            }
        });
    }

    public void getFacebookShareUrl(UrlCallback urlcallback, int i, int j)
    {
        getUrl(UrlSelector.URL_FACEBOOKSHARE, urlcallback, i, j);
    }

    public void getForgotPasswordUrl(UrlCallback urlcallback, int i, int j)
    {
        getUrl(UrlSelector.URL_FORGOTPASSWORD, urlcallback, i, j);
    }

    public void getFoursquareConnectUrl(UrlCallback urlcallback, int i, int j)
    {
        getUrl(UrlSelector.URL_FOURSQUARECONNECT, urlcallback, i, j);
    }

    public void getFoursquareSettings(final FoursquareCallback cb)
    {
        NativeManager.Post(new RunnableUICallback() {

            FoursquareSettings settings;
            final MyWazeNativeManager this$0;
            private final FoursquareCallback val$cb;

            public void callback()
            {
                Log.d("WAZE", "getFoursquareSettings - callback");
                cb.onFoursquareSettings(settings);
            }

            public void event()
            {
                Log.d("WAZE", "getFoursquareSettings - event");
                settings = new FoursquareSettings();
                settings.loggedIn = getFoursquareLoggedInNTV();
                settings.enableTweetLogin = getFoursquareEnableTweetLoginNTV();
                settings.enableTweetBadge = getFoursquareEnableTweetBadgeNTV();
                settings.checkInAfterLogin = false;
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                cb = foursquarecallback;
                super();
            }
        });
    }

    public void getGroups(final GetGroupsListener listener)
    {
        NativeManager.Post(new RunnableUICallback() {

            Group groups[];
            final MyWazeNativeManager this$0;
            private final GetGroupsListener val$listener;

            public void callback()
            {
                listener.onComplete(groups);
            }

            public void event()
            {
                groups = getGroupsNTV();
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                listener = getgroupslistener;
                super();
            }
        });
    }

    public void getGroupsUrl(UrlCallback urlcallback, int i, int j)
    {
        getUrl(UrlSelector.URL_GROUPS, urlcallback, i, j);
    }

    public native boolean getInvisibleNTV();

    public native String getLearnMorePrivacyUrlNTV();

    public MyWazeData getMyConflictingUserData()
    {
        return mConflictingDataUser;
    }

    public void getMyWazeData(final ActivityBase mywaze)
    {
        NativeManager.Post(new RunnableUICallback() {

            MyWazeData Data;
            final MyWazeNativeManager this$0;
            private final ActivityBase val$mywaze;

            public void callback()
            {
                Log.d("WAZE", "getFacebookSettings - callback");
                mywaze.SetMyWazeData(Data);
            }

            public void event()
            {
                Log.d("WAZE", "getFacebookSettings - event");
                Data = new MyWazeData();
                Data.mFaceBookLoggedIn = getFacebookLoggedInNTV();
                Data.mContactsLoggedIn = getContactLoggedInNTV();
                Data.mImageUrl = getUserImageUrlNTV();
                Data.mRank = getRankNTV();
                Data.mPts = getPointsNTV();
                Data.mUserName = getUserNameNTV();
                Data.mNickName = getNickNameNTV();
                Data.mFaceBookNickName = getFaceBookNickNTV();
                Data.mJoinedStr = getJoinedStrNTV();
                Data.nFriendsOnline = getNumberOfFriendsOnlineNTV();
                Data.mFirstName = getFirstNameNTV();
                Data.mLastName = getLastNameNTV();
                Data.mMood = getSocialMoodNTV();
                Data.mPhoneNumber = getPhoneNumberNTV();
                Data.mPassword = getPasswordNTV();
                Data.mEmail = getEmailNTV();
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                mywaze = activitybase;
                super();
            }
        });
    }

    public void getMyWazeDataForVerification(final ActivityBase mywaze)
    {
        NativeManager.Post(new RunnableUICallback() {

            MyWazeData Data;
            final MyWazeNativeManager this$0;
            private final ActivityBase val$mywaze;

            public void callback()
            {
                Log.d("WAZE", "getFacebookSettings - callback");
                mywaze.SetMyWazeData(Data);
            }

            public void event()
            {
                Log.d("WAZE", "getFacebookSettings - event");
                Data = new MyWazeData();
                Data.mRank = getSocialRankNTV();
                Data.mPts = getSocialPointsNTV();
                Data.mUserName = getSocialUserNameNTV();
                Data.mJoinedStr = getSocialJoinedStrNTV();
                Data.mMood = getSocialMoodNTV();
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                mywaze = activitybase;
                super();
            }
        });
    }

    public native String getNameNTV();

    public int getNumberOfFriends()
    {
        return getNumberOfFriendsNTV();
    }

    public int getNumberOfFriendsOnline()
    {
        return getNumberOfFriendsOnlineNTV();
    }

    public int getNumberOfFriendsPending()
    {
        return getNumberOfFriendsPendingNTV();
    }

    public native int getPointsNTV();

    public void getPrivacySettings(final PrivacyCallback cb)
    {
        NativeManager.Post(new RunnableUICallback() {

            PrivacySettings settings;
            final MyWazeNativeManager this$0;
            private final PrivacyCallback val$cb;

            public void callback()
            {
                Log.d("WAZE", "ProfileSettings - callback");
                cb.onPrivacySettings(settings);
            }

            public void event()
            {
                Log.d("WAZE", "PrivacySettings - event");
                settings = new PrivacySettings();
                settings.visibility = getUserVisibilityNTV();
                settings.twitterShowProf = getTwitterShowProfNTV();
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                cb = privacycallback;
                super();
            }
        });
    }

    public void getProfileSettings(final ProfileCallback cb)
    {
        NativeManager.Post(new RunnableUICallback() {

            ProfileSettings profile;
            final MyWazeNativeManager this$0;
            private final ProfileCallback val$cb;

            public void callback()
            {
                Log.d("WAZE", "ProfileSettings - callback");
                cb.onProfile(profile);
            }

            public void event()
            {
                Log.d("WAZE", "ProfileSettings - event");
                profile = new ProfileSettings();
                profile.userName = getUserNameNTV();
                profile.password = getPasswordNTV();
                profile.nickName = getNickNameNTV();
                profile.allowPings = getAllowPingsNTV();
                profile.randomUser = isRandomUserNTV();
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                cb = profilecallback;
                super();
            }
        });
    }

    public native int getRankNTV();

    public void getScoreboardUrl(UrlCallback urlcallback, int i, int j)
    {
        getUrl(UrlSelector.URL_SCOREBOARD, urlcallback, i, j);
    }

    public native int getSocialPointsNTV();

    public native int getSocialRankNTV();

    public void getTwitterConnectUrl(UrlCallback urlcallback, int i, int j, boolean flag)
    {
        if (flag)
        {
            getUrl(UrlSelector.URL_TWITTERCONNECTPLUSINITIAL, urlcallback, i, j);
            return;
        } else
        {
            getUrl(UrlSelector.URL_TWITTERCONNECT, urlcallback, i, j);
            return;
        }
    }

    public void getTwitterFollowUrl(UrlCallback urlcallback, int i, int j)
    {
        getUrl(UrlSelector.URL_TWITTERFOLLOW, urlcallback, i, j);
    }

    public void getTwitterSettings(final TwitterCallback cb)
    {
        NativeManager.Post(new RunnableUICallback() {

            TwitterSettings settings;
            final MyWazeNativeManager this$0;
            private final TwitterCallback val$cb;

            public void callback()
            {
                Log.d("WAZE", "getTwitterSettings - callback");
                cb.onTwitterSettings(settings);
            }

            public void event()
            {
                Log.d("WAZE", "getTwitterSettings - event");
                settings = new TwitterSettings();
                settings.loggedIn = getTwitterLoggedInNTV();
                settings.postReports = getTwitterPostReportsNTV();
                settings.postDriving = getTwitterPostDrivingModeNTV();
                settings.postMunching = getTwitterPostMunchingNTV();
                settings.showMunching = getTwitterShowMunchingNTV();
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                cb = twittercallback;
                super();
            }
        });
    }

    public void getUserCar(final UserCarCallback cb)
    {
        NativeManager.Post(new RunnableUICallback() {

            String selection;
            final MyWazeNativeManager this$0;
            private final UserCarCallback val$cb;

            public void callback()
            {
                cb.onUserCar(selection);
            }

            public void event()
            {
                selection = getUserCarNTV();
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                cb = usercarcallback;
                super();
            }
        });
    }

    public native String getUserImageUrlNTV();

    public native int getUserTypeNTV();

    public boolean getWasFbTokenSet()
    {
        return mWasFbTokenSet;
    }

    public boolean getWasLoginSuccess()
    {
        return mWasLoginSuccess;
    }

    public String getWelcomeName()
    {
        return getWelcomeNameNTV();
    }

    public native boolean isJustJoinedNTV();

    public native boolean isRandomUserNTV();

    public void launchMyWaze(final Context context)
    {
        NativeManager.Post(new RunnableUICallback() {

            boolean couponsEnabled;
            final MyWazeNativeManager this$0;
            private final Context val$context;

            public void callback()
            {
                Log.d("WAZE", "launchMyWaze - callback");
                Intent intent = new Intent(context, com/waze/mywaze/MyWazeActivity);
                intent.putExtra("com.waze.mywaze.coupons", couponsEnabled);
                AppService.getMainActivity().startActivityForResult(intent, 32772);
            }

            public void event()
            {
                Log.d("WAZE", "launchMyWaze - event");
                couponsEnabled = myCouponsEnabledNTV();
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                context = context1;
                super();
            }
        });
    }

    public void mood_dialog_show()
    {
        AppService.Post(new Runnable() {

            final MyWazeNativeManager this$0;

            public void run()
            {
                AppService.showActivity(new Intent(AppService.getAppContext(), com/waze/mywaze/moods/MoodsActivity));
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                super();
            }
        });
    }

    public void onLoginFailed()
    {
        AppService.Post(new Runnable() {

            final MyWazeNativeManager this$0;

            public void run()
            {
                if (pendingLogin != null)
                {
                    pendingLogin.onLogin(false);
                    pendingLogin = null;
                }
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                super();
            }
        });
    }

    public void onLoginSuccess()
    {
        mWasLoginSuccess = true;
        AppService.Post(new Runnable() {

            final MyWazeNativeManager this$0;

            public void run()
            {
                if (pendingLogin != null)
                {
                    pendingLogin.onLogin(true);
                    pendingLogin = null;
                }
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                super();
            }
        });
    }

    public void openFoursquareDialog()
    {
        final FoursquareSettings settings = new FoursquareSettings();
        settings.loggedIn = getFoursquareLoggedInNTV();
        settings.enableTweetLogin = getFoursquareEnableTweetLoginNTV();
        settings.enableTweetBadge = getFoursquareEnableTweetBadgeNTV();
        settings.checkInAfterLogin = true;
        AppService.Post(new Runnable() {

            final MyWazeNativeManager this$0;
            private final FoursquareSettings val$settings;

            public void run()
            {
                ActivityBase activitybase = AppService.getActiveActivity();
                if (activitybase != null)
                {
                    Intent intent = new Intent(activitybase, com/waze/mywaze/social/FoursquareActivity);
                    intent.putExtra("com.waze.mywaze.foursquaresettings", settings);
                    activitybase.startActivityForResult(intent, 0);
                }
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                settings = foursquaresettings;
                super();
            }
        });
    }

    public void openWelcome()
    {
        AppService.Post(new Runnable() {

            final MyWazeNativeManager this$0;

            public void run()
            {
                if (pendingRegister != null)
                {
                    pendingRegister.openWelcome();
                    pendingRegister = null;
                }
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                super();
            }
        });
    }

    public void openWelcomeActivityAndCloseCurrentActivity()
    {
        AppService.Post(new Runnable() {

            final MyWazeNativeManager this$0;

            private boolean shouldOpenWelcomeActivity(Activity activity)
            {
                boolean flag1;
                if (activity instanceof GuidedTourActivity)
                {
                    boolean flag2 = InstallNativeManager.IsMinimalInstallation();
                    flag1 = false;
                    if (flag2)
                    {
                        flag1 = true;
                    }
                } else
                {
                    boolean flag = activity instanceof SignInActivity;
                    flag1 = false;
                    if (flag)
                    {
                        return true;
                    }
                }
                return flag1;
            }

            private void writeSkipSignInLogs(Activity activity)
            {
                NativeManager nativemanager = NativeManager.getInstance();
                if (activity instanceof GuidedTourActivity)
                {
                    if (InstallNativeManager.IsMinimalInstallation())
                    {
                        nativemanager.SignUplogAnalytics("START_DRIVING", null, null, true);
                    }
                } else
                if (activity instanceof SignInActivity)
                {
                    nativemanager.SignUplogAnalytics("NEW_EXISTING_SKIP", null, null, true);
                    return;
                }
            }

            public void run()
            {
                ActivityBase activitybase = AppService.getActiveActivity();
                if (activitybase != null)
                {
                    writeSkipSignInLogs(activitybase);
                    if (shouldOpenWelcomeActivity(activitybase))
                    {
                        activitybase.startActivityForResult(new Intent(activitybase, com/waze/profile/WelcomeActivity), 0);
                        activitybase.setResult(-1);
                        activitybase.finish();
                    }
                }
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                super();
            }
        });
    }

    public void refreshFacebookConnection(final boolean connected)
    {
        AppService.Post(new Runnable() {

            final MyWazeNativeManager this$0;
            private final boolean val$connected;

            public void run()
            {
                FacebookActivity.refreshStatus(connected);
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                connected = flag;
                super();
            }
        });
    }

    public void refreshFoursquareConnection(final boolean connected)
    {
        AppService.Post(new Runnable() {

            final MyWazeNativeManager this$0;
            private final boolean val$connected;

            public void run()
            {
                FoursquareActivity.refreshStatus(connected);
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                connected = flag;
                super();
            }
        });
    }

    public void refreshTwitterConnection(final boolean connected)
    {
        AppService.Post(new Runnable() {

            final MyWazeNativeManager this$0;
            private final boolean val$connected;

            public void run()
            {
                TwitterActivity.refreshStatus(connected);
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                connected = flag;
                super();
            }
        });
    }

    public void registerFailed(final boolean bIsSuccess)
    {
        AppService.Post(new Runnable() {

            final MyWazeNativeManager this$0;
            private final boolean val$bIsSuccess;

            public void run()
            {
                if (pendingRegister != null && pendingRegister.isRunning())
                {
                    pendingRegister.OnResponse(bIsSuccess);
                } else
                {
                    if (AppService.getActiveActivity() instanceof ISetUserUpdateResult)
                    {
                        ((ISetUserUpdateResult)AppService.getActiveActivity()).SetUserUpdateResult(bIsSuccess);
                    }
                    if (AppService.getMainActivity() != null)
                    {
                        AppService.getMainActivity().SetUserUpdateResult(bIsSuccess);
                        return;
                    }
                }
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                bIsSuccess = flag;
                super();
            }
        });
    }

    public boolean registerUser(final String username, final String password, String s, final String nickname, final String email, final boolean updates, RegisterActivity registeractivity)
    {
        if (!validateUserNTV(username, password, s, nickname, email, updates))
        {
            return false;
        } else
        {
            pendingRegister = registeractivity;
            NativeManager.Post(new Runnable() {

                final MyWazeNativeManager this$0;
                private final String val$email;
                private final String val$nickname;
                private final String val$password;
                private final boolean val$updates;
                private final String val$username;

                public void run()
                {
                    registerUserNTV(username, password, nickname, email, updates);
                }

            
            {
                this$0 = MyWazeNativeManager.this;
                username = s;
                password = s1;
                nickname = s2;
                email = s3;
                updates = flag;
                super();
            }
            });
            return true;
        }
    }

    public void removeFriendsChangedListener(IFriendsChanged ifriendschanged)
    {
        mFriendsChangedListeners.remove(ifriendschanged);
    }

    public void selectFoursquareVenue(final int index)
    {
        NativeManager.Post(new Runnable() {

            final MyWazeNativeManager this$0;
            private final int val$index;

            public void run()
            {
                selectFoursquareVenueNTV(index);
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                index = i;
                super();
            }
        });
    }

    public void sendSocialAddFriends(final int ids[], final String message)
    {
        NativeManager.Post(new Runnable() {

            final MyWazeNativeManager this$0;
            private final int val$ids[];
            private final String val$message;

            public void run()
            {
                sendSocialAddFriendsNTV(ids, message);
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                ids = ai;
                message = s;
                super();
            }
        });
    }

    public void sendSocialInviteFriends(final int ids[], final String phones[], final String message)
    {
        NativeManager.Post(new Runnable() {

            final MyWazeNativeManager this$0;
            private final int val$ids[];
            private final String val$message;
            private final String val$phones[];

            public void run()
            {
                sendSocialInviteFriendsNTV(ids, phones, message);
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                ids = ai;
                phones = as;
                message = s;
                super();
            }
        });
    }

    public void sendSocialRemoveFriends(final int ids[], final String message)
    {
        NativeManager.Post(new Runnable() {

            final MyWazeNativeManager this$0;
            private final int val$ids[];
            private final String val$message;

            public void run()
            {
                sendSocialRemoveFriendsNTV(ids, message);
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                ids = ai;
                message = s;
                super();
            }
        });
    }

    public void setContactsSignIn(final boolean bIsForce, final boolean IsConnectOnly, final String firstName, final String LastName)
    {
        NativeManager.Post(new Runnable() {

            final MyWazeNativeManager this$0;
            private final boolean val$IsConnectOnly;
            private final String val$LastName;
            private final boolean val$bIsForce;
            private final String val$firstName;

            public void run()
            {
                setContactSignInNTV(bIsForce, IsConnectOnly, firstName, LastName);
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                bIsForce = flag;
                IsConnectOnly = flag1;
                firstName = s;
                LastName = s1;
                super();
            }
        });
    }

    public void setFacebookToken(final String accessToken, final long accessExpires)
    {
        NativeManager.Post(new Runnable() {

            final MyWazeNativeManager this$0;
            private final long val$accessExpires;
            private final String val$accessToken;

            public void run()
            {
                setFacebookTokenNTV(accessToken, accessExpires);
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                accessToken = s;
                accessExpires = l;
                super();
            }
        });
    }

    public void setInvisible(final boolean bIsInvisible)
    {
        mIsInvisible = bIsInvisible;
        NativeManager.Post(new Runnable() {

            final MyWazeNativeManager this$0;
            private final boolean val$bIsInvisible;

            public void run()
            {
                SetInvisibleNTV(bIsInvisible);
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                bIsInvisible = flag;
                super();
            }
        });
    }

    public void setNames(final String first, final String last, final String user, final String password, final String email)
    {
        NativeManager.Post(new Runnable() {

            final MyWazeNativeManager this$0;
            private final String val$email;
            private final String val$first;
            private final String val$last;
            private final String val$password;
            private final String val$user;

            public void run()
            {
                setNamesNTV(first, last, user, password, email);
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                first = s;
                last = s1;
                user = s2;
                password = s3;
                email = s4;
                super();
            }
        });
    }

    public void setSelectedGroup(final Group group)
    {
        NativeManager.Post(new Runnable() {

            final MyWazeNativeManager this$0;
            private final Group val$group;

            public void run()
            {
                setSelectedGroupNTV(group.name, group.icon);
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                group = group1;
                super();
            }
        });
    }

    public void setSignIn(final String accessToken)
    {
        NativeManager.Post(new Runnable() {

            final MyWazeNativeManager this$0;
            private final String val$accessToken;

            public void run()
            {
                setFacebookSignInNTV(accessToken);
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                accessToken = s;
                super();
            }
        });
    }

    public void setTwitterShowProfile(final int value)
    {
        NativeManager.Post(new Runnable() {

            final MyWazeNativeManager this$0;
            private final int val$value;

            public void run()
            {
                setTwitterShowProfNTV(value);
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                value = i;
                super();
            }
        });
    }

    public void setUserCar(final String car)
    {
        NativeManager.Post(new Runnable() {

            final MyWazeNativeManager this$0;
            private final String val$car;

            public void run()
            {
                setUserCarNTV(car);
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                car = s;
                super();
            }
        });
    }

    public void setVisibility(final int value)
    {
        NativeManager.Post(new Runnable() {

            final MyWazeNativeManager this$0;
            private final int val$value;

            public void run()
            {
                setUserVisibilityNTV(value);
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                value = i;
                super();
            }
        });
    }

    public void showFoursquareResult(final String label, final String address, final String points)
    {
        AppService.Post(new Runnable() {

            final MyWazeNativeManager this$0;
            private final String val$address;
            private final String val$label;
            private final String val$points;

            public void run()
            {
                ActivityBase activitybase = AppService.getActiveActivity();
                if (activitybase != null)
                {
                    Intent intent = new Intent(activitybase, com/waze/mywaze/social/FoursquareCheckedinActivity);
                    intent.putExtra("com.waze.mywaze.foursquare_label", label);
                    intent.putExtra("com.waze.mywaze.foursquare_address", address);
                    intent.putExtra("com.waze.mywaze.foursquare_points", points);
                    AppService.getActiveActivity().startActivityForResult(intent, 0);
                }
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                label = s;
                address = s1;
                points = s2;
                super();
            }
        });
    }

    public void showFoursquareVenues(final String descriptions[], final String addresses[], final String distances[])
    {
        AppService.Post(new Runnable() {

            final MyWazeNativeManager this$0;
            private final String val$addresses[];
            private final String val$descriptions[];
            private final String val$distances[];

            public void run()
            {
                Intent intent = new Intent(AppService.getAppContext(), com/waze/mywaze/social/FoursquareListActivity);
                intent.putExtra("com.waze.mywaze.foursquare.descriptions", descriptions);
                intent.putExtra("com.waze.mywaze.foursquare.addresses", addresses);
                intent.putExtra("com.waze.mywaze.foursquare.distances", distances);
                AppService.showActivity(intent);
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                descriptions = as;
                addresses = as1;
                distances = as2;
                super();
            }
        });
    }

    public void showProfile()
    {
        AppService.Post(new Runnable() {

            final MyWazeNativeManager this$0;

            public void run()
            {
                ProfileLauncher.launch(AppService.getAppContext(), true);
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                super();
            }
        });
    }

    public void showRegister()
    {
        AppService.Post(new Runnable() {

            final MyWazeNativeManager this$0;

            public void run()
            {
                Intent intent = new Intent(AppService.getActiveActivity(), com/waze/phone/PhoneNumberSignInActivity);
                intent.putExtra("type", 1);
                intent.putExtra("back", 1);
                intent.putExtra("fon_shon_rea_son", "FEATURE");
                AppService.getActiveActivity().startActivity(intent);
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                super();
            }
        });
    }

    public void showSignIn()
    {
        AppService.Post(new Runnable() {

            final MyWazeNativeManager this$0;

            public void run()
            {
                if (!SignInActivity.isActive())
                {
                    AppService.showActivity(new Intent(AppService.getAppContext(), com/waze/profile/SignInActivity));
                }
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                super();
            }
        });
    }

    public void showVideo(final String url)
    {
        AppService.Post(new Runnable() {

            final MyWazeNativeManager this$0;
            private final String val$url;

            public void run()
            {
                Intent intent = new Intent(AppService.getActiveActivity(), com/waze/ifs/ui/VideoActivity);
                intent.putExtra("landscape", true);
                intent.putExtra("url", url);
                AppService.getActiveActivity().startActivity(intent);
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                url = s;
                super();
            }
        });
    }

    public void skipSignup()
    {
        NativeManager.Post(new Runnable() {

            final MyWazeNativeManager this$0;

            public void run()
            {
                skipSignupNTV();
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                super();
            }
        });
    }

    public String socialContactsGetLastPhoneUsed()
    {
        Object obj = AppService.getMainActivity();
        if (obj == null)
        {
            obj = AppService.getAppContext();
        }
        return WazeBackupAgent.getString(((Context) (obj)), "socialContactsLastPhoneUsed", null);
    }

    public String socialContactsGetRecoveryToken(String s)
    {
        Object obj = AppService.getMainActivity();
        if (obj == null)
        {
            obj = AppService.getAppContext();
        }
        return WazeBackupAgent.getString(((Context) (obj)), (new StringBuilder("socialContactsPhoneRecovery_")).append(s).toString(), null);
    }

    public void socialContactsSavePhoneRecovery(final String phoneNumber, final String token)
    {
        AppService.Post(new Runnable() {

            final MyWazeNativeManager this$0;
            private final String val$phoneNumber;
            private final String val$token;

            public void run()
            {
                Object obj = AppService.getMainActivity();
                if (obj == null)
                {
                    obj = AppService.getAppContext();
                }
                WazeBackupAgent.putString(((Context) (obj)), (new StringBuilder("socialContactsPhoneRecovery_")).append(phoneNumber).toString(), token);
                WazeBackupAgent.putString(((Context) (obj)), "socialContactsLastPhoneUsed", phoneNumber);
                (new BackupManager(((Context) (obj)))).dataChanged();
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                phoneNumber = s;
                token = s1;
                super();
            }
        });
    }

    public void socialFriendsAddedOrRemoved()
    {
        AppService.Post(new Runnable() {

            final MyWazeNativeManager this$0;

            public void run()
            {
                Iterator iterator = mFriendsChangedListeners.iterator();
                do
                {
                    if (!iterator.hasNext())
                    {
                        return;
                    }
                    ((IFriendsChanged)iterator.next()).onFriendsChanged();
                } while (true);
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                super();
            }
        });
    }

    public void twitterConnect(final String username, final String password)
    {
        NativeManager.Post(new Runnable() {

            final MyWazeNativeManager this$0;
            private final String val$password;
            private final String val$username;

            public void run()
            {
                twitterConnectNTV(username, password);
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                username = s;
                password = s1;
                super();
            }
        });
    }

    public void twitterDisconnect()
    {
        NativeManager.Post(new Runnable() {

            final MyWazeNativeManager this$0;

            public void run()
            {
                twitterDisconnectNTV();
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                super();
            }
        });
    }

    public void twitterPostConnect()
    {
        NativeManager.Post(new Runnable() {

            final MyWazeNativeManager this$0;

            public void run()
            {
                afterConnectToTwitterNTV();
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                super();
            }
        });
    }

    public void twitterSetDrivingMode(final int mode)
    {
        NativeManager.Post(new Runnable() {

            final MyWazeNativeManager this$0;
            private final int val$mode;

            public void run()
            {
                twitterSetDrivingModeNTV(mode);
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                mode = i;
                super();
            }
        });
    }

    public void twitterSetMunchingMode(final boolean mode)
    {
        NativeManager.Post(new Runnable() {

            final MyWazeNativeManager this$0;
            private final boolean val$mode;

            public void run()
            {
                twitterSetMunchingModeNTV(mode);
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                mode = flag;
                super();
            }
        });
    }

    public void twitterSetPassword(final String password)
    {
        NativeManager.Post(new Runnable() {

            final MyWazeNativeManager this$0;
            private final String val$password;

            public void run()
            {
                twitterSetPasswordNTV(password);
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                password = s;
                super();
            }
        });
    }

    public void twitterSetReportMode(final boolean mode)
    {
        NativeManager.Post(new Runnable() {

            final MyWazeNativeManager this$0;
            private final boolean val$mode;

            public void run()
            {
                twitterSetReportModeNTV(mode);
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                mode = flag;
                super();
            }
        });
    }

    public void twitterSetUsername(final String username)
    {
        NativeManager.Post(new Runnable() {

            final MyWazeNativeManager this$0;
            private final String val$username;

            public void run()
            {
                twitterSetUsernameNTV(username);
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                username = s;
                super();
            }
        });
    }

    public void updateFacebookToken(final String accessToken, final long accessExpires)
    {
        NativeManager.Post(new Runnable() {

            final MyWazeNativeManager this$0;
            private final long val$accessExpires;
            private final String val$accessToken;

            public void run()
            {
                updateFacebookTokenNTV(accessToken, accessExpires);
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                accessToken = s;
                accessExpires = l;
                super();
            }
        });
    }

    public void updateTwitter(final String username, final String password, final boolean update)
    {
        NativeManager.Post(new Runnable() {

            final MyWazeNativeManager this$0;
            private final String val$password;
            private final boolean val$update;
            private final String val$username;

            public void run()
            {
                updateTwitterNTV(username, password, update);
            }

            
            {
                this$0 = MyWazeNativeManager.this;
                username = s;
                password = s1;
                update = flag;
                super();
            }
        });
    }

    public boolean validateNickname(String s)
    {
        return validateNicknameNTV(s);
    }

    public boolean validatePassword(String s)
    {
        return validatePasswordNTV(s);
    }















































































}
