// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.routes;

import android.content.DialogInterface;
import android.view.View;
import com.waze.MsgBox;
import com.waze.NativeManager;
import com.waze.strings.DisplayStrings;

// Referenced classes of package com.waze.routes:
//            RoutesMapActivity, AlternativeRoute

class this._cls1
    implements android.content.kListener
{

    final is._cls0 this$1;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        if (i == 1)
        {
            RoutesMapActivity.access$2(_fld0);
        }
    }

    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/waze/routes/RoutesMapActivity$2

/* anonymous class */
    class RoutesMapActivity._cls2
        implements android.view.View.OnClickListener
    {

        final RoutesMapActivity this$0;

        public void onClick(View view)
        {
            if (routes[RoutesMapActivity.access$0(RoutesMapActivity.this)].closure)
            {
                MsgBox.getInstance().OpenConfirmDialogCustomTimeoutCbJava(RoutesMapActivity.access$1(RoutesMapActivity.this).getLanguageString(DisplayStrings.DS_ARE_YOU_SURE_Q), RoutesMapActivity.access$1(RoutesMapActivity.this).getLanguageString(DisplayStrings.DS_ALTERNATIVE_CLOSURE_SELECTED), false, new RoutesMapActivity._cls2._cls1(), RoutesMapActivity.access$1(RoutesMapActivity.this).getLanguageString(DisplayStrings.DS_YES), RoutesMapActivity.access$1(RoutesMapActivity.this).getLanguageString(DisplayStrings.DS_NO), -1);
                return;
            } else
            {
                RoutesMapActivity.access$2(RoutesMapActivity.this);
                return;
            }
        }


            
            {
                this$0 = RoutesMapActivity.this;
                super();
            }
    }

}
