// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navbar;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Color;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.OvershootInterpolator;
import android.view.animation.RotateAnimation;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.LayoutManager;
import com.waze.MainActivity;
import com.waze.MoodManager;
import com.waze.MsgBox;
import com.waze.NativeManager;
import com.waze.NavBarManager;
import com.waze.analytics.Analytics;
import com.waze.main.navigate.LocationData;
import com.waze.main.navigate.NavigationListActivity;
import com.waze.messages.QuestionData;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.navigate.AddressItem;
import com.waze.navigate.DriveToNativeManager;
import com.waze.reports.AddPlaceFlowActivity;
import com.waze.reports.PhotoPagerSection;
import com.waze.reports.PlacePhotoGallery;
import com.waze.reports.VenueData;
import com.waze.strings.DisplayStrings;
import com.waze.utils.ImageRepository;
import com.waze.view.anim.AnimationUtils;
import com.waze.view.bottom.BottomNotification;
import com.waze.view.navbar.BottomBar;
import com.waze.view.navbar.NavBarText;
import java.util.ArrayList;

public class NavBar
{

    public static final int instImagesLeft[];
    public static final int instImagesRight[];
    private boolean IsInAlertMode;
    private boolean IsNextInstruction;
    private int NextInstruction;
    private boolean Nextdisplayed;
    BottomBar bottomBar;
    View boxView;
    LocationData destinationData;
    TextView directionText;
    TextView distance;
    TextView distanceUnit;
    private DriveToNativeManager dtnm;
    private int instImages[];
    private com.waze.navigate.DriveToNativeManager.AddressItemAppData mAddressItemAppData;
    private AddressItem mDestAddressItem;
    private VenueData mFoundVenue;
    protected final Handler mHandler = new Handler() {

        final NavBar this$0;

        public void handleMessage(Message message)
        {
            Bundle bundle;
            if (message.what != DriveToNativeManager.UH_SEARCH_ADD_RESULT)
            {
                break MISSING_BLOCK_LABEL_493;
            }
            dtnm.unsetUpdateHandler(DriveToNativeManager.UH_SEARCH_ADD_RESULT, mHandler);
            bundle = message.getData();
            if (mPhotoGallery == null || !mPhotoGallery.isShowing()) goto _L2; else goto _L1
_L1:
            mDestAddressItem = (AddressItem)bundle.getSerializable("address_item");
            if (mDestAddressItem == null || mDestAddressItem.venueData == null) goto _L4; else goto _L3
_L3:
            ArrayList arraylist;
            int j;
            mFoundVenue = mDestAddressItem.venueData;
            arraylist = new ArrayList(mFoundVenue.numImages);
            j = 0;
_L7:
            if (j < mFoundVenue.numImages) goto _L6; else goto _L5
_L5:
            mPhotoGallery.updateImages(arraylist);
_L4:
            return;
_L6:
            arraylist.add(new com.waze.reports.PhotoPagerSection.VenueImage(mFoundVenue.imageURLs[j], mFoundVenue.imageThumbnailURLs[j], mFoundVenue.imageReporters[j], mFoundVenue.imageReporterMoods[j], mFoundVenue.imageLiked[j], mFoundVenue.imageByMe[j], false));
            j++;
            if (true) goto _L7; else goto _L2
_L2:
            mReceivedSearchResult = true;
            mDestAddressItem = (AddressItem)bundle.getSerializable("address_item");
            AddressItem addressitem = mDestAddressItem;
            int i = 0;
            if (addressitem != null)
            {
                VenueData venuedata = mDestAddressItem.venueData;
                i = 0;
                if (venuedata != null)
                {
                    mVenueID = mDestAddressItem.VanueID;
                    mFoundVenue = mDestAddressItem.venueData;
                    if (mSaveNav)
                    {
                        mSaveNav = false;
                        nativeManager.venueSaveNav(mFoundVenue);
                    }
                    updateVenueImages(mDestAddressItem.venueData);
                    VenueData venuedata1 = mDestAddressItem.venueData;
                    i = 0;
                    if (venuedata1 != null)
                    {
                        i = mDestAddressItem.venueData.numImages;
                    }
                }
            }
            if (!nearingDisplayed)
            {
                openNearingDest(destinationData, i);
                animateNearingDestinationIn();
                return;
            } else
            {
                openNearingDest(destinationData, i);
                return;
            }
            super.handleMessage(message);
            return;
        }

            
            {
                this$0 = NavBar.this;
                super();
            }
    };
    private PlacePhotoGallery mPhotoGallery;
    private boolean mReceivedSearchResult;
    private boolean mSaveNav;
    private String mVenueID;
    private View mainView;
    private NativeManager nativeManager;
    private boolean nearingDisplayed;
    View nextView;
    private boolean nightMode;
    private float scale;
    private boolean shouldRestoreNearing;
    private boolean shown;
    NavBarText streetText;
    TextView thenDirection;
    TextView thenText;
    View topView;

