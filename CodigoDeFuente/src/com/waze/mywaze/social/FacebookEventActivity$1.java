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

class this._cls0
    implements android.view.ctivity._cls1
{

    final FacebookEventActivity this$0;

    public void onClick(View view)
    {
        android.content.istener istener = new android.content.DialogInterface.OnClickListener() {

            final FacebookEventActivity._cls1 this$1;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                if (i == 1)
                {
                    DriveToNativeManager.getInstance().VerifyEventWithNoAddress(FacebookEventActivity.access$0(this$0).getMeetingId());
                    setResult(-1);
                    finish();
                }
            }

            
            {
                this$1 = FacebookEventActivity._cls1.this;
                super();
            }
        };
        MsgBox.getInstance().OpenConfirmDialogCustomTimeoutCbJava(FacebookEventActivity.access$1(FacebookEventActivity.this).getLanguageString(DisplayStrings.DS_ARE_YOU_SURE_Q), FacebookEventActivity.access$1(FacebookEventActivity.this).getLanguageString(DisplayStrings.DS_EVENT_CONFIRM_NO_LOCATION), true, istener, FacebookEventActivity.access$1(FacebookEventActivity.this).getLanguageString(DisplayStrings.DS_REMOVE_EVENT), FacebookEventActivity.access$1(FacebookEventActivity.this).getLanguageString(DisplayStrings.DS_CANCEL), -1);
    }


    _cls1.this._cls1()
    {
        this$0 = FacebookEventActivity.this;
        super();
    }
}
