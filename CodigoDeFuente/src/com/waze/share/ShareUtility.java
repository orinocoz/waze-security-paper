// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.ScaleAnimation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.LayoutManager;
import com.waze.MainActivity;
import com.waze.NativeManager;
import com.waze.analytics.Analytics;
import com.waze.animation.easing.AnimationEasingManager;
import com.waze.autocomplete.Person;
import com.waze.ifs.ui.ActivityBase;
import com.waze.ifs.ui.TinyTooltip;
import com.waze.main.navigate.LocationData;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.navigate.AddressItem;
import com.waze.navigate.DriveToNativeManager;
import com.waze.navigate.social.FriendsListData;
import com.waze.navigate.social.MyShareDriveActivity;
import com.waze.navigate.social.ShareDriveActivity;
import com.waze.navigate.social.ShareHelpActivity;
import com.waze.phone.AddressBook;
import com.waze.phone.PhoneNumberSignInActivity;
import com.waze.phone.PhoneRequestAccessDialog;
import com.waze.strings.DisplayStrings;
import com.waze.user.FriendUserData;
import com.waze.user.PersonBase;
import com.waze.utils.ImageRepository;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Locale;

// Referenced classes of package com.waze.share:
//            ShareActivity

public class ShareUtility
{
    public static interface IFriendSelected
    {

        public abstract boolean onFriendSelected(Object obj, boolean flag);
    }

    private static final class OnShareClick
        implements android.view.View.OnClickListener
    {

        boolean _isSelected;
        private final ActivityBase ctx;
        private final FrameLayout frame;
        private final Object friend;
        private final String name;
        private final IFriendSelected ofs;

        private void setSelected(View view)
        {
            if (_isSelected)
            {
                frame.findViewById(7003).setVisibility(0);
                frame.setAlpha(1.0F);
                return;
            } else
            {
                frame.findViewById(7003).setVisibility(4);
                frame.setAlpha(0.5F);
                return;
            }
        }

        public void onClick(View view)
        {
            View view1 = frame.findViewById(7003);
            if (ofs != null)
            {
                IFriendSelected ifriendselected = ofs;
                Object obj = friend;
                boolean flag1;
                if (_isSelected)
                {
                    flag1 = false;
                } else
                {
                    flag1 = true;
                }
                if (!ifriendselected.onFriendSelected(obj, flag1))
                {
                    return;
                }
            }
            if (android.os.Build.VERSION.SDK_INT < 19)
            {
                ShareUtility.bIsSupported = false;
            }
            boolean flag;
            if (_isSelected)
            {
                view1.setVisibility(0);
                AnimationSet animationset2 = new AnimationSet(true);
                Analytics.log("SHARE_TOGGLE_CLICK", "VAUE", "OFF");
                animationset2.addAnimation(new AlphaAnimation(1.0F, 0.0F));
                animationset2.addAnimation(new ScaleAnimation(1.0F, 0.5F, 1.0F, 0.5F, 1, 0.8F, 1, 0.2F));
                animationset2.setDuration(150L);
                animationset2.setFillAfter(true);
                view1.startAnimation(animationset2);
                AlphaAnimation alphaanimation1 = new AlphaAnimation(1.0F, 0.5F);
                alphaanimation1.setDuration(200L);
                alphaanimation1.setFillAfter(false);
                alphaanimation1.setAnimationListener(view. new android.view.animation.Animation.AnimationListener() {

                    final OnShareClick this$1;
                    private final View val$v;

                    public void onAnimationEnd(Animation animation)
                    {
                        v.clearAnimation();
                        v.setAlpha(0.5F);
                    }

                    public void onAnimationRepeat(Animation animation)
                    {
                    }

                    public void onAnimationStart(Animation animation)
                    {
                    }

            
            {
                this$1 = final_onshareclick;
                v = View.this;
                super();
            }
                });
                view.setAlpha(1.0F);
                view.startAnimation(alphaanimation1);
            } else
            {
                view1.setVisibility(0);
                AnimationSet animationset = new AnimationSet(true);
                Analytics.log("SHARE_TOGGLE_CLICK", "VAUE", "ON");
                animationset.addAnimation(new AlphaAnimation(0.0F, 1.0F));
                animationset.addAnimation(new ScaleAnimation(0.5F, 1.0F, 0.5F, 1.0F, 1, 0.8F, 1, 0.2F));
                animationset.setDuration(300L);
                animationset.setFillAfter(true);
                animationset.setInterpolator(AnimationEasingManager.getElasticInterpolator(com.waze.animation.easing.AnimationEasingManager.EaseType.EaseOut, 0.0D, 0.0D));
                view1.startAnimation(animationset);
                AnimationSet animationset1 = new AnimationSet(false);
                AlphaAnimation alphaanimation = new AlphaAnimation(0.5F, 1.0F);
                alphaanimation.setDuration(200L);
                alphaanimation.setFillAfter(true);
                animationset1.addAnimation(alphaanimation);
                ScaleAnimation scaleanimation = new ScaleAnimation(0.9F, 1.0F, 0.9F, 1.0F, 1, 0.5F, 1, 0.5F);
                scaleanimation.setDuration(400L);
                scaleanimation.setFillAfter(false);
                scaleanimation.setInterpolator(AnimationEasingManager.getElasticInterpolator(com.waze.animation.easing.AnimationEasingManager.EaseType.EaseOut, 0.0D, 0.0D));
                animationset1.addAnimation(scaleanimation);
                view.setAlpha(1.0F);
                view.startAnimation(animationset1);
                if (ShareUtility.bIsSupported)
                {
                    TinyTooltip tinytooltip = new TinyTooltip(ctx, ShareUtility.getShortened(name));
                    tinytooltip.show(view);
                    Runnable runnable = tinytooltip. new Runnable() {

                        final OnShareClick this$1;
                        private final TinyTooltip val$tip;

                        public void run()
                        {
                            if (tip != null && tip.isShowing())
                            {
                                tip.dismiss(true);
                            }
                        }

            
            {
                this$1 = final_onshareclick;
                tip = TinyTooltip.this;
                super();
            }
                    };
                    view.postDelayed(runnable, 1000L);
                    view.addOnAttachStateChangeListener(runnable. new android.view.View.OnAttachStateChangeListener() {

                        final OnShareClick this$1;
                        private final Runnable val$action;

                        public void onViewAttachedToWindow(View view)
                        {
                        }

                        public void onViewDetachedFromWindow(View view)
                        {
                            view.removeCallbacks(action);
                        }

            
            {
                this$1 = final_onshareclick;
                action = Runnable.this;
                super();
            }
                    });
                }
            }
            if (_isSelected)
            {
                flag = false;
            } else
            {
                flag = true;
            }
            _isSelected = flag;
        }

        private OnShareClick(ActivityBase activitybase, FrameLayout framelayout, Object obj, boolean flag, IFriendSelected ifriendselected, String s)
        {
            _isSelected = false;
            ctx = activitybase;
            frame = framelayout;
            friend = obj;
            ofs = ifriendselected;
            name = s;
            _isSelected = flag;
            setSelected(framelayout);
        }

        OnShareClick(ActivityBase activitybase, FrameLayout framelayout, Object obj, boolean flag, IFriendSelected ifriendselected, String s, OnShareClick onshareclick)
        {
            this(activitybase, framelayout, obj, flag, ifriendselected, s);
        }
    }

