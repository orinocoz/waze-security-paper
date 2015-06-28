// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.content.DialogInterface;
import com.waze.MsgBox;
import com.waze.NativeManager;
import com.waze.strings.DisplayStrings;

// Referenced classes of package com.waze.reports:
//            AddPlaceFlowActivity

class this._cls1
    implements android.content.stener
{

    final sh this$1;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        finish();
    }

    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/waze/reports/AddPlaceFlowActivity$4

/* anonymous class */
    class AddPlaceFlowActivity._cls4
        implements Runnable
    {

        final AddPlaceFlowActivity this$0;

        public void run()
        {
            if (AddPlaceFlowActivity.access$4(AddPlaceFlowActivity.this) == null && !isFinishing())
            {
                MsgBox.openMessageBoxWithCallback(AddPlaceFlowActivity.access$0(AddPlaceFlowActivity.this).getLanguageString(DisplayStrings.DS_UHHOHE), AddPlaceFlowActivity.access$0(AddPlaceFlowActivity.this).getLanguageString(DisplayStrings.DS_NETWORK_CONNECTION_PROBLEMS__PLEASE_TRY_AGAIN_LATER_), false, new AddPlaceFlowActivity._cls4._cls1());
            }
        }


            
            {
                this$0 = AddPlaceFlowActivity.this;
                super();
            }
    }

}