    public NavBar(View view, BottomBar bottombar)
    {
        IsInAlertMode = false;
        IsNextInstruction = false;
        Nextdisplayed = false;
        shouldRestoreNearing = false;
        mVenueID = null;
        mSaveNav = false;
        mReceivedSearchResult = false;
        mDestAddressItem = null;
        mPhotoGallery = null;
        dtnm = DriveToNativeManager.getInstance();
        scale = view.getResources().getDisplayMetrics().density;
        nativeManager = AppService.getNativeManager();
        mainView = view;
        bottomBar = bottombar;
        bottombar.setOnClickListener(new android.view.View.OnClickListener() {

            final NavBar this$0;

            public void onClick(View view1)
            {
                nativeManager.getNavBarManager().showNavigationResult();
                MainActivity mainactivity = AppService.getMainActivity();
                if (mainactivity != null)
                {
                    LayoutManager layoutmanager = mainactivity.getLayoutMgr();
                    if (layoutmanager != null)
                    {
                        layoutmanager.closeShareTooltip();
                    }
                }
            }

            
            {
                this$0 = NavBar.this;
                super();
            }
        });
        instImages = instImagesRight;
        topView = view.findViewById(0x7f090168);
        streetText = (NavBarText)view.findViewById(0x7f090172);
        thenText = (TextView)view.findViewById(0x7f090166);
        directionText = (TextView)view.findViewById(0x7f09016a);
        thenDirection = (TextView)view.findViewById(0x7f090167);
        nextView = view.findViewById(0x7f090165);
        boxView = view.findViewById(0x7f090169);
        view.findViewById(0x7f090168).setOnClickListener(new android.view.View.OnClickListener() {

            final NavBar this$0;

            public void onClick(View view1)
            {
                Intent intent = new Intent(AppService.getAppContext(), com/waze/main/navigate/NavigationListActivity);
                AppService.getMainActivity().startActivityForResult(intent, 32777);
            }

            
            {
                this$0 = NavBar.this;
                super();
            }
        });
        android.view.View.OnClickListener onclicklistener = new android.view.View.OnClickListener() {

            final NavBar this$0;

            public void onClick(View view1)
            {
                if (view1.getId() != 0x7f090456 || mFoundVenue == null || mFoundVenue.numImages <= 0) goto _L2; else goto _L1
_L1:
                ArrayList arraylist;
                int i;
                Analytics.log("PLACES_NEAR_DESTINATION_PHOTO_CLICKED", "VENUE_ID", mVenueID);
                if (mFoundVenue.bHasMoreData)
                {
                    dtnm.unsetUpdateHandler(DriveToNativeManager.UH_SEARCH_ADD_RESULT, mHandler);
                    dtnm.setUpdateHandler(DriveToNativeManager.UH_SEARCH_ADD_RESULT, mHandler);
                    nativeManager.venueGet(mFoundVenue.id, 1, true);
                }
                arraylist = new ArrayList(mFoundVenue.numImages);
                i = 0;
_L8:
                if (i < mFoundVenue.numImages) goto _L4; else goto _L3
_L3:
                mPhotoGallery = PhotoPagerSection.openPlacePhotoGalleryFromView(view1, arraylist, 0, arraylist. new com.waze.reports.PlacePhotoGallery.IPhotoGalleryListener() {

                    final _cls4 this$1;
                    private final ArrayList val$imageArray;

                    public void onDelete(int i)
                    {
                        nativeManager.venueDeleteImage(mFoundVenue.id, mFoundVenue.imageURLs[i]);
                        mFoundVenue.removeImage(i);
                        imageArray.remove(i);
                        if (i == 0)
                        {
                            updateVenueImages(mFoundVenue);
                        }
                    }

                    public void onFlag(int i, int j)
                    {
                        nativeManager.venueFlagImage(mFoundVenue.id, mFoundVenue.imageURLs[i], j);
                        mFoundVenue.removeImage(i);
                        imageArray.remove(i);
                        if (i == 0)
                        {
                            updateVenueImages(mFoundVenue);
                        }
                    }

                    public void onLike(int i)
                    {
                        mFoundVenue.imageLiked[i] = true;
                        nativeManager.venueLikeImage(mFoundVenue.id, mFoundVenue.imageURLs[i]);
                    }

                    public void onScroll(int i)
                    {
                    }

                    public void onUnlike(int i)
                    {
                        mFoundVenue.imageLiked[i] = false;
                        nativeManager.venueUnlikeImage(mFoundVenue.id, mFoundVenue.imageURLs[i]);
                    }

            
            {
                this$1 = final__pcls4;
                imageArray = ArrayList.this;
                super();
            }
                }, AppService.getMainActivity());
_L6:
                return;
_L4:
                arraylist.add(new com.waze.reports.PhotoPagerSection.VenueImage(mFoundVenue.imageURLs[i], mFoundVenue.imageThumbnailURLs[i], mFoundVenue.imageReporters[i], mFoundVenue.imageReporterMoods[i], mFoundVenue.imageLiked[i], mFoundVenue.imageByMe[i], false));
                i++;
                continue; /* Loop/switch isn't completed */
_L2:
                Intent intent;
                if (MyWazeNativeManager.getInstance().getInvisibleNTV())
                {
                    MsgBox.openMessageBox(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_UHHOHE), NativeManager.getInstance().getLanguageString(DisplayStrings.DS_CANNOT_REPORT_WHILE_INVISIBLE), true);
                    return;
                }
                Analytics.log("PLACES_NEAR_DESTINATION_TAKE_PHOTO_CLICKED", "VENUE_ID", mVenueID);
                intent = new Intent(mainView.getContext(), com/waze/reports/AddPlaceFlowActivity);
                if (destinationData != null)
                {
                    intent.putExtra("name", destinationData.destinationName);
                    intent.putExtra("street", destinationData.mStreet);
                    intent.putExtra("city", destinationData.mCity);
                    intent.putExtra("x", destinationData.locationX);
                    intent.putExtra("y", destinationData.locationY);
                }
                if (mDestAddressItem != null && mDestAddressItem.venueData != null)
                {
                    intent.putExtra("destination_venue_id", mDestAddressItem.venueData.id);
                }
                if (AppService.getMainActivity() == null) goto _L6; else goto _L5
_L5:
                AppService.getMainActivity().startActivityForResult(intent, 32785);
                return;
                if (true) goto _L8; else goto _L7
_L7:
            }


            
            {
                this$0 = NavBar.this;
                super();
            }
        };
        view.findViewById(0x7f090463).setOnClickListener(onclicklistener);
        view.findViewById(0x7f090456).setOnClickListener(onclicklistener);
        view.findViewById(0x7f090465).setOnClickListener(new android.view.View.OnClickListener() {

            final NavBar this$0;

            public void onClick(View view1)
            {
                com.waze.navigate.DriveToNativeManager.AddressItemAppData addressitemappdata;
                boolean flag1;
                if (mAddressItemAppData.bNearingMinimized)
                {
                    restoreNearingPanel();
                } else
                {
                    minimizeNearingPanel();
                }
                addressitemappdata = mAddressItemAppData;
                if (mAddressItemAppData.bNearingMinimized)
                {
                    flag1 = false;
                } else
                {
                    flag1 = true;
                }
                addressitemappdata.bNearingMinimized = flag1;
                dtnm.updateAddressItemAppData(dtnm.getDestinationIdNTV(), mAddressItemAppData);
            }

            
            {
                this$0 = NavBar.this;
                super();
            }
        });
        view.findViewById(0x7f090459).setVisibility(8);
        view.findViewById(0x7f09045d).setVisibility(0);
        view.findViewById(0x7f090457).setVisibility(8);
        ((TextView)view.findViewById(0x7f090460)).setText(nativeManager.getLanguageString(DisplayStrings.DS_ALMOST_THERE___));
        ((TextView)view.findViewById(0x7f09045f)).setText(nativeManager.getLanguageString(DisplayStrings.DS_BE_THE_FIRST_TO_ADD_A_PHOTOE));
        ((TextView)view.findViewById(0x7f090461)).setText(" ");
        thenText.setText(nativeManager.getLanguageString(DisplayStrings.DS_AND_THEN));
        streetText.setNavBar(this);
        streetText.setText(new String());
        boolean flag = nativeManager.getLanguageRtl();
        if (flag)
        {
            streetText.setGravity(5);
        } else
        {
            streetText.setGravity(3);
        }
        bottombar.initLang(flag);
        if (flag)
        {
            view.findViewById(0x7f09016f).setVisibility(0);
            view.findViewById(0x7f09016c).setVisibility(8);
            distance = (TextView)view.findViewById(0x7f090170);
            distanceUnit = (TextView)view.findViewById(0x7f090171);
        } else
        {
            view.findViewById(0x7f09016f).setVisibility(8);
            view.findViewById(0x7f09016c).setVisibility(0);
            distance = (TextView)view.findViewById(0x7f09016d);
            distanceUnit = (TextView)view.findViewById(0x7f09016e);
        }
        shown = false;
    }

    private void animateNearingDestinationIn()
    {
        final View navBar = mainView.findViewById(0x7f090163);
        if (IsInAlertMode)
        {
            if (Nextdisplayed)
            {
                mainView.findViewById(0x7f090165).setVisibility(0);
            }
            mainView.findViewById(0x7f090452).setVisibility(0);
            View view = mainView.findViewById(0x7f090453);
            int i;
            View view1;
            boolean flag;
            int j;
            if (shown)
            {
                i = 0;
            } else
            {
                i = 8;
            }
            view.setVisibility(i);
            view1 = mainView.findViewById(0x7f090454);
            flag = shown;
            j = 0;
            if (!flag)
            {
                j = 8;
            }
            view1.setVisibility(j);
            return;
        } else
        {
            AnimationUtils.openAnimateAlert(navBar, new android.view.animation.Animation.AnimationListener() {

                final NavBar this$0;
                private final View val$navBar;

                public void onAnimationEnd(Animation animation)
                {
                    navBar.clearAnimation();
                    ChangeToAlertMode(true);
                    if (Nextdisplayed)
                    {
                        mainView.findViewById(0x7f090165).setVisibility(0);
                    }
                    View view2 = mainView.findViewById(0x7f090452);
                    view2.setVisibility(0);
                    View view3 = mainView.findViewById(0x7f090453);
                    int k;
                    View view4;
                    boolean flag1;
                    int l;
                    if (shown)
                    {
                        k = 0;
                    } else
                    {
                        k = 8;
                    }
                    view3.setVisibility(k);
                    view4 = mainView.findViewById(0x7f090454);
                    flag1 = shown;
                    l = 0;
                    if (!flag1)
                    {
                        l = 8;
                    }
                    view4.setVisibility(l);
                    view2.getViewTreeObserver().addOnGlobalLayoutListener(view2. new android.view.ViewTreeObserver.OnGlobalLayoutListener() {

                        final _cls10 this$1;
                        private final View val$navBar;
                        private final View val$nearingView;

                        public void onGlobalLayout()
                        {
                            AnimationUtils.openAnimateAlert2(navBar, null);
                            nearingView.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                        }

            
            {
                this$1 = final__pcls10;
                navBar = view;
                nearingView = View.this;
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
                this$0 = NavBar.this;
                navBar = view;
                super();
            }
            });
            return;
        }
    }

    private void animateNearingDestinationOut()
    {
        AnimationUtils.openAnimateAlert(mainView.findViewById(0x7f090163), new android.view.animation.Animation.AnimationListener() {

            final NavBar this$0;

            public void onAnimationEnd(Animation animation)
            {
                ChangeToAlertMode(false);
                AnimationUtils.openAnimateAlert2(mainView.findViewById(0x7f090168), new android.view.animation.Animation.AnimationListener() {

                    final _cls11 this$1;

                    public void onAnimationEnd(Animation animation)
                    {
                        ChangeToAlertMode(false);
                    }

                    public void onAnimationRepeat(Animation animation)
                    {
                    }

                    public void onAnimationStart(Animation animation)
                    {
                        View view = mainView.findViewById(0x7f090452);
                        AlphaAnimation alphaanimation = new AlphaAnimation(1.0F, 0.0F);
                        alphaanimation.setDuration(500L);
                        alphaanimation.setAnimationListener(view. new android.view.animation.Animation.AnimationListener() {

                            final _cls1 this$2;
                            private final View val$nearingView;

                            public void onAnimationEnd(Animation animation)
                            {
                                nearingView.setVisibility(8);
                                nearingView.clearAnimation();
                            }

                            public void onAnimationRepeat(Animation animation)
                            {
                            }

                            public void onAnimationStart(Animation animation)
                            {
                            }

            
            {
                this$2 = final__pcls1;
                nearingView = View.this;
                super();
            }
                        });
                        view.startAnimation(alphaanimation);
                    }

            
            {
                this$1 = _cls11.this;
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
                this$0 = NavBar.this;
                super();
            }
        });
    }

    private void openNearingDest(LocationData locationdata, int i)
    {
        nearingDisplayed = true;
        adjustImages();
        View view = mainView.findViewById(0x7f090452);
        String s;
        TextView textview;
        String s1;
        TextView textview1;
        String s2;
        StringBuilder stringbuilder;
        String s3;
        View view1;
        int j;
        float f;
        int k;
        RotateAnimation rotateanimation;
        View view2;
        byte byte0;
        View view3;
        byte byte1;
        TextView textview2;
        int l;
        int i1;
        String s4;
        android.widget.LinearLayout.LayoutParams layoutparams;
        View view4;
        View view5;
        View view6;
        if (nightMode)
        {
            s = "#446270";
        } else
        {
            s = "#2e2e2e";
        }
        view.setBackgroundColor(Color.parseColor(s));
        textview = (TextView)view.findViewById(0x7f090460);
        if (nightMode)
        {
            s1 = "#add9ea";
        } else
        {
            s1 = "#ffffff";
        }
        textview.setTextColor(Color.parseColor(s1));
        textview1 = (TextView)view.findViewById(0x7f090461);
        if (nightMode)
        {
            s2 = "#ffffff";
        } else
        {
            s2 = "#93c4d3";
        }
        textview1.setTextColor(Color.parseColor(s2));
        if (AppService.getAppContext().getResources().getConfiguration().orientation == 2)
        {
            mAddressItemAppData.bNearingMinimized = true;
        }
        stringbuilder = (new StringBuilder(String.valueOf(i))).append("|");
        if (mAddressItemAppData.bNearingMinimized)
        {
            s3 = "TRUE";
        } else
        {
            s3 = "FALSE";
        }
        Analytics.log("PLACES_NEAR_DESTINATION_SHOWN", "NUM_IMAGES|COLLAPSED|VENUE_ID", stringbuilder.append(s3).append("|").append(mVenueID).toString());
        view.setOnTouchListener(new android.view.View.OnTouchListener() {

            float startY;
            final NavBar this$0;

            public boolean onTouch(View view7, MotionEvent motionevent)
            {
                boolean flag = true;
                if (nearingDisplayed) goto _L2; else goto _L1
_L1:
                flag = false;
_L4:
                return flag;
_L2:
                if (motionevent.getAction() == 0)
                {
                    startY = motionevent.getY();
                    return flag;
                }
                if (motionevent.getAction() != 2)
                {
                    continue; /* Loop/switch isn't completed */
                }
                if (mAddressItemAppData.bNearingMinimized && motionevent.getY() - startY > 40F)
                {
                    mainView.findViewById(0x7f090465).callOnClick();
                    return flag;
                }
                if (mAddressItemAppData.bNearingMinimized || startY - motionevent.getY() <= 40F) goto _L4; else goto _L3
_L3:
                mainView.findViewById(0x7f090465).callOnClick();
                return flag;
                if (motionevent.getAction() != flag) goto _L4; else goto _L5
_L5:
                startY = 0.0F;
                return flag;
            }

            
            {
                this$0 = NavBar.this;
                super();
                startY = 0.0F;
            }
        });
        view1 = mainView.findViewById(0x7f090465);
        if (mAddressItemAppData.bNearingMinimized)
        {
            j = 180;
        } else
        {
            j = 0;
        }
        f = j;
        if (mAddressItemAppData.bNearingMinimized)
        {
            k = 180;
        } else
        {
            k = 0;
        }
        rotateanimation = new RotateAnimation(f, k, 1, 0.5F, 1, 0.5F);
        rotateanimation.setDuration(0L);
        rotateanimation.setFillAfter(true);
        view1.startAnimation(rotateanimation);
        view2 = mainView.findViewById(0x7f090460);
        if (mAddressItemAppData.bNearingMinimized)
        {
            byte0 = 8;
        } else
        {
            byte0 = 0;
        }
        view2.setVisibility(byte0);
        view3 = mainView.findViewById(0x7f090456);
        if (mAddressItemAppData.bNearingMinimized)
        {
            byte1 = 8;
        } else
        {
            byte1 = 0;
        }
        view3.setVisibility(byte1);
        textview2 = (TextView)mainView.findViewById(0x7f090461);
        if (mAddressItemAppData.bNearingMinimized)
        {
            l = 14;
        } else
        {
            l = 18;
        }
        textview2.setTextSize(2, l);
        if (mAddressItemAppData.bNearingMinimized)
        {
            i1 = 1;
        } else
        {
            i1 = 3;
        }
        textview2.setMaxLines(i1);
        s4 = " ";
        if (locationdata != null && locationdata.destinationName != null && !locationdata.destinationName.isEmpty())
        {
            s4 = locationdata.destinationName;
        }
        textview2.setText(s4);
        layoutparams = (android.widget.LinearLayout.LayoutParams)textview2.getLayoutParams();
        if (mAddressItemAppData.bNearingMinimized)
        {
            int j1 = mainView.findViewById(0x7f090462).getWidth();
            layoutparams.width = topView.getWidth() - j1 - (int)(20F * scale);
            layoutparams.rightMargin = j1 + (int)(20F * scale);
        } else
        {
            layoutparams.width = -2;
            layoutparams.rightMargin = (int)(10F * scale);
        }
        textview2.setLayoutParams(layoutparams);
        view4 = mainView.findViewById(0x7f090454);
        view5 = mainView.findViewById(0x7f090456);
        view6 = mainView.findViewById(0x7f090460);
        view.clearAnimation();
        view4.clearAnimation();
        view5.clearAnimation();
        textview2.clearAnimation();
        view6.clearAnimation();
    }

    private void setNearingFriendsNumber(int i)
    {
        TextView textview = (TextView)mainView.findViewById(0x7f09046b);
        if (i != 0)
        {
            textview.setVisibility(0);
            textview.setText((new StringBuilder()).append(i).toString());
            return;
        } else
        {
            textview.setVisibility(8);
            return;
        }
    }

    private void updateBackground(View view, int i)
    {
        int j = view.getPaddingLeft();
        int k = view.getPaddingRight();
        int l = view.getPaddingTop();
        int i1 = view.getPaddingBottom();
        view.setBackgroundResource(i);
        view.setPadding(j, l, k, i1);
    }

    private void updateMuteImage()
    {
        ImageButton imagebutton = (ImageButton)mainView.findViewById(0x7f090467);
        int i = nativeManager.isNavigatingVoiceNTV();
        if (i == 0)
        {
            imagebutton.setImageResource(0x7f0203c0);
            return;
        }
        if (i == 2)
        {
            imagebutton.setImageResource(0x7f0203bf);
            return;
        } else
        {
            imagebutton.setImageResource(0x7f02002d);
            return;
        }
    }

    private void updateVenueImages(VenueData venuedata)
    {
        View view = mainView.findViewById(0x7f09045d);
        if (venuedata == null || venuedata.numImages == 0)
        {
            view.setVisibility(0);
            mainView.findViewById(0x7f090459).setVisibility(8);
            mainView.findViewById(0x7f090457).setVisibility(8);
            return;
        }
        view.setVisibility(8);
        mainView.findViewById(0x7f090459).setVisibility(0);
        ImageView imageview = (ImageView)mainView.findViewById(0x7f09045a);
        ImageView imageview1 = (ImageView)mainView.findViewById(0x7f09045b);
        TextView textview = (TextView)mainView.findViewById(0x7f09045c);
        View view1;
        int i;
        if (venuedata.imageReporterMoods[0] == null || venuedata.imageReporterMoods[0].isEmpty())
        {
            imageview1.setVisibility(8);
        } else
        {
            imageview1.setImageDrawable(MoodManager.getMoodDrawable(mainView.getContext(), venuedata.imageReporterMoods[0]));
        }
        imageview.setImageDrawable(null);
        ImageRepository.instance.getImage(venuedata.imageThumbnailURLs[0], true, imageview, null, AppService.getMainActivity(), 3000L, 3);
        textview.setText(venuedata.imageReporters[0]);
        view1 = mainView.findViewById(0x7f090457);
        if (venuedata.numImages > 1)
        {
            i = 0;
        } else
        {
            i = 8;
        }
        view1.setVisibility(i);
    }

    public void AlertAnimation(final boolean bAlert, final android.view.animation.Animation.AnimationListener nm)
    {
        AnimationUtils.openAnimateAlert(mainView.findViewById(0x7f090163), new android.view.animation.Animation.AnimationListener() {

            final NavBar this$0;
            private final boolean val$bAlert;
            private final android.view.animation.Animation.AnimationListener val$nm;

            public void onAnimationEnd(Animation animation)
            {
                if (nearingDisplayed)
                {
                    hideNearingDestination(false);
                    shouldRestoreNearing = true;
                }
                ChangeToAlertMode(bAlert);
                AnimationUtils.openAnimateAlert2(mainView.findViewById(0x7f090168), nm);
            }

            public void onAnimationRepeat(Animation animation)
            {
            }

            public void onAnimationStart(Animation animation)
            {
            }

            
            {
                this$0 = NavBar.this;
                bAlert = flag;
                nm = animationlistener;
                super();
            }
        });
    }

    public void ChangeToAlertMode(boolean flag)
    {
        if (!flag && shouldRestoreNearing)
        {
            shouldRestoreNearing = false;
            AddressItem addressitem = mDestAddressItem;
            int i2 = 0;
            if (addressitem != null)
            {
                VenueData venuedata = mDestAddressItem.venueData;
                i2 = 0;
                if (venuedata != null)
                {
                    i2 = mDestAddressItem.venueData.numImages;
                }
            }
            IsInAlertMode = false;
            openNearingDest(destinationData, i2);
            return;
        }
        boolean flag1 = nativeManager.getLanguageRtl();
        DisplayMetrics displaymetrics = new DisplayMetrics();
        ((WindowManager)AppService.getAppContext().getSystemService("window")).getDefaultDisplay().getMetrics(displaymetrics);
        NavBarText navbartext = (NavBarText)mainView.findViewById(0x7f090172);
        if (flag)
        {
            int l = (int)((float)55 * scale);
            int i1 = (int)(1.0F * scale);
            IsInAlertMode = true;
            navbartext.setMaxLines(1);
            android.widget.LinearLayout.LayoutParams layoutparams4 = new android.widget.LinearLayout.LayoutParams(-1, -1);
            layoutparams4.setMargins(0, i1, 0, 0);
            navbartext.setLayoutParams(layoutparams4);
            mainView.findViewById(0x7f090164).setVisibility(8);
            mainView.findViewById(0x7f090165).setVisibility(8);
            ((LinearLayout)mainView.findViewById(0x7f09016b)).setOrientation(0);
            int k1;
            android.widget.RelativeLayout.LayoutParams layoutparams6;
            android.widget.LinearLayout.LayoutParams layoutparams7;
            if (flag1)
            {
                int l1 = mainView.findViewById(0x7f09016f).getWidth();
                if (l1 == 0)
                {
                    l1 = (int)(70F * scale);
                }
                android.widget.LinearLayout.LayoutParams layoutparams8 = new android.widget.LinearLayout.LayoutParams(l1, -1);
                layoutparams8.setMargins(3, i1, 3, 0);
                mainView.findViewById(0x7f09016f).setLayoutParams(layoutparams8);
                navbartext.setGravity(21);
            } else
            {
                int j1 = mainView.findViewById(0x7f09016c).getWidth();
                if (j1 == 0)
                {
                    j1 = (int)(70F * scale);
                }
                android.widget.LinearLayout.LayoutParams layoutparams5 = new android.widget.LinearLayout.LayoutParams(j1, -1);
                layoutparams5.setMargins(3, i1, 3, 0);
                mainView.findViewById(0x7f09016c).setLayoutParams(layoutparams5);
                navbartext.setGravity(19);
            }
            k1 = (int)(45F * scale);
            layoutparams6 = new android.widget.RelativeLayout.LayoutParams(k1, k1);
            layoutparams6.addRule(13);
            mainView.findViewById(0x7f09016a).setLayoutParams(layoutparams6);
            mainView.findViewById(0x7f09016a).setPadding(0, 0, 0, 0);
            layoutparams7 = new android.widget.LinearLayout.LayoutParams(-1, l);
            layoutparams7.setMargins(0, 0, 0, 0);
            mainView.findViewById(0x7f090450).setVisibility(8);
            ((LinearLayout)topView).setLayoutParams(layoutparams7);
            ((LinearLayout)topView).setGravity(16);
            topView.setBackgroundResource(0x7f020024);
            topView.setPadding(0, 0, 0, 0);
            return;
        }
        int i = (int)((float)80 * scale);
        int j = (int)(70F * scale);
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(j, j);
        layoutparams.addRule(13);
        mainView.findViewById(0x7f09016a).setLayoutParams(layoutparams);
        mainView.findViewById(0x7f09016a).setPadding(0, 0, 0, 0);
        IsInAlertMode = false;
        if (nearingDisplayed)
        {
            mainView.findViewById(0x7f090452).setVisibility(0);
        }
        if (Nextdisplayed)
        {
            mainView.findViewById(0x7f090165).setVisibility(0);
        }
        navbartext.setLayoutParams(new android.widget.LinearLayout.LayoutParams(-1, -2));
        navbartext.setMaxLines(2);
        ((LinearLayout)mainView.findViewById(0x7f09016b)).setOrientation(1);
        int k;
        android.widget.LinearLayout.LayoutParams layoutparams2;
        if (flag1)
        {
            android.widget.LinearLayout.LayoutParams layoutparams1 = new android.widget.LinearLayout.LayoutParams((int)(90F * scale), -2);
            layoutparams1.setMargins(0, 8, 3, 0);
            layoutparams1.gravity = 5;
            mainView.findViewById(0x7f09016f).setLayoutParams(layoutparams1);
            navbartext.setGravity(5);
        } else
        {
            android.widget.LinearLayout.LayoutParams layoutparams3 = new android.widget.LinearLayout.LayoutParams((int)(90F * scale), -2);
            layoutparams3.setMargins(0, 8, 3, 0);
            layoutparams3.gravity = 3;
            mainView.findViewById(0x7f09016c).setLayoutParams(layoutparams3);
            navbartext.setGravity(3);
        }
        k = (int)(5F * scale);
        mainView.findViewById(0x7f090450).setVisibility(0);
        layoutparams2 = new android.widget.LinearLayout.LayoutParams(-1, i);
        layoutparams2.setMargins(k, k, k, 0);
        ((LinearLayout)topView).setLayoutParams(layoutparams2);
        topView.setBackgroundResource(0x7f02026e);
        topView.setPadding(3, 0, 3, 0);
    }

    public void adjustImages()
    {
        bottomBar.setMode(nightMode);
        if (shown || nearingDisplayed)
        {
            int i = AppService.getAppContext().getResources().getConfiguration().orientation;
            boolean flag = false;
            if (i == 2)
            {
                flag = true;
            }
            View view = mainView.findViewById(0x7f090452);
            if (flag)
            {
                View view4 = view.findViewById(0x7f090458);
                android.widget.FrameLayout.LayoutParams layoutparams3 = (android.widget.FrameLayout.LayoutParams)view4.getLayoutParams();
                layoutparams3.height = (int)(49F * scale);
                layoutparams3.width = (int)(64F * scale);
                layoutparams3.setMargins((int)(10F * scale), (int)(4F * scale), (int)(2.0F * scale), (int)(4F * scale));
                view4.setLayoutParams(layoutparams3);
                View view5 = view.findViewById(0x7f090457);
                android.widget.FrameLayout.LayoutParams layoutparams4 = (android.widget.FrameLayout.LayoutParams)view5.getLayoutParams();
                layoutparams4.height = (int)(49F * scale);
                layoutparams4.width = (int)(64F * scale);
                layoutparams4.setMargins((int)(9F * scale), (int)(5F * scale), (int)(3F * scale), (int)(3F * scale));
                view5.setLayoutParams(layoutparams4);
                view.findViewById(0x7f09045e).setVisibility(8);
            } else
            {
                View view1 = view.findViewById(0x7f090458);
                android.widget.FrameLayout.LayoutParams layoutparams = (android.widget.FrameLayout.LayoutParams)view1.getLayoutParams();
                layoutparams.height = (int)(128F * scale);
                layoutparams.width = (int)(168F * scale);
                layoutparams.setMargins((int)(10F * scale), (int)(8F * scale), (int)(2.0F * scale), (int)(8F * scale));
                view1.setLayoutParams(layoutparams);
                View view2 = view.findViewById(0x7f090457);
                android.widget.FrameLayout.LayoutParams layoutparams1 = (android.widget.FrameLayout.LayoutParams)view2.getLayoutParams();
                layoutparams1.height = (int)(128F * scale);
                layoutparams1.width = (int)(168F * scale);
                layoutparams1.setMargins((int)(8F * scale), (int)(10F * scale), (int)(4F * scale), (int)(6F * scale));
                view2.setLayoutParams(layoutparams1);
                view.findViewById(0x7f09045e).setVisibility(0);
            }
            if (shown)
            {
                boolean flag1;
                MainActivity mainactivity;
                boolean flag2;
                View view3;
                if (streetText.getLineCount() > 1)
                {
                    flag1 = true;
                } else
                {
                    flag1 = false;
                }
                mainactivity = AppService.getMainActivity();
                flag2 = false;
                if (mainactivity != null)
                {
                    LayoutManager layoutmanager = AppService.getMainActivity().getLayoutMgr();
                    flag2 = false;
                    if (layoutmanager != null)
                    {
                        flag2 = AppService.getMainActivity().getLayoutMgr().IsPopupsShown();
                    }
                }
                if (flag2 || nearingDisplayed)
                {
                    if (nightMode)
                    {
                        updateBackground(topView, 0x7f020025);
                    } else
                    {
                        updateBackground(topView, 0x7f020024);
                    }
                    if (nearingDisplayed)
                    {
                        int j;
                        String s;
                        TextView textview;
                        String s1;
                        TextView textview1;
                        String s2;
                        if (nightMode)
                        {
                            s = "#57717d";
                        } else
                        {
                            s = "#262626";
                        }
                        view.setBackgroundColor(Color.parseColor(s));
                        textview = (TextView)view.findViewById(0x7f090460);
                        if (nightMode)
                        {
                            s1 = "#add9ea";
                        } else
                        {
                            s1 = "#ffffff";
                        }
                        textview.setTextColor(Color.parseColor(s1));
                        textview1 = (TextView)view.findViewById(0x7f090461);
                        if (nightMode)
                        {
                            s2 = "#ffffff";
                        } else
                        {
                            s2 = "#93c4d3";
                        }
                        textview1.setTextColor(Color.parseColor(s2));
                    }
                } else
                if (flag)
                {
                    if (nightMode)
                    {
                        updateBackground(topView, 0x7f020270);
                    } else
                    {
                        updateBackground(topView, 0x7f02026f);
                    }
                } else
                if (nightMode)
                {
                    updateBackground(topView, 0x7f020272);
                } else
                {
                    updateBackground(topView, 0x7f02026e);
                }
                if (nightMode)
                {
                    nextView.setBackgroundResource(0x7f020274);
                } else
                {
                    nextView.setBackgroundResource(0x7f020273);
                }
                nextView.setPadding(0, 0, 0, 0);
                view3 = mainView.findViewById(0x7f090164);
                if (nightMode)
                {
                    view3.setBackgroundResource(0x7f020274);
                } else
                {
                    view3.setBackgroundResource(0x7f020273);
                }
                view3.setPadding(0, 0, 0, 0);
                j = mainView.getResources().getColor(0x7f080041);
                distance.setTextColor(j);
                distanceUnit.setTextColor(j);
                thenText.setTextColor(j);
                if (flag2 || nearingDisplayed || IsInAlertMode)
                {
                    streetText.setMaxLines(1);
                    return;
                }
                android.view.ViewGroup.LayoutParams layoutparams2 = streetText.getLayoutParams();
                if (flag)
                {
                    layoutparams2.height = (int)(32F * scale);
                } else
                {
                    float f = scale;
                    int k;
                    if (flag1)
                    {
                        k = 60;
                    } else
                    {
                        k = 48;
                    }
                    layoutparams2.height = (int)(f * (float)k);
                }
                streetText.setLayoutParams(layoutparams2);
                streetText.setMaxLines(2);
                return;
            }
        }
    }

    public BottomBar bottomBar()
    {
        return bottomBar;
    }

    public boolean canMinimizeNearing()
    {
        return nearingDisplayed && !mAddressItemAppData.bNearingMinimized;
    }

    public void clear()
    {
        directionText.setBackgroundResource(0);
        directionText.setText("");
        nextView.setVisibility(8);
        thenDirection.setText("");
        distance.setText("");
        distanceUnit.setText("");
        streetText.setText("");
    }

    public int getNavBarHeight()
    {
        return mainView.getHeight();
    }

    public void hide()
    {
        if (shown)
        {
            shown = false;
            Nextdisplayed = false;
            shouldRestoreNearing = false;
            bottomBar.hide(true);
            mainView.findViewById(0x7f090168).setVisibility(8);
            mainView.findViewById(0x7f090165).setVisibility(8);
            mainView.findViewById(0x7f090453).setVisibility(8);
            mainView.findViewById(0x7f090454).setVisibility(8);
            if (IsInAlertMode)
            {
                ChangeToAlertMode(false);
                return;
            }
        }
    }

    public void hideNearingDestination(boolean flag)
    {
        shouldRestoreNearing = false;
        if (!nearingDisplayed)
        {
            return;
        }
        dtnm.unsetUpdateHandler(DriveToNativeManager.UH_SEARCH_ADD_RESULT, mHandler);
        nearingDisplayed = false;
        if (flag)
        {
            animateNearingDestinationOut();
            return;
        } else
        {
            mainView.findViewById(0x7f090452).setVisibility(8);
            mainView.findViewById(0x7f090454).setVisibility(8);
            mainView.findViewById(0x7f090453).setVisibility(8);
            return;
        }
    }

    public boolean isShown()
    {
        return shown;
    }

    public void minimizeNearingPanel()
    {
        final int buttonsWidth = mainView.findViewById(0x7f090462).getWidth();
        final int frameWidth = topView.getWidth();
        final View almostText = mainView.findViewById(0x7f090460);
        AlphaAnimation alphaanimation = new AlphaAnimation(1.0F, 0.0F);
        alphaanimation.setDuration(150L);
        alphaanimation.setFillAfter(true);
        almostText.startAnimation(alphaanimation);
        final View nameText = mainView.findViewById(0x7f090461);
        AlphaAnimation alphaanimation1 = new AlphaAnimation(1.0F, 0.0F);
        alphaanimation1.setDuration(150L);
        alphaanimation1.setFillAfter(true);
        nameText.startAnimation(alphaanimation1);
        View view = mainView.findViewById(0x7f090465);
        RotateAnimation rotateanimation = new RotateAnimation(0.0F, 180F, 1, 0.5F, 1, 0.5F);
        rotateanimation.setDuration(300L);
        rotateanimation.setFillAfter(true);
        view.startAnimation(rotateanimation);
        final View nearingPanel = mainView.findViewById(0x7f090452);
        final View shadow = mainView.findViewById(0x7f090454);
        TranslateAnimation translateanimation = new TranslateAnimation(0.0F, 0.0F, 0.0F, view.getHeight() - nearingPanel.getHeight());
        translateanimation.setDuration(300L);
        translateanimation.setFillAfter(true);
        translateanimation.setInterpolator(new OvershootInterpolator());
        nearingPanel.startAnimation(translateanimation);
        TranslateAnimation translateanimation1 = new TranslateAnimation(0.0F, 0.0F, 0.0F, view.getHeight() - nearingPanel.getHeight());
        translateanimation1.setDuration(300L);
        translateanimation1.setFillAfter(true);
        translateanimation1.setInterpolator(new OvershootInterpolator());
        shadow.startAnimation(translateanimation1);
        final View photoFrame = mainView.findViewById(0x7f090456);
        ScaleAnimation scaleanimation = new ScaleAnimation(1.0F, 0.0F, 1.0F, 0.0F, 0.5F * (float)photoFrame.getWidth(), (photoFrame.getHeight() + photoFrame.getTop()) - view.getHeight() / 2);
        scaleanimation.setDuration(300L);
        scaleanimation.setFillAfter(true);
        photoFrame.startAnimation(scaleanimation);
        translateanimation.setAnimationListener(new android.view.animation.Animation.AnimationListener() {

            final NavBar this$0;
            private final View val$almostText;
            private final int val$buttonsWidth;
            private final int val$frameWidth;
            private final View val$nameText;
            private final View val$nearingPanel;
            private final View val$photoFrame;
            private final View val$shadow;

            public void onAnimationEnd(Animation animation)
            {
                almostText.setVisibility(8);
                photoFrame.setVisibility(8);
                nearingPanel.getViewTreeObserver().addOnGlobalLayoutListener(buttonsWidth. new android.view.ViewTreeObserver.OnGlobalLayoutListener() {

                    final _cls16 this$1;
                    private final int val$buttonsWidth;
                    private final int val$frameWidth;
                    private final View val$nameText;
                    private final View val$nearingPanel;
                    private final View val$shadow;

                    public void onGlobalLayout()
                    {
                        nearingPanel.clearAnimation();
                        shadow.clearAnimation();
                        ((TextView)nameText).setTextSize(2, 14F);
                        ((TextView)nameText).setMaxLines(1);
                        android.widget.LinearLayout.LayoutParams layoutparams = (android.widget.LinearLayout.LayoutParams)nameText.getLayoutParams();
                        layoutparams.width = frameWidth - buttonsWidth - (int)(20F * scale);
                        layoutparams.rightMargin = buttonsWidth + (int)(20F * scale);
                        nameText.setLayoutParams(layoutparams);
                        AlphaAnimation alphaanimation = new AlphaAnimation(0.0F, 1.0F);
                        alphaanimation.setDuration(150L);
                        alphaanimation.setFillAfter(true);
                        nameText.startAnimation(alphaanimation);
                        nearingPanel.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                    }

            
            {
                this$1 = final__pcls16;
                nearingPanel = view;
                shadow = view1;
                nameText = view2;
                frameWidth = i;
                buttonsWidth = I.this;
                super();
            }
                });
                nearingPanel.requestLayout();
            }

            public void onAnimationRepeat(Animation animation)
            {
            }

            public void onAnimationStart(Animation animation)
            {
            }


            
            {
                this$0 = NavBar.this;
                almostText = view;
                photoFrame = view1;
                nearingPanel = view2;
                shadow = view3;
                nameText = view4;
                frameWidth = i;
                buttonsWidth = j;
                super();
            }
        });
    }

    public void onActivityResult(Activity activity, int i, int j, Intent intent)
    {
        if (i == 32785 && j == -1)
        {
            dtnm.setUpdateHandler(DriveToNativeManager.UH_SEARCH_ADD_RESULT, mHandler);
            mSaveNav = true;
            mVenueID = intent.getStringExtra("destination_venue_id");
            QuestionData.ResetQuestionData(AppService.getAppContext());
            nativeManager.venueGet(mVenueID, 1);
        }
    }

    public void restoreNearingPanel()
    {
        final View nameText = mainView.findViewById(0x7f090461);
        AlphaAnimation alphaanimation = new AlphaAnimation(1.0F, 0.0F);
        alphaanimation.setDuration(150L);
        alphaanimation.setFillAfter(true);
        nameText.startAnimation(alphaanimation);
        alphaanimation.setAnimationListener(new android.view.animation.Animation.AnimationListener() {

            final NavBar this$0;
            private final View val$nameText;

            public void onAnimationEnd(Animation animation)
            {
                final View minimizeButton = mainView.findViewById(0x7f090465);
                RotateAnimation rotateanimation = new RotateAnimation(180F, 0.0F, 1, 0.5F, 1, 0.5F);
                rotateanimation.setDuration(300L);
                rotateanimation.setFillAfter(false);
                minimizeButton.startAnimation(rotateanimation);
                final View photoFrame = mainView.findViewById(0x7f090456);
                photoFrame.setVisibility(0);
                final View nearingPanel = mainView.findViewById(0x7f090452);
                final View shadow = mainView.findViewById(0x7f090454);
                nearingPanel.getViewTreeObserver().addOnGlobalLayoutListener(nameText. new android.view.ViewTreeObserver.OnGlobalLayoutListener() {

                    final _cls17 this$1;
                    private final View val$minimizeButton;
                    private final View val$nameText;
                    private final View val$nearingPanel;
                    private final View val$photoFrame;
                    private final View val$shadow;

                    public void onGlobalLayout()
                    {
                        TranslateAnimation translateanimation = new TranslateAnimation(0.0F, 0.0F, minimizeButton.getHeight() - nearingPanel.getHeight(), 0.0F);
                        translateanimation.setDuration(300L);
                        translateanimation.setFillAfter(false);
                        translateanimation.setInterpolator(new DecelerateInterpolator());
                        nearingPanel.startAnimation(translateanimation);
                        TranslateAnimation translateanimation1 = new TranslateAnimation(0.0F, 0.0F, minimizeButton.getHeight() - nearingPanel.getHeight(), 0.0F);
                        translateanimation1.setDuration(300L);
                        translateanimation1.setFillAfter(false);
                        translateanimation1.setInterpolator(new DecelerateInterpolator());
                        shadow.startAnimation(translateanimation1);
                        ScaleAnimation scaleanimation = new ScaleAnimation(0.0F, 1.0F, 0.0F, 1.0F, 0.5F * (float)photoFrame.getWidth(), (photoFrame.getHeight() + photoFrame.getTop()) - minimizeButton.getHeight() / 2);
                        scaleanimation.setDuration(300L);
                        scaleanimation.setFillAfter(false);
                        scaleanimation.setInterpolator(new DecelerateInterpolator());
                        photoFrame.startAnimation(scaleanimation);
                        translateanimation.setAnimationListener(nearingPanel. new android.view.animation.Animation.AnimationListener() {

                            final _cls1 this$2;
                            private final View val$nameText;
                            private final View val$nearingPanel;
                            private final View val$photoFrame;

                            public void onAnimationEnd(Animation animation)
                            {
                                View view = mainView.findViewById(0x7f090460);
                                view.setVisibility(0);
                                AlphaAnimation alphaanimation = new AlphaAnimation(0.0F, 1.0F);
                                alphaanimation.setDuration(150L);
                                alphaanimation.setFillAfter(false);
                                view.startAnimation(alphaanimation);
                                ((TextView)nameText).setTextSize(2, 18F);
                                ((TextView)nameText).setMaxLines(3);
                                android.widget.LinearLayout.LayoutParams layoutparams = (android.widget.LinearLayout.LayoutParams)nameText.getLayoutParams();
                                layoutparams.width = -2;
                                layoutparams.rightMargin = (int)(10F * scale);
                                nameText.setLayoutParams(layoutparams);
                                AlphaAnimation alphaanimation1 = new AlphaAnimation(0.0F, 1.0F);
                                alphaanimation1.setDuration(150L);
                                alphaanimation1.setFillAfter(false);
                                nameText.startAnimation(alphaanimation1);
                                photoFrame.setVisibility(0);
                                photoFrame.clearAnimation();
                                nearingPanel.clearAnimation();
                            }

                            public void onAnimationRepeat(Animation animation)
                            {
                            }

                            public void onAnimationStart(Animation animation)
                            {
                            }

            
            {
                this$2 = final__pcls1;
                nameText = view;
                photoFrame = view1;
                nearingPanel = View.this;
                super();
            }
                        });
                        nearingPanel.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                    }


            
            {
                this$1 = final__pcls17;
                minimizeButton = view;
                nearingPanel = view1;
                shadow = view2;
                photoFrame = view3;
                nameText = View.this;
                super();
            }
                });
                nearingPanel.requestLayout();
            }

            public void onAnimationRepeat(Animation animation)
            {
            }

            public void onAnimationStart(Animation animation)
            {
            }


            
            {
                this$0 = NavBar.this;
                nameText = view;
                super();
            }
        });
    }

    public boolean setDistStr(String s)
    {
        if (s == null)
        {
            return false;
        }
        String as[] = s.split(" ");
        int i = as.length;
        boolean flag = false;
        if (i == 2)
        {
            bottomBar.setDistance(as[0], as[1]);
            flag = true;
        }
        return flag;
    }

    public void setDistance(String s, String s1)
    {
        distance.setText(s);
        distanceUnit.setText(s1);
    }

    public void setDrivingDirection(boolean flag)
    {
        int ai[];
        if (flag)
        {
            ai = instImagesLeft;
        } else
        {
            ai = instImagesRight;
        }
        instImages = ai;
    }

    public boolean setEtaStr(String s)
    {
        if (s == null)
        {
            return false;
        }
        String s1 = s.trim();
        int i = s1.indexOf(" ");
        boolean flag = false;
        if (i > 0)
        {
            String s2 = s1.substring(i + 1);
            bottomBar.setETA(s2);
            flag = true;
        }
        return flag;
    }

    public void setExit(int i)
    {
        String s;
        if (i > 0)
        {
            s = String.valueOf(i);
        } else
        {
            s = "";
        }
        directionText.setText(s);
    }

    public boolean setFollowersNum(int i, int j)
    {
        bottomBar.setFollowers(i, j);
        return true;
    }

    public void setFriendsNum(int i)
    {
        setNearingFriendsNumber(i);
    }

    public void setInstruction(int i)
    {
        directionText.setBackgroundResource(instImages[i]);
        directionText.setPadding(0, 0, 0, 0);
        IsNextInstruction = false;
    }

    public void setNextDistance(String s)
    {
    }

    public void setNextExit(int i)
    {
        String s;
        if (i > 0)
        {
            s = String.valueOf(i);
        } else
        {
            s = "";
        }
        thenDirection.setText(s);
    }

    public void setNextInstruction(int i)
    {
        if (i < instImages.length && instImages[i] != 0)
        {
            if (nextView.getVisibility() != 0 && shown)
            {
                Animation animation = android.view.animation.AnimationUtils.loadAnimation(mainView.getContext(), 0x7f040008);
                if (!IsInAlertMode)
                {
                    nextView.startAnimation(animation);
                    nextView.setVisibility(0);
                }
                Nextdisplayed = true;
            } else
            {
                IsNextInstruction = true;
                NextInstruction = i;
            }
            thenDirection.setBackgroundResource(instImages[i]);
            thenDirection.setPadding(0, 0, 0, 0);
            return;
        } else
        {
            AlphaAnimation alphaanimation = new AlphaAnimation(1.0F, 0.0F);
            alphaanimation.setFillAfter(true);
            alphaanimation.setDuration(500L);
            alphaanimation.setAnimationListener(new android.view.animation.Animation.AnimationListener() {

                final NavBar this$0;

                public void onAnimationEnd(Animation animation1)
                {
                    nextView.setVisibility(8);
                    Nextdisplayed = false;
                }

                public void onAnimationRepeat(Animation animation1)
                {
                }

                public void onAnimationStart(Animation animation1)
                {
                }

            
            {
                this$0 = NavBar.this;
                super();
            }
            });
            nextView.startAnimation(alphaanimation);
            return;
        }
    }

    public void setSkin(boolean flag)
    {
        nightMode = flag;
        adjustImages();
    }

    public void setStreet(String s)
    {
        streetText.setText(s);
        adjustImages();
    }

    public boolean setTimeStr(String s)
    {
        String s1;
        String s2;
        String as[];
        if (s == null)
        {
            return false;
        }
        s1 = nativeManager.getLanguageString(DisplayStrings.DS_HR);
        s2 = nativeManager.getLanguageString(DisplayStrings.DS_MIN);
        as = s.split(" ");
        if (as.length != 1) goto _L2; else goto _L1
_L1:
        boolean flag;
        bottomBar.setTime(as[0], "");
        flag = true;
_L4:
        return flag;
_L2:
        if (as.length == 2)
        {
            bottomBar.setTime(as[0], s2);
            flag = true;
        } else
        {
            int i = as.length;
            flag = false;
            if (i == 4)
            {
                bottomBar.setTime((new StringBuilder(String.valueOf(as[0]))).append(":").append(as[2]).toString(), s1);
                flag = true;
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void setWaypoint(boolean flag)
    {
        if (bottomBar != null)
        {
            bottomBar.setWaypointVisibility(flag);
        }
    }

    public void show()
    {
        byte byte0 = 8;
        if (shown)
        {
            bottomBar.show();
            View view3 = mainView.findViewById(0x7f090453);
            int k;
            View view4;
            boolean flag;
            int l;
            if (nearingDisplayed)
            {
                k = 0;
            } else
            {
                k = byte0;
            }
            view3.setVisibility(k);
            view4 = mainView.findViewById(0x7f090454);
            flag = nearingDisplayed;
            l = 0;
            if (!flag)
            {
                l = byte0;
            }
            view4.setVisibility(l);
            return;
        }
        shown = true;
        if (!IsInAlertMode && nearingDisplayed)
        {
            ChangeToAlertMode(nearingDisplayed);
        }
        adjustImages();
        mainView.setVisibility(0);
        mainView.findViewById(0x7f090164).setVisibility(byte0);
        View view = mainView.findViewById(0x7f090452);
        int i;
        View view1;
        int j;
        View view2;
        TranslateAnimation translateanimation;
        if (nearingDisplayed)
        {
            i = 0;
        } else
        {
            i = byte0;
        }
        view.setVisibility(i);
        view1 = mainView.findViewById(0x7f090453);
        if (nearingDisplayed)
        {
            j = 0;
        } else
        {
            j = byte0;
        }
        view1.setVisibility(j);
        view2 = mainView.findViewById(0x7f090454);
        if (nearingDisplayed)
        {
            byte0 = 0;
        }
        view2.setVisibility(byte0);
        translateanimation = new TranslateAnimation(1, 0.0F, 1, 0.0F, 1, -1F, 1, 0.0F);
        translateanimation.setDuration(500L);
        translateanimation.setAnimationListener(new android.view.animation.Animation.AnimationListener() {

            final NavBar this$0;

            public void onAnimationEnd(Animation animation)
            {
                adjustImages();
            }

            public void onAnimationRepeat(Animation animation)
            {
            }

            public void onAnimationStart(Animation animation)
            {
            }

            
            {
                this$0 = NavBar.this;
                super();
            }
        });
        translateanimation.setFillAfter(true);
        mainView.startAnimation(translateanimation);
        mainView.setVisibility(0);
        mainView.findViewById(0x7f090168).setVisibility(0);
        if (IsNextInstruction)
        {
            setNextInstruction(NextInstruction);
            IsNextInstruction = false;
        }
        if (AppService.getMainActivity() == null)
        {
            bottomBar.show();
        } else
        if (!AppService.getMainActivity().getLayoutMgr().getBottomNotification().isHidable())
        {
            bottomBar.show();
        } else
        {
            AppService.getMainActivity().getLayoutMgr().getBottomBar().setToShown();
        }
        dtnm.getNumberOfFriendsDriving(new com.waze.navigate.DriveToNativeManager.NumberOfFriendsDrivingListener() {

            final NavBar this$0;

            public void onComplete(int i1)
            {
                setNearingFriendsNumber(i1);
            }

            
            {
                this$0 = NavBar.this;
                super();
            }
        });
    }

    public void showNearingDestination()
    {
        mDestAddressItem = null;
        mFoundVenue = null;
        mVenueID = null;
        updateVenueImages(null);
        mAddressItemAppData = new com.waze.navigate.DriveToNativeManager.AddressItemAppData();
        mAddressItemAppData.bNearingMinimized = false;
        dtnm.getAddressItemAppData(dtnm.getDestinationIdNTV(), new com.waze.navigate.DriveToNativeManager.ObjectListener() {

            final NavBar this$0;

            public void onComplete(Object obj)
            {
                if (obj != null)
                {
                    mAddressItemAppData = (com.waze.navigate.DriveToNativeManager.AddressItemAppData)obj;
                }
            }

            
            {
                this$0 = NavBar.this;
                super();
            }
        });
        dtnm.getLocationData(1, Integer.valueOf(0), Integer.valueOf(0), new com.waze.navigate.DriveToNativeManager.LocationDataListener() {

            final NavBar this$0;

            public void onComplete(LocationData locationdata)
            {
                destinationData = locationdata;
                dtnm.setUpdateHandler(DriveToNativeManager.UH_SEARCH_ADD_RESULT, mHandler);
                nativeManager.venueGet(mVenueID, 0);
            }

            
            {
                this$0 = NavBar.this;
                super();
            }
        }, null);
        mReceivedSearchResult = false;
        mHandler.postDelayed(new Runnable() {

            final NavBar this$0;

            public void run()
            {
                if (!mReceivedSearchResult)
                {
                    openNearingDest(destinationData, 0);
                }
            }

            
            {
                this$0 = NavBar.this;
                super();
            }
        }, nativeManager.getVenueGetTimeout());
    }

    public void unhide()
    {
        if (shown)
        {
            return;
        } else
        {
            shown = true;
            bottomBar.unhide();
            mainView.setVisibility(0);
            return;
        }
    }

    static 
    {
        int ai[] = new int[27];
        ai[1] = 0x7f020052;
        ai[2] = 0x7f020053;
        ai[3] = 0x7f02004f;
        ai[4] = 0x7f020050;
        ai[5] = 0x7f020051;
        ai[6] = 0x7f020055;
        ai[7] = 0x7f020055;
        ai[8] = 0x7f020056;
        ai[9] = 0x7f020056;
        ai[10] = 0x7f020059;
        ai[11] = 0x7f020059;
        ai[12] = 0x7f020057;
        ai[13] = 0x7f020057;
        ai[14] = 0x7f02005a;
        ai[15] = 0x7f02005a;
        ai[16] = 0x7f02004e;
        ai[17] = 0x7f02004f;
        ai[18] = 0x7f020050;
        ai[20] = 0x7f020060;
        ai[26] = 0x7f020054;
        instImagesRight = ai;
        int ai1[] = new int[27];
        ai1[1] = 0x7f020052;
        ai1[2] = 0x7f020053;
        ai1[3] = 0x7f02004f;
        ai1[4] = 0x7f020050;
        ai1[5] = 0x7f020051;
        ai1[6] = 0x7f02005c;
        ai1[7] = 0x7f02005c;
        ai1[8] = 0x7f02005d;
        ai1[9] = 0x7f02005d;
        ai1[10] = 0x7f02005f;
        ai1[11] = 0x7f02005f;
        ai1[12] = 0x7f020058;
        ai1[13] = 0x7f020058;
        ai1[14] = 0x7f02005b;
        ai1[15] = 0x7f02005b;
        ai1[16] = 0x7f02004e;
        ai1[17] = 0x7f02004f;
        ai1[18] = 0x7f020050;
        ai1[20] = 0x7f020061;
        ai1[26] = 0x7f020054;
        instImagesLeft = ai1;
    }



























}