    public static final class ShareType extends Enum
    {

        private static final ShareType ENUM$VALUES[];
        public static final ShareType ShareType_PickUp;
        public static final ShareType ShareType_ShareDestination;
        public static final ShareType ShareType_ShareDrive;
        public static final ShareType ShareType_ShareLocation;
        public static final ShareType ShareType_ShareSelection;

        public static ShareType valueOf(String s)
        {
            return (ShareType)Enum.valueOf(com/waze/share/ShareUtility$ShareType, s);
        }

        public static ShareType[] values()
        {
            ShareType asharetype[] = ENUM$VALUES;
            int i = asharetype.length;
            ShareType asharetype1[] = new ShareType[i];
            System.arraycopy(asharetype, 0, asharetype1, 0, i);
            return asharetype1;
        }

        static 
        {
            ShareType_ShareDrive = new ShareType("ShareType_ShareDrive", 0);
            ShareType_PickUp = new ShareType("ShareType_PickUp", 1);
            ShareType_ShareLocation = new ShareType("ShareType_ShareLocation", 2);
            ShareType_ShareDestination = new ShareType("ShareType_ShareDestination", 3);
            ShareType_ShareSelection = new ShareType("ShareType_ShareSelection", 4);
            ShareType asharetype[] = new ShareType[5];
            asharetype[0] = ShareType_ShareDrive;
            asharetype[1] = ShareType_PickUp;
            asharetype[2] = ShareType_ShareLocation;
            asharetype[3] = ShareType_ShareDestination;
            asharetype[4] = ShareType_ShareSelection;
            ENUM$VALUES = asharetype;
        }

