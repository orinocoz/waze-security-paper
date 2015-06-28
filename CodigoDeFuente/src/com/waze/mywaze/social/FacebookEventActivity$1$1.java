// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.mywaze.social;

import android.content.DialogInterface;
import android.view.View;
import com.waze.MsgBox;
import com.waze.NativeManager;
import com.waze.navigate.AddressItem;
import com.waze.navigate.DriveToNativeManager;
import com.waze.strings.DisplayStrings;

// Referenced classes of package com.waze.mywaze.social:
//            FacebookEventActivity

class this._cls1
    implements android.content.tener
{

    final sh this$1;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        if (i == 1)
        {
            DriveToNativeManager.getInstance().VerifyEventWithNoAddress(FacebookEventActivity.access$0(_fld0).getMeetingId());
            setResult(-1);
            finish();
        }
    }

    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/waze/mywaze/social/FacebookEventActivity$1

/* anonymous class */
    class FacebookEventActivity._cls1
        implements android.view.View.OnClickListener
    {

        final FacebookEventActivity this$0;

        public void onClick(View view)
        {
            FacebookEventActivity._cls1._cls1 _lcls1 = new FacebookEventActivity._cls1._cls1();
            MsgBox.getInstance().OpenConfirmDialogCustomTimeoutCbJava(FacebookEventActivity.access$1(FacebookEventActivity.this).getLanguageString(DisplayStrings.DS_ARE_YOU_SURE_Q), FacebookEventActivity.access$1(FacebookEventActivity.this).getLanguageString(DisplayStrings.DS_EVENT_CONFIRM_NO_LOCATION), true, _lcls1, FacebookEventActivity.access$1(FacebookEventActivity.this).getLanguageString(DisplayStrings.DS_REMOVE_EVENT), FacebookEventActivity.access$1(FacebookEventActivity.this).getLanguageString(DisplayStrings.DS_CANCEL), -1);
        }


            
            {
                this$0 = FacebookEventActivity.this;
                super();
            }
    }

}
