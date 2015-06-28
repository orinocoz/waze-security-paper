// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.popups;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.RelativeLayout;
import com.waze.AppService;
import com.waze.LayoutManager;
import com.waze.MainActivity;
import com.waze.NativeManager;
import com.waze.NavBarManager;
import com.waze.PopupAction;
import com.waze.analytics.Analytics;
import com.waze.navbar.NavBar;
import com.waze.navigate.AddressItem;
import com.waze.navigate.DriveToNativeManager;
import com.waze.strings.DisplayStrings;
import com.waze.view.anim.AnimationUtils;
import com.waze.view.map.ProgressAnimation;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;

// Referenced classes of package com.waze.view.popups:
//            PopUp

public class PoiPopUp extends PopUp
{
    private static final class CompatabilityWrapper
    {

        public static void setLayerType(WebView webview)
        {
            webview.setLayerType(1, null);
        }

        private CompatabilityWrapper()
        {
        }
    }

    private static class MyJavascriptInterface
    {

        private PoiPopUp activity;

        public void processReturnValue(int i, String s)
        {
            activity.processJsReturnValue(activity.VOICE_ACTIONS_INDEX, s);
        }

        public MyJavascriptInterface(PoiPopUp poipopup)
        {
            activity = poipopup;
        }
    }

    private final class PoiBgWebClient extends WebViewClient
    {

        final PoiPopUp this$0;

        public void onPageFinished(WebView webview, String s)
        {
            Object aobj[] = new Object[2];
            aobj[0] = Boolean.valueOf(mHadError);
            aobj[1] = Boolean.valueOf(mIsLoaded);
            Log.d("WAZE", String.format("external_poi_preload:: onPageFinished:  mHadError: %s, mIsLoaded: %s", aobj));
            if (!mHadError)
            {
                mIsLoaded = true;
                super.onPageFinished(webview, s);
            }
        }

        public void onPageStarted(WebView webview, String s, Bitmap bitmap)
        {
            mIsLoaded = false;
            super.onPageStarted(webview, s, bitmap);
            Log.d("WAZE", "external_poi_preload:: onPageStarted: statring pre-loading");
        }

        public void onReceivedError(WebView webview, int i, String s, String s1)
        {
            mIsLoaded = false;
            mHadError = true;
            Object aobj[] = new Object[2];
            aobj[0] = Integer.valueOf(i);
            aobj[1] = s;
            Log.w("WAZE", String.format("external_poi_preload:: failed pre-loading url: errorCode: %d description: %s", aobj));
            super.onReceivedError(webview, i, s, s1);
        }

        private PoiBgWebClient()
        {
            this$0 = PoiPopUp.this;
            super();
        }

        PoiBgWebClient(PoiBgWebClient poibgwebclient)
        {
            this();
        }
    }

    private final class PoiWebViewClient extends WebViewClient
    {

        final PoiPopUp this$0;

        public void onPageFinished(WebView webview, String s)
        {
            super.onPageFinished(webview, s);
            mProgressAnimation.stop();
            mProgressAnimation.setVisibility(8);
            mWebView.setVisibility(0);
            mWebView.loadUrl((new StringBuilder("javascript:window.W.evalJsForAndroid(")).append(VOICE_ACTIONS_INDEX).append(",'window.W.getVoiceActions()')").toString());
        }

        public void onPageStarted(WebView webview, String s, Bitmap bitmap)
        {
            if (!mIsPreloaded)
            {
                mProgressAnimation.start();
                mProgressAnimation.setVisibility(0);
            } else
            {
                mWebView.setVisibility(0);
            }
            super.onPageStarted(webview, s, bitmap);
        }