        private ShareType(String s, int i)
        {
            super(s, i);
        }
    }


    private static final int ID_SELECTED = 7003;
    private static boolean bIsSupported = true;
    private static LocationData locationData;
    private static String mStr = null;
    private static int mType = 0;
    private static NativeManager nativeManager = null;
    private static String placeStr;

    public ShareUtility()
    {
    }

    public static void BuildShareURL(final ShareType type, final String Url, final AddressItem addressItem)
    {
        int i;
        int j;
        int k;
        locationData = null;
        if (type != ShareType.ShareType_ShareDestination)
        {
            ShareType.ShareType_ShareLocation;
        }
        if (addressItem != null)
        {
            placeStr = addressItem.getTitle();
            if (placeStr == null || placeStr.equals(""))
            {
                placeStr = addressItem.getAddress();
            }
        }
        if (placeStr == null)
        {
            placeStr = "";
        }
        nativeManager = AppService.getNativeManager();
        ShareType sharetype = ShareType.ShareType_ShareDrive;
        i = 0;
        j = 0;
        if (type != sharetype)
        {
            ShareType sharetype1 = ShareType.ShareType_PickUp;
            i = 0;
            j = 0;
            if (type != sharetype1)
            {
                i = 0;
                j = 0;
                if (addressItem != null)
                {
                    i = addressItem.getLocationX().intValue();
                    j = addressItem.getLocationY().intValue();
                }
            }
        }
        k = 2;
        if (type != ShareType.ShareType_ShareDestination && type != ShareType.ShareType_PickUp && type != ShareType.ShareType_ShareDrive) goto _L2; else goto _L1
_L1:
        k = 1;
_L4:
        mType = k;
        DriveToNativeManager drivetonativemanager = DriveToNativeManager.getInstance();
        String s = null;
        if (addressItem != null)
        {
            s = addressItem.getId();
        }
        mStr = "";
        drivetonativemanager.getLocationData(k, Integer.valueOf(i), Integer.valueOf(j), new com.waze.navigate.DriveToNativeManager.LocationDataListener() {

            private final String val$Url;
            private final AddressItem val$addressItem;
            private final ShareType val$type;

            public void onComplete(LocationData locationdata)
            {
                ShareUtility.locationData = locationdata;
                String s1 = ShareUtility.nativeManager.getLanguageString(DisplayStrings.DS_ETA);
                if (ShareUtility.locationData != null)
                {
                    if (type != ShareType.ShareType_PickUp && type != ShareType.ShareType_ShareDrive)
                    {
                        if (ShareUtility.mType == 1)
                        {
                            ShareUtility.mStr = ShareUtility.nativeManager.getLanguageString(DisplayStrings.DS_HEADED_TO);
                        } else
                        if (ShareUtility.mType == 2)
                        {
                            ShareUtility.mStr = ShareUtility.nativeManager.getLanguageString(DisplayStrings.DS_ISM_AT);
                        } else
                        if (ShareUtility.mType == 3)
                        {
                            ShareUtility.mStr = ShareUtility.nativeManager.getLanguageString(DisplayStrings.DS_HERESS_THE_PLACEC);
                        }
                        if (ShareUtility.mType == 1)
                        {
                            ShareUtility.mStr = (new StringBuilder(String.valueOf(ShareUtility.mStr))).append(" ").append(ShareUtility.locationData.destinationName).append(". ").append(s1).append(": ").append(ShareUtility.locationData.locationEta).toString();
                        } else
                        if (ShareUtility.mType == 2)
                        {
                            ShareUtility.mStr = (new StringBuilder(String.valueOf(ShareUtility.mStr))).append(" ").append(ShareUtility.locationData.locationName).toString();
                        } else
                        if (ShareUtility.mType == 3 && addressItem != null)
                        {
                            ShareUtility.mStr = (new StringBuilder(String.valueOf(ShareUtility.mStr))).append(" ").append(ShareUtility.placeStr).toString();
                        }
                        if (ShareUtility.mType == 2)
                        {
                            ShareUtility.mStr = (new StringBuilder(String.valueOf(ShareUtility.mStr))).append(" ").append(ShareUtility.nativeManager.getLanguageString(DisplayStrings.DS_ALREADY_HAVE_WAZEQ_TAP)).append(" ").append(ShareUtility.nativeManager.getLanguageString(DisplayStrings.DS_HERE_WITH_WAZE)).append(" ").append(ShareUtility.locationData.smsLocationUrlPrefix).append("/h").append(ShareUtility.locationData.locationHash).append(" ").append(ShareUtility.nativeManager.getLanguageString(DisplayStrings.DS_NO_WAZEQ)).append(" ").append(ShareUtility.locationData.downloadUrl).toString();
                        } else
                        {
                            ShareUtility.mStr = (new StringBuilder(String.valueOf(ShareUtility.mStr))).append(" ").append(ShareUtility.nativeManager.getLanguageString(DisplayStrings.DS_ALREADY_HAVE_WAZEQ_TAP)).append(" ").append(ShareUtility.nativeManager.getLanguageString(DisplayStrings.DS_THERE_WITH_WAZE)).append(" ").append(ShareUtility.locationData.smsLocationUrlPrefix).append("/h").append(ShareUtility.locationData.locationHash).append(" ").append(ShareUtility.nativeManager.getLanguageString(DisplayStrings.DS_NO_WAZEQ)).append(" ").append(ShareUtility.locationData.downloadUrl).toString();
                        }
                    } else
                    if (type == ShareType.ShareType_ShareDrive)
                    {
                        ShareUtility.mStr = (new StringBuilder(String.valueOf(ShareUtility.nativeManager.getLanguageString(DisplayStrings.DS_IM_ON_THE_WAY_TO)))).append(" ").append(ShareUtility.locationData.destinationName).append(", ").append(s1).append(": ").append(ShareUtility.locationData.locationEta).append(". ").append(ShareUtility.nativeManager.getLanguageString(DisplayStrings.DS_TRACK_MY_LOCATIONC)).append(" ").toString();
                        ShareUtility.mStr = (new StringBuilder(String.valueOf(ShareUtility.mStr))).append(Url).toString();
                    } else
                    {
                        ShareUtility.mStr = (new StringBuilder(String.valueOf(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_SMS_TEXT)))).append(" ").toString();
                        ShareUtility.mStr = (new StringBuilder(String.valueOf(ShareUtility.mStr))).append(Url).toString();
                    }
                    if (AppService.getActiveActivity() instanceof ShareDriveActivity)
                    {
                        ((ShareDriveActivity)AppService.getActiveActivity()).SendURL(ShareUtility.mStr);
                        return;
                    }
                }
            }

            
            {
                type = sharetype;
                addressItem = addressitem;
                Url = s;
                super();
            }
        }, s);
        return;
_L2:
        if (type == ShareType.ShareType_ShareSelection)
        {
            k = 3;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static void OpenShareActivity(final ShareType type, final String Url, final AddressItem addressItem, final PersonBase Sharefriends[])
    {
        locationData = null;
        if (type != ShareType.ShareType_ShareDestination)
        {
            ShareType _tmp = ShareType.ShareType_ShareLocation;
        }
        if (addressItem != null)
        {
            placeStr = addressItem.getTitle();
            if (placeStr == null || placeStr.equals(""))
            {
                placeStr = addressItem.getAddress();
            }
        }
        if (placeStr == null)
        {
            placeStr = "";
        }
        nativeManager = AppService.getNativeManager();
        ShareType sharetype = ShareType.ShareType_ShareDrive;
        int i = 0;
        int j = 0;
        if (type != sharetype)
        {
            ShareType sharetype1 = ShareType.ShareType_PickUp;
            i = 0;
            j = 0;
            if (type != sharetype1)
            {
                i = 0;
                j = 0;
                if (addressItem != null)
                {
                    i = addressItem.getLocationX().intValue();
                    j = addressItem.getLocationY().intValue();
                }
            }
        }
        int k = 2;
        final Intent intent;
        DriveToNativeManager drivetonativemanager;
        String s;
        if (type == ShareType.ShareType_ShareDestination || type == ShareType.ShareType_PickUp || type == ShareType.ShareType_ShareDrive)
        {
            k = 1;
        } else
        if (type == ShareType.ShareType_ShareSelection)
        {
            k = 3;
        }
        mType = k;
        intent = new Intent(AppService.getAppContext(), com/waze/navigate/social/ShareDriveActivity);
        if (type == ShareType.ShareType_ShareDrive)
        {
            intent.putExtra("type", 0);
        } else
        {
            intent.putExtra("type", 1);
        }
        drivetonativemanager = DriveToNativeManager.getInstance();
        s = null;
        if (addressItem != null)
        {
            s = addressItem.getId();
        }
        drivetonativemanager.getLocationData(k, Integer.valueOf(i), Integer.valueOf(j), new com.waze.navigate.DriveToNativeManager.LocationDataListener() {

            private final PersonBase val$Sharefriends[];
            private final String val$Url;
            private final AddressItem val$addressItem;
            private final Intent val$intent;
            private final ShareType val$type;

            public void onComplete(LocationData locationdata)
            {
                String s1;
                ShareUtility.locationData = locationdata;
                s1 = "";
                if (ShareUtility.locationData == null)
                {
                    return;
                }
                if ((ShareUtility.locationData.mVenueId == null || ShareUtility.locationData.mVenueId.isEmpty()) && addressItem != null && addressItem.VanueID != null)
                {
                    ShareUtility.locationData.mVenueId = addressItem.VanueID;
                }
                if (type == ShareType.ShareType_PickUp || type == ShareType.ShareType_ShareDrive) goto _L2; else goto _L1
_L1:
                if (ShareUtility.mType != 1) goto _L4; else goto _L3
_L3:
                s1 = ShareUtility.nativeManager.getLanguageString(DisplayStrings.DS_IVE_SENT_YOU_A_LOCATION);
_L14:
                String s2;
                if (ShareUtility.mType == 1)
                {
                    s1 = (new StringBuilder(String.valueOf(s1))).append(" ").append(ShareUtility.locationData.destinationName).append(",").toString();
                } else
                if (ShareUtility.mType == 2)
                {
                    s1 = (new StringBuilder(String.valueOf(s1))).append(" ").append(ShareUtility.locationData.locationName).append(",").toString();
                } else
                if (ShareUtility.mType == 3 && addressItem != null)
                {
                    s1 = (new StringBuilder(String.valueOf(s1))).append(" ").append(ShareUtility.placeStr).append(",").toString();
                }
                if (ShareUtility.mType == 2)
                {
                    s2 = (new StringBuilder(String.valueOf(s1))).append(" ").append(ShareUtility.nativeManager.getLanguageString(DisplayStrings.DS_ALREADY_HAVE_WAZEQ_TAP)).append(" ").append(ShareUtility.nativeManager.getLanguageString(DisplayStrings.DS_HERE_WITH_WAZE)).append(" ").append(ShareUtility.locationData.smsLocationUrlPrefix).append("/h").append(ShareUtility.locationData.locationHash).toString();
                } else
                {
                    s2 = (new StringBuilder(String.valueOf(s1))).append(" ").append(ShareUtility.nativeManager.getLanguageString(DisplayStrings.DS_ALREADY_HAVE_WAZEQ_TAP)).append(" ").append(ShareUtility.nativeManager.getLanguageString(DisplayStrings.DS_THERE_WITH_WAZE)).append(" ").append(ShareUtility.locationData.smsLocationUrlPrefix).append("/h").append(ShareUtility.locationData.locationHash).toString();
                }
_L9:
                if (ShareUtility.mType == 3 && addressItem != null && !addressItem.getTitle().isEmpty())
                {
                    ShareUtility.locationData.locationName = addressItem.getTitle();
                }
                intent.putExtra("link", s2);
                intent.putExtra("LocationData", ShareUtility.locationData);
                intent.putExtra("AddressItem", addressItem);
                if (type != ShareType.ShareType_ShareDrive) goto _L6; else goto _L5
_L5:
                if (Sharefriends == null) goto _L8; else goto _L7
_L7:
                intent.putExtra("FriendUserDataList", new ArrayList(Arrays.asList(Sharefriends)));
                intent.putExtra("selected", true);
_L11:
                AppService.getActiveActivity().startActivityForResult(intent, 1);
                return;
_L4:
                if (ShareUtility.mType == 2)
                {
                    s1 = ShareUtility.nativeManager.getLanguageString(DisplayStrings.DS_ISM_AT);
                } else
                if (ShareUtility.mType == 3)
                {
                    s1 = ShareUtility.nativeManager.getLanguageString(DisplayStrings.DS_IVE_SENT_YOU_A_LOCATION);
                }
                continue; /* Loop/switch isn't completed */
_L2:
                if (type == ShareType.ShareType_ShareDrive)
                {
                    StringBuilder stringbuilder = new StringBuilder();
                    stringbuilder.append(ShareUtility.nativeManager.getLanguageString(DisplayStrings.DS_IM_ON_THE_WAY_TO));
                    stringbuilder.append(" ");
                    stringbuilder.append(ShareUtility.locationData.destinationName);
                    stringbuilder.append(", ");
                    stringbuilder.append(ShareUtility.nativeManager.getLanguageString(DisplayStrings.DS_ISLL_BE_THERE_AT));
                    stringbuilder.append(" ");
                    stringbuilder.append(ShareUtility.locationData.locationEta);
                    stringbuilder.append(". ");
                    stringbuilder.append(ShareUtility.nativeManager.getLanguageString(DisplayStrings.DS_TRACK_MY_LOCATIONC));
                    if (Url != null)
                    {
                        stringbuilder.append(" ");
                        stringbuilder.append(Url);
                    }
                    s2 = stringbuilder.toString();
                } else
                {
                    s2 = (new StringBuilder(String.valueOf((new StringBuilder(String.valueOf(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_SMS_TEXT)))).append(" ").toString()))).append(Url).toString();
                }
                  goto _L9
_L8:
                if (AppService.getMainActivity() == null || AppService.getMainActivity().getLayoutMgr() == null || AppService.getMainActivity().getLayoutMgr().getNotifyFriends() == null) goto _L11; else goto _L10
_L10:
                FriendUserData afrienduserdata[];
                int l;
                int i1;
                afrienduserdata = AppService.getMainActivity().getLayoutMgr().getNotifyFriends();
                l = afrienduserdata.length;
                i1 = 0;
_L12:
label0:
                {
                    if (i1 < l)
                    {
                        break label0;
                    }
                    intent.putExtra("FriendUserDataList", new ArrayList(Arrays.asList(afrienduserdata)));
                    intent.putExtra("selected", false);
                }
                  goto _L11
                FriendUserData frienduserdata = afrienduserdata[i1];
                if (frienduserdata.mContactID != -1)
                {
                    Person person = AddressBook.GetPersonFromID(frienduserdata.mContactID);
                    if (person != null && person.getImage() != null)
                    {
                        frienduserdata.setImage(person.getImage());
                    }
                }
                i1++;
                  goto _L12
_L6:
                DriveToNativeManager.getInstance().getShareFriendsListData(ShareUtility.locationData.locationX, ShareUtility.locationData.locationY, intent. new com.waze.navigate.DriveToNativeManager.FriendsListListener() {

                    final _cls1 this$1;
                    private final Intent val$intent;

                    public void onComplete(FriendsListData friendslistdata)
                    {
                        FriendUserData afrienduserdata[] = friendslistdata.friends;
                        int i = afrienduserdata.length;
                        int j = 0;
                        do
                        {
                            if (j >= i)
                            {
                                intent.putExtra("FriendUserDataList", new ArrayList(Arrays.asList(friendslistdata.friends)));
                                AppService.getActiveActivity().startActivityForResult(intent, 1);
                                return;
                            }
                            FriendUserData frienduserdata = afrienduserdata[j];
                            if (frienduserdata.mContactID != -1)
                            {
                                Person person = AddressBook.GetPersonFromID(frienduserdata.mContactID);
                                if (person != null && person.getImage() != null)
                                {
                                    frienduserdata.setImage(person.getImage());
                                }
                            }
                            j++;
                        } while (true);
                    }

            
            {
                this$1 = final__pcls1;
                intent = Intent.this;
                super();
            }
                });
                return;
                if (true) goto _L14; else goto _L13
_L13:
            }

            
            {
                addressItem = addressitem;
                type = sharetype;
                Url = s;
                intent = intent1;
                Sharefriends = apersonbase;
                super();
            }
        }, s);
    }

