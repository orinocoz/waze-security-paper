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

class this._cls1
    implements android.content.ner
{

    final h this$1;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        if (i == 1)
        {
            AddressPreviewActivity.access$10(_fld0).eraseAddressItem(AddressPreviewActivity.access$6(_fld0));
            setResult(-1);
            AddressPreviewActivity.access$22(_fld0, true);
            finish();
        }
    }

    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/waze/navigate/AddressPreviewActivity$24

/* anonymous class */
    class AddressPreviewActivity._cls24
        implements android.view.View.OnClickListener
    {

        final AddressPreviewActivity this$0;

        public void onClick(View view)
        {
            AddressPreviewActivity._cls24._cls1 _lcls1 = new AddressPreviewActivity._cls24._cls1();
            MsgBox.getInstance().OpenConfirmDialogCustomTimeoutCbJava(AddressPreviewActivity.access$20(AddressPreviewActivity.this).getLanguageString(DisplayStrings.DS_ARE_YOU_SURE_Q), AddressPreviewActivity.access$20(AddressPreviewActivity.this).getLanguageString(DisplayStrings.DS_REMOVE_FROM_FAVORITES), true, _lcls1, AddressPreviewActivity.access$20(AddressPreviewActivity.this).getLanguageString(DisplayStrings.DS_YES), AddressPreviewActivity.access$20(AddressPreviewActivity.this).getLanguageString(DisplayStrings.DS_CANCEL), -1);
        }


            
            {
                this$0 = AddressPreviewActivity.this;
                super();
            }
    }

}
