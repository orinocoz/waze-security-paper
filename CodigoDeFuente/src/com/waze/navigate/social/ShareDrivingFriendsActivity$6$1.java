// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import android.view.ViewTreeObserver;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.waze.NativeManager;
import com.waze.settings.SettingsTitleText;
import com.waze.share.ShareUtility;
import com.waze.strings.DisplayStrings;
import com.waze.user.FriendUserData;
import com.waze.view.title.TitleBar;
import java.util.Locale;

// Referenced classes of package com.waze.navigate.social:
//            ShareDrivingFriendsActivity, EndDriveData

class this._cls1
    implements android.view.istener
{

    final r this$1;

    public void onGlobalLayout()
    {
        ShareDrivingFriendsActivity.access$11(_fld0, ShareDrivingFriendsActivity.access$5(_fld0));
        ShareDrivingFriendsActivity.access$5(_fld0).getViewTreeObserver().removeGlobalOnLayoutListener(this);
    }

    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/waze/navigate/social/ShareDrivingFriendsActivity$6

/* anonymous class */
    class ShareDrivingFriendsActivity._cls6
        implements com.waze.navigate.DriveToNativeManager.EndDriveListener
    {

        final ShareDrivingFriendsActivity this$0;

        public void onComplete(EndDriveData enddrivedata)
        {
            ShareDrivingFriendsActivity.access$8(ShareDrivingFriendsActivity.this, enddrivedata);
            if (ShareDrivingFriendsActivity.access$9(ShareDrivingFriendsActivity.this) == null) goto _L2; else goto _L1
_L1:
            mShareOwner = ShareDrivingFriendsActivity.access$9(ShareDrivingFriendsActivity.this).shareOwner;
            String s = ShareDrivingFriendsActivity.access$10(ShareDrivingFriendsActivity.this).getLanguageString(DisplayStrings.DS_FROM_PS);
            Object aobj[] = new Object[1];
            aobj[0] = ShareUtility.getShortened(mShareOwner);
            String s1 = String.format(s, aobj);
            ShareDrivingFriendsActivity.access$6(ShareDrivingFriendsActivity.this).setTitle(s1.toUpperCase(Locale.US));
            String s2 = (new StringBuilder(String.valueOf(ShareDrivingFriendsActivity.access$10(ShareDrivingFriendsActivity.this).getLanguageString(DisplayStrings.DS_IM_ON_THE_WAY_TO)))).append(" - ").append(ShareDrivingFriendsActivity.access$9(ShareDrivingFriendsActivity.this).address).toString();
            ((TextView)findViewById(0x7f09069c)).setText(s2);
            ShareDrivingFriendsActivity.access$5(ShareDrivingFriendsActivity.this).getViewTreeObserver().addOnGlobalLayoutListener(new ShareDrivingFriendsActivity._cls6._cls1());
            String s3 = ShareDrivingFriendsActivity.access$10(ShareDrivingFriendsActivity.this).getLanguageString(DisplayStrings.DS_REPLY_TO_PS);
            Object aobj1[] = new Object[1];
            aobj1[0] = ShareUtility.getFirstName(mShareOwner);
            String s4 = String.format(s3, aobj1);
            ((SettingsTitleText)findViewById(0x7f0906a1)).setText(s4);
            if (ShareDrivingFriendsActivity.access$9(ShareDrivingFriendsActivity.this).Others.length <= 0) goto _L2; else goto _L3
_L3:
            if (mShareOwner == null || mShareOwner.isEmpty()) goto _L5; else goto _L4
_L4:
            FriendUserData afrienduserdata[];
            int i;
            int j;
            afrienduserdata = ShareDrivingFriendsActivity.access$9(ShareDrivingFriendsActivity.this).Others;
            i = afrienduserdata.length;
            j = 0;
_L9:
            if (j < i) goto _L6; else goto _L5
_L5:
            if (ShareDrivingFriendsActivity.access$13(ShareDrivingFriendsActivity.this) == null)
            {
                ShareDrivingFriendsActivity.access$12(ShareDrivingFriendsActivity.this, ShareDrivingFriendsActivity.access$9(ShareDrivingFriendsActivity.this).Others[0]);
            }
            ((TextView)findViewById(0x7f09069f)).setText(ShareDrivingFriendsActivity.access$13(ShareDrivingFriendsActivity.this).arrivedShareText);
            StringBuilder stringbuilder = new StringBuilder();
            if (ShareDrivingFriendsActivity.access$13(ShareDrivingFriendsActivity.this).statusLine != null)
            {
                stringbuilder.append(ShareDrivingFriendsActivity.access$13(ShareDrivingFriendsActivity.this).statusLine);
            }
            if (ShareDrivingFriendsActivity.access$13(ShareDrivingFriendsActivity.this).mShowETA && ShareDrivingFriendsActivity.access$13(ShareDrivingFriendsActivity.this).arrivedTime != null && !ShareDrivingFriendsActivity.access$13(ShareDrivingFriendsActivity.this).arrivedTime.isEmpty())
            {
                if (ShareDrivingFriendsActivity.access$13(ShareDrivingFriendsActivity.this).statusLine != null && !ShareDrivingFriendsActivity.access$13(ShareDrivingFriendsActivity.this).statusLine.isEmpty())
                {
                    stringbuilder.append(", ");
                }
                stringbuilder.append(ShareDrivingFriendsActivity.access$13(ShareDrivingFriendsActivity.this).arrivedText);
                stringbuilder.append(" ");
                stringbuilder.append(ShareDrivingFriendsActivity.access$13(ShareDrivingFriendsActivity.this).arrivedTime);
            }
            ((TextView)findViewById(0x7f0906a0)).setText(stringbuilder.toString());
_L2:
            return;
_L6:
            FriendUserData frienduserdata = afrienduserdata[j];
            if (!mShareOwner.equals(frienduserdata.getName()))
            {
                break; /* Loop/switch isn't completed */
            }
            ShareDrivingFriendsActivity.access$12(ShareDrivingFriendsActivity.this, frienduserdata);
            if (true) goto _L5; else goto _L7
_L7:
            j++;
            if (true) goto _L9; else goto _L8
_L8:
        }


            
            {
                this$0 = ShareDrivingFriendsActivity.this;
                super();
            }
    }

}
