// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.content.DialogInterface;
import android.view.View;
import com.waze.MsgBox;
import com.waze.NativeManager;
import com.waze.strings.DisplayStrings;

// Referenced classes of package com.waze.navigate:
//            AddressPreviewActivity, DriveToNativeManager

class this._cls0
    implements android.view.y._cls24
{

    final AddressPreviewActivity this$0;

    public void onClick(View view)
    {
        android.content.tener tener = new android.content.DialogInterface.OnClickListener() {

            final AddressPreviewActivity._cls24 this$1;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                if (i == 1)
                {
                    AddressPreviewActivity.access$10(this$0).eraseAddressItem(AddressPreviewActivity.access$6(this$0));
                    setResult(-1);
                    AddressPreviewActivity.access$22(this$0, true);
                    finish();
                }
            }

            
            {
                this$1 = AddressPreviewActivity._cls24.this;
                super();
            }
        };
        MsgBox.getInstance().OpenConfirmDialogCustomTimeoutCbJava(AddressPreviewActivity.access$20(AddressPreviewActivity.this).getLanguageString(DisplayStrings.DS_ARE_YOU_SURE_Q), AddressPreviewActivity.access$20(AddressPreviewActivity.this).getLanguageString(DisplayStrings.DS_REMOVE_FROM_FAVORITES), true, tener, AddressPreviewActivity.access$20(AddressPreviewActivity.this).getLanguageString(DisplayStrings.DS_YES), AddressPreviewActivity.access$20(AddressPreviewActivity.this).getLanguageString(DisplayStrings.DS_CANCEL), -1);
    }


    _cls1.this._cls1()
    {
        this$0 = AddressPreviewActivity.this;
        super();
    }
}
