// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Color;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.SpannableString;
import android.text.style.UnderlineSpan;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.TranslateAnimation;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.DownloadResCallback;
import com.waze.Logger;
import com.waze.MainActivity;
import com.waze.MapView;
import com.waze.MoodManager;
import com.waze.MsgBox;
import com.waze.NativeLocListener;
import com.waze.NativeManager;
import com.waze.ResManager;
import com.waze.ResourceDownloadType;
import com.waze.WzWebView;
import com.waze.analytics.Analytics;
import com.waze.ifs.async.RunnableExecutor;
import com.waze.ifs.ui.ActivityBase;
import com.waze.ifs.ui.EditTextDialogActivity;
import com.waze.ifs.ui.ObservableScrollView;
import com.waze.ifs.ui.OmniSelectionActivity;
import com.waze.ifs.ui.SimpleChoiceActivity;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.phone.PhoneNumberSignInActivity;
import com.waze.phone.PhoneRequestAccessDialog;
import com.waze.reports.EditPlaceFlowActivity;
import com.waze.reports.EditPlaceServicesFragment;
import com.waze.reports.OpeningHours;
import com.waze.reports.PhotoPagerSection;
import com.waze.reports.PlacePhotoGallery;
import com.waze.reports.UpdatePriceActivity;
import com.waze.reports.VenueData;
import com.waze.settings.DrillDownSettingView;
import com.waze.settings.SettingsNativeManager;
import com.waze.settings.SettingsTitleText;
import com.waze.settings.SettingsValue;
import com.waze.share.FacebookEventPostActivity;
import com.waze.share.ShareUtility;
import com.waze.social.facebook.FacebookWrapper;
import com.waze.strings.DisplayStrings;
import com.waze.utils.ImageRepository;
import com.waze.view.map.ProgressAnimation;
import com.waze.view.text.WazeTextView;
import com.waze.view.title.TitleBar;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Locale;
import org.json.JSONObject;

// Referenced classes of package com.waze.navigate:
//            DriveToNavigateCallback, AddressItem, DriveToNativeManager, Product, 
//            AddFavoriteNameActivity