        public boolean shouldOverrideUrlLoading(WebView webview, String s)
        {
            PoiPopUp.mLayoutManager.SetPopUpInterrupt(true);
            if (s.contains("tel:"))
            {
                Analytics.logAdsContext("ADS_POPUP_PHONE_CLICKED");
                Intent intent = new Intent("android.intent.action.DIAL", Uri.parse(s.substring(s.indexOf("tel:"), s.length())));
                final MainActivity activity = AppService.getMainActivity();
                activity.runOnUiThread(intent. new Runnable() {

                    final PoiWebViewClient this$1;
                    private final Activity val$activity;
                    private final Intent val$intent;

                    public void run()
                    {
                        mAnalyticsAdsNotifyClose = false;
                        PoiPopUp.mLayoutManager.callCloseAllPopups(1);
                        activity.startActivity(intent);
                    }

            
            {
                this$1 = final_poiwebviewclient;
                activity = activity1;
                intent = Intent.this;
                super();
            }
                });
            } else
            {
                if (s.contains("external_poi_nav"))
                {
                    AppService.getMainActivity().runOnUiThread(new Runnable() {

                        final PoiWebViewClient this$1;

                        public void run()
                        {
                            onNavigateButton();
                        }

            
            {
                this$1 = PoiWebViewClient.this;
                super();
            }
                    });
                    return true;
                }
                if (s.contains("external_poi_info"))
                {
                    AppService.getMainActivity().runOnUiThread(new Runnable() {

                        final PoiWebViewClient this$1;

                        public void run()
                        {
                            onPromotionButton();
                        }

            
            {
                this$1 = PoiWebViewClient.this;
                super();
            }
                    });
                    return true;
                }
                NativeManager nativemanager = AppService.getNativeManager();
                String s1;
                try
                {
                    s1 = URLDecoder.decode(s.toString(), "UTF-8");
                }
                catch (UnsupportedEncodingException unsupportedencodingexception)
                {
                    return true;
                }
                if (!nativemanager.UrlHandler(s1))
                {
                    webview.loadUrl(s1);
                    return true;
                }
            }
            return true;
        }


        private PoiWebViewClient()
        {
            this$0 = PoiPopUp.this;
            super();
        }

        PoiWebViewClient(PoiWebViewClient poiwebviewclient)
        {
            this();
        }
    }


    private static Context mContext = null;
    private static int mId;
    private static PoiPopUp mInstance;
    private static boolean mIsShown = false;
    private static int mLat;
    private static LayoutManager mLayoutManager;
    private static int mLon;
    private static int mServerId;
    private static boolean mTimerSet = false;
    private static String mVenueContext = null;
    private static String mVenueID = null;
    private static int mX;
    private static int mY;
    private int VOICE_ACTIONS_INDEX;
    private String mAddress;
    private boolean mAnalyticsAdsNotifyClose;
    private boolean mHadError;
    private int mHeight;
    private String mInfoUrl;
    private boolean mIsLoaded;
    private boolean mIsNavigateable;
    private boolean mIsPreloaded;
    private String mPopupUrl;
    private ProgressAnimation mProgressAnimation;
    private String mPromotionUrl;
    private List mResults;
    private Runnable mVenuGetFailRunnable;
    private Handler mVenueGetHandler;
    private boolean mWasWebviewInitilized;
    private WebView mWebView;

    private PoiPopUp(Context context, LayoutManager layoutmanager)
    {
        super(context, layoutmanager);
        mAddress = null;
        mProgressAnimation = null;
        mWebView = null;
        mPopupUrl = null;
        mInfoUrl = null;
        VOICE_ACTIONS_INDEX = 1;
        mPromotionUrl = null;
        mIsNavigateable = true;
        mIsPreloaded = false;
        mIsLoaded = false;
        mResults = null;
        mAnalyticsAdsNotifyClose = true;
        mWasWebviewInitilized = false;
        mContext = context;
        mResults = new ArrayList();
        mLayoutManager = layoutmanager;
        init();
    }

    public static PoiPopUp getInstance(Context context, LayoutManager layoutmanager)
    {
        if (mInstance == null)
        {
            mInstance = new PoiPopUp(context, layoutmanager);
        }
        return mInstance;
    }

    public static boolean hasInstance()
    {
        return mInstance != null;
    }

    private void hideDlg()
    {
        android.view.animation.Animation.AnimationListener animationlistener = new android.view.animation.Animation.AnimationListener() {

            final PoiPopUp this$0;

            public void onAnimationEnd(Animation animation)
            {
                post(new Runnable() {

                    final _cls2 this$1;

                    public void run()
                    {
                        hide();
                    }

            
            {
                this$1 = _cls2.this;
                super();
            }
                });
            }

            public void onAnimationRepeat(Animation animation)
            {
            }

            public void onAnimationStart(Animation animation)
            {
            }


            
            {
                this$0 = PoiPopUp.this;
                super();
            }
        };
        AnimationUtils.closeAnimateToPoint(this, mX, mY, 300, animationlistener);
    }

