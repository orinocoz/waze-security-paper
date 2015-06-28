// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.main.navigate;

import android.app.Dialog;
import android.view.View;
import com.waze.AppService;
import com.waze.LayoutManager;
import com.waze.MainActivity;
import com.waze.NativeManager;
import com.waze.phone.PhoneRequestAccessDialog;
import com.waze.social.KeepYourFriendsDialog;
import java.util.ArrayList;

// Referenced classes of package com.waze.main.navigate:
//            NavigationResult

class this._cls1
    implements com.waze.phone.og.PhoneRequestAccessResultListener
{

    final tivity this$1;

    public void onResult(boolean flag)
    {
        if (flag)
        {
            AppService.getMainActivity().getLayoutMgr().navResultOpenAddFromActivity();
        }
    }

    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/waze/main/navigate/NavigationResult$17

/* anonymous class */
    class NavigationResult._cls17
        implements android.view.View.OnClickListener
    {

        final NavigationResult this$0;

        public void onClick(View view)
        {
            NavigationResult.access$21(NavigationResult.this).dismiss();
            if (NavigationResult.access$12(NavigationResult.this) != null)
            {
                NavigationResult.access$6(NavigationResult.this).add(NavigationResult.access$12(NavigationResult.this));
                NavigationResult.access$8(NavigationResult.this).findViewById(0x7f0904b4).performClick();
                return;
            }
            NavigationResult.access$5(NavigationResult.this, true);
            if (!nm.IsAccessToContactsEnableNTV())
            {
                (new PhoneRequestAccessDialog(AppService.getMainActivity(), new NavigationResult._cls17._cls1())).show();
                return;
            } else
            {
                openAddFromActivity();
                return;
            }
        }

            
            {
                this$0 = NavigationResult.this;
                super();
            }
    }

}
