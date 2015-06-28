// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.popups;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.http.AndroidHttpClient;
import android.os.AsyncTask;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.LayoutManager;
import com.waze.NativeManager;
import com.waze.NavBarManager;
import com.waze.ResManager;
import com.waze.analytics.Analytics;
import com.waze.messages.UserMessage;
import com.waze.navbar.NavBar;
import com.waze.navigate.DriveToNativeManager;
import com.waze.navigate.social.FriendsListData;
import com.waze.navigate.social.MyFriendsActivity;
import com.waze.strings.DisplayStrings;
import com.waze.user.FriendUserData;
import com.waze.utils.ImageRepository;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Comparator;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.methods.HttpGet;

// Referenced classes of package com.waze.view.popups:
//            PopUp

public class FriendsOnlinePopUp extends PopUp
{
    class BitmapDownloaderTask extends AsyncTask
    {

        private final ImageView imageViewReference;
        final FriendsOnlinePopUp this$0;

        protected transient Bitmap doInBackground(String as[])
        {
            return downloadBitmap(as[0]);
        }

        protected volatile transient Object doInBackground(Object aobj[])
        {
            return doInBackground((String[])aobj);
        }

        Bitmap downloadBitmap(String s)
        {
            AndroidHttpClient androidhttpclient = AndroidHttpClient.newInstance("Android");
            HttpGet httpget = new HttpGet(s);
            HttpResponse httpresponse;
            int i;
            httpresponse = androidhttpclient.execute(httpget);
            i = httpresponse.getStatusLine().getStatusCode();
            if (i != 200)
            {
                if (androidhttpclient != null)
                {
                    androidhttpclient.close();
                }
                return null;
            }
            HttpEntity httpentity = httpresponse.getEntity();
            if (httpentity == null) goto _L2; else goto _L1
_L1:
            InputStream inputstream = null;
            Bitmap bitmap;
            inputstream = httpentity.getContent();
            bitmap = BitmapFactory.decodeStream(inputstream);
            if (inputstream == null)
            {
                break MISSING_BLOCK_LABEL_97;
            }
            inputstream.close();
            httpentity.consumeContent();
            if (androidhttpclient != null)
            {
                androidhttpclient.close();
            }
            return bitmap;
            Exception exception2;
            exception2;
            if (inputstream == null)
            {
                break MISSING_BLOCK_LABEL_127;
            }
            inputstream.close();
            httpentity.consumeContent();
            throw exception2;
            Exception exception1;
            exception1;
            HttpGet httpget1 = httpget;
_L6:
            if (httpget1 == null)
            {
                break MISSING_BLOCK_LABEL_152;
            }
            httpget1.abort();
            if (androidhttpclient != null)
            {
                androidhttpclient.close();
            }
_L3:
            return null;
            Exception exception;
            exception;
_L4:
            if (androidhttpclient != null)
            {
                androidhttpclient.close();
            }
            throw exception;
_L2:
            if (androidhttpclient != null)
            {
                androidhttpclient.close();
            }
              goto _L3
            exception;
              goto _L4
            Exception exception3;
            exception3;
            httpget1 = null;
            if (true) goto _L6; else goto _L5
_L5:
        }

        public BitmapDownloaderTask(ImageView imageview)
        {
            this$0 = FriendsOnlinePopUp.this;
            super();
            imageViewReference = imageview;
        }
    }


    private static Context mContext = null;
    private static FriendsOnlinePopUp mInstance;
    private static boolean mIsShown = false;
    private static LayoutManager mLayoutManager;
    protected FriendsListData data;
    private LinearLayout friendsListLayout;
    private LayoutInflater inflater;

    private FriendsOnlinePopUp(Context context, LayoutManager layoutmanager)
    {
        super(context, layoutmanager);
        mContext = context;
        mLayoutManager = layoutmanager;
        init();
    }

    public static void closeNow()
    {
        if (mInstance != null)
        {
            mInstance.hide();
        }
    }