    private void init()
    {
        ((LayoutInflater)getContext().getSystemService("layout_inflater")).inflate(0x7f0300b7, this);
    }

    private void onNavigateButton()
    {
        mAnalyticsAdsNotifyClose = true;
        final NativeManager nm = NativeManager.getInstance();
        final DriveToNativeManager dtnm = DriveToNativeManager.getInstance();
        Analytics.logAdsContext("ADS_POPUP_NAVIGATE");
        Analytics.adsContextNavigationInit();
        nm.OpenProgressPopup(nm.getLanguageString(DisplayStrings.DS_PLEASE_WAIT___));
        mVenueGetHandler = new Handler() {

            final PoiPopUp this$0;
            private final DriveToNativeManager val$dtnm;

            public void handleMessage(Message message)
            {
                AddressItem addressitem;
label0:
                {
                    if (message.what == DriveToNativeManager.UH_SEARCH_ADD_RESULT)
                    {
                        NativeManager.getInstance().CloseProgressPopup();
                        mVenueGetHandler.removeCallbacks(mVenuGetFailRunnable);
                        addressitem = (AddressItem)message.getData().getSerializable("address_item");
                        dtnm.unsetUpdateHandler(DriveToNativeManager.UH_SEARCH_ADD_RESULT, mVenueGetHandler);
                        if (!addressitem.getLocationX().equals(Integer.valueOf(-1)) || !addressitem.getLocationY().equals(Integer.valueOf(-1)))
                        {
                            break label0;
                        }
                        if (mVenuGetFailRunnable != null)
                        {
                            mVenuGetFailRunnable.run();
                            mVenuGetFailRunnable = null;
                        }
                    }
                    return;
                }
                mVenuGetFailRunnable = null;
                PoiPopUp.mLayoutManager.callCloseAllPopups(1);
                dtnm.navigate(addressitem, null, false, true);
                Analytics.adsContextNavigationInit();
            }

            
            {
                this$0 = PoiPopUp.this;
                dtnm = drivetonativemanager;
                super();
            }
        };
        dtnm.setUpdateHandler(DriveToNativeManager.UH_SEARCH_ADD_RESULT, mVenueGetHandler);
        nm.AutoCompletePlaceClicked(mVenueID, null, null, mVenueContext, false, null, false, 0, null, null);
        mVenuGetFailRunnable = new Runnable() {

            final PoiPopUp this$0;
            private final DriveToNativeManager val$dtnm;
            private final NativeManager val$nm;

            public void run()
            {
                dtnm.unsetUpdateHandler(DriveToNativeManager.UH_SEARCH_ADD_RESULT, mVenueGetHandler);
                nm.CloseProgressPopup();
                NativeManager.Post(new Runnable() {

                    final _cls4 this$1;

                    public void run()
                    {
                        AppService.getNativeManager().navigateToExternalPoiNTV(PoiPopUp.mLat, PoiPopUp.mLon, PoiPopUp.mServerId, PoiPopUp.mVenueID, PoiPopUp.mVenueContext);
                    }

            
            {
                this$1 = _cls4.this;
                super();
            }
                });
                PoiPopUp.mLayoutManager.callCloseAllPopups(1);
            }

            
            {
                this$0 = PoiPopUp.this;
                dtnm = drivetonativemanager;
                nm = nativemanager;
                super();
            }
        };
        mVenueGetHandler.postDelayed(mVenuGetFailRunnable, nm.getVenueGetTimeout());
    }

    private void onPromotionButton()
    {
        mAnalyticsAdsNotifyClose = false;
        mLayoutManager.callCloseAllPopups(1);
        AddressItem addressitem = new AddressItem(Integer.valueOf(mLon), Integer.valueOf(mLat), mAddress, "", "", null, null, null, Integer.valueOf(99), null, Integer.valueOf(6), mInfoUrl, mPromotionUrl, null, null, null, null, null, null, null, null);
        if (AppService.getMainActivity() != null)
        {
            AppService.getMainActivity().OpenAddressPreview(addressitem, mVenueID, mVenueContext, null, 0, null, null);
        }
    }

