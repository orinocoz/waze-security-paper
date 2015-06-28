// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import android.util.Log;
import com.waze.AppService;
import com.waze.ConfigItem;
import com.waze.ConfigManager;
import com.waze.NativeManager;
import com.waze.ifs.async.RunnableExecutor;
import com.waze.ifs.async.RunnableUICallback;
import com.waze.strings.DisplayStrings;
import com.waze.user.FriendUserData;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

// Referenced classes of package com.waze.share:
//            ShareFbMainData, ShareFbQueries, ShareConstants

public final class ShareNativeManager
    implements com.waze.ConfigManager.IConfigUpdater
{
    public static interface IShareFbLocationDataHandler
    {

        public abstract void onFbLocationData(String s);
    }

    public static interface IShareFbMainDataHandler
    {

        public abstract void onFbMainData(ShareFbMainData sharefbmaindata);
    }

    public static interface IShareFbWithDataHandler
    {

        public abstract void onFbWithData(String s, String s1);
    }


    public static final float METER_TO_MILES_FACTOR = 0.000621371F;
    private static ShareNativeManager mInstance = null;
    private boolean mFacebookFeatureEnabled;
    private boolean mFoursquareFeatureEnabled;
    private volatile boolean mMetricUnits;
    private String mShareUserPrerfixUrl;
    private boolean mTwitterFeatureEnabled;

    public ShareNativeManager()
    {
        mFacebookFeatureEnabled = false;
        mTwitterFeatureEnabled = false;
        mFoursquareFeatureEnabled = false;
        mShareUserPrerfixUrl = null;
        mMetricUnits = true;
    }

    private native void InitNativeLayerNTV();

    public static ShareNativeManager create()
    {
        if (mInstance == null)
        {
            mInstance = new ShareNativeManager();
            mInstance.initNativeLayer();
            mInstance.initConfig();
        }
        return mInstance;
    }

    private native String getDestinationNameNTV();

    public static ShareNativeManager getInstance()
    {
        create();
        return mInstance;
    }

    private native String getLocationNTV(boolean flag);

    private native String getNickNameNTV();

    private void initConfig()
    {
        RunnableExecutor runnableexecutor = new RunnableExecutor(AppService.getInstance()) {

            final ShareNativeManager this$0;

            public void event()
            {
                ArrayList arraylist = new ArrayList();
                arraylist.add(0, ShareConstants.CFG_ITEM_SHARE_FB_FEATURE_ENABLED);
                arraylist.add(1, ShareConstants.CFG_ITEM_SHARE_TWITTER_FEATURE_ENABLED);
                arraylist.add(2, ShareConstants.CFG_ITEM_SHARE_FOURSQUARE_FEATURE_ENABLED);
                arraylist.add(3, ShareConstants.CFG_ITEM_SHARE_FB_USER_SHARE_PREFIX);
                ConfigManager.getInstance().getConfig(ShareNativeManager.this, arraylist, "");
            }

            
            {
                this$0 = ShareNativeManager.this;
                super(executor);
            }
        };
        if (NativeManager.IsAppStarted())
        {
            runnableexecutor.run();
            return;
        } else
        {
            NativeManager.registerOnAppStartedEvent(runnableexecutor);
            return;
        }
    }

    private void initNativeLayer()
    {
        NativeManager.Post(new Runnable() {

            final ShareNativeManager this$0;

            public void run()
            {
                InitNativeLayerNTV();
            }

            
            {
                this$0 = ShareNativeManager.this;
                super();
            }
        });
    }

    private native boolean isMetricUnitsNTV();

    public native String getEtaNTV();

    public boolean getFBFeatureEnabled()
    {
        return mFacebookFeatureEnabled;
    }

    public boolean getFsqFeatureEnabled()
    {
        return mFoursquareFeatureEnabled;
    }

    public native FriendUserData getReceivedLocationSender();

    public void getShareFbLocationData(final IShareFbLocationDataHandler dataHandler)
    {
        NativeManager.Post(new RunnableUICallback() {

            String mTitle;
            final ShareNativeManager this$0;
            private final IShareFbLocationDataHandler val$dataHandler;

            public void callback()
            {
                if (dataHandler != null)
                {
                    dataHandler.onFbLocationData(mTitle);
                }
            }

            public void event()
            {
                mTitle = NativeManager.getInstance().getLanguageString(DisplayStrings.DS_LOCATION);
            }

            
            {
                this$0 = ShareNativeManager.this;
                dataHandler = isharefblocationdatahandler;
                super();
            }
        });
    }

    public void getShareFbMainData(final IShareFbMainDataHandler dataHandler, final boolean shareDestination)
    {
        NativeManager.Post(new RunnableUICallback() {

            final ShareFbMainData mData = new ShareFbMainData();
            final ShareNativeManager this$0;
            private final IShareFbMainDataHandler val$dataHandler;
            private final boolean val$shareDestination;

            public void callback()
            {
                if (dataHandler != null)
                {
                    dataHandler.onFbMainData(mData);
                }
            }

            public void event()
            {
                NativeManager nativemanager = NativeManager.getInstance();
                mData.title = nativemanager.getLanguageString(DisplayStrings.DS_SHARE);
                mData.hint = nativemanager.getLanguageString(DisplayStrings.DS_SAY_ANYTHING___);
                mData.post_to_fb = nativemanager.getLanguageString(DisplayStrings.DS_POST_TO_FACEBOOK);
                mData.postMsgBoxSuccessTitle = nativemanager.getLanguageString(DisplayStrings.DS_GREAT_X);
                mData.postMsgBoxSuccessText = nativemanager.getLanguageString(DisplayStrings.DS_THE_POST_WAS_PUBLISHED);
                mData.postMsgBoxFailureTitle = nativemanager.getLanguageString(DisplayStrings.DS_UHHOHE);
                mData.postMsgBoxFailureText = nativemanager.getLanguageString(DisplayStrings.DS_THE_POST_COULD_NOT_BE_PUBLISHED);
                mData.isNavigating = nativemanager.isNavigatingNTV();
                mData.location = getLocationNTV(shareDestination);
                mData.nickname = getNickNameNTV();
                mData.eta = getEtaNTV();
                mMetricUnits = isMetricUnitsNTV();
            }

            
            {
                this$0 = ShareNativeManager.this;
                shareDestination = flag;
                dataHandler = isharefbmaindatahandler;
                super();
            }
        });
    }

    public void getShareFbWithData(final IShareFbWithDataHandler dataHandler)
    {
        NativeManager.Post(new RunnableUICallback() {

            String mHint;
            String mTitle;
            final ShareNativeManager this$0;
            private final IShareFbWithDataHandler val$dataHandler;

            public void callback()
            {
                if (dataHandler != null)
                {
                    dataHandler.onFbWithData(mTitle, mHint);
                }
            }

            public void event()
            {
                NativeManager nativemanager = NativeManager.getInstance();
                mTitle = nativemanager.getLanguageString(DisplayStrings.DS_WITH);
                mHint = nativemanager.getLanguageString(DisplayStrings.DS_SEARCH_FRIENDS);
            }

            
            {
                this$0 = ShareNativeManager.this;
                dataHandler = isharefbwithdatahandler;
                super();
            }
        });
    }

    public String getShareUserPrerfixUrl()
    {
        return mShareUserPrerfixUrl;
    }

    public boolean getTwitterFeatureEnabled()
    {
        return mTwitterFeatureEnabled;
    }

    public boolean isMetricUnits()
    {
        return mMetricUnits;
    }

    public native boolean isOkToShowShareDriveTip();

    public native void makeItOkToShowShareDriveTip();

    public void shareFbDialogShow()
    {
        AppService.Post(new Runnable() {

            final ShareNativeManager this$0;

            public void run()
            {
                com.waze.ifs.ui.ActivityBase activitybase = AppService.getActiveActivity();
                if (activitybase != null)
                {
                    ShareFbQueries.postDialogShow(activitybase);
                }
            }

            
            {
                this$0 = ShareNativeManager.this;
                super();
            }
        });
    }

    public native void shownReceivedLocationShareTip();

    public native void shownShareDriveTip();

    public void updateConfigItems(List list)
    {
        mFacebookFeatureEnabled = ((ConfigItem)list.get(0)).getValue().equals("yes");
        mTwitterFeatureEnabled = ((ConfigItem)list.get(1)).getValue().equals("yes");
        mFoursquareFeatureEnabled = ((ConfigItem)list.get(2)).getValue().equals("yes");
        mShareUserPrerfixUrl = ((ConfigItem)list.get(3)).getValue();
        Log.d("WAZE", (new StringBuilder("Got ShareConfig values: FB: ")).append(mFacebookFeatureEnabled).toString());
    }






}
