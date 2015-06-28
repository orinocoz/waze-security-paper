// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.text.SpannableString;
import android.text.style.UnderlineSpan;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.MapView;
import com.waze.NativeManager;
import com.waze.ResManager;
import com.waze.WzWebView;
import com.waze.analytics.Analytics;
import com.waze.ifs.async.RunnableExecutor;
import com.waze.ifs.ui.ActivityBase;
import com.waze.share.FacebookEventPostActivity;
import com.waze.strings.DisplayStrings;
import com.waze.view.tabs.TabBar;
import com.waze.view.title.TitleBar;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.waze.navigate:
//            DriveToNavigateCallback, AddToFavoritesButton, DeleteFromFavoritesButton, DeleteFromHistoryButton, 
//            GoButton, GoneButton, MoreButton, AddressItem, 
//            DriveToNativeManager, GenericView, AddressOptionsMoreActivity

public final class AddressOptionsActivity extends ActivityBase
    implements DriveToNavigateCallback
{
    private static class PreviewTabsManager
    {

        private boolean isNavigate;
        private AddressOptionsActivity mHolder;
        private final com.waze.WzWebView.WebViewUrlOverride mInfoUrlOverride = new _cls2();
        private int mSelectedTab;
        private View mSelectedTabView;
        private final com.waze.WzWebView.WebViewUrlOverride mSpecialUrlOverride = new _cls3();
        private TabBar mTabBar;
        private final com.waze.view.tabs.TabBar.IOnTabClickListener mTabClickListener = new _cls1();

        public void initTabs()
        {
            NativeManager nativemanager = NativeManager.getInstance();
            mTabBar = (TabBar)mHolder.findViewById(0x7f0900e5);
            mTabBar.setListener(mTabClickListener);
            mTabBar.setText(0, nativemanager.getLanguageString(DisplayStrings.DS_LOCATION));
            mTabBar.setText(1, nativemanager.getLanguageString(DisplayStrings.DS_INFO));
            mTabBar.setText(2, nativemanager.getLanguageString(DisplayStrings.DS_SPECIALS));
            mTabBar.setSelected(0);
            mSelectedTabView = mHolder.findViewById(0x7f0900e6);
            String s = mHolder.addressItem.getUrl();
            String s1 = mHolder.addressItem.getSpecialUrl();
            if (s == null || s.length() == 0)
            {
                mTabBar.setEnabled(1, false);
            }
            if (s1 == null || s1.length() == 0)
            {
                mTabBar.setEnabled(2, false);
            }
            if (!isNavigate)
            {
                mTabBar.setEnabled(0, false);
            }
            if (mSelectedTab >= 0)
            {
                setSelectedTab(mSelectedTab);
            }
        }

        public void setSelectedTab(int i)
        {
            mTabBar.setSelected(i);
            mTabClickListener.onClick(i);
        }

        public void setVisible(boolean flag)
        {
            if (flag)
            {
                mTabBar.setVisibility(0);
                return;
            } else
            {
                mTabBar.setVisibility(8);
                return;
            }
        }








        public PreviewTabsManager(AddressOptionsActivity addressoptionsactivity, Boolean boolean1)
        {
            mSelectedTab = -1;
            mSelectedTabView = null;
            mHolder = null;
            mTabBar = null;
            isNavigate = true;
            mHolder = addressoptionsactivity;
            isNavigate = boolean1.booleanValue();
        }
    }


    protected static final long MORE_ANIMATION_TICK = 20L;
    protected static final int MORE_OFFSET = -100;
    private static Map buttons;
    private static WeakReference s_addressOptionsActivity;
    private AddressItem EventAddressItem;
    private AddressItem addressItem;
    private ArrayList addressItemList;
    private int caller;
    private DriveToNativeManager driveToNativeManager;
    private ImageView increaseMapButton;
    private boolean isAdditionalAddToFavorites;
    private boolean isClearAdsContext;
    private boolean isDayMode;
    private boolean isMapBig;
    private boolean isNavigateable;
    private View layoutView;
    private ImageView leftCorner;
    private final RunnableExecutor mNativeCanvasReadyEvent = new RunnableExecutor() {

        final AddressOptionsActivity this$0;

        public void event()
        {
            driveToNativeManager.setAddressOptionsView(addressItem.index, addressItem.getLocationX().intValue(), addressItem.getLocationY().intValue(), true);
        }

            
            {
                this$0 = AddressOptionsActivity.this;
                super();
            }
    };
    private RelativeLayout mapLayout;
    private RelativeLayout mapPlaceholder;
    private MapView mapView;
    private NativeManager nativeManager;
    private PreviewTabsManager previewTabsManager;
    private ImageView rightCorner;
    private int selectedItem;

    public AddressOptionsActivity()
    {
        EventAddressItem = null;
        isMapBig = false;
        selectedItem = 0;
        isClearAdsContext = false;
        isNavigateable = true;
    }

    private void logAnalyticsAds(String s)
    {
        Analytics.logAdsContext(s);
    }

    private void refreshView()
    {
        TextView textview;
        TextView textview1;
        TextView textview2;
        View view;
        ImageView imageview;
        TextView textview3;
        ImageView imageview1;
        if (addressItemList != null && addressItemList.size() > selectedItem)
        {
            addressItem = (AddressItem)addressItemList.get(selectedItem);
            if (addressItem.getCategory().intValue() != 7)
            {
                driveToNativeManager.notifyAddressItemShownBeforeNavigate(addressItem.index);
            }
            String s;
            if (selectedItem == 0)
            {
                findViewById(0x7f0900f8).setVisibility(8);
            } else
            {
                findViewById(0x7f0900f8).setVisibility(0);
            }
            if (selectedItem == -1 + addressItemList.size())
            {
                findViewById(0x7f0900f7).setVisibility(8);
            } else
            {
                findViewById(0x7f0900f7).setVisibility(0);
            }
        } else
        {
            driveToNativeManager.notifyAddressItemShownBeforeNavigate(addressItem.index);
            findViewById(0x7f0900f8).setVisibility(8);
            findViewById(0x7f0900f7).setVisibility(8);
        }
        if (addressItem.getCategory().intValue() == 7)
        {
            if (EventAddressItem == null)
            {
                EventAddressItem = (AddressItem)getIntent().getExtras().getSerializable("CalendarAddressItem");
            }
            if (EventAddressItem != null && !EventAddressItem.getIsValidate().booleanValue() || addressItem != null && !addressItem.getIsValidate().booleanValue())
            {
                s = addressItem.VanueID;
                if (s == null)
                {
                    s = EventAddressItem.VanueID;
                }
                if (s == null)
                {
                    s = "";
                }
                Analytics.log("CALENDAR_OPTIONS", "ID|VENUE", (new StringBuilder(String.valueOf(addressItem.getMeetingId()))).append("|").append(s).toString());
                findViewById(0x7f0900f0).setVisibility(8);
                ((TextView)findViewById(0x7f0900ed).findViewById(0x7f0900ef)).setText(nativeManager.getLanguageString(DisplayStrings.DS_DRIVE_NOW));
                ((GenericView)buttons.get(Integer.valueOf(7))).setImageId(Integer.valueOf(0x7f0201ca));
                ((GenericView)buttons.get(Integer.valueOf(7))).setLandscapeImageId(Integer.valueOf(0x7f0201ca));
                ((GenericView)buttons.get(Integer.valueOf(7))).fillContent((LinearLayout)findViewById(0x7f0900f1), nativeManager, getResources().getConfiguration().orientation);
                ((TextView)findViewById(0x7f0900f1).findViewById(0x7f0900ef)).setText(nativeManager.getLanguageString(DisplayStrings.DS_SAVE_EVENT_LOCATION));
                findViewById(0x7f0900f1).setOnClickListener(new android.view.View.OnClickListener() {

                    final AddressOptionsActivity this$0;

                    public void onClick(View view1)
                    {
                        int i;
                        if (addressItem.index > 0)
                        {
                            driveToNativeManager.CalendarAddressVerifiedByIndex(addressItem.index, addressItem.getMeetingId());
                        } else
                        {
                            driveToNativeManager.CalendarAddressVerified(addressItem.getAddress(), addressItem.getLocationX().intValue(), addressItem.getLocationY().intValue(), addressItem.getMeetingId(), addressItem.VanueID);
                        }
                        Analytics.log("CALENDAR_SAVE", "VAUE", addressItem.getMeetingId());
                        if (EventAddressItem.getisRecurring())
                        {
                            nativeManager.OpenProgressIconPopup(nativeManager.getLanguageString(DisplayStrings.DS_LOCATION_SAVED_ALL_RECURRING_EVENTS), "sign_up_big_v");
                            i = 2000;
                        } else
                        {
                            nativeManager.OpenProgressIconPopup(nativeManager.getLanguageString(DisplayStrings.DS_LOCATION_SAVED), "sign_up_big_v");
                            i = 1000;
                        }
                        (new Handler()).postDelayed(new Runnable() {

                            final _cls3 this$1;

                            public void run()
                            {
                                nativeManager.CloseProgressPopup();
                                Intent intent = new Intent();
                                setResult(32783, intent);
                                finish();
                            }

            
            {
                this$1 = _cls3.this;
                super();
            }
                        }, i);
                    }


            
            {
                this$0 = AddressOptionsActivity.this;
                super();
            }
                });
                findViewById(0x7f0900ed).setOnClickListener(new android.view.View.OnClickListener() {

                    final AddressOptionsActivity this$0;

                    public void onClick(View view1)
                    {
                        int i;
                        if (addressItem.index > 0)
                        {
                            driveToNativeManager.CalendarAddressVerifiedByIndex(addressItem.index, addressItem.getMeetingId());
                        } else
                        {
                            driveToNativeManager.CalendarAddressVerified(addressItem.getAddress(), addressItem.getLocationX().intValue(), addressItem.getLocationY().intValue(), addressItem.getMeetingId(), addressItem.VanueID);
                        }
                        Analytics.log("CALENDAR_GO", "VAUE", addressItem.getMeetingId());
                        Analytics.log("DRIVE_TYPE", "VAUE", "CALENDAR");
                        if (EventAddressItem.getisRecurring())
                        {
                            nativeManager.OpenProgressIconPopup(nativeManager.getLanguageString(DisplayStrings.DS_LOCATION_SAVED_ALL_RECURRING_EVENTS), "sign_up_big_v");
                            i = 2000;
                        } else
                        {
                            nativeManager.OpenProgressIconPopup(nativeManager.getLanguageString(DisplayStrings.DS_LOCATION_SAVED), "sign_up_big_v");
                            i = 1000;
                        }
                        (new Handler()).postDelayed(new Runnable() {

                            final _cls4 this$1;

                            public void run()
                            {
                                nativeManager.CloseProgressPopup();
                                driveToNativeManager.navigate(addressItem, null);
                                setResult(-1);
                                finish();
                            }

            
            {
                this$1 = _cls4.this;
                super();
            }
                        }, i);
                    }


            
            {
                this$0 = AddressOptionsActivity.this;
                super();
            }
                });
            }
        } else
        {
            ((GenericView)buttons.get(Integer.valueOf(7))).setImageId(Integer.valueOf(0x7f0201cb));
            ((GenericView)buttons.get(Integer.valueOf(7))).setLandscapeImageId(Integer.valueOf(0x7f0201cb));
            ((GenericView)buttons.get(Integer.valueOf(7))).fillContent((LinearLayout)findViewById(0x7f0900f1), nativeManager, getResources().getConfiguration().orientation);
        }
        if (addressItem.getCategory().intValue() == 6 && (EventAddressItem != null && !EventAddressItem.getIsValidate().booleanValue() || addressItem != null && !addressItem.getIsValidate().booleanValue()))
        {
            findViewById(0x7f0900f0).setVisibility(8);
            ((TextView)findViewById(0x7f0900f1).findViewById(0x7f0900ef)).setText(nativeManager.getLanguageString(DisplayStrings.DS_SAVE_AND_POST_TO_EVENT_WALL));
            ((TextView)findViewById(0x7f0900ed).findViewById(0x7f0900ef)).setText(nativeManager.getLanguageString(DisplayStrings.DS_SAVE_EVENT_LOCATION));
            findViewById(0x7f0900f1).setOnClickListener(new android.view.View.OnClickListener() {

                final AddressOptionsActivity this$0;

                public void onClick(View view1)
                {
                    driveToNativeManager.VerifyEventByIndex(addressItem.index, addressItem.getMeetingId(), EventAddressItem.getId(), Boolean.valueOf(false));
                    Analytics.log("VERIFY_EVENT_SAVE_POST");
                    new com.waze.social.facebook.FacebookWrapper.IOnAuthorizeCompletedListener() {

                        final _cls5 this$1;

                        public void onAuthorizeCompleted(boolean flag, int i)
                        {
                            if (flag)
                            {
                                Intent intent = new Intent(_fld0, com/waze/share/FacebookEventPostActivity);
                                intent.putExtra("message", nativeManager.getLanguageString(DisplayStrings.DS_POST_EVENT_WALL_TEXT));
                                intent.putExtra("link", nativeManager.getNavLink(addressItem.getLocationY().intValue(), addressItem.getLocationX().intValue()));
                                intent.putExtra("Id", EventAddressItem.getMeetingId());
                                startActivityForResult(intent, 333);
                            }
                        }

            
            {
                this$1 = _cls5.this;
                super();
            }
                    };
                }


            
            {
                this$0 = AddressOptionsActivity.this;
                super();
            }
            });
            findViewById(0x7f0900ed).setOnClickListener(new android.view.View.OnClickListener() {

                final AddressOptionsActivity this$0;

                public void onClick(View view1)
                {
                    driveToNativeManager.VerifyEventByIndex(addressItem.index, addressItem.getMeetingId(), EventAddressItem.getId(), Boolean.valueOf(false));
                    Analytics.log("VERIFY_EVENT_SAVE_EVENT_LOCATION");
                    Intent intent = new Intent();
                    intent.putExtra("AddressItem", addressItem);
                    setResult(32782, intent);
                    finish();
                }

            
            {
                this$0 = AddressOptionsActivity.this;
                super();
            }
            });
        }
        textview = (TextView)layoutView.findViewById(0x7f0900c2);
        if (addressItem.getTitle().equals(""))
        {
            layoutView.findViewById(0x7f0900c2).setVisibility(8);
        } else
        {
            textview.setText(addressItem.getTitle());
        }
        textview1 = (TextView)layoutView.findViewById(0x7f0900c4);
        if (addressItem.getAddress().equals(""))
        {
            textview1.setVisibility(8);
        } else
        {
            textview1.setVisibility(0);
            textview1.setText(addressItem.getAddress());
        }
        textview2 = (TextView)layoutView.findViewById(0x7f0900c6);
        if (addressItem.getDistance().equals(""))
        {
            textview2.setVisibility(8);
        } else
        {
            textview2.setVisibility(0);
            textview2.setText(addressItem.getDistance());
        }
        view = layoutView.findViewById(0x7f0900c7);
        imageview = (ImageView)layoutView.findViewById(0x7f0900c8);
        textview3 = (TextView)layoutView.findViewById(0x7f0900c9);
        if (addressItem.getPhone().equals(""))
        {
            view.setVisibility(8);
            imageview.setVisibility(8);
            textview3.setVisibility(8);
        } else
        {
            view.setVisibility(0);
            imageview.setVisibility(0);
            imageview.setImageResource(0x7f02029a);
            textview3.setVisibility(0);
            SpannableString spannablestring = new SpannableString(addressItem.getPhone());
            spannablestring.setSpan(new UnderlineSpan(), 0, spannablestring.length(), 0);
            textview3.setText(spannablestring);
            textview3.setOnClickListener(new android.view.View.OnClickListener() {

                final AddressOptionsActivity this$0;

                public void onClick(View view1)
                {
                    String s1 = ((TextView)view1).getText().toString();
                    Log.d("WAZE", (new StringBuilder("Opening dialer for: ")).append(s1).toString());
                    logAnalyticsAds("ADS_PREVIEW_PHONE_CLICKED");
                    Intent intent = new Intent("android.intent.action.DIAL");
                    intent.setData(Uri.parse((new StringBuilder("tel:")).append(s1).toString()));
                    intent.setFlags(0x10000000);
                    startActivity(intent);
                }

            
            {
                this$0 = AddressOptionsActivity.this;
                super();
            }
            });
        }
        imageview1 = (ImageView)layoutView.findViewById(0x7f0900d7);
        if (addressItem.getAccreditation() != null)
        {
            imageview1.setVisibility(0);
            imageview1.setImageDrawable(ResManager.GetSkinDrawable((new StringBuilder(String.valueOf(addressItem.getAccreditation()))).append(".bin").toString()));
            return;
        } else
        {
            imageview1.setVisibility(8);
            return;
        }
    }

    private void setMapLayoutListener(final View mapLayoutRoot)
    {
        final ViewTreeObserver vto = mapLayout.getViewTreeObserver();
        vto.addOnGlobalLayoutListener(new android.view.ViewTreeObserver.OnGlobalLayoutListener() {

            final AddressOptionsActivity this$0;
            private final View val$mapLayoutRoot;
            private final ViewTreeObserver val$vto;

            public void onGlobalLayout()
            {
                android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(mapLayoutRoot.getMeasuredWidth(), mapLayoutRoot.getMeasuredHeight());
                layoutparams.topMargin = mapLayoutRoot.getTop();
                layoutparams.leftMargin = mapLayoutRoot.getLeft();
                mapLayout.setLayoutParams(layoutparams);
                vto.removeGlobalOnLayoutListener(this);
            }

            
            {
                this$0 = AddressOptionsActivity.this;
                mapLayoutRoot = view;
                vto = viewtreeobserver;
                super();
            }
        });
    }

    private void setUpActivity()
    {
        setContentView(0x7f03000f);
        s_addressOptionsActivity = new WeakReference(this);
        ((TitleBar)findViewById(0x7f090058)).init(this, DisplayStrings.DS_PREVIEW);
        mapView = (MapView)findViewById(0x7f0900f5);
        mapView.setNativeCanvasReadyEvent(mNativeCanvasReadyEvent);
        mapPlaceholder = (RelativeLayout)findViewById(0x7f0900f3);
        mapLayout = (RelativeLayout)findViewById(0x7f0900f4);
        rightCorner = (ImageView)findViewById(0x7f0900fa);
        leftCorner = (ImageView)findViewById(0x7f0900f9);
        mapPlaceholder.getViewTreeObserver().addOnGlobalLayoutListener(new android.view.ViewTreeObserver.OnGlobalLayoutListener() {

            final AddressOptionsActivity this$0;

            public void onGlobalLayout()
            {
                android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(mapPlaceholder.getMeasuredWidth(), mapPlaceholder.getMeasuredHeight());
                layoutparams.topMargin = mapPlaceholder.getTop();
                layoutparams.leftMargin = mapPlaceholder.getLeft();
                mapLayout.setLayoutParams(layoutparams);
                android.widget.RelativeLayout.LayoutParams layoutparams1 = (android.widget.RelativeLayout.LayoutParams)leftCorner.getLayoutParams();
                layoutparams1.topMargin = 1 + (-16 + (mapPlaceholder.getTop() + mapPlaceholder.getMeasuredHeight()));
                layoutparams1.leftMargin = -1 + mapPlaceholder.getLeft();
                leftCorner.setLayoutParams(layoutparams1);
                android.widget.RelativeLayout.LayoutParams layoutparams2 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
                layoutparams2.topMargin = 1 + (-16 + (mapPlaceholder.getTop() + mapPlaceholder.getMeasuredHeight()));
                layoutparams2.leftMargin = 1 + (-14 + (mapPlaceholder.getLeft() + mapPlaceholder.getMeasuredWidth()));
                rightCorner.setLayoutParams(layoutparams2);
                mapPlaceholder.getViewTreeObserver().removeGlobalOnLayoutListener(this);
            }

            
            {
                this$0 = AddressOptionsActivity.this;
                super();
            }
        });
        isDayMode = driveToNativeManager.isDayMode();
        increaseMapButton = (ImageView)findViewById(0x7f0900f6);
        View view;
        ViewGroup viewgroup;
        int i;
        if (isDayMode)
        {
            increaseMapButton.setImageResource(0x7f02024e);
        } else
        {
            increaseMapButton.setImageResource(0x7f020250);
        }
        addressItemList = (ArrayList)getIntent().getExtras().getSerializable("AddressItemList");
        selectedItem = getIntent().getExtras().getInt("AddressItemSelected");
        if (addressItemList == null)
        {
            addressItem = (AddressItem)getIntent().getExtras().getSerializable("AddressItem");
        } else
        {
            EventAddressItem = (AddressItem)getIntent().getExtras().getSerializable("AddressItem");
        }
        layoutView = ((LayoutInflater)getSystemService("layout_inflater")).inflate(0x7f03000e, null);
        layoutView.findViewById(0x7f0900e2).setVisibility(0);
        layoutView.findViewById(0x7f0900d8).setVisibility(8);
        layoutView.findViewById(0x7f0900c3).setVisibility(8);
        layoutView.findViewById(0x7f0900be).setVisibility(8);
        layoutView.setBackgroundResource(0x7f020226);
        layoutView.setPadding(0, 0, 0, 0);
        view = findViewById(0x7f09006c);
        viewgroup = (ViewGroup)view.getParent();
        i = viewgroup.indexOfChild(view);
        viewgroup.removeView(view);
        viewgroup.addView(layoutView, i);
        ((GenericView)buttons.get(Integer.valueOf(7))).fillContent((LinearLayout)findViewById(0x7f0900f1), nativeManager, getResources().getConfiguration().orientation);
        ((GenericView)buttons.get(Integer.valueOf(getIntent().getExtras().getInt("ActionButton")))).fillContent((LinearLayout)findViewById(0x7f0900f0), nativeManager);
        ((GenericView)buttons.get(Integer.valueOf(5))).fillContent((LinearLayout)findViewById(0x7f0900ed), nativeManager);
        refreshView();
        previewTabsManager.initTabs();
    }

    public static void updateEta(String s, String s1, String s2)
    {
        if (s_addressOptionsActivity != null)
        {
            AddressOptionsActivity addressoptionsactivity = (AddressOptionsActivity)s_addressOptionsActivity.get();
            if (addressoptionsactivity != null)
            {
                addressoptionsactivity.onUpdateEta(s, s1, s2);
            }
        }
    }

    public void centerButtonClicked(View view)
    {
        Log.d("WAZE", "center pressed");
        ((GenericView)buttons.get(Integer.valueOf(getIntent().getExtras().getInt("ActionButton")))).onClick(this, findViewById(0x7f0900bd));
    }

    public AddressItem getAddressItem()
    {
        return addressItem;
    }

    public void increaseMapClicked(View view)
    {
        if (isMapBig)
        {
            previewTabsManager.setVisible(true);
            isMapBig = false;
            mapView.setHandleTouch(false);
            rightCorner.setVisibility(0);
            leftCorner.setVisibility(0);
            if (isDayMode)
            {
                increaseMapButton.setImageResource(0x7f02024e);
            } else
            {
                increaseMapButton.setImageResource(0x7f020250);
            }
            setMapLayoutListener(mapPlaceholder);
            driveToNativeManager.centerMapInAddressOptionsView(addressItem.index, addressItem.getLocationX().intValue(), addressItem.getLocationY().intValue(), true, addressItem.getIcon());
            return;
        }
        isMapBig = true;
        mapView.setHandleTouch(true);
        rightCorner.setVisibility(8);
        leftCorner.setVisibility(8);
        previewTabsManager.setVisible(false);
        if (isDayMode)
        {
            increaseMapButton.setImageResource(0x7f020248);
        } else
        {
            increaseMapButton.setImageResource(0x7f020249);
        }
        setMapLayoutListener(findViewById(0x7f0900eb));
    }

    public void leftButtonClicked(View view)
    {
        Intent intent = new Intent(this, com/waze/navigate/AddressOptionsMoreActivity);
        intent.putExtra("AddressItem", getAddressItem());
        intent.putExtra("AdditionalButton", isAdditionalAddToFavorites);
        if (addressItem != null)
        {
            Integer integer = addressItem.getType();
            boolean flag;
            if (integer.intValue() != 8 && integer.intValue() != 13)
            {
                flag = false;
            } else
            {
                flag = true;
            }
            intent.putExtra("RemoveFromHistoryButton", flag);
        }
        startActivityForResult(intent, 1);
    }

    public void navigateCallback(int i)
    {
        setResult(-1);
        finish();
    }

    public void nextSearchResult(View view)
    {
        if (addressItemList == null || addressItemList.size() <= 1 + selectedItem)
        {
            return;
        } else
        {
            selectedItem = 1 + selectedItem;
            refreshView();
            driveToNativeManager.notifyAddressItemClicked(selectedItem);
            driveToNativeManager.centerMapInAddressOptionsView(addressItem.index, addressItem.getLocationX().intValue(), addressItem.getLocationY().intValue(), true, addressItem.getIcon());
            driveToNativeManager.notifyAddressItemShownBeforeNavigate(addressItem.index);
            logAnalyticsAds("ADS_PREVIEW_SHOWN");
            return;
        }
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        if (i != 333) goto _L2; else goto _L1
_L1:
        if (j == -1)
        {
            Intent intent1 = new Intent();
            intent1.putExtra("AddressItem", addressItem);
            setResult(32782, intent1);
            finish();
        } else
        {
            setResult(-1);
            finish();
        }
_L4:
        super.onActivityResult(i, j, intent);
        return;
_L2:
        if (j == 1)
        {
            setResult(1);
            finish();
        } else
        if (j == -1)
        {
            setResult(-1);
            finish();
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        super.onConfigurationChanged(configuration);
        mapView.onPause();
        driveToNativeManager.unsetAddressOptionsView();
        setUpActivity();
        mapView.onResume();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        requestWindowFeature(1);
        driveToNativeManager = DriveToNativeManager.getInstance();
        NativeManager.getInstance().OpenRoutingIntent();
        nativeManager = AppService.getNativeManager();
        isAdditionalAddToFavorites = getIntent().getExtras().getBoolean("AdditionalButton");
        isClearAdsContext = getIntent().getExtras().getBoolean("ClearAdsContext", false);
        isNavigateable = getIntent().getExtras().getBoolean("Navigateable", true);
        previewTabsManager = new PreviewTabsManager(this, Boolean.valueOf(isNavigateable));
        setUpActivity();
        previewTabsManager.setSelectedTab(getIntent().getExtras().getInt("SelectedTab", 0));
    }

    protected void onDestroy()
    {
        super.onDestroy();
        if (isClearAdsContext || addressItem != null && addressItem.getType().intValue() == 8 && addressItem.getMeetingId() != null)
        {
            Analytics.adsContextClear();
        }
    }

    public void onPause()
    {
        super.onPause();
        mapView.onPause();
        driveToNativeManager.unsetAddressOptionsView();
    }

    public void onResume()
    {
        super.onResume();
        mapView.onResume();
    }

    public void onUpdateEta(String s, String s1, String s2)
    {
        if (addressItem.getId() == null || !addressItem.getId().equals(s2))
        {
            return;
        } else
        {
            ((TextView)layoutView.findViewById(0x7f0900c6)).setText(s1);
            return;
        }
    }

    public void prevSearchResult(View view)
    {
        if (selectedItem == 0)
        {
            return;
        } else
        {
            selectedItem = -1 + selectedItem;
            refreshView();
            driveToNativeManager.centerMapInAddressOptionsView(addressItem.index, addressItem.getLocationX().intValue(), addressItem.getLocationY().intValue(), true, addressItem.getIcon());
            driveToNativeManager.notifyAddressItemShownBeforeNavigate(addressItem.index);
            return;
        }
    }

    public void rightButtonClicked(View view)
    {
        Log.d("WAZE", "right pressed");
        logAnalyticsAds("ADS_PREVIEW_NAVIGATE");
        Analytics.adsContextNavigationInit();
        ((GenericView)buttons.get(Integer.valueOf(5))).onClick(this, findViewById(0x7f0900bd));
    }

    static 
    {
        buttons = null;
        buttons = new HashMap();
        buttons.put(Integer.valueOf(1), new AddToFavoritesButton());
        buttons.put(Integer.valueOf(3), new DeleteFromFavoritesButton());
        buttons.put(Integer.valueOf(4), new DeleteFromHistoryButton());
        buttons.put(Integer.valueOf(5), new GoButton());
        buttons.put(Integer.valueOf(6), new GoneButton());
        buttons.put(Integer.valueOf(7), new MoreButton());
    }












    // Unreferenced inner class com/waze/navigate/AddressOptionsActivity$PreviewTabsManager$1

/* anonymous class */
    class PreviewTabsManager._cls1
        implements com.waze.view.tabs.TabBar.IOnTabClickListener
    {

        final PreviewTabsManager this$1;

        public void onClick(int i)
        {
            if (i == mSelectedTab)
            {
                return;
            }
            View view = null;
            if (i == 0)
            {
                mHolder.logAnalyticsAds("ADS_PREVIEW_SHOWN");
                view = mHolder.findViewById(0x7f0900e6);
                mHolder.mapPlaceholder.getViewTreeObserver().addOnGlobalLayoutListener(new android.view.ViewTreeObserver.OnGlobalLayoutListener() {

                    final PreviewTabsManager._cls1 this$2;

                    public void onGlobalLayout()
                    {
    class PreviewTabsManager._cls1
        implements com.waze.view.tabs.TabBar.IOnTabClickListener
    {
                        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(mHolder.mapPlaceholder.getMeasuredWidth(), mHolder.mapPlaceholder.getMeasuredHeight());
                        layoutparams.topMargin = mHolder.mapPlaceholder.getTop();
                        layoutparams.leftMargin = mHolder.mapPlaceholder.getLeft();
                        mHolder.mapLayout.setLayoutParams(layoutparams);
                        mHolder.mapPlaceholder.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                    }

            
            {
                this$2 = PreviewTabsManager._cls1.this;
                super();
            }
                });
            }
            if (i == 1)
            {
                view = mHolder.findViewById(0x7f0900e7);
                WzWebView wzwebview1 = (WzWebView)view.findViewById(0x7f0900e8);
                wzwebview1.setUrlOverride(mInfoUrlOverride);
                mHolder.logAnalyticsAds("ADS_INFO_SHOWN");
                wzwebview1.loadUrl(mHolder.addressItem.getUrl());
            }
            if (i == 2)
            {
                view = mHolder.findViewById(0x7f0900e9);
                WzWebView wzwebview = (WzWebView)view.findViewById(0x7f0900ea);
                wzwebview.setUrlOverride(mSpecialUrlOverride);
                mHolder.logAnalyticsAds("ADS_SPECIAL_SHOWN");
                wzwebview.loadUrl(mHolder.addressItem.getSpecialUrl());
            }
            mSelectedTab = i;
            mSelectedTabView.setVisibility(8);
            view.setVisibility(0);
            mSelectedTabView = view;
        }


            
            {
                this$1 = PreviewTabsManager.this;
                super();
            }
    }


    // Unreferenced inner class com/waze/navigate/AddressOptionsActivity$PreviewTabsManager$2

/* anonymous class */
    class PreviewTabsManager._cls2
        implements com.waze.WzWebView.WebViewUrlOverride
    {

        final PreviewTabsManager this$1;

        public boolean onUrlOverride(WebView webview, String s)
        {
            int _tmp = mHolder.caller;
            if (s != null)
            {
                if (s.contains("tel:"))
                {
                    mHolder.logAnalyticsAds("ADS_INFO_PHONE_CLICKED");
                    Intent intent = new Intent("android.intent.action.DIAL", Uri.parse(s.substring(s.indexOf("tel:"), s.length())));
                    ((AddressOptionsActivity)AddressOptionsActivity.s_addressOptionsActivity.get()).runOnUiThread(intent. new Runnable() {

                        final PreviewTabsManager._cls2 this$2;
                        private final Intent val$intent;

                        public void run()
                        {
                            ((AddressOptionsActivity)AddressOptionsActivity.s_addressOptionsActivity.get()).startActivity(intent);
                        }

            
            {
                this$2 = final__pcls2;
                intent = Intent.this;
                super();
            }
                    });
                    return true;
                }
                if (s.startsWith("waze://?open_url"))
                {
                    mHolder.logAnalyticsAds("ADS_INFO_URL_CLICKED");
                } else
                if (s.startsWith("waze://"))
                {
                    NativeManager nativemanager = AppService.getNativeManager();
                    String s1 = Uri.decode(s.toString());
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
                this$1 = PreviewTabsManager.this;
                super();
            }
    }


    // Unreferenced inner class com/waze/navigate/AddressOptionsActivity$PreviewTabsManager$3

/* anonymous class */
    class PreviewTabsManager._cls3
        implements com.waze.WzWebView.WebViewUrlOverride
    {

        final PreviewTabsManager this$1;

        public boolean onUrlOverride(WebView webview, String s)
        {
            if (s != null)
            {
                if (s.startsWith("tel:"))
                {
                    mHolder.logAnalyticsAds("ADS_SPECIAL_PHONE_CLICKED");
                    Intent intent = new Intent("android.intent.action.DIAL", Uri.parse(s.substring(s.indexOf("tel:"), s.length())));
                    ((AddressOptionsActivity)AddressOptionsActivity.s_addressOptionsActivity.get()).runOnUiThread(intent. new Runnable() {

                        final PreviewTabsManager._cls3 this$2;
                        private final Intent val$intent;

                        public void run()
                        {
                            ((AddressOptionsActivity)AddressOptionsActivity.s_addressOptionsActivity.get()).startActivity(intent);
                        }

            
            {
                this$2 = final__pcls3;
                intent = Intent.this;
                super();
            }
                    });
                    return true;
                }
                if (s.startsWith("waze://"))
                {
                    NativeManager nativemanager = AppService.getNativeManager();
                    String s1 = Uri.decode(s.toString());
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
                this$1 = PreviewTabsManager.this;
                super();
            }
    }

}