    private void processJsReturnValue(int i, String s)
    {
        if (s != null) goto _L2; else goto _L1
_L1:
        NativeManager.getInstance().SetVoiceActionsStr(mResults.toArray());
        if (GetTimer() <= 0)
        {
            NativeManager.getInstance().PopupAction(PopupAction.popup_shown.ordinal(), 0, 0);
        }
_L4:
        return;
_L2:
        JSONArray jsonarray = new JSONArray(s);
        int j = 0;
_L5:
        if (j < jsonarray.length())
        {
            break MISSING_BLOCK_LABEL_99;
        }
        NativeManager.getInstance().SetVoiceActionsStr(mResults.toArray());
        if (GetTimer() > 0) goto _L4; else goto _L3
_L3:
        NativeManager.getInstance().PopupAction(PopupAction.popup_shown.ordinal(), 0, 0);
        return;
        mResults.add((String)jsonarray.get(j));
        j++;
          goto _L5
        JSONException jsonexception;
        jsonexception;
        if (GetTimer() > 0) goto _L4; else goto _L6
_L6:
        NativeManager.getInstance().PopupAction(PopupAction.popup_shown.ordinal(), 0, 0);
        return;
        Exception exception;
        exception;
        if (GetTimer() <= 0)
        {
            NativeManager.getInstance().PopupAction(PopupAction.popup_shown.ordinal(), 0, 0);
        }
        throw exception;
    }

    private void stopCloseTimer()
    {
    }

    public int GetHeight()
    {
        int i = super.GetHeight();
        if (mHeight < i)
        {
            return i;
        } else
        {
            return mHeight;
        }
    }

    public View GetView(int i, String s, String s1, String s2, int j, int k, int l, 
            int i1, int j1, boolean flag, String s3, int k1, int l1, String s4, 
            String s5)
    {
        if (mIsShown)
        {
            mLayoutManager.callCloseAllPopups(0);
        }
        mIsShown = true;
        mResults.clear();
        mId = i;
        mX = j;
        mAddress = s3;
        mY = k;
        mLat = l;
        mLon = i1;
        mPopupUrl = s;
        mInfoUrl = s1;
        mServerId = l1;
        mPromotionUrl = s2;
        mAnalyticsAdsNotifyClose = true;
        mIsNavigateable = flag;
        mVenueContext = s5;
        mVenueID = s4;
        DisplayMetrics displaymetrics;
        int i2;
        float f;
        int j2;
        if (j1 != -1)
        {
            setCloseTime(j1);
        } else
        {
            mIsPreloaded = false;
            mIsLoaded = false;
        }
        displaymetrics = new DisplayMetrics();
        ((WindowManager)mContext.getSystemService("window")).getDefaultDisplay().getMetrics(displaymetrics);
        i2 = k1 + 15;
        f = mContext.getResources().getDisplayMetrics().density;
        mHeight = (int)(f * (float)i2);
        j2 = (int)(340F * f);
        findViewById(0x7f09054d).setLayoutParams(new android.widget.RelativeLayout.LayoutParams(j2, GetHeight()));
        findViewById(0x7f09054d).setPadding(0, 0, 0, 0);
        mWebView = (WebView)findViewById(0x7f0901c5);
        mWebView.getSettings().setJavaScriptEnabled(true);
        if (!mWasWebviewInitilized)
        {
            mWebView.addJavascriptInterface(new MyJavascriptInterface(this), "androidInterface");
            mWasWebviewInitilized = true;
        }
        mProgressAnimation = (ProgressAnimation)findViewById(0x7f0901c4);
        mWebView.loadUrl(mPopupUrl);
        mWebView.setVisibility(8);
        mWebView.setWebViewClient(new PoiWebViewClient(null));
        mWebView.setBackgroundColor(0);
        mWebView.setOnTouchListener(new android.view.View.OnTouchListener() {

            final PoiPopUp this$0;

            public boolean onTouch(View view, MotionEvent motionevent)
            {
                PoiPopUp.mLayoutManager.SetPopUpInterrupt(false);
                return false;
            }

            
            {
                this$0 = PoiPopUp.this;
                super();
            }
        });
        if (android.os.Build.VERSION.SDK_INT > 13)
        {
            CompatabilityWrapper.setLayerType(mWebView);
        }
        return mInstance;
    }