    public static View buildShareComponentAddMoreFriendsButton(ActivityBase activitybase, android.view.View.OnClickListener onclicklistener)
    {
        FrameLayout framelayout = new FrameLayout(activitybase);
        framelayout.setId(0x7f090697);
        framelayout.setForeground(activitybase.getResources().getDrawable(0x7f020368));
        framelayout.setOnClickListener(onclicklistener);
        return framelayout;
    }

    public static View buildShareComponentFriendButton(ActivityBase activitybase, String s, String s1, boolean flag, boolean flag1, Object obj, IFriendSelected ifriendselected)
    {
        FrameLayout framelayout = new FrameLayout(activitybase);
        int i = (int)(36F * activitybase.getResources().getDisplayMetrics().density);
        android.widget.FrameLayout.LayoutParams layoutparams = new android.widget.FrameLayout.LayoutParams(i, i);
        layoutparams.gravity = 17;
        ImageView imageview = new ImageView(activitybase);
        imageview.setImageResource(0x7f020379);
        framelayout.addView(imageview, layoutparams);
        TextView textview = new TextView(activitybase);
        textview.setText(getInitials(s));
        textview.setTextColor(-1);
        textview.setGravity(17);
        framelayout.addView(textview, layoutparams);
        if (s1 != null && s1.length() > 0)
        {
            ImageView imageview3 = new ImageView(activitybase);
            ImageRepository.instance.getImage(s1, true, imageview3, null, activitybase);
            imageview3.setScaleType(android.widget.ImageView.ScaleType.CENTER_CROP);
            framelayout.addView(imageview3, layoutparams);
        }
        ImageView imageview1 = new ImageView(activitybase);
        imageview1.setImageResource(0x7f02036d);
        framelayout.addView(imageview1);
        ImageView imageview2 = new ImageView(activitybase);
        int j;
        if (flag1)
        {
            j = 0x7f02036f;
        } else
        {
            j = 0x7f02036e;
        }
        imageview2.setImageResource(j);
        imageview2.setId(7003);
        framelayout.addView(imageview2);
        if (!flag1)
        {
            framelayout.setOnClickListener(new OnShareClick(activitybase, framelayout, obj, flag, ifriendselected, s, null));
        }
        return framelayout;
    }