    private void friendsListAddFriend(final FriendUserData friend)
    {
        final FrameLayout friendLayoutInListLayout = (FrameLayout)inflater.inflate(0x7f030061, friendsListLayout, false);
        final ImageView friendImageInLayout = (ImageView)friendLayoutInListLayout.findViewById(0x7f09028b);
        ((TextView)friendLayoutInListLayout.findViewById(0x7f09028f)).setText(friend.name);
        ((TextView)friendLayoutInListLayout.findViewById(0x7f090290)).setText(friend.statusLine);
        if (friend.mLastReportIcon != null)
        {
            ((ImageView)friendLayoutInListLayout.findViewById(0x7f090292)).setImageDrawable(ResManager.GetSkinDrawable((new StringBuilder(String.valueOf(friend.mLastReportIcon))).append(".bin").toString()));
        } else
        {
            friendLayoutInListLayout.findViewById(0x7f090291).setVisibility(8);
        }
        ((TextView)friendLayoutInListLayout.findViewById(0x7f090293)).setText(friend.mLastReportText);
        friendImageInLayout.setImageResource(0x7f02011b);
        ImageRepository.instance.getImage(friend.pictureUrl, new com.waze.utils.ImageRepository.ImageRepositoryListener() {

            final FriendsOnlinePopUp this$0;
            private final ImageView val$friendImageInLayout;

            public void onImageRetrieved(Bitmap bitmap)
            {
                AppService.Post(bitmap. new Runnable() {

                    final _cls3 this$1;
                    private final Bitmap val$bitmap;
                    private final ImageView val$friendImageInLayout;

                    public void run()
                    {
                        friendImageInLayout.setImageBitmap(bitmap);
                    }

            
            {
                this$1 = final__pcls3;
                friendImageInLayout = imageview;
                bitmap = Bitmap.this;
                super();
            }
                });
            }

            
            {
                this$0 = FriendsOnlinePopUp.this;
                friendImageInLayout = imageview;
                super();
            }
        });
        if (friend.mAllowPrivatePing)
        {
            friendLayoutInListLayout.findViewById(0x7f0902f3).setOnClickListener(new android.view.View.OnClickListener() {

                final FriendsOnlinePopUp this$0;
                private final FriendUserData val$friend;

                public void onClick(View view)
                {
                    UserMessage.startPrivate(AppService.getMainActivity(), friend);
                }

            
            {
                this$0 = FriendsOnlinePopUp.this;
                friend = frienduserdata;
                super();
            }
            });
            if (friend.mAllowBeepBeep)
            {
                friendLayoutInListLayout.findViewById(0x7f0902f2).setOnClickListener(new android.view.View.OnClickListener() {

                    final FriendsOnlinePopUp this$0;
                    private final FriendUserData val$friend;
                    private final FrameLayout val$friendLayoutInListLayout;

                    public void onClick(View view)
                    {
                        Analytics.log("BEEP_BEEP_CLICK_FROM", "VAUE", "FRIENDS_ONLINE");
                        NativeManager.getInstance().SendBeepBeep(friend.mLongitude, friend.mLatitude, friend.mAzimuth, friend.mID, null);
                        ((ImageView)friendLayoutInListLayout.findViewById(0x7f0902f2)).setImageResource(0x7f02003f);
                    }

            
            {
                this$0 = FriendsOnlinePopUp.this;
                friend = frienduserdata;
                friendLayoutInListLayout = framelayout;
                super();
            }
                });
            } else
            {
                friendLayoutInListLayout.findViewById(0x7f0902f2).setVisibility(8);
            }
        } else
        {
            friendLayoutInListLayout.findViewById(0x7f0902f3).setVisibility(8);
            friendLayoutInListLayout.findViewById(0x7f0902f2).setVisibility(8);
        }
        friendsListLayout.addView(friendLayoutInListLayout);
    }

    public static FriendsOnlinePopUp getInstance(Context context, LayoutManager layoutmanager)
    {
        if (mInstance == null)
        {
            mInstance = new FriendsOnlinePopUp(context, layoutmanager);
        }
        return mInstance;
    }

    public static boolean hasInstance()
    {
        return mInstance != null;
    }

    private void init()
    {
        ((LayoutInflater)getContext().getSystemService("layout_inflater")).inflate(0x7f030060, this);
    }

    private void setTitle(String s)
    {
        ((TextView)findViewById(0x7f0902ee)).setText(s);
    }

    public int GetHeight()
    {
        return super.GetHeight();
    }