    public void SetAction(String s)
    {
        mWebView.loadUrl((new StringBuilder("javascript:window.W.triggerVoiceAction(\"")).append(s).append("\")").toString());
    }

    public void hide()
    {
        mIsShown = false;
        mIsPreloaded = false;
        mLayoutManager.dismiss(mInstance);
        NativeManager.Post(new Runnable() {

            final PoiPopUp this$0;

            public void run()
            {
                AppService.getNativeManager().externalPoiClosedNTV(mAnalyticsAdsNotifyClose);
            }

            
            {
                this$0 = PoiPopUp.this;
                super();
            }
        });
    }

    public boolean isPreloaded(int i)
    {
        return mId == i && mIsLoaded;
    }

    public void onBackPressed()
    {
        mLayoutManager.callCloseAllPopups(1);
    }

    public void prepare(int i, String s)
    {
        mWebView = (WebView)findViewById(0x7f0901c5);
        mWebView.setWebViewClient(new PoiBgWebClient(null));
        mWebView.getSettings().setJavaScriptEnabled(true);
        mId = i;
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(i);
        Log.d("WAZE", String.format("external_poi_preload:: prepare loaging iID: %d", aobj));
        mWebView.loadUrl(s);
        mIsPreloaded = true;
        mIsLoaded = false;
    }

    public void setCloseTime(int i)
    {
    }

    public void show(int i, String s, String s1, String s2, int j, int k, int l, 
            int i1, int j1, boolean flag, String s3)
    {
        if (mIsShown)
        {
            mInstance.hide();
        }
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(i);
        Log.d("WAZE", String.format("external_poi_preload:: show iID: %d", aobj));
        mIsShown = true;
        mResults.clear();
        mId = i;
        mX = j;
        mAddress = s3;
        mY = k;
        mLat = l;
        mLon = i1;
        mPopupUrl = s;
        mInfoUrl = s1;
        mPromotionUrl = s2;
        mAnalyticsAdsNotifyClose = true;
        mIsNavigateable = flag;
        DisplayMetrics displaymetrics;
        if (j1 != -1)
        {
            setCloseTime(j1);
        } else
        {
            mIsPreloaded = false;
            mIsLoaded = false;
        }
        if (NativeManager.getInstance().isNavigatingNTV())
        {
            RelativeLayout relativelayout = (RelativeLayout)findViewById(0x7f09054d);
            android.widget.RelativeLayout.LayoutParams layoutparams = (android.widget.RelativeLayout.LayoutParams)relativelayout.getLayoutParams();
            NavBar navbar = NativeManager.getInstance().getNavBarManager().getNavBar();
            int k1 = 0;
            if (navbar != null)
            {
                k1 = navbar.getNavBarHeight();
            }
            layoutparams.setMargins(0, k1, 0, 0);
            relativelayout.setLayoutParams(layoutparams);
        }
        displaymetrics = new DisplayMetrics();
        ((WindowManager)mContext.getSystemService("window")).getDefaultDisplay().getMetrics(displaymetrics);
        if (displaymetrics.widthPixels > 680)
        {
            findViewById(0x7f09054d).setBackgroundResource(0x7f020036);
            findViewById(0x7f09054d).setPadding((int)(12F * displaymetrics.density), 0, (int)(12F * displaymetrics.density), 0);
        } else
        {
            findViewById(0x7f09054d).setBackgroundResource(0x7f020035);
            findViewById(0x7f09054d).setPadding(0, 0, 0, 0);
        }
        mWebView = (WebView)findViewById(0x7f0901c5);
        mWebView.getSettings().setJavaScriptEnabled(true);
        if (!mWasWebviewInitilized)
        {
            mWebView.addJavascriptInterface(new MyJavascriptInterface(this), "androidInterface");
            mWasWebviewInitilized = true;
        }
        mLayoutManager.addView(this);
        AnimationUtils.openAnimateFromPoint(this, j, k, 300);
        mProgressAnimation = (ProgressAnimation)findViewById(0x7f0901c4);
        mWebView.loadUrl(mPopupUrl);
        mWebView.setVisibility(8);
        mWebView.setWebViewClient(new PoiWebViewClient(null));
        mWebView.setBackgroundColor(0);
        if (android.os.Build.VERSION.SDK_INT > 13)
        {
            CompatabilityWrapper.setLayerType(mWebView);
        }
    }























}