    private static void doShareAllowed(ActivityBase activitybase, int i, NativeManager nativemanager)
    {
        if ((i & 0x10) == 0) goto _L2; else goto _L1
_L1:
        boolean flag;
        boolean flag1;
        flag = nativemanager.isFollowActiveNTV();
        flag1 = NativeManager.getInstance().isNavigatingNTV();
        if (!flag) goto _L4; else goto _L3
_L3:
        String s = nativemanager.getCurMeetingNTV();
        Intent intent = new Intent(activitybase, com/waze/navigate/social/MyShareDriveActivity);
        intent.putExtra("meeting", s);
        activitybase.startActivityForResult(intent, 1);
_L6:
        return;
_L4:
        if (flag1)
        {
            OpenShareActivity(ShareType.ShareType_ShareDrive, null, null, null);
            return;
        } else
        {
            activitybase.startActivityForResult(new Intent(activitybase, com/waze/navigate/social/ShareHelpActivity), 1);
            return;
        }
_L2:
        if ((i & 0x20) != 0)
        {
            activitybase.startActivityForResult(new Intent(activitybase, com/waze/share/ShareActivity), 0);
            return;
        }
        if ((i & 0x40) != 0)
        {
            OpenShareActivity(ShareType.ShareType_ShareLocation, null, null, null);
            return;
        }
        if ((i & 0x80) != 0)
        {
            DriveToNativeManager.getInstance().getHome(new com.waze.navigate.DriveToNativeManager.DriveToGetAddressItemArrayCallback() {

                public void getAddressItemArrayCallback(AddressItem aaddressitem[])
                {
                    Analytics.log("SHARE_LOCATION_OF", "VAUE", "HOME");
                    if (aaddressitem != null)
                    {
                        ShareUtility.OpenShareActivity(ShareType.ShareType_ShareSelection, null, aaddressitem[0], null);
                    }
                }

            });
            return;
        }
        if ((i & 0x100) != 0)
        {
            DriveToNativeManager.getInstance().getWork(new com.waze.navigate.DriveToNativeManager.DriveToGetAddressItemArrayCallback() {

                public void getAddressItemArrayCallback(AddressItem aaddressitem[])
                {
                    Analytics.log("SHARE_LOCATION_OF", "VAUE", "WORK");
                    if (aaddressitem != null)
                    {
                        ShareUtility.OpenShareActivity(ShareType.ShareType_ShareSelection, null, aaddressitem[0], null);
                    }
                }

            });
            return;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public static String getFirstName(String s)
    {
        String s1 = s.trim();
        int i = s1.indexOf(' ');
        if (i < 0)
        {
            return s1;
        } else
        {
            return s1.substring(0, i).trim();
        }
    }

    public static String getInitials(String s)
    {
        if (s.startsWith("+") && s.length() <= 3)
        {
            return s;
        }
        String s1 = "";
        String as[] = s.split(" ");
        int i = as.length;
        int j = 0;
        do
        {
            if (j >= i)
            {
                if (s1.length() > 3)
                {
                    s1 = s1.substring(0, 3);
                }
                return s1;
            }
            String s2 = as[j];
            if (s2 != null && s2.length() != 0)
            {
                s1 = (new StringBuilder(String.valueOf(s1))).append(s2.substring(0, 1).toUpperCase(Locale.US)).toString();
            }
            j++;
        } while (true);
    }

    public static String getShortened(String s)
    {
        boolean flag;
        String s1;
        String as[];
        int i;
        int j;
        if (s.length() <= 6)
        {
            return s;
        }
        flag = true;
        s1 = "";
        as = s.split(" ");
        i = as.length;
        j = 0;
_L2:
        String s2;
        if (j >= i)
        {
            return s1;
        }
        s2 = as[j];
        if (s2 != null && s2.length() != 0)
        {
            break; /* Loop/switch isn't completed */
        }
_L3:
        j++;
        if (true) goto _L2; else goto _L1
_L1:
        if (flag)
        {
            s1 = (new StringBuilder(String.valueOf(s1))).append(s2).toString();
            flag = false;
        } else
        {
            s1 = (new StringBuilder(String.valueOf((new StringBuilder(String.valueOf(s1))).append(" ").toString()))).append(s2.substring(0, 1)).toString();
        }
          goto _L3
        if (true) goto _L2; else goto _L4
_L4:
    }

    public static void shareComponentPopulate(ActivityBase activitybase, LinearLayout linearlayout, ArrayList arraylist, ArrayList arraylist1, boolean flag, boolean flag1, IFriendSelected ifriendselected)
    {
        linearlayout.removeAllViews();
        int i = 0;
        if (arraylist != null || arraylist1 != null)
        {
            int j;
            ArrayList arraylist2;
            int k;
            int l;
            int i1;
            int j1;
            Iterator iterator;
            if (arraylist == null)
            {
                j = 0;
                arraylist2 = new ArrayList();
            } else
            {
                j = arraylist.size();
                arraylist2 = new ArrayList(arraylist);
            }
            arraylist2.addAll(arraylist1);
            k = (int)(-10F * activitybase.getResources().getDisplayMetrics().density);
            l = linearlayout.getWidth();
            i1 = activitybase.getResources().getDrawable(0x7f02036d).getIntrinsicWidth();
            j1 = -1 + (l + k) / (i1 + k);
            iterator = arraylist2.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    continue;
                }
                PersonBase personbase = (PersonBase)iterator.next();
                i++;
                String s = personbase.getName();
                String s1 = personbase.getImage();
                boolean flag2;
                if (i <= j)
                {
                    flag2 = true;
                } else
                {
                    flag2 = false;
                }
                if (flag1 && i == j1 && arraylist2.size() > j1)
                {
                    int k1 = 1 + (arraylist2.size() - i);
                    View view;
                    android.widget.LinearLayout.LayoutParams layoutparams;
                    boolean flag3;
                    if (k1 < 100)
                    {
                        s = (new StringBuilder("+")).append(k1).toString();
                    } else
                    {
                        s = "++";
                    }
                    s1 = null;
                    flag3 = NativeManager.getInstance().isFollowActiveNTV();
                    flag2 = false;
                    if (flag3)
                    {
                        flag2 = true;
                    }
                    flag = true;
                    personbase = null;
                }
                view = buildShareComponentFriendButton(activitybase, s, s1, flag, flag2, personbase, ifriendselected);
                layoutparams = new android.widget.LinearLayout.LayoutParams(-2, -2);
                layoutparams.setMargins(0, 0, k, 0);
                linearlayout.addView(view, layoutparams);
            } while (i < j1);
        }
        break MISSING_BLOCK_LABEL_293;
        while (true) 
        {
            return;
        }
    }