    public View GetView()
    {
        if (mIsShown)
        {
            mInstance.dismiss();
        }
        ((TextView)findViewById(0x7f0902f1)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_VIEW_ALL_FRIENDS));
        findViewById(0x7f0902ef).setOnClickListener(new android.view.View.OnClickListener() {

            final FriendsOnlinePopUp this$0;

            public void onClick(View view)
            {
                Intent intent = new Intent(AppService.getAppContext(), com/waze/navigate/social/MyFriendsActivity);
                intent.putExtra("type", 0);
                AppService.showActivity(intent);
            }

            
            {
                this$0 = FriendsOnlinePopUp.this;
                super();
            }
        });
        mIsShown = true;
        fillPopUpData();
        float f = mContext.getResources().getDisplayMetrics().density;
        int i = (int)(f * (float)340);
        DisplayMetrics displaymetrics = new DisplayMetrics();
        ((WindowManager)mContext.getSystemService("window")).getDefaultDisplay().getMetrics(displaymetrics);
        if (displaymetrics.widthPixels > i)
        {
            findViewById(0x7f0902ef).setBackgroundResource(0x7f02016d);
            findViewById(0x7f0902ed).setBackgroundResource(0x7f020038);
            ScrollView scrollview1 = (ScrollView)findViewById(0x7f090092);
            android.widget.RelativeLayout.LayoutParams layoutparams1 = (android.widget.RelativeLayout.LayoutParams)scrollview1.getLayoutParams();
            int j = (int)(f * (float)16);
            layoutparams1.setMargins(j, 0, j, 0);
            scrollview1.setLayoutParams(layoutparams1);
            scrollview1.setPadding(0, 0, 0, 0);
            findViewById(0x7f0902ed).setPadding(0, 0, 0, 0);
            findViewById(0x7f0902ef).setPadding(0, 0, 0, 0);
        } else
        {
            findViewById(0x7f0902ef).setBackgroundResource(0x7f02016c);
            findViewById(0x7f0902ed).setBackgroundResource(0x7f020035);
            ScrollView scrollview = (ScrollView)findViewById(0x7f090092);
            android.widget.RelativeLayout.LayoutParams layoutparams = (android.widget.RelativeLayout.LayoutParams)scrollview.getLayoutParams();
            layoutparams.setMargins(0, 0, 0, 0);
            scrollview.setLayoutParams(layoutparams);
            scrollview.setPadding(0, 0, 0, 0);
            findViewById(0x7f0902ed).setPadding(0, 0, 0, 0);
            findViewById(0x7f0902ef).setPadding(0, 0, 0, 0);
        }
        return mInstance;
    }

    public void dismiss()
    {
        mIsShown = false;
        NativeManager.Post(new Runnable() {

            final FriendsOnlinePopUp this$0;

            public void run()
            {
                AppService.getNativeManager().FriendsOnlinePopUpClosedNTV();
            }

            
            {
                this$0 = FriendsOnlinePopUp.this;
                super();
            }
        });
        friendsListLayout.removeAllViews();
        mLayoutManager.dismiss(this);
    }

    public void fillPopUpData()
    {
        setTitle(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_FRIENDS_ONLINE));
        inflater = (LayoutInflater)AppService.getAppContext().getSystemService("layout_inflater");
        friendsListLayout = (LinearLayout)findViewById(0x7f090096);
        DriveToNativeManager.getInstance().getFriendsListData(new com.waze.navigate.DriveToNativeManager.FriendsListListener() {

            final FriendsOnlinePopUp this$0;

            public void onComplete(FriendsListData friendslistdata)
            {
                data = friendslistdata;
                Arrays.sort(data.friends, new Comparator() {

                    final _cls2 this$1;

                    public int compare(FriendUserData frienduserdata, FriendUserData frienduserdata1)
                    {
                        if (frienduserdata.isOnline || !frienduserdata1.isOnline)
                        {
                            if (frienduserdata.isOnline && !frienduserdata1.isOnline)
                            {
                                return -1;
                            }
                            if (frienduserdata.mStatusTimeInSeconds == 0 && frienduserdata1.mStatusTimeInSeconds == 0)
                            {
                                return 0;
                            }
                            if (frienduserdata.mStatusTimeInSeconds != 0)
                            {
                                if (frienduserdata1.mStatusTimeInSeconds == 0)
                                {
                                    return -1;
                                }
                                if (frienduserdata.mStatusTimeInSeconds < frienduserdata1.mStatusTimeInSeconds)
                                {
                                    return -1;
                                }
                                if (frienduserdata.mStatusTimeInSeconds <= frienduserdata1.mStatusTimeInSeconds)
                                {
                                    return 0;
                                }
                            }
                        }
                        return 1;
                    }

                    public volatile int compare(Object obj, Object obj1)
                    {
                        return compare((FriendUserData)obj, (FriendUserData)obj1);
                    }

            
            {
                this$1 = _cls2.this;
                super();
            }
                });
                FriendUserData afrienduserdata[] = data.friends;
                int i = afrienduserdata.length;
                int j = 0;
                do
                {
                    if (j >= i)
                    {
                        return;
                    }
                    FriendUserData frienduserdata = afrienduserdata[j];
                    if (frienduserdata.isOnline)
                    {
                        friendsListAddFriend(frienduserdata);
                    }
                    j++;
                } while (true);
            }

            
            {
                this$0 = FriendsOnlinePopUp.this;
                super();
            }
        });
    }

    public void hide()
    {
        dismiss();
    }

    public boolean isShown()
    {
        return mIsShown;
    }

    public void onBackPressed()
    {
        mLayoutManager.callCloseAllPopups(1);
    }

    public void setCloseTime(int i)
    {
    }

    public void show()
    {
        if (mIsShown)
        {
            mInstance.dismiss();
        }
        ((TextView)findViewById(0x7f0902f1)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_VIEW_ALL_FRIENDS));
        findViewById(0x7f0902ef).setOnClickListener(new android.view.View.OnClickListener() {

            final FriendsOnlinePopUp this$0;

            public void onClick(View view)
            {
                Intent intent = new Intent(AppService.getAppContext(), com/waze/navigate/social/MyFriendsActivity);
                intent.putExtra("type", 0);
                AppService.showActivity(intent);
            }

            
            {
                this$0 = FriendsOnlinePopUp.this;
                super();
            }
        });
        mIsShown = true;
        fillPopUpData();
        DisplayMetrics displaymetrics = new DisplayMetrics();
        ((WindowManager)mContext.getSystemService("window")).getDefaultDisplay().getMetrics(displaymetrics);
        if (displaymetrics.widthPixels > 680)
        {
            findViewById(0x7f0902ef).setBackgroundResource(0x7f02016d);
            findViewById(0x7f0902ed).setBackgroundResource(0x7f020038);
            RelativeLayout relativelayout1 = (RelativeLayout)findViewById(0x7f090091);
            android.widget.LinearLayout.LayoutParams layoutparams1 = (android.widget.LinearLayout.LayoutParams)relativelayout1.getLayoutParams();
            int j = (int)(getResources().getDisplayMetrics().density * (float)16);
            layoutparams1.setMargins(j, 0, j, 0);
            relativelayout1.setLayoutParams(layoutparams1);
            findViewById(0x7f0902ed).setPadding(0, 0, 0, 0);
            findViewById(0x7f0902ef).setPadding(0, 0, 0, 0);
        } else
        {
            findViewById(0x7f0902ef).setBackgroundResource(0x7f02016c);
            findViewById(0x7f0902ed).setBackgroundResource(0x7f020035);
            ((RelativeLayout)findViewById(0x7f090091)).setLayoutParams(new android.widget.LinearLayout.LayoutParams(-1, 93));
            findViewById(0x7f0902ed).setPadding(0, 0, 0, 0);
            findViewById(0x7f0902ef).setPadding(0, 0, 0, 0);
        }
        if (mContext.getResources().getConfiguration().orientation == 1 && NativeManager.getInstance().isNavigatingNTV())
        {
            RelativeLayout relativelayout = (RelativeLayout)findViewById(0x7f0902ed);
            android.widget.RelativeLayout.LayoutParams layoutparams = (android.widget.RelativeLayout.LayoutParams)relativelayout.getLayoutParams();
            NavBar navbar = NativeManager.getInstance().getNavBarManager().getNavBar();
            int i = 0;
            if (navbar != null)
            {
                i = navbar.getNavBarHeight();
            }
            layoutparams.setMargins(0, i, 0, 0);
            relativelayout.setLayoutParams(layoutparams);
        }
        mLayoutManager.addView(mInstance);
    }


}