public final class AddressPreviewActivity extends ActivityBase
    implements DriveToNavigateCallback
{
    private final class ScrollAndTouchListener
        implements android.view.View.OnTouchListener, com.waze.ifs.ui.ObservableScrollView.OnScrollListener
    {

        private boolean _isMapOpen;
        private boolean _isTouched;
        private final float density;
        private final int frameHeight;
        private final int lockHeight;
        private final ObservableScrollView osv;
        final AddressPreviewActivity this$0;

        private void lockScrollTo(int i)
        {
            osv.post(i. new Runnable() {

                final ScrollAndTouchListener this$1;
                private final int val$y;

                public void run()
                {
                    osv.smoothScrollTo(0, y);
                    ScrollAndTouchListener scrollandtouchlistener = ScrollAndTouchListener.this;
                    int i = y;
                    boolean flag = false;
                    if (i == 0)
                    {
                        flag = true;
                    }
                    scrollandtouchlistener._isMapOpen = flag;
                }

            
            {
                this$1 = final_scrollandtouchlistener;
                y = I.this;
                super();
            }
            });
        }

        public void onScrollChanged(ObservableScrollView observablescrollview, int i, int j, int k, int l)
        {
            if (!_isTouched)
            {
                if (j < lockHeight && l >= lockHeight)
                {
                    osv.scrollTo(0, lockHeight);
                    return;
                }
                if (j > lockHeight && l <= lockHeight)
                {
                    osv.scrollTo(0, lockHeight);
                    return;
                }
            }
            if (j < lockHeight)
            {
                int i1 = (int)(-LS_Y_FACTOR * (float)j);
                int j1 = 1000 + (j * 1000) / lockHeight;
                mDtnMgr.zoomOnMap(mAddressItem.getLocationX().intValue(), i1 + mAddressItem.getLocationY().intValue(), j1);
                mPlaceImagesFrame.setTranslationX((2 * ((lockHeight - j) * mPlaceImagesFrame.getWidth())) / lockHeight);
                mMapMask.setBackgroundColor(Color.argb(0, 0, 0, 0));
                return;
            }
            if (j < frameHeight)
            {
                mMapMask.setBackgroundColor(Color.argb((255 * (j - lockHeight)) / (frameHeight - lockHeight), 0, 0, 0));
                mDtnMgr.setScreenFreeze(false);
                mPlaceImagesFrame.setTranslationX(0.0F);
                mDtnMgr.zoomOnMap(mAddressItem.getLocationX().intValue(), mAddressItem.getLocationY().intValue() - (int)(LS_Y_FACTOR * (float)lockHeight), 2000);
                return;
            } else
            {
                mDtnMgr.setScreenFreeze(true);
                return;
            }
        }

        public boolean onTouch(View view, MotionEvent motionevent)
        {
            if (motionevent.getAction() != 1 && motionevent.getAction() != 3) goto _L2; else goto _L1
_L1:
            float f;
            _isTouched = false;
            f = osv.getScrollY();
            if (!_isMapOpen) goto _L4; else goto _L3
_L3:
            if (f >= (float)frameHeight - 120F * density) goto _L6; else goto _L5
_L5:
            if (f <= ((float)frameHeight - 120F * density) / 4F) goto _L8; else goto _L7
_L7:
            lockScrollTo(lockHeight);
_L6:
            return false;
_L8:
            lockScrollTo(0);
            return false;
_L4:
            if (f < (float)frameHeight - 120F * density)
            {
                if (f > (3F * ((float)frameHeight - 120F * density)) / 4F)
                {
                    lockScrollTo(lockHeight);
                    return false;
                } else
                {
                    lockScrollTo(0);
                    return false;
                }
            }
            continue; /* Loop/switch isn't completed */
_L2:
            if (motionevent.getAction() == 0 || motionevent.getAction() == 2)
            {
                _isTouched = true;
                return false;
            }
            if (true) goto _L6; else goto _L9
_L9:
        }




        private ScrollAndTouchListener(int i, float f, int j, ObservableScrollView observablescrollview)
        {
            this$0 = AddressPreviewActivity.this;
            super();
            _isMapOpen = false;
            _isTouched = false;
            lockHeight = i;
            density = f;
            frameHeight = j;
            osv = observablescrollview;
        }

        ScrollAndTouchListener(int i, float f, int j, ObservableScrollView observablescrollview, ScrollAndTouchListener scrollandtouchlistener)
        {
            this(i, f, j, observablescrollview);
        }
    }

    private class WebViewInterface
    {

        final AddressPreviewActivity this$0;

        public void onError(String s)
        {
            Logger.e((new StringBuilder("callJavaScript - onError(")).append(s).append(")").toString());
        }

        public void onLogAnalyticsAds(String s)
        {
            logAnalyticsAds(s);
        }

        public void onResponse(int i, int j)
        {
            Logger.d((new StringBuilder("callJavaScript - onResponse(")).append(i).append(", ").append(j).append(")").toString());
            if (i == 1)
            {
                post(j. new Runnable() {

                    final WebViewInterface this$1;
                    private final int val$res;

                    public void run()
                    {
                        android.view.ViewGroup.LayoutParams layoutparams = mWebView.getLayoutParams();
                        layoutparams.height = (int)((float)res * mDensity);
                        mWebView.setLayoutParams(layoutparams);
                        mWebView.requestLayout();
                    }

            
            {
                this$1 = final_webviewinterface;
                res = I.this;
                super();
            }
                });
            }
        }


        private WebViewInterface()
        {
            this$0 = AddressPreviewActivity.this;
            super();
        }

        WebViewInterface(WebViewInterface webviewinterface)
        {
            this();
        }
    }


    private static final int RQ_EDIT_PLACE = 109;
    private static final int RQ_FLAG_DUPLICATE_FIND = 107;
    private static final int RQ_FLAG_MOVED_CLOSED = 108;
    private static final int RQ_FLAG_WRONG = 106;
    private static final int RQ_MISC = 333;
    private static final int RQ_REGISTER = 111;
    private static final int WEBVIEW_RQ_SET_OFFER = 1;
    private float LS_X_FACTOR;
    private float LS_Y_FACTOR;
    private AddressItem mAddressItem;
    private ArrayList mAddressItemList;
    private com.waze.NativeManager.AdsActiveContext mAdsCtx;
    private float mDensity;
    private DriveToNativeManager mDtnMgr;
    private AddressItem mEventAddressItem;
    private int mFlagType;
    private int mFrameHeight;
    private PlacePhotoGallery mGallery;
    private ArrayList mImageArray;
    private boolean mIsAdditionalAddToFavorites;
    private boolean mIsClearAdsContext;
    private boolean mIsMapBig;
    private android.view.animation.Animation.AnimationListener mLandscapeAnimateMapClosedListener;
    private android.view.animation.Animation.AnimationListener mLandscapeAnimateMapOpenListener;
    private int mLockHeight;
    private ImageView mLogoImg;
    private int mMapCovered;
    private ViewGroup mMapLayout;
    private View mMapMask;
    private MapView mMapView;
    private NativeManager mNatMgr;
    private final RunnableExecutor mNativeCanvasReadyEvent = new RunnableExecutor() {

        final AddressPreviewActivity this$0;

        public void event()
        {
            setAddressOptionsView();
            final int locationX;
            int i;
            if (getResources().getConfiguration().orientation == 1)
            {
                locationX = mAddressItem.getLocationX().intValue();
                i = mAddressItem.getLocationY().intValue() - (int)(LS_Y_FACTOR * (float)mLockHeight);
            } else
            {
                locationX = mAddressItem.getLocationX().intValue() + (int)((float)mMapCovered * LS_X_FACTOR);
                i = mAddressItem.getLocationY().intValue();
            }
            postDelayed(i. new Runnable() {

                final _cls4 this$1;
                private final int val$locationX;
                private final int val$locationY;

                public void run()
                {
                    mDtnMgr.zoomOnMap(locationX, locationY, 2000);
                }

            
            {
                this$1 = final__pcls4;
                locationX = i;
                locationY = I.this;
                super();
            }
            }, 500L);
        }


            
            {
                this$0 = AddressPreviewActivity.this;
                super();
            }
    };
    private View mPlaceImagesFrame;
    private ObservableScrollView mScrollView;
    private int mSelectedItem;
    private boolean mShouldLoadVenue;
    private final com.waze.WzWebView.WebViewUrlOverride mSpecialUrlOverride = new com.waze.WzWebView.WebViewUrlOverride() {

        final AddressPreviewActivity this$0;

        public boolean onUrlOverride(WebView webview, String s)
        {
            if (s != null)
            {
                if (s.startsWith("tel:"))
                {
                    logAnalyticsAds("ADS_SPECIAL_PHONE_CLICKED");
                    Intent intent = new Intent("android.intent.action.DIAL", Uri.parse(s.substring(s.indexOf("tel:"), s.length())));
                    runOnUiThread(intent. new Runnable() {

                        final _cls3 this$1;
                        private final Intent val$intent;

                        public void run()
                        {
                            startActivity(intent);
                        }

            
            {
                this$1 = final__pcls3;
                intent = Intent.this;
                super();
            }
                    });
                    return true;
                }
                if (s.startsWith("waze://?open_url"))
                {
                    logAnalyticsAds("ADS_PREVIEW_OFFER_URL_CLICKED");
                } else
                if (s.startsWith("waze://"))
                {
                    NativeManager nativemanager = AppService.getNativeManager();
                    String s1;
                    String s2;
                    try
                    {
                        s1 = URLDecoder.decode(s.toString(), "UTF-8");
                    }
                    catch (UnsupportedEncodingException unsupportedencodingexception)
                    {
                        return true;
                    }
                    s2 = Uri.parse(s1).getQueryParameter("change_info_height");
                    if (s2 != null)
                    {
                        int i = Integer.parseInt(s2);
                        android.view.ViewGroup.LayoutParams layoutparams = mWebView.getLayoutParams();
                        int ai[] = new int[2];
                        ai[0] = layoutparams.height;
                        ai[1] = (int)((float)i * mDensity);
                        ValueAnimator valueanimator = ValueAnimator.ofInt(ai);
                        valueanimator.addUpdateListener(new android.animation.ValueAnimator.AnimatorUpdateListener() {

                            final _cls3 this$1;

                            public void onAnimationUpdate(ValueAnimator valueanimator)
                            {
                                int i = ((Integer)valueanimator.getAnimatedValue()).intValue();
                                android.view.ViewGroup.LayoutParams layoutparams = mWebView.getLayoutParams();
                                layoutparams.height = i;
                                mWebView.setLayoutParams(layoutparams);
                            }

            
            {
                this$1 = _cls3.this;
                super();
            }
                        });
                        valueanimator.setDuration(300L);
                        valueanimator.setInterpolator(new DecelerateInterpolator());
                        valueanimator.start();
                        return true;
                    }
                    if (!nativemanager.UrlHandler(s1))
                    {
                        webview.loadUrl(s1);
                    }
                    return true;
                }
            }
            return false;
        }


            
            {
                this$0 = AddressPreviewActivity.this;
                super();
            }
    };
    private boolean mWasResultSet;
    private WzWebView mWebView;
    private ProgressBar mWebViewLoadAnimation;
    private boolean mbAddressOptionsViewSet;

    public AddressPreviewActivity()
    {
        LS_Y_FACTOR = 6.3F;
        LS_X_FACTOR = 12.6F;
        mEventAddressItem = null;
        mIsMapBig = false;
        mSelectedItem = 0;
        mIsClearAdsContext = false;
        mShouldLoadVenue = false;
        mWasResultSet = false;
        mGallery = null;
        mLandscapeAnimateMapOpenListener = new android.view.animation.Animation.AnimationListener() {

            final AddressPreviewActivity this$0;

            public void onAnimationEnd(Animation animation)
            {
                android.widget.RelativeLayout.LayoutParams layoutparams = (android.widget.RelativeLayout.LayoutParams)mScrollView.getLayoutParams();
                layoutparams.rightMargin = -mMapCovered;
                mScrollView.setLayoutParams(layoutparams);
                mScrollView.clearAnimation();
            }

            public void onAnimationRepeat(Animation animation)
            {
            }

            public void onAnimationStart(Animation animation)
            {
            }

            
            {
                this$0 = AddressPreviewActivity.this;
                super();
            }
        };
        mLandscapeAnimateMapClosedListener = new android.view.animation.Animation.AnimationListener() {

            final AddressPreviewActivity this$0;

            public void onAnimationEnd(Animation animation)
            {
                android.widget.RelativeLayout.LayoutParams layoutparams = (android.widget.RelativeLayout.LayoutParams)mScrollView.getLayoutParams();
                layoutparams.rightMargin = 0;
                mScrollView.setLayoutParams(layoutparams);
                mScrollView.clearAnimation();
            }

            public void onAnimationRepeat(Animation animation)
            {
            }

            public void onAnimationStart(Animation animation)
            {
            }

            
            {
                this$0 = AddressPreviewActivity.this;
                super();
            }
        };
        mbAddressOptionsViewSet = false;
    }

    private void callJavaScript(WebView webview, int i, String s)
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("javascript:try{Android.onResponse(");
        stringbuilder.append(i);
        stringbuilder.append(",");
        stringbuilder.append(s);
        stringbuilder.append(")}catch(error){Android.onError(error.message);}");
        String s1 = stringbuilder.toString();
        Logger.d((new StringBuilder("callJavaScript: ")).append(s1).toString());
        webview.loadUrl(s1);
    }

    private boolean checkCours(int i, int j, int k, int l, int i1, int j1)
    {
        if (i >= k || i <= j) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        if (i != j || i >= k) goto _L4; else goto _L3
_L3:
        if (l >= i1) goto _L1; else goto _L5
_L5:
        return false;
_L4:
        if (i != k || i <= j)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (l >= j1) goto _L5; else goto _L6
_L6:
        return true;
        if (i != k || i != j || l >= j1 || l < i1) goto _L5; else goto _L7
_L7:
        return true;
    }

    private void fillGasPrices()
    {
        mDtnMgr.getProduct(mAddressItem.index, new DriveToNativeManager.ProductListener() {

            final AddressPreviewActivity this$0;

            public void onComplete(Product product)
            {
                if (product == null || product.labels == null || product.prices == null || product.formats == null)
                {
                    Logger.e("AddressPreviewActivity.fillGasPrices().onComplete() product is null or has null members");
                    return;
                }
                int i = product.labels.length;
                findViewById(0x7f09012e).setVisibility(0);
                TextView textview = (TextView)findViewById(0x7f09012f);
                textview.setVisibility(0);
                String s = mNatMgr.getLanguageString(DisplayStrings.DS_GAS_PRICES);
                if (product.currency != null && !product.currency.isEmpty())
                {
                    s = (new StringBuilder(String.valueOf(s))).append(" (").append(mNatMgr.getLanguageString(product.currency)).append(")").toString();
                }
                textview.setText(s);
                View view = findViewById(0x7f090130);
                view.setVisibility(0);
                int ai[] = {
                    0x7f090152, 0x7f090155, 0x7f090158, 0x7f09015b
                };
                int ai1[] = {
                    0x7f090153, 0x7f090156, 0x7f090159, 0x7f09015c
                };
                int ai2[] = {
                    0x7f090154, 0x7f090157, 0x7f09015a, 0x7f09015d
                };
                int j = 0;
                do
                {
                    TextView textview1;
                    if (j >= 4)
                    {
                        textview1 = (TextView)findViewById(0x7f090131);
                        if (product.lastUpdated != -1)
                        {
                            long l = (System.currentTimeMillis() / 1000L - (long)product.lastUpdated) / 3600L / 24L;
                            String s1;
                            if (l > 0L)
                            {
                                s1 = (new StringBuilder(String.valueOf(mNatMgr.getLanguageString(DisplayStrings.DS_LAST_UPDATE)))).append(" ").append(l).append(" ").append(mNatMgr.getLanguageString(DisplayStrings.DS_DAYS_AGO_BY)).append(" ").append(product.updatedBy).toString();
                            } else
                            if (product.updatedBy != null)
                            {
                                s1 = (new StringBuilder(String.valueOf(mNatMgr.getLanguageString(DisplayStrings.DS_LAST_UPDATE_TODAY_BY)))).append(" ").append(product.updatedBy).toString();
                            } else
                            {
                                s1 = "";
                            }
                            textview1.setVisibility(0);
                            textview1.setText(s1);
                            return;
                        }
                    } else
                    {
                        if (i > j && product.prices[j] > 0.0F)
                        {
                            ((TextView)view.findViewById(ai1[j])).setText(UpdatePriceActivity.padWithZeroRightToPeriod(product.formats[j], product.prices[j]));
                            ((TextView)view.findViewById(ai2[j])).setText(product.labels[j]);
                        } else
                        {
                            view.findViewById(ai[j]).setVisibility(8);
                        }
                        j++;
                        continue;
                    }
                    textview1.setVisibility(4);
                    return;
                } while (true);
            }

            
            {
                this$0 = AddressPreviewActivity.this;
                super();
            }
        });
    }

    private void gotoFindDuplicate()
    {
        mNatMgr.setUpdateHandler(NativeManager.UH_SEARCH_VENUES, mHandler);
        mNatMgr.venueSearch(mAddressItem.venueData.longitude, mAddressItem.venueData.latitude);
        mNatMgr.OpenProgressPopup(mNatMgr.getLanguageString(DisplayStrings.DS_PLEASE_WAIT___));
    }

    private void gotoFlagResidential()
    {
        android.content.DialogInterface.OnClickListener onclicklistener = new android.content.DialogInterface.OnClickListener() {

            final AddressPreviewActivity this$0;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                if (i == 1)
                {
                    mNatMgr.venueFlag(mAddressItem.venueData.id, mFlagType, null, null);
                    thanksForReport();
                }
            }

            
            {
                this$0 = AddressPreviewActivity.this;
                super();
            }
        };
        MsgBox.getInstance().OpenConfirmDialogCustomTimeoutCbJava(mNatMgr.getLanguageString(DisplayStrings.DS_ARE_YOU_SURE_Q), mNatMgr.getLanguageString(DisplayStrings.DS_RESIDENTIAL_PLACE_CONFIRM_DIALOG_BODY), true, onclicklistener, mNatMgr.getLanguageString(DisplayStrings.DS_RESIDENTIAL_PLACE_CONFIRM_DIALOG_YES), mNatMgr.getLanguageString(DisplayStrings.DS_CANCEL), -1);
    }

    private void gotoIappropreateOrWrongDetails(boolean flag)
    {
        Intent intent = new Intent(this, com/waze/ifs/ui/EditTextDialogActivity);
        String s = EditTextDialogActivity.ARG_TITLE_DS;
        int i;
        String s1;
        int j;
        if (flag)
        {
            i = DisplayStrings.DS_PLACE_INAPPROPRIATE.ordinal();
        } else
        {
            i = DisplayStrings.DS_PLACE_WRONG.ordinal();
        }
        intent.putExtra(s, i);
        intent.putExtra(EditTextDialogActivity.ARG_SUBTITLE_DS, DisplayStrings.DS_TELL_US_MORE.ordinal());
        s1 = EditTextDialogActivity.ARG_HINT_DS;
        if (flag)
        {
            j = DisplayStrings.DS_THIS_PLACE_IS_INAPPROPRIATE_BECAUSE___.ordinal();
        } else
        {
            j = DisplayStrings.DS_THE_DETAILS_ARE_WRONG_BECAUSE___.ordinal();
        }
        intent.putExtra(s1, j);
        intent.putExtra(EditTextDialogActivity.ARG_SINGLE_LINE, false);
        intent.putExtra(EditTextDialogActivity.ARG_MIN_LINES, 6);
        intent.putExtra(EditTextDialogActivity.ARG_SPEECH, false);
        intent.putExtra(EditTextDialogActivity.ARG_TYPE, 1);
        startActivityForResult(intent, 106);
    }

    private void gotoMovedOrClosed()
    {
        Intent intent = new Intent(this, com/waze/ifs/ui/EditTextDialogActivity);
        intent.putExtra(EditTextDialogActivity.ARG_TITLE_DS, DisplayStrings.DS_PLACE_CLOSED_MOVED.ordinal());
        intent.putExtra(EditTextDialogActivity.ARG_SUBTITLE_DS, DisplayStrings.DS_TELL_US_MORE.ordinal());
        intent.putExtra(SimpleChoiceActivity.ARG_HINT_DS, DisplayStrings.DS_ADD_COMMENT.ordinal());
        intent.putExtra(EditTextDialogActivity.ARG_SINGLE_LINE, false);
        intent.putExtra(EditTextDialogActivity.ARG_MIN_LINES, 6);
        intent.putExtra(EditTextDialogActivity.ARG_SPEECH, false);
        intent.putExtra(EditTextDialogActivity.ARG_TYPE, 1);
        startActivityForResult(intent, 108);
    }

    private void logAnalyticsAds(String s)
    {
        Analytics.logAdsContext(s);
    }

    private void refreshView()
    {
        TextView textview3;
        TextView textview4;
        View view7;
        View view8;
        View view9;
        View view10;
        boolean flag;
        TextView textview;
        TextView textview1;
        String s;
        TextView textview2;
label0:
        {
            android.view.View.OnClickListener onclicklistener;
            int i;
            android.view.View.OnClickListener onclicklistener1;
            int j;
            View view;
            View view1;
            Integer integer;
            boolean flag1;
            boolean flag2;
            android.graphics.drawable.Drawable drawable;
            android.graphics.drawable.Drawable drawable1;
            String s6;
            if (mAddressItemList != null && mAddressItemList.size() > mSelectedItem)
            {
                mAddressItem = (AddressItem)mAddressItemList.get(mSelectedItem);
                if (mAddressItem.getCategory().intValue() != 7)
                {
                    mDtnMgr.notifyAddressItemShownBeforeNavigate(mAddressItem.index);
                }
            } else
            {
                mDtnMgr.notifyAddressItemShownBeforeNavigate(mAddressItem.index);
            }
            onclicklistener = new android.view.View.OnClickListener() {

                final AddressPreviewActivity this$0;

                public void onClick(View view17)
                {
                    int j3 = mAddressItem.getType().intValue();
                    if (j3 == 1)
                    {
                        Analytics.log("DRIVE_TYPE", "VAUE", "HOME");
                    } else
                    if (j3 == 3)
                    {
                        Analytics.log("DRIVE_TYPE", "VAUE", "WORK");
                    } else
                    if (j3 == 5)
                    {
                        Analytics.log("DRIVE_TYPE", "VAUE", "OTHER_FAV");
                    }
                    logAnalyticsAds("ADS_PREVIEW_NAVIGATE");
                    Analytics.adsContextNavigationInit();
                    if (j3 != 9)
                    {
                        boolean flag5 = false;
                        if (j3 != 11)
                        {
                            flag5 = true;
                        }
                        mDtnMgr.navigate(mAddressItem, AddressPreviewActivity.this, true, flag5);
                        DriveToNativeManager.getInstance().notifyAddressItemNavigate(mAddressItem.index);
                        return;
                    } else
                    {
                        mDtnMgr.drive(mAddressItem.getMeetingId(), false);
                        navigateCallback(0);
                        return;
                    }
                }

            
            {
                this$0 = AddressPreviewActivity.this;
                super();
            }
            };
            i = mAddressItem.getCategory().intValue();
            onclicklistener1 = null;
            if (i != 7)
            {
                break label0;
            }
            if (mEventAddressItem == null)
            {
                mEventAddressItem = (AddressItem)getIntent().getExtras().getSerializable("CalendarAddressItem");
            }
            if (mEventAddressItem == null || mEventAddressItem.getIsValidate().booleanValue())
            {
                AddressItem addressitem = mAddressItem;
                onclicklistener1 = null;
                if (addressitem == null)
                {
                    break label0;
                }
                boolean flag4 = mAddressItem.getIsValidate().booleanValue();
                onclicklistener1 = null;
                if (flag4)
                {
                    break label0;
                }
            }
            s6 = mAddressItem.VanueID;
            if (s6 == null)
            {
                s6 = mEventAddressItem.VanueID;
            }
            if (s6 == null)
            {
                s6 = "";
            }
            Analytics.log("CALENDAR_OPTIONS", "ID|VENUE", (new StringBuilder(String.valueOf(mAddressItem.getMeetingId()))).append("|").append(s6).toString());
            onclicklistener1 = new android.view.View.OnClickListener() {

                final AddressPreviewActivity this$0;

                public void onClick(View view17)
                {
                    int j3;
                    if (mAddressItem.index > 0)
                    {
                        mDtnMgr.CalendarAddressVerifiedByIndex(mAddressItem.index, mAddressItem.getMeetingId());
                    } else
                    {
                        mDtnMgr.CalendarAddressVerified(mAddressItem.getAddress(), mAddressItem.getLocationX().intValue(), mAddressItem.getLocationY().intValue(), mAddressItem.getMeetingId(), mAddressItem.VanueID);
                    }
                    Analytics.log("CALENDAR_SAVE", "VAUE", mAddressItem.getMeetingId());
                    if (mEventAddressItem.getisRecurring())
                    {
                        mNatMgr.OpenProgressIconPopup(mNatMgr.getLanguageString(DisplayStrings.DS_LOCATION_SAVED_ALL_RECURRING_EVENTS), "sign_up_big_v");
                        j3 = 2000;
                    } else
                    {
                        mNatMgr.OpenProgressIconPopup(mNatMgr.getLanguageString(DisplayStrings.DS_LOCATION_SAVED), "sign_up_big_v");
                        j3 = 1000;
                    }
                    (new Handler()).postDelayed(new Runnable() {

                        final _cls12 this$1;

                        public void run()
                        {
                            mNatMgr.CloseProgressPopup();
                            Intent intent = new Intent();
                            setResult(32783, intent);
                            mWasResultSet = true;
                            finish();
                        }

            
            {
                this$1 = _cls12.this;
                super();
            }
                    }, j3);
                }


            
            {
                this$0 = AddressPreviewActivity.this;
                super();
            }
            };
            onclicklistener = new android.view.View.OnClickListener() {

                final AddressPreviewActivity this$0;

                public void onClick(View view17)
                {
                    int j3;
                    if (mAddressItem.index > 0)
                    {
                        mDtnMgr.CalendarAddressVerifiedByIndex(mAddressItem.index, mAddressItem.getMeetingId());
                    } else
                    {
                        mDtnMgr.CalendarAddressVerified(mAddressItem.getAddress(), mAddressItem.getLocationX().intValue(), mAddressItem.getLocationY().intValue(), mAddressItem.getMeetingId(), mAddressItem.VanueID);
                    }
                    Analytics.log("CALENDAR_GO", "VAUE", mAddressItem.getMeetingId());
                    Analytics.log("DRIVE_TYPE", "VAUE", "CALENDAR");
                    if (mEventAddressItem.getisRecurring())
                    {
                        mNatMgr.OpenProgressIconPopup(mNatMgr.getLanguageString(DisplayStrings.DS_LOCATION_SAVED_ALL_RECURRING_EVENTS), "sign_up_big_v");
                        j3 = 2000;
                    } else
                    {
                        mNatMgr.OpenProgressIconPopup(mNatMgr.getLanguageString(DisplayStrings.DS_LOCATION_SAVED), "sign_up_big_v");
                        j3 = 1000;
                    }
                    (new Handler()).postDelayed(new Runnable() {

                        final _cls13 this$1;

                        public void run()
                        {
                            mNatMgr.CloseProgressPopup();
                            mDtnMgr.navigate(mAddressItem, null);
                            setResult(-1);
                            mWasResultSet = true;
                            finish();
                        }

            
            {
                this$1 = _cls13.this;
                super();
            }
                    }, j3);
                }


            
            {
                this$0 = AddressPreviewActivity.this;
                super();
            }
            };
        }
        if (mAddressItem.getCategory().intValue() == 6 && (mEventAddressItem != null && !mEventAddressItem.getIsValidate().booleanValue() || mAddressItem != null && !mAddressItem.getIsValidate().booleanValue()))
        {
            onclicklistener1 = new android.view.View.OnClickListener() {

                final AddressPreviewActivity this$0;

                public void onClick(View view17)
                {
                    mDtnMgr.VerifyEventByIndex(mAddressItem.index, mAddressItem.getMeetingId(), mEventAddressItem.getId(), Boolean.valueOf(false));
                    Analytics.log("VERIFY_EVENT_SAVE_POST");
                    com.waze.social.facebook.FacebookWrapper.IOnAuthorizeCompletedListener ionauthorizecompletedlistener = new com.waze.social.facebook.FacebookWrapper.IOnAuthorizeCompletedListener() {

                        final _cls14 this$1;

                        public void onAuthorizeCompleted(boolean flag, int i)
                        {
                            if (flag)
                            {
                                Intent intent = new Intent(_fld0, com/waze/share/FacebookEventPostActivity);
                                intent.putExtra("message", mNatMgr.getLanguageString(DisplayStrings.DS_POST_EVENT_WALL_TEXT));
                                intent.putExtra("link", mNatMgr.getNavLink(mAddressItem.getLocationY().intValue(), mAddressItem.getLocationX().intValue()));
                                intent.putExtra("Id", mEventAddressItem.getMeetingId());
                                startActivityForResult(intent, 333);
                            }
                        }

            
            {
                this$1 = _cls14.this;
                super();
            }
                    };
                    if (mNatMgr.IsPublishStreamFbPermissionsNTV())
                    {
                        Intent intent = new Intent(AddressPreviewActivity.this, com/waze/share/FacebookEventPostActivity);
                        intent.putExtra("message", mNatMgr.getLanguageString(DisplayStrings.DS_POST_EVENT_WALL_TEXT));
                        intent.putExtra("link", mNatMgr.getNavLink(mAddressItem.getLocationY().intValue(), mAddressItem.getLocationX().intValue()));
                        intent.putExtra("Id", mEventAddressItem.getMeetingId());
                        startActivityForResult(intent, 333);
                        return;
                    } else
                    {
                        FacebookWrapper.getInstance().authorize_publish_stream(AddressPreviewActivity.this, ionauthorizecompletedlistener);
                        return;
                    }
                }


            
            {
                this$0 = AddressPreviewActivity.this;
                super();
            }
            };
            onclicklistener = new android.view.View.OnClickListener() {

                final AddressPreviewActivity this$0;

                public void onClick(View view17)
                {
                    mDtnMgr.VerifyEventByIndex(mAddressItem.index, mAddressItem.getMeetingId(), mEventAddressItem.getId(), Boolean.valueOf(false));
                    Analytics.log("VERIFY_EVENT_SAVE_EVENT_LOCATION");
                    Intent intent = new Intent();
                    intent.putExtra("AddressItem", mAddressItem);
                    setResult(32782, intent);
                    mWasResultSet = true;
                    finish();
                }

            
            {
                this$0 = AddressPreviewActivity.this;
                super();
            }
            };
        }
        j = mAddressItem.getType().intValue();
        if (mAddressItem.venueData == null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (mAddressItem.mIsNavigable)
        {
            findViewById(0x7f09010e).setOnClickListener(onclicklistener);
        } else
        {
            findViewById(0x7f09010e).setVisibility(8);
        }
        textview = (TextView)findViewById(0x7f09012b);
        if (mAddressItem.getTitle().equals(""))
        {
            textview.setVisibility(8);
        } else
        {
            textview.setText(mAddressItem.getTitle());
        }
        textview1 = (TextView)findViewById(0x7f09012c);
        s = mAddressItem.getAddress();
        if (mAddressItem.venueData != null && mAddressItem.venueData.details != null && !mAddressItem.venueData.details.isEmpty())
        {
            s = (new StringBuilder(String.valueOf(s))).append("\n").append(mAddressItem.venueData.details).toString();
        }
        if (s.equals(""))
        {
            textview1.setVisibility(8);
        } else
        {
            textview1.setVisibility(0);
            textview1.setText(s);
        }
        textview2 = (TextView)findViewById(0x7f09012d);
        if (mAddressItem.getDistance().equals("") || !mAddressItem.mIsNavigable)
        {
            textview2.setVisibility(8);
        } else
        {
            textview2.setVisibility(0);
            textview2.setText(mAddressItem.getDistance());
        }
        textview3 = (TextView)findViewById(0x7f090103);
        textview4 = (TextView)findViewById(0x7f090104);
        if (!flag && mAddressItem.venueData.numOpeningHours != 0) goto _L2; else goto _L1
_L1:
        textview4.setVisibility(8);
        textview3.setVisibility(8);
_L18:
        view = findViewById(0x7f090132);
        view1 = findViewById(0x7f090133);
        view.setVisibility(8);
        view1.setVisibility(8);
        View view2 = findViewById(0x7f090134);
        final AddressItem.AdvertiserData ad = mAddressItem.getAdvertiserData();
        View view3;
        View view4;
        String s1;
        View view5;
        View view6;
        int j2;
        int k2;
        int l2;
        boolean flag3;
        int i3;
        byte byte0;
        if (ad == null || ad.url == null || ad.url.isEmpty())
        {
            view2.setVisibility(8);
        } else
        {
            view2.setVisibility(0);
            ((WazeTextView)findViewById(0x7f090136)).setText(mNatMgr.getLanguageString(DisplayStrings.DS_SPECIALS));
            NativeManager.Post(new Runnable() {

                final AddressPreviewActivity this$0;

                public void run()
                {
                    mAdsCtx = mNatMgr.logAnalyticsAdsGetActiveContextNTV();
                }

            
            {
                this$0 = AddressPreviewActivity.this;
                super();
            }
            });
            mWebView = (WzWebView)findViewById(0x7f090135);
            mWebView.setFlags(0x10000);
            mWebView.setUrlOverride(mSpecialUrlOverride);
            mWebView.addJavascriptInterface(new WebViewInterface(null), "Android");
            mWebView.setPageProgressCallback(new com.waze.WzWebView.WebViewPageProgressCallback() {

                final AddressPreviewActivity this$0;
                private final AddressItem.AdvertiserData val$ad;

                public void onWebViewPageFinished()
                {
                    android.location.Location location = NativeLocListener.getInstance().getLastLocation();
                    int j3 = 0;
                    int k3 = 0;
                    if (location != null)
                    {
                        com.waze.NativeLocListener.NativeLocation nativelocation = NativeLocListener.GetNativeLocation(location);
                        k3 = nativelocation.mLongtitude;
                        j3 = nativelocation.mLatitude;
                    }
                    String s7 = "";
                    if (mAdsCtx != null)
                    {
                        s7 = mAdsCtx.event_info;
                    }
                    String s8 = (new Locale((new SettingsNativeManager()).getLanguagesLocaleNTV())).toString();
                    String s9 = "";
                    JSONObject jsonobject;
                    Object aobj[];
                    String s10;
                    String s11;
                    try
                    {
                        jsonobject = new JSONObject();
                    }
                    catch (Exception exception1)
                    {
                        continue; /* Loop/switch isn't completed */
                    }
                    jsonobject.put("sessionid", mNatMgr.getServerSessionId());
                    jsonobject.put("cookie", mNatMgr.getServerCookie());
                    jsonobject.put("venue_context", mAddressItem.venueData.context);
                    jsonobject.put("lon", k3);
                    jsonobject.put("lat", j3);
                    jsonobject.put("locale", s8);
                    jsonobject.put("rtserver-id", mNatMgr.getRTServerId());
                    jsonobject.put("source", s7);
                    s11 = jsonobject.toString();
                    s9 = s11;
_L2:
                    aobj = new Object[2];
                    aobj[0] = ad.query;
                    aobj[1] = s9;
                    s10 = String.format("W.setOffer(%s, %s)", aobj);
                    callJavaScript(mWebView, 1, s10);
                    mWebViewLoadAnimation.setVisibility(8);
                    return;
                    Exception exception;
                    exception;
                    if (true) goto _L2; else goto _L1
_L1:
                }

                public void onWebViewPageStarted()
                {
                    mWebViewLoadAnimation.setVisibility(0);
                }

            
            {
                this$0 = AddressPreviewActivity.this;
                ad = advertiserdata;
                super();
            }
            });
            mWebView.loadUrl(ad.url);
        }
        view3 = findViewById(0x7f090137);
        view4 = findViewById(0x7f090138);
        s1 = mAddressItem.getPhone();
        if (mAddressItem.venueData != null && !mAddressItem.venueData.phoneNumber.isEmpty())
        {
            s1 = mAddressItem.venueData.phoneNumber;
        }
        if (s1.isEmpty())
        {
            view3.setVisibility(8);
            view4.setVisibility(8);
        } else
        {
            view3.setVisibility(0);
            view4.setVisibility(0);
            ((TextView)findViewById(0x7f09013a)).setText(mNatMgr.getLanguageString(DisplayStrings.DS_PHONE));
            TextView textview5 = (TextView)findViewById(0x7f09013b);
            SpannableString spannablestring = new SpannableString(s1);
            spannablestring.setSpan(new UnderlineSpan(), 0, spannablestring.length(), 0);
            textview5.setText(spannablestring);
            textview5.setOnClickListener(new android.view.View.OnClickListener() {

                final AddressPreviewActivity this$0;

                public void onClick(View view17)
                {
                    String s7 = ((TextView)view17).getText().toString();
                    Logger.d((new StringBuilder("Opening dialer for: ")).append(s7).toString());
                    logAnalyticsAds("ADS_PREVIEW_PHONE_CLICKED");
                    Intent intent = new Intent("android.intent.action.DIAL");
                    intent.setData(Uri.parse((new StringBuilder("tel:")).append(s7).toString()));
                    intent.setFlags(0x10000000);
                    startActivity(intent);
                }

            
            {
                this$0 = AddressPreviewActivity.this;
                super();
            }
            });
        }
        view5 = findViewById(0x7f09013c);
        view6 = findViewById(0x7f09013d);
        if (flag || mAddressItem.venueData.website.isEmpty())
        {
            view5.setVisibility(8);
            view6.setVisibility(8);
        } else
        {
            ((TextView)findViewById(0x7f09013f)).setText(mNatMgr.getLanguageString(DisplayStrings.DS_WEBSITE));
            TextView textview6 = (TextView)findViewById(0x7f090140);
            view5.setVisibility(0);
            view6.setVisibility(0);
            String s5 = mAddressItem.venueData.website;
            if (mAddressItem.venueData.websiteDisplayText != null && !mAddressItem.venueData.websiteDisplayText.isEmpty())
            {
                s5 = mAddressItem.venueData.websiteDisplayText;
            }
            SpannableString spannablestring1 = new SpannableString(s5);
            spannablestring1.setSpan(new UnderlineSpan(), 0, spannablestring1.length(), 0);
            textview6.setText(spannablestring1);
            textview6.setOnClickListener(new android.view.View.OnClickListener() {

                final AddressPreviewActivity this$0;

                public void onClick(View view17)
                {
                    logAnalyticsAds("ADS_PREVIEW_URL_CLICKED");
                    AppService.OpenBrowser(mAddressItem.venueData.website);
                }

            
            {
                this$0 = AddressPreviewActivity.this;
                super();
            }
            });
        }
        view7 = findViewById(0x7f090141);
        view8 = findViewById(0x7f090142);
        if (!flag && mAddressItem.venueData.numServices != 0) goto _L4; else goto _L3
_L3:
        view7.setVisibility(8);
        view8.setVisibility(8);
_L21:
        view9 = findViewById(0x7f090146);
        view10 = findViewById(0x7f090147);
        if (!flag && mAddressItem.venueData.numOpeningHours != 0) goto _L6; else goto _L5
_L5:
        view9.setVisibility(8);
        view10.setVisibility(8);
_L24:
        View view11 = findViewById(0x7f09014b);
        View view12 = findViewById(0x7f09014c);
        LinearLayout linearlayout;
        int j1;
        int k1;
        OpeningHours openinghours;
        View view15;
        LinearLayout linearlayout1;
        int l1;
        int i2;
        String s3;
        String s4;
        View view16;
        android.graphics.drawable.Drawable drawable2;
        if (flag || mAddressItem.venueData.about.isEmpty())
        {
            view11.setVisibility(8);
            view12.setVisibility(8);
        } else
        {
            view11.setVisibility(0);
            view12.setVisibility(0);
            ((TextView)findViewById(0x7f09014e)).setText(mNatMgr.getLanguageString(DisplayStrings.DS_ABOUT2));
            final TextView aboutText = (TextView)findViewById(0x7f09014f);
            aboutText.setText(mAddressItem.venueData.about);
            view12.setOnClickListener(new android.view.View.OnClickListener() {

                final AddressPreviewActivity this$0;
                private final TextView val$aboutText;

                public void onClick(View view17)
                {
                    int j3 = aboutText.getHeight();
                    android.view.ViewGroup.LayoutParams layoutparams = aboutText.getLayoutParams();
                    layoutparams.height = -2;
                    aboutText.setLayoutParams(layoutparams);
                    int k3 = android.view.View.MeasureSpec.makeMeasureSpec(aboutText.getWidth(), 0x40000000);
                    int l3 = android.view.View.MeasureSpec.makeMeasureSpec(0, 0);
                    aboutText.measure(k3, l3);
                    int i4 = aboutText.getMeasuredHeight();
                    layoutparams.height = j3;
                    aboutText.setLayoutParams(layoutparams);
                    ValueAnimator valueanimator = ValueAnimator.ofInt(new int[] {
                        j3, i4
                    });
                    valueanimator.addUpdateListener(aboutText. new android.animation.ValueAnimator.AnimatorUpdateListener() {

                        final _cls20 this$1;
                        private final TextView val$aboutText;

                        public void onAnimationUpdate(ValueAnimator valueanimator)
                        {
                            int i = ((Integer)valueanimator.getAnimatedValue()).intValue();
                            android.view.ViewGroup.LayoutParams layoutparams = aboutText.getLayoutParams();
                            layoutparams.height = i;
                            aboutText.setLayoutParams(layoutparams);
                        }

            
            {
                this$1 = final__pcls20;
                aboutText = TextView.this;
                super();
            }
                    });
                    valueanimator.setDuration(300L);
                    valueanimator.setInterpolator(new DecelerateInterpolator());
                    valueanimator.addListener(aboutText. new android.animation.Animator.AnimatorListener() {

                        final _cls20 this$1;
                        private final TextView val$aboutText;

                        public void onAnimationCancel(Animator animator)
                        {
                        }

                        public void onAnimationEnd(Animator animator)
                        {
                            android.view.ViewGroup.LayoutParams layoutparams = aboutText.getLayoutParams();
                            layoutparams.height = -2;
                            aboutText.setLayoutParams(layoutparams);
                        }

                        public void onAnimationRepeat(Animator animator)
                        {
                        }

                        public void onAnimationStart(Animator animator)
                        {
                        }

            
            {
                this$1 = final__pcls20;
                aboutText = TextView.this;
                super();
            }
                    });
                    valueanimator.start();
                    AlphaAnimation alphaanimation = new AlphaAnimation(1.0F, 0.0F);
                    alphaanimation.setDuration(100L);
                    alphaanimation.setStartOffset(200L);
                    alphaanimation.setFillAfter(true);
                    findViewById(0x7f090150).startAnimation(alphaanimation);
                }

            
            {
                this$0 = AddressPreviewActivity.this;
                aboutText = textview;
                super();
            }
            });
        }
        mPlaceImagesFrame = findViewById(0x7f090109);
        if (!flag && mAddressItem.venueData.numImages != 0) goto _L8; else goto _L7
_L7:
        mPlaceImagesFrame.setVisibility(8);
_L26:
        mLogoImg = (ImageView)findViewById(0x7f090107);
        mWebViewLoadAnimation = (ProgressBar)findViewById(0x7f090108);
        integer = mAddressItem.getImage();
        final String icon = mAddressItem.mPreviewIcon;
        flag1 = mShouldLoadVenue;
        if (!flag1 && icon != null && !icon.isEmpty())
        {
            drawable1 = ResManager.GetSkinDrawable((new StringBuilder(String.valueOf(icon))).append(".bin").toString());
            View view14;
            int k;
            final ImageView placeImage;
            int l;
            int i1;
            com.waze.reports.PhotoPagerSection.VenueImage venueimage;
            ProgressAnimation progressanimation;
            if (drawable1 != null)
            {
                mLogoImg.setScaleType(android.widget.ImageView.ScaleType.FIT_CENTER);
                mLogoImg.setImageDrawable(drawable1);
                flag1 = true;
            } else
            {
                ResManager.downloadRes(ResourceDownloadType.RES_DOWNLOAD_IMAGE_JAVA.getValue(), icon, new DownloadResCallback() {

                    final AddressPreviewActivity this$0;
                    private final String val$icon;

                    public void downloadResCallback()
                    {
                        android.graphics.drawable.Drawable drawable3 = ResManager.GetSkinDrawable((new StringBuilder(String.valueOf(icon))).append(".bin").toString());
                        if (drawable3 != null)
                        {
                            mLogoImg.setScaleType(android.widget.ImageView.ScaleType.FIT_CENTER);
                            mLogoImg.setImageDrawable(drawable3);
                        }
                    }

            
            {
                this$0 = AddressPreviewActivity.this;
                icon = s;
                super();
            }
                });
            }
        }
        if (!flag1 && integer != null)
        {
            mLogoImg.setScaleType(android.widget.ImageView.ScaleType.FIT_CENTER);
            mLogoImg.setImageResource(integer.intValue());
            flag1 = true;
        }
        if (!flag1 && mAddressItem.hasIcon())
        {
            drawable = ResManager.GetSkinDrawable((new StringBuilder(String.valueOf(mAddressItem.getIcon()))).append(".bin").toString());
            if (drawable != null)
            {
                mLogoImg.setScaleType(android.widget.ImageView.ScaleType.FIT_CENTER);
                mLogoImg.setImageDrawable(drawable);
                flag1 = true;
            }
        }
        if (flag1) goto _L10; else goto _L9
_L9:
        j;
        JVM INSTR tableswitch 1 13: default 1352
    //                   1 3376
    //                   2 1352
    //                   3 3389
    //                   4 1352
    //                   5 3363
    //                   6 1352
    //                   7 1352
    //                   8 3350
    //                   9 1352
    //                   10 1352
    //                   11 3402
    //                   12 1352
    //                   13 3300;
           goto _L11 _L12 _L11 _L13 _L11 _L14 _L11 _L11 _L15 _L11 _L11 _L16 _L11 _L17
_L16:
        break MISSING_BLOCK_LABEL_3402;
_L11:
        mLogoImg.setImageResource(0x7f0202fd);
_L10:
        DrillDownSettingView drilldownsettingview = (DrillDownSettingView)findViewById(0x7f090112);
        DrillDownSettingView drilldownsettingview1;
        DrillDownSettingView drilldownsettingview2;
        DrillDownSettingView drilldownsettingview3;
        DrillDownSettingView drilldownsettingview4;
        DrillDownSettingView drilldownsettingview5;
        View view13;
        DrillDownSettingView drilldownsettingview6;
        String s2;
        if (mAddressItem.mIsNavigable)
        {
            drilldownsettingview.setText(mNatMgr.getLanguageString(DisplayStrings.DS_SEND_THIS_LOCATION));
            drilldownsettingview.setOnClickListener(new android.view.View.OnClickListener() {

                final AddressPreviewActivity this$0;

                public void onClick(View view17)
                {
                    openShareActivity();
                }

            
            {
                this$0 = AddressPreviewActivity.this;
                super();
            }
            });
        } else
        {
            drilldownsettingview.setVisibility(8);
        }
        drilldownsettingview1 = (DrillDownSettingView)findViewById(0x7f090113);
        if (mAddressItem.mIsNavigable)
        {
            if (j == 5 || j == 1 || j == 3)
            {
                drilldownsettingview1.setIcon(0x7f0202f8);
                drilldownsettingview1.setText(mNatMgr.getLanguageString(DisplayStrings.DS_REMOVE_FROM_FAVORITES));
                drilldownsettingview1.setOnClickListener(new android.view.View.OnClickListener() {

                    final AddressPreviewActivity this$0;

                    public void onClick(View view17)
                    {
                        android.content.DialogInterface.OnClickListener onclicklistener2 = new android.content.DialogInterface.OnClickListener() {

                            final _cls24 this$1;

                            public void onClick(DialogInterface dialoginterface, int i)
                            {
                                if (i == 1)
                                {
                                    mDtnMgr.eraseAddressItem(mAddressItem);
                                    setResult(-1);
                                    mWasResultSet = true;
                                    finish();
                                }
                            }

            
            {
                this$1 = _cls24.this;
                super();
            }
                        };
                        MsgBox.getInstance().OpenConfirmDialogCustomTimeoutCbJava(mNatMgr.getLanguageString(DisplayStrings.DS_ARE_YOU_SURE_Q), mNatMgr.getLanguageString(DisplayStrings.DS_REMOVE_FROM_FAVORITES), true, onclicklistener2, mNatMgr.getLanguageString(DisplayStrings.DS_YES), mNatMgr.getLanguageString(DisplayStrings.DS_CANCEL), -1);
                    }


            
            {
                this$0 = AddressPreviewActivity.this;
                super();
            }
                });
            } else
            {
                drilldownsettingview1.setIcon(0x7f0202f8);
                drilldownsettingview1.setText(mNatMgr.getLanguageString(DisplayStrings.DS_ADD_TO_FAVORITES));
                drilldownsettingview1.setOnClickListener(new android.view.View.OnClickListener() {

                    final AddressPreviewActivity this$0;

                    public void onClick(View view17)
                    {
                        Intent intent = new Intent(AddressPreviewActivity.this, com/waze/navigate/AddFavoriteNameActivity);
                        intent.putExtra("AddressItem", mAddressItem);
                        startActivityForResult(intent, 1);
                    }

            
            {
                this$0 = AddressPreviewActivity.this;
                super();
            }
                });
            }
        } else
        {
            drilldownsettingview1.setVisibility(8);
        }
        drilldownsettingview2 = (DrillDownSettingView)findViewById(0x7f090117);
        if (mAddressItem.mIsNavigable && (j == 9 || j == 8 || j == 13))
        {
            drilldownsettingview2.setText(mNatMgr.getLanguageString(DisplayStrings.DS_REMOVE_FROM_HISTORY));
            drilldownsettingview2.setOnClickListener(new android.view.View.OnClickListener() {

                final AddressPreviewActivity this$0;

                public void onClick(View view17)
                {
                    mDtnMgr.eraseAddressItem(mAddressItem);
                    setResult(32783);
                    mWasResultSet = true;
                    finish();
                }

            
            {
                this$0 = AddressPreviewActivity.this;
                super();
            }
            });
        } else
        {
            drilldownsettingview2.setVisibility(8);
        }
        drilldownsettingview3 = (DrillDownSettingView)findViewById(0x7f090114);
        if (mAddressItem.mIsNavigable && onclicklistener1 != null)
        {
            drilldownsettingview3.setText(mNatMgr.getLanguageString(DisplayStrings.DS_SAVE_EVENT_LOCATION));
            drilldownsettingview3.setOnClickListener(onclicklistener1);
        } else
        {
            drilldownsettingview3.setVisibility(8);
        }
        drilldownsettingview4 = (DrillDownSettingView)findViewById(0x7f090116);
        if (mAddressItem.mIsNavigable)
        {
            drilldownsettingview4.setText(mNatMgr.getLanguageString(DisplayStrings.DS_SHOW_ON_MAP));
            drilldownsettingview4.setOnClickListener(new android.view.View.OnClickListener() {

                final AddressPreviewActivity this$0;

                public void onClick(View view17)
                {
                    unsetAddressOptionsView();
                    mDtnMgr.centerMapInAddressOptionsView(mAddressItem.index, mAddressItem.getLocationX().intValue(), mAddressItem.getLocationY().intValue(), false, mAddressItem.getIcon());
                    mDtnMgr.showOnMap(mAddressItem.getLocationX().intValue(), mAddressItem.getLocationY().intValue());
                    setResult(3);
                    mWasResultSet = true;
                    finish();
                }

            
            {
                this$0 = AddressPreviewActivity.this;
                super();
            }
            });
        } else
        {
            drilldownsettingview4.setVisibility(8);
        }
        drilldownsettingview5 = (DrillDownSettingView)findViewById(0x7f090115);
        if (mAddressItem.mIsNavigable)
        {
            drilldownsettingview5.setText(mNatMgr.getLanguageString(DisplayStrings.DS_SET_AS_START_POINT));
            drilldownsettingview5.setOnClickListener(new android.view.View.OnClickListener() {

                final AddressPreviewActivity this$0;

                public void onClick(View view17)
                {
                    mDtnMgr.setStartPoint();
                    setResult(1);
                    mWasResultSet = true;
                    finish();
                }

            
            {
                this$0 = AddressPreviewActivity.this;
                super();
            }
            });
        } else
        {
            drilldownsettingview5.setVisibility(8);
        }
        view13 = findViewById(0x7f090119);
        flag2 = MyWazeNativeManager.getInstance().getInvisibleNTV();
        if (mAddressItem.venueData == null || !mAddressItem.venueData.bUpdateable || mAddressItem.venueData.bResidence || !mAddressItem.mIsNavigable || flag2)
        {
            view13.setVisibility(8);
        } else
        {
            view13.setVisibility(0);
            DrillDownSettingView drilldownsettingview7 = (DrillDownSettingView)findViewById(0x7f09011a);
            drilldownsettingview7.setText(mNatMgr.getLanguageString(DisplayStrings.DS_SUGGEST_AN_EDIT));
            drilldownsettingview7.setOnClickListener(new android.view.View.OnClickListener() {

                final AddressPreviewActivity this$0;

                public void onClick(View view17)
                {
                    Intent intent = new Intent(AddressPreviewActivity.this, com/waze/reports/EditPlaceFlowActivity);
                    intent.putExtra(com/waze/reports/VenueData.getName(), mAddressItem.venueData);
                    startActivityForResult(intent, 109);
                }

            
            {
                this$0 = AddressPreviewActivity.this;
                super();
            }
            });
            ((WazeTextView)view13.findViewById(0x7f09011b)).setText("30");
            ((WazeTextView)view13.findViewById(0x7f09011c)).setText(mNatMgr.getLanguageString(DisplayStrings.DS_POINTS));
        }
        drilldownsettingview6 = (DrillDownSettingView)findViewById(0x7f090118);
        if (mAddressItem.venueData == null || mAddressItem.venueData.bResidence || !mAddressItem.venueData.bUpdateable || !mAddressItem.mIsNavigable)
        {
            drilldownsettingview6.setVisibility(8);
        } else
        {
            drilldownsettingview6.setVisibility(0);
            drilldownsettingview6.setText(mNatMgr.getLanguageString(DisplayStrings.DS_REPORT_A_PROBLEM));
            drilldownsettingview6.setOnClickListener(new android.view.View.OnClickListener() {

                final AddressPreviewActivity this$0;

                public void onClick(View view17)
                {
                    showReportSubmenu();
                }

            
            {
                this$0 = AddressPreviewActivity.this;
                super();
            }
            });
        }
        if (mAddressItem.venueData == null || (mAddressItem.venueData.reporter == null || mAddressItem.venueData.reporter.isEmpty()) && (mAddressItem.venueData.updater == null || mAddressItem.venueData.updater.isEmpty()))
        {
            findViewById(0x7f09011d).setVisibility(8);
            findViewById(0x7f090124).setVisibility(8);
            return;
        }
        break MISSING_BLOCK_LABEL_3641;
_L2:
        textview3.setText(mNatMgr.getLanguageString(DisplayStrings.DS_NOW_OPEN));
        textview4.setText(mNatMgr.getLanguageString(DisplayStrings.DS_NOW_CLOSED));
        j2 = 0;
_L19:
        k2 = mAddressItem.venueData.numOpeningHours;
        l2 = j2;
        flag3 = false;
        if (l2 < k2)
        {
label1:
            {
                if (!isOpen(mAddressItem.venueData.openingHours[j2]))
                {
                    break label1;
                }
                flag3 = true;
            }
        }
        if (flag3)
        {
            i3 = 0;
        } else
        {
            i3 = 8;
        }
        textview3.setVisibility(i3);
        if (flag3)
        {
            byte0 = 8;
        } else
        {
            byte0 = 0;
        }
        textview4.setVisibility(byte0);
          goto _L18
        j2++;
          goto _L19
_L4:
        ((TextView)findViewById(0x7f090144)).setText(mNatMgr.getLanguageString(DisplayStrings.DS_SERVICES));
        view7.setVisibility(0);
        view8.setVisibility(0);
        linearlayout1 = (LinearLayout)findViewById(0x7f090145);
        linearlayout1.removeAllViews();
        l1 = 0;
_L22:
        i2 = mAddressItem.venueData.numServices;
        if (l1 >= i2) goto _L21; else goto _L20
_L20:
        s3 = EditPlaceServicesFragment.getServiceById(mAddressItem.venueData.services[l1]);
        s4 = EditPlaceServicesFragment.getServiceIconById(mAddressItem.venueData.services[l1]);
        view16 = getLayoutInflater().inflate(0x7f030017, linearlayout1, false);
        ((TextView)view16.findViewById(0x7f090162)).setText(s3);
        drawable2 = ResManager.GetSkinDrawable((new StringBuilder(String.valueOf(s4))).append(".bin").toString());
        if (drawable2 != null)
        {
            ((ImageView)view16.findViewById(0x7f090161)).setImageDrawable(drawable2);
        }
        linearlayout1.addView(view16);
        l1++;
          goto _L22
          goto _L21
_L6:
        view9.setVisibility(0);
        view10.setVisibility(0);
        ((TextView)findViewById(0x7f090149)).setText(mNatMgr.getLanguageString(DisplayStrings.DS_OPENING_HOURS));
        linearlayout = (LinearLayout)findViewById(0x7f09014a);
        linearlayout.removeAllViews();
        j1 = 0;
_L25:
        k1 = mAddressItem.venueData.numOpeningHours;
        if (j1 >= k1) goto _L24; else goto _L23
_L23:
        openinghours = mAddressItem.venueData.openingHours[j1];
        view15 = getLayoutInflater().inflate(0x7f030016, linearlayout, false);
        ((TextView)view15.findViewById(0x7f09015e)).setText(openinghours.getDaysString("\n"));
        ((TextView)view15.findViewById(0x7f090160)).setText(openinghours.getHoursString());
        linearlayout.addView(view15);
        j1++;
          goto _L25
          goto _L24
_L8:
        mPlaceImagesFrame.setVisibility(0);
        view14 = findViewById(0x7f09010a);
        if (mAddressItem.venueData.numImages > 1)
        {
            k = 0;
        } else
        {
            k = 4;
        }
        view14.setVisibility(k);
        placeImage = (ImageView)findViewById(0x7f09010d);
        mImageArray = new ArrayList(mAddressItem.venueData.numImages);
        l = 0;
_L27:
label2:
        {
            i1 = mAddressItem.venueData.numImages;
            if (l < i1)
            {
                break label2;
            }
            venueimage = (com.waze.reports.PhotoPagerSection.VenueImage)mImageArray.get(0);
            progressanimation = (ProgressAnimation)findViewById(0x7f09010c);
            if (ImageRepository.instance.isThumbnailCached(venueimage.imageThumbnailUri))
            {
                progressanimation.setVisibility(8);
            } else
            {
                progressanimation.start();
            }
            ImageRepository.instance.getImage(venueimage.imageThumbnailUri, true, placeImage, progressanimation, this);
            placeImage.setOnClickListener(new android.view.View.OnClickListener() );
        }
          goto _L26
        mImageArray.add(new VenueImage(mAddressItem.venueData.imageURLs[l], mAddressItem.venueData.imageThumbnailURLs[l], mAddressItem.venueData.imageReporters[l], mAddressItem.venueData.imageReporterMoods[l], mAddressItem.venueData.imageLiked[l], mAddressItem.venueData.imageByMe[l], false));
        l++;
          goto _L27
_L17:
        s2 = mAddressItem.mImageURL;
        if (s2 != null)
        {
            mLogoImg.setImageResource(0x7f0201d2);
            mLogoImg.setScaleType(android.widget.ImageView.ScaleType.CENTER_CROP);
            ImageRepository.instance.getImage(s2, mLogoImg, this);
        }
          goto _L10
_L15:
        mLogoImg.setImageResource(0x7f020193);
          goto _L10
_L14:
        mLogoImg.setImageResource(0x7f0203cd);
          goto _L10
_L12:
        mLogoImg.setImageResource(0x7f020194);
          goto _L10
_L13:
        mLogoImg.setImageResource(0x7f02046a);
          goto _L10
        mLogoImg.setImageResource(0x7f02009f);
          goto _L10
        if (mAddressItem.venueData.reporter == null || mAddressItem.venueData.reporter.isEmpty())
        {
            findViewById(0x7f090125).setVisibility(8);
            findViewById(0x7f09011e).setVisibility(8);
        } else
        {
            ImageView imageview1 = (ImageView)findViewById(0x7f090120);
            ((TextView)findViewById(0x7f090126)).setText(mNatMgr.getLanguageString(DisplayStrings.DS_CREATED_BY));
            ((TextView)findViewById(0x7f090127)).setText(mAddressItem.venueData.reporter);
            imageview1.setImageDrawable(MoodManager.getMoodDrawable(this, mAddressItem.venueData.reporterMood));
        }
        if (mAddressItem.venueData.updater == null || mAddressItem.venueData.updater.isEmpty())
        {
            findViewById(0x7f090128).setVisibility(8);
            findViewById(0x7f090121).setVisibility(8);
            return;
        } else
        {
            ImageView imageview = (ImageView)findViewById(0x7f090123);
            ((TextView)findViewById(0x7f090129)).setText(mNatMgr.getLanguageString(DisplayStrings.DS_LAST_UPDATED_BY));
            ((TextView)findViewById(0x7f09012a)).setText(mAddressItem.venueData.updater);
            imageview.setImageDrawable(MoodManager.getMoodDrawable(this, mAddressItem.venueData.updaterMood));
            return;
        }
    }

    private void setAddressOptionsView()
    {
        if (!mbAddressOptionsViewSet)
        {
            mbAddressOptionsViewSet = true;
            mDtnMgr.setAddressOptionsView(mAddressItem.index, mAddressItem.getLocationX().intValue(), mAddressItem.getLocationY().intValue(), true);
        }
    }

    private void setUpActivity()
    {
        setContentView(0x7f030012);
        TitleBar titlebar = (TitleBar)findViewById(0x7f090058);
        titlebar.init(this, DisplayStrings.DS_PREVIEW);
        titlebar.bringToFront();
        mAddressItemList = (ArrayList)getIntent().getExtras().getSerializable("AddressItemList");
        mSelectedItem = getIntent().getExtras().getInt("AddressItemSelected");
        int i;
        if (mAddressItemList == null)
        {
            mAddressItem = (AddressItem)getIntent().getExtras().getSerializable("AddressItem");
        } else
        {
            mAddressItem = (AddressItem)mAddressItemList.get(mSelectedItem);
        }
        mEventAddressItem = (AddressItem)getIntent().getExtras().getSerializable("AddressItem");
        mMapLayout = (ViewGroup)findViewById(0x7f090101);
        mMapMask = findViewById(0x7f090102);
        mMapView = (MapView)findViewById(0x7f0900ff);
        mScrollView = (ObservableScrollView)findViewById(0x7f0900a5);
        i = getResources().getConfiguration().orientation;
        if (mAddressItem.mIsNavigable)
        {
            mMapView.setNativeCanvasReadyEvent(mNativeCanvasReadyEvent);
            mMapView.setHandleTouch(true);
            SettingsTitleText settingstitletext;
            if (i == 1)
            {
                mFrameHeight = getResources().getDisplayMetrics().heightPixels - (int)(45F * mDensity) - (int)(165F * mDensity);
                mLockHeight = (int)((float)mFrameHeight - 120F * mDensity);
                mMapLayout.getLayoutParams().height = mFrameHeight;
                final ScrollAndTouchListener scrollAndTouchListener = new ScrollAndTouchListener(mLockHeight, mDensity, mFrameHeight, mScrollView, null);
                mScrollView.setOnScrollListener(scrollAndTouchListener);
                mScrollView.setOnTouchListener(scrollAndTouchListener);
                mScrollView.post(new Runnable() {

                    final AddressPreviewActivity this$0;

                    public void run()
                    {
                        mScrollView.scrollTo(0, (int)((float)mFrameHeight - 120F * mDensity));
                    }

            
            {
                this$0 = AddressPreviewActivity.this;
                super();
            }
                });
                mMapLayout.setOnTouchListener(new android.view.View.OnTouchListener() {

                    final AddressPreviewActivity this$0;
                    private final ScrollAndTouchListener val$scrollAndTouchListener;

                    public boolean onTouch(View view3, MotionEvent motionevent)
                    {
                        if (scrollAndTouchListener._isMapOpen)
                        {
                            if (motionevent.getAction() == 0)
                            {
                                mScrollView.requestDisallowInterceptTouchEvent(true);
                            }
                            if (motionevent.getAction() == 1)
                            {
                                mScrollView.requestDisallowInterceptTouchEvent(false);
                            }
                        }
                        return false;
                    }

            
            {
                this$0 = AddressPreviewActivity.this;
                scrollAndTouchListener = scrollandtouchlistener;
                super();
            }
                });
                mMapView.getLayoutParams().height = mFrameHeight;
            } else
            {
                mMapCovered = (int)(260F * mDensity);
                mMapView.setOnTouchListener(new android.view.View.OnTouchListener() {

                    private long lastDown;
                    float startX;
                    final AddressPreviewActivity this$0;

                    public boolean onTouch(View view3, MotionEvent motionevent)
                    {
                        if (mIsMapBig)
                        {
                            return false;
                        }
                        int j = motionevent.getAction();
                        float f = motionevent.getX();
                        if (j == 0)
                        {
                            startX = f;
                            lastDown = System.currentTimeMillis();
                            return true;
                        }
                        if (j == 2)
                        {
                            float f3 = f - startX;
                            float f4 = Math.min(mMapCovered, f3);
                            if (f4 > 0.0F)
                            {
                                mScrollView.clearAnimation();
                                mMapLayout.clearAnimation();
                                mScrollView.setTranslationX(f4);
                                mMapLayout.setTranslationX(f4);
                                int k = (int)(((float)mMapCovered - f4) * LS_X_FACTOR);
                                int i1 = (int)(1000F + (1000F * ((float)mMapCovered - f4)) / (float)mMapCovered);
                                mDtnMgr.zoomOnMap(k + mAddressItem.getLocationX().intValue(), mAddressItem.getLocationY().intValue(), i1);
                                mPlaceImagesFrame.setTranslationY(-f4);
                            } else
                            {
                                startX = f;
                            }
                            return true;
                        }
                        if (j == 1)
                        {
                            float f1 = f - startX;
                            long l = System.currentTimeMillis() - lastDown;
                            float f2 = Math.min(mMapCovered, f1);
                            if (f2 > 30F || l < 180L)
                            {
                                mScrollView.setTranslationX(0.0F);
                                mMapLayout.setTranslationX(0.0F);
                                TranslateAnimation translateanimation = new TranslateAnimation(f2, mMapCovered, 0.0F, 0.0F);
                                translateanimation.setDuration(200L);
                                translateanimation.setInterpolator(new DecelerateInterpolator());
                                translateanimation.setFillAfter(false);
                                translateanimation.setAnimationListener(mLandscapeAnimateMapOpenListener);
                                mScrollView.startAnimation(translateanimation);
                                mMapLayout.startAnimation(translateanimation);
                                mIsMapBig = true;
                                mScrollView.setEnabled(false);
                                mDtnMgr.zoomOnMap(mAddressItem.getLocationX().intValue(), mAddressItem.getLocationY().intValue(), 1000);
                                mPlaceImagesFrame.setTranslationY(-mMapCovered);
                            } else
                            {
                                mScrollView.setTranslationX(0.0F);
                                mMapLayout.setTranslationX(0.0F);
                                TranslateAnimation translateanimation1 = new TranslateAnimation(f2, 0.0F, 0.0F, 0.0F);
                                translateanimation1.setDuration(200L);
                                translateanimation1.setInterpolator(new DecelerateInterpolator());
                                translateanimation1.setFillAfter(false);
                                mScrollView.startAnimation(translateanimation1);
                                mMapLayout.startAnimation(translateanimation1);
                                mIsMapBig = false;
                                mDtnMgr.zoomOnMap(mAddressItem.getLocationX().intValue() + (int)((float)mMapCovered * LS_X_FACTOR), mAddressItem.getLocationY().intValue(), 2000);
                                mPlaceImagesFrame.setTranslationY(0.0F);
                            }
                            return true;
                        }
                        if (j == 3)
                        {
                            mScrollView.setTranslationX(0.0F);
                            mMapLayout.setTranslationX(0.0F);
                            return true;
                        } else
                        {
                            return false;
                        }
                    }

            
            {
                this$0 = AddressPreviewActivity.this;
                super();
                startX = 0.0F;
            }
                });
                findViewById(0x7f09010f).setOnTouchListener(new android.view.View.OnTouchListener() {

                    float startX;
                    final AddressPreviewActivity this$0;

                    public boolean onTouch(View view3, MotionEvent motionevent)
                    {
                        if (!mIsMapBig)
                        {
                            return false;
                        }
                        int j = motionevent.getAction();
                        float f = motionevent.getX();
                        if (j == 0)
                        {
                            startX = f;
                            return true;
                        }
                        if (j == 2)
                        {
                            float f2 = Math.max(f - startX, -mMapCovered);
                            if (f2 < 0.0F)
                            {
                                mScrollView.clearAnimation();
                                mMapLayout.clearAnimation();
                                mScrollView.setTranslationX(f2);
                                mMapLayout.setTranslationX(f2);
                                int k = (int)(-f2 * LS_X_FACTOR);
                                int l = (int)(1000F + (1000F * -f2) / (float)mMapCovered);
                                mDtnMgr.zoomOnMap(k + mAddressItem.getLocationX().intValue(), mAddressItem.getLocationY().intValue(), l);
                                mPlaceImagesFrame.setTranslationY(-(f2 + (float)mMapCovered));
                            } else
                            {
                                startX = f;
                            }
                            return true;
                        }
                        if (j == 1)
                        {
                            float f1 = Math.max(f - startX, -mMapCovered);
                            if (f1 < -30F)
                            {
                                mScrollView.setTranslationX(0.0F);
                                mMapLayout.setTranslationX(0.0F);
                                TranslateAnimation translateanimation1 = new TranslateAnimation(f1, -mMapCovered, 0.0F, 0.0F);
                                translateanimation1.setDuration(200L);
                                translateanimation1.setInterpolator(new DecelerateInterpolator());
                                translateanimation1.setFillAfter(false);
                                translateanimation1.setAnimationListener(mLandscapeAnimateMapClosedListener);
                                mScrollView.startAnimation(translateanimation1);
                                mMapLayout.startAnimation(translateanimation1);
                                mIsMapBig = false;
                                mScrollView.setEnabled(true);
                                mPlaceImagesFrame.setTranslationY(0.0F);
                                TranslateAnimation translateanimation2 = new TranslateAnimation(0.0F, 0.0F, -(f1 + (float)mMapCovered), 0.0F);
                                translateanimation2.setDuration(200L);
                                translateanimation2.setInterpolator(new DecelerateInterpolator());
                                translateanimation2.setFillAfter(true);
                                mPlaceImagesFrame.startAnimation(translateanimation2);
                            } else
                            {
                                mScrollView.setTranslationX(0.0F);
                                mMapLayout.setTranslationX(0.0F);
                                TranslateAnimation translateanimation = new TranslateAnimation(f1, 0.0F, 0.0F, 0.0F);
                                translateanimation.setDuration(200L);
                                translateanimation.setFillAfter(false);
                                translateanimation.setInterpolator(new DecelerateInterpolator());
                                translateanimation.setAnimationListener(mLandscapeAnimateMapOpenListener);
                                mScrollView.startAnimation(translateanimation);
                                mMapLayout.startAnimation(translateanimation);
                                mIsMapBig = true;
                                mPlaceImagesFrame.setTranslationY(-mMapCovered);
                            }
                            return true;
                        }
                        if (j == 3)
                        {
                            mScrollView.clearAnimation();
                            mMapLayout.clearAnimation();
                            mScrollView.setTranslationX(mMapCovered);
                            mMapLayout.setTranslationX(mMapCovered);
                            return true;
                        } else
                        {
                            return false;
                        }
                    }

            
            {
                this$0 = AddressPreviewActivity.this;
                super();
                startX = 0.0F;
            }
                });
            }
        } else
        {
            mMapView.setVisibility(8);
            mMapLayout.setVisibility(8);
            if (i == 1)
            {
                View view1 = findViewById(0x7f090106);
                android.widget.RelativeLayout.LayoutParams layoutparams1 = (android.widget.RelativeLayout.LayoutParams)view1.getLayoutParams();
                layoutparams1.setMargins(0, (int)(5F * mDensity), 0, 0);
                view1.setLayoutParams(layoutparams1);
                View view2 = findViewById(0x7f090109);
                android.widget.RelativeLayout.LayoutParams layoutparams2 = (android.widget.RelativeLayout.LayoutParams)view2.getLayoutParams();
                layoutparams2.setMargins(0, (int)(7F * mDensity), 0, 0);
                layoutparams2.addRule(8, 0);
                layoutparams2.addRule(7, 0);
                layoutparams2.addRule(10);
                layoutparams2.addRule(11);
                view2.setLayoutParams(layoutparams2);
                findViewById(0x7f090100).setBackgroundColor(Color.parseColor("#f7feff"));
            } else
            {
                mScrollView.getLayoutParams().width = -1;
                View view = findViewById(0x7f090109);
                android.widget.RelativeLayout.LayoutParams layoutparams = (android.widget.RelativeLayout.LayoutParams)view.getLayoutParams();
                layoutparams.setMargins(0, 0, (int)(60F * mDensity), 0);
                layoutparams.addRule(6, 0x7f0900a5);
                view.setLayoutParams(layoutparams);
                findViewById(0x7f09010f).setVisibility(8);
            }
        }
        findViewById(0x7f09012e).setVisibility(8);
        findViewById(0x7f09012f).setVisibility(8);
        findViewById(0x7f090130).setVisibility(8);
        findViewById(0x7f090131).setVisibility(8);
        if (mAddressItem.venueData != null && mAddressItem.venueData.numProducts > 0)
        {
            fillGasPrices();
        }
        settingstitletext = (SettingsTitleText)findViewById(0x7f090111);
        settingstitletext.setText(mNatMgr.getLanguageString(DisplayStrings.DS_ACTIONS));
        if (!mAddressItem.mIsNavigable)
        {
            settingstitletext.setVisibility(8);
        }
        refreshView();
    }

    private void thanksForReport()
    {
        mNatMgr.OpenProgressIconPopup(mNatMgr.getLanguageString(DisplayStrings.DS_REPORT_PLACE_THANK_YOU), "flag_verified");
        postDelayed(new Runnable() {

            final AddressPreviewActivity this$0;

            public void run()
            {
                mNatMgr.CloseProgressPopup();
            }

            
            {
                this$0 = AddressPreviewActivity.this;
                super();
            }
        }, 4000L);
    }

    private void unsetAddressOptionsView()
    {
        if (mbAddressOptionsViewSet)
        {
            mDtnMgr.unsetAddressOptionsView();
            mbAddressOptionsViewSet = false;
        }
    }

    public AddressItem getAddressItem()
    {
        return mAddressItem;
    }

    public boolean isOpen(OpeningHours openinghours)
    {
        String s = openinghours.from;
        if (s == null || s.isEmpty())
        {
            s = "00:00";
        }
        String s1 = openinghours.to;
        if (s1 == null || s1.isEmpty())
        {
            s1 = "24:00";
        }
        int i = Integer.parseInt(s.substring(0, s.indexOf(':')));
        int j = s1.indexOf(':');
        int k = Integer.parseInt(s1.substring(0, j));
        if (i <= k)
        {
            int i3 = -1 + Calendar.getInstance().get(7);
            if (openinghours.days[i3] != 0)
            {
                if (s.contentEquals(s1))
                {
                    return true;
                }
                int j3 = Calendar.getInstance().get(11);
                int k3 = Calendar.getInstance().get(12);
                int l3 = Integer.parseInt(s.substring(1 + s.indexOf(':')));
                int i4 = 1 + s1.indexOf(':');
                if (checkCours(j3, i, k, k3, l3, Integer.parseInt(s1.substring(i4))))
                {
                    return true;
                }
            }
        } else
        {
            int l = Calendar.getInstance().get(11);
            int i1 = -1 + Calendar.getInstance().get(7);
            if (l <= k)
            {
                int j2 = (i1 + 6) % 7;
                if (openinghours.days[j2] != 0)
                {
                    int k2 = Calendar.getInstance().get(12);
                    int l2 = 1 + s1.indexOf(':');
                    if (checkCours(l, 0, k, k2, 0, Integer.parseInt(s1.substring(l2))))
                    {
                        return true;
                    }
                }
            } else
            if (l >= i && openinghours.days[i1] != 0)
            {
                int j1 = Calendar.getInstance().get(12);
                int k1 = Integer.parseInt(s.substring(1 + s.indexOf(':')));
                int l1 = 1 + s1.indexOf(':');
                int i2 = Integer.parseInt(s1.substring(l1));
                if (checkCours(l, i, 24, j1, k1, 0))
                {
                    return true;
                }
                if (checkCours(l, 0, k, j1, 0, i2))
                {
                    return true;
                }
            }
        }
        return false;
    }

    protected boolean myHandleMessage(Message message)
    {
label0:
        {
            if (message.what == DriveToNativeManager.UH_ETA)
            {
                Bundle bundle = message.getData();
                onUpdateEta(bundle.getString("provider"), bundle.getString("distance"), bundle.getString("id"));
                return true;
            }
            if (message.what != NativeManager.UH_SEARCH_VENUES)
            {
                break label0;
            }
            VenueData avenuedata[] = (VenueData[])message.getData().getParcelableArray("venue_data");
            mNatMgr.unsetUpdateHandler(NativeManager.UH_SEARCH_VENUES, mHandler);
            mNatMgr.CloseProgressPopup();
            if (avenuedata == null || avenuedata.length == 0)
            {
                return true;
            }
            Intent intent = new Intent(this, com/waze/ifs/ui/OmniSelectionActivity);
            intent.putExtra(OmniSelectionActivity.ARG_TITLE, mNatMgr.getLanguageString(DisplayStrings.DS_PLACE_DUPLICATE));
            intent.putExtra(OmniSelectionActivity.ARG_EDIT_BOX_HINT, mNatMgr.getLanguageString(DisplayStrings.DS_SEARCH_PLACE_TO_MERGE));
            SettingsValue asettingsvalue[] = new SettingsValue[avenuedata.length];
            int j = 0;
            int k = avenuedata.length;
            int l = 0;
            do
            {
                if (l >= k)
                {
                    if (j < asettingsvalue.length)
                    {
                        asettingsvalue = (SettingsValue[])Arrays.copyOf(asettingsvalue, j);
                    }
                    intent.putExtra(OmniSelectionActivity.ARG_VALUES, asettingsvalue);
                    intent.putExtra(OmniSelectionActivity.ARG_SEARCH, true);
                    intent.putExtra(OmniSelectionActivity.ARG_FILTER, true);
                    startActivityForResult(intent, 107);
                    return true;
                }
                VenueData venuedata = avenuedata[l];
                while (false) 
                {
                    if (!mAddressItem.venueData.id.equals(venuedata.id) && venuedata.name != null && !venuedata.name.isEmpty())
                    {
                        asettingsvalue[j] = new SettingsValue(venuedata.id, venuedata.name, false);
                        asettingsvalue[j].display2 = venuedata.getAddressString();
                        j++;
                    }
                    l++;
                }
            } while (true);
        }
        if (message.what == DriveToNativeManager.UH_SEARCH_ADD_RESULT)
        {
            mDtnMgr.unsetUpdateHandler(DriveToNativeManager.UH_SEARCH_ADD_RESULT, mHandler);
            AddressItem addressitem = (AddressItem)message.getData().getSerializable("address_item");
            if (addressitem == null || addressitem.venueData == null)
            {
                Logger.e("AddressPreviewActivity.myHandleMessage(UH_SEARCH_ADD_RESULT) - null address");
                return true;
            }
            if (mShouldLoadVenue)
            {
                mShouldLoadVenue = false;
                mWebViewLoadAnimation.setVisibility(8);
                addressitem.setType(mAddressItem.getType());
                addressitem.setId(mAddressItem.getId());
                if (addressitem.getImage() == null)
                {
                    addressitem.setImage(mAddressItem.getImage());
                }
                if (addressitem.getTitle().isEmpty())
                {
                    addressitem.setTitle(mAddressItem.getTitle());
                }
                mAddressItem = addressitem;
                refreshView();
                return true;
            }
            mImageArray = new ArrayList(addressitem.venueData.numImages);
            int i = 0;
            do
            {
                if (i >= addressitem.venueData.numImages)
                {
                    if (mGallery != null && mGallery.isShowing())
                    {
                        mGallery.updateImages(mImageArray);
                    }
                    mAddressItem.venueData.bHasMoreData = false;
                    return true;
                }
                mImageArray.add(new VenueImage(addressitem.venueData.imageURLs[i], addressitem.venueData.imageThumbnailURLs[i], addressitem.venueData.imageReporters[i], addressitem.venueData.imageReporterMoods[i], addressitem.venueData.imageLiked[i], addressitem.venueData.imageByMe[i], false));
                i++;
            } while (true);
        } else
        {
            return myHandleMessage(message);
        }
    }

    public void navigateCallback(int i)
    {
        setResult(-1);
        mWasResultSet = true;
        finish();
    }

    public void nextSearchResult(View view)
    {
        if (mAddressItemList == null || mAddressItemList.size() <= 1 + mSelectedItem)
        {
            return;
        } else
        {
            mSelectedItem = 1 + mSelectedItem;
            refreshView();
            mDtnMgr.notifyAddressItemClicked(mSelectedItem);
            mDtnMgr.centerMapInAddressOptionsView(mAddressItem.index, mAddressItem.getLocationX().intValue(), mAddressItem.getLocationY().intValue(), true, mAddressItem.getIcon());
            mDtnMgr.notifyAddressItemShownBeforeNavigate(mAddressItem.index);
            logAnalyticsAds("ADS_PREVIEW_SHOWN");
            return;
        }
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        if (i != 106) goto _L2; else goto _L1
_L1:
        if (j == -1)
        {
            String s2 = intent.getStringExtra(EditTextDialogActivity.RET_VAL);
            mNatMgr.venueFlag(mAddressItem.venueData.id, mFlagType, s2, null);
            thanksForReport();
        }
_L4:
        return;
_L2:
        if (i != 107)
        {
            break; /* Loop/switch isn't completed */
        }
        if (j == -1)
        {
            String s1 = intent.getStringExtra(OmniSelectionActivity.RET_SELECTED_VAL);
            mNatMgr.venueFlag(mAddressItem.venueData.id, mFlagType, null, s1);
            thanksForReport();
            return;
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (i != 108)
        {
            break; /* Loop/switch isn't completed */
        }
        if (j == -1)
        {
            String s = intent.getStringExtra(EditTextDialogActivity.RET_VAL);
            mNatMgr.venueFlag(mAddressItem.venueData.id, mFlagType, s, null);
            thanksForReport();
            return;
        }
        if (true) goto _L4; else goto _L5
_L5:
        if (i == 109 && j == 3)
        {
            setResult(0);
            mWasResultSet = true;
            finish();
        }
        if (i != 333) goto _L7; else goto _L6
_L6:
        if (j == -1)
        {
            Intent intent1 = new Intent();
            intent1.putExtra("AddressItem", mAddressItem);
            setResult(32782, intent1);
            mWasResultSet = true;
            finish();
        } else
        {
            setResult(-1);
            mWasResultSet = true;
            finish();
        }
_L9:
        onActivityResult(i, j, intent);
        return;
_L7:
        if (j == 1)
        {
            setResult(1);
            mWasResultSet = true;
            finish();
        } else
        if (j == -1)
        {
            setResult(-1);
            mWasResultSet = true;
            finish();
        }
        if (true) goto _L9; else goto _L8
_L8:
    }

    public void onBackPressed()
    {
        if (!mWasResultSet)
        {
            Intent intent = new Intent();
            intent.putExtra("position", mSelectedItem);
            intent.putExtra("venue", mAddressItem.venueData);
            setResult(0, intent);
        }
        onBackPressed();
    }

    public void onCreate(Bundle bundle)
    {
        onCreate(bundle);
        requestWindowFeature(1);
        mDensity = getResources().getDisplayMetrics().density;
        LS_X_FACTOR = (3F * LS_X_FACTOR) / mDensity;
        LS_Y_FACTOR = (3F * LS_Y_FACTOR) / mDensity;
        mDtnMgr = DriveToNativeManager.getInstance();
        EditPlaceServicesFragment.getServices();
        NativeManager.getInstance().OpenRoutingIntent();
        mNatMgr = AppService.getNativeManager();
        Bundle bundle1 = getIntent().getExtras();
        if (bundle1 != null)
        {
            mIsAdditionalAddToFavorites = bundle1.getBoolean("AdditionalButton");
            mIsClearAdsContext = bundle1.getBoolean("ClearAdsContext", false);
            mShouldLoadVenue = bundle1.getBoolean("preview_load_venue", false);
        }
        mDtnMgr.setUpdateHandler(DriveToNativeManager.UH_ETA, mHandler);
        setUpActivity();
        logAnalyticsAds("ADS_PREVIEW_SHOWN");
        if (mShouldLoadVenue)
        {
            mDtnMgr.unsetUpdateHandler(DriveToNativeManager.UH_SEARCH_ADD_RESULT, mHandler);
            mDtnMgr.setUpdateHandler(DriveToNativeManager.UH_SEARCH_ADD_RESULT, mHandler);
            mNatMgr.venueGet(mAddressItem.VanueID, 1);
            mWebViewLoadAnimation.setVisibility(0);
            postDelayed(new Runnable() {

                final AddressPreviewActivity this$0;

                public void run()
                {
                    mWebViewLoadAnimation.setVisibility(8);
                }

            
            {
                this$0 = AddressPreviewActivity.this;
                super();
            }
            }, mNatMgr.getVenueGetTimeout());
        }
    }

    protected void onDestroy()
    {
        mDtnMgr.unsetUpdateHandler(DriveToNativeManager.UH_ETA, mHandler);
        mDtnMgr.unsetUpdateHandler(DriveToNativeManager.UH_SEARCH_ADD_RESULT, mHandler);
        onDestroy();
        if (mIsClearAdsContext)
        {
            Analytics.adsContextClear();
        }
    }

    public void onPause()
    {
        onPause();
        mMapView.onPause();
        if (mGallery != null && mGallery.isShowing())
        {
            mGallery.dismiss();
        }
        mGallery = null;
        unsetAddressOptionsView();
    }

    public void onResume()
    {
        onResume();
        if (getResources().getConfiguration().orientation == 1)
        {
            mScrollView.post(new Runnable() {

                final AddressPreviewActivity this$0;

                public void run()
                {
                    mScrollView.scrollTo(0, (int)((float)mFrameHeight - 120F * mDensity));
                }

            
            {
                this$0 = AddressPreviewActivity.this;
                super();
            }
            });
        }
        mMapView.setNativeCanvasReadyEvent(mNativeCanvasReadyEvent);
        mMapView.onResume();
    }

    public void onUpdateEta(String s, String s1, String s2)
    {
        if (mAddressItem.getId() == null || !mAddressItem.getId().equals(s2))
        {
            return;
        } else
        {
            ((TextView)findViewById(0x7f09012d)).setText(s1);
            return;
        }
    }

    protected void openShareActivity()
    {
        if (MyWazeNativeManager.getInstance().getContactLoggedInNTV())
        {
            if (NativeManager.getInstance().IsAccessToContactsEnableNTV())
            {
                unsetAddressOptionsView();
                ShareUtility.OpenShareActivity(com.waze.share.ShareUtility.ShareType.ShareType_ShareSelection, null, mAddressItem, null);
                return;
            } else
            {
                (new PhoneRequestAccessDialog(this, new com.waze.phone.PhoneRequestAccessDialog.PhoneRequestAccessResultListener() {

                    final AddressPreviewActivity this$0;

                    public void onResult(boolean flag)
                    {
                        if (flag)
                        {
                            openShareActivity();
                        }
                    }

            
            {
                this$0 = AddressPreviewActivity.this;
                super();
            }
                })).show();
                return;
            }
        } else
        {
            Intent intent = new Intent(this, com/waze/phone/PhoneNumberSignInActivity);
            intent.putExtra("type", 1);
            intent.putExtra("back", 1);
            intent.putExtra("fon_shon_rea_son", "FEATURE");
            AppService.getMainActivity().startActivityForResult(intent, 111);
            return;
        }
    }

    public void prevSearchResult(View view)
    {
        if (mSelectedItem == 0)
        {
            return;
        } else
        {
            mSelectedItem = -1 + mSelectedItem;
            refreshView();
            mDtnMgr.centerMapInAddressOptionsView(mAddressItem.index, mAddressItem.getLocationX().intValue(), mAddressItem.getLocationY().intValue(), true, mAddressItem.getIcon());
            mDtnMgr.notifyAddressItemShownBeforeNavigate(mAddressItem.index);
            return;
        }
    }

    public void showReportSubmenu()
    {
        Analytics.log("PLACES_PLACE_FLAGGING_POPUP_SHOWN", "VENUE_ID", mAddressItem.venueData.id);
        String s = mNatMgr.getLanguageString(DisplayStrings.DS_WHATS_WRONG_WITH_THIS_PLACEQ);
        String as[] = new String[6];
        as[0] = mNatMgr.getLanguageString(DisplayStrings.DS_PLACE_DUPLICATE);
        as[1] = mNatMgr.getLanguageString(DisplayStrings.DS_PLACE_CLOSED_MOVED);
        as[2] = mNatMgr.getLanguageString(DisplayStrings.DS_PLACE_INAPPROPRIATE);
        as[3] = mNatMgr.getLanguageString(DisplayStrings.DS_PLACE_WRONG);
        as[4] = mNatMgr.getLanguageString(DisplayStrings.DS_RESIDENTIAL_PLACE);
        as[5] = mNatMgr.getLanguageString(DisplayStrings.DS_FLAG_WRONG_PLACE);
        final int optionValues[] = {
            4, 1, 5, 6, 3, 10
        };
        mFlagType = -1;
        android.app.AlertDialog.Builder builder = new Builder(this, 0x7f06000f);
        builder.setTitle(s);
        builder.setItems(as, new android.content.DialogInterface.OnClickListener() );
        builder.setIcon(0x7f02015a);
        builder.setCancelable(true);
        AlertDialog alertdialog = builder.create();
        alertdialog.setCanceledOnTouchOutside(true);
        alertdialog.show();
    }








































    // Unreferenced inner class com/waze/navigate/AddressPreviewActivity$21$1

/* anonymous class */
    class _cls1
        implements com.waze.reports.PlacePhotoGallery.IPhotoGalleryListener
    {

        final _cls21 this$1;
        private final ImageView val$placeImage;

        public void onDelete(int i)
        {
label0:
            {
                mNatMgr.venueDeleteImage(mAddressItem.venueData.id, mAddressItem.venueData.imageURLs[i]);
                mAddressItem.venueData.removeImage(i);
                mImageArray.remove(i);
                if (mAddressItem.venueData.numImages > 0)
                {
                    mGallery.updateImages(mImageArray);
                } else
                {
                    mGallery.dismiss();
                }
                if (i == 0)
                {
                    if (mAddressItem.venueData.numImages <= 0)
                    {
                        break label0;
                    }
                    ImageRepository.instance.getImage(((com.waze.reports.PhotoPagerSection.VenueImage)mImageArray.get(0)).imageUri, placeImage);
                }
                return;
            }
            mPlaceImagesFrame.setVisibility(8);
        }

        public void onFlag(int i, int j)
        {
label0:
            {
                mNatMgr.venueFlagImage(mAddressItem.venueData.id, mAddressItem.venueData.imageURLs[i], j);
                mAddressItem.venueData.removeImage(i);
                mImageArray.remove(i);
                if (mAddressItem.venueData.numImages > 0)
                {
                    mGallery.updateImages(mImageArray);
                } else
                {
                    mGallery.dismiss();
                }
                if (i == 0)
                {
                    if (mAddressItem.venueData.numImages <= 0)
                    {
                        break label0;
                    }
                    ImageRepository.instance.getImage(((com.waze.reports.PhotoPagerSection.VenueImage)mImageArray.get(0)).imageUri, placeImage);
                }
                return;
            }
            mPlaceImagesFrame.setVisibility(8);
        }

        public void onLike(int i)
        {
            mAddressItem.venueData.imageLiked[i] = true;
            mNatMgr.venueLikeImage(mAddressItem.venueData.id, mAddressItem.venueData.imageURLs[i]);
        }

        public void onScroll(int i)
        {
        }

        public void onUnlike(int i)
        {
            mAddressItem.venueData.imageLiked[i] = false;
            mNatMgr.venueUnlikeImage(mAddressItem.venueData.id, mAddressItem.venueData.imageURLs[i]);
        }

            
            {
                this$1 = final__pcls21;
                placeImage = ImageView.this;
                super();
            }
    }

}