    public static void shareLocationOrDrive(final ActivityBase a, final int type)
    {
        final NativeManager nm = NativeManager.getInstance();
        if (MyWazeNativeManager.getInstance().getContactLoggedInNTV())
        {
            if (nm.IsAccessToContactsEnableNTV() || (type & 0x20) != 0)
            {
                doShareAllowed(a, type, nm);
                return;
            } else
            {
                (new PhoneRequestAccessDialog(a, new com.waze.phone.PhoneRequestAccessDialog.PhoneRequestAccessResultListener() {

                    private final ActivityBase val$a;
                    private final NativeManager val$nm;
                    private final int val$type;

                    public void onResult(boolean flag)
                    {
                        if (flag)
                        {
                            ShareUtility.doShareAllowed(a, type, nm);
                        }
                    }

            
            {
                a = activitybase;
                type = i;
                nm = nativemanager;
                super();
            }
                })).show();
                return;
            }
        } else
        {
            Intent intent = new Intent(a, com/waze/phone/PhoneNumberSignInActivity);
            intent.putExtra("type", 1);
            intent.putExtra("back", 1);
            intent.putExtra("fon_shon_rea_son", "FEATURE");
            AppService.getMainActivity().startActivityForResult(intent, 0x10001 | type);
            return;
        }
    }











}
