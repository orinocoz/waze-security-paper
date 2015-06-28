// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.main.navigate;

import android.content.Intent;
import android.view.View;
import com.waze.AppService;
import com.waze.MainActivity;
import com.waze.NativeManager;
import com.waze.analytics.Analytics;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.phone.PhoneNumberSignInActivity;
import com.waze.phone.PhoneRequestAccessDialog;

// Referenced classes of package com.waze.main.navigate:
//            NavigationResult

class this._cls1
    implements com.waze.phone.og.PhoneRequestAccessResultListener
{

    final ddFromActivity this$1;

    public void onResult(boolean flag)
    {
        if (flag)
        {
            NavigationResult.access$5(_fld0, false);
            openAddFromActivity();
        }
    }

    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/waze/main/navigate/NavigationResult$20

/* anonymous class */
    class NavigationResult._cls20
        implements android.view.View.OnClickListener
    {

        final NavigationResult this$0;

        public void onClick(View view)
        {
            Analytics.log("SHARE_ADD_FRIENDS_CLICK", null, null);
            NavigationResult.access$7(NavigationResult.this);
            if (MyWazeNativeManager.getInstance().getContactLoggedInNTV())
            {
                if (NativeManager.getInstance().IsAccessToContactsEnableNTV())
                {
                    NavigationResult.access$5(NavigationResult.this, false);
                    openAddFromActivity();
                    return;
                } else
                {
                    (new PhoneRequestAccessDialog(NavigationResult.access$23(NavigationResult.this), new NavigationResult._cls20._cls1())).show();
                    return;
                }
            } else
            {
                Intent intent = new Intent(NavigationResult.access$23(NavigationResult.this), com/waze/phone/PhoneNumberSignInActivity);
                intent.putExtra("type", 1);
                intent.putExtra("back", 1);
                intent.putExtra("fon_shon_rea_son", "FEATURE");
                AppService.getMainActivity().startActivityForResult(intent, 32791);
                return;
            }
        }


            
            {
                this$0 = NavigationResult.this;
                super();
            }
    }

}
