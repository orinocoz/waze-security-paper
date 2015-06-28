// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.install;

import android.view.View;
import com.waze.MsgBox;
import com.waze.NativeManager;
import com.waze.social.facebook.FacebookWrapper;
import com.waze.strings.DisplayStrings;

// Referenced classes of package com.waze.install:
//            InstallPickAccountActivity

class this._cls1
    implements com.waze.social.facebook.edListener
{

    final URE_SERVICE__PLEASE_TRY this$1;

    public void onLogoutCompleted()
    {
        FacebookWrapper.getInstance().SignIn(_fld0, new com.waze.social.facebook.FacebookWrapper.IOnAuthorizeCompletedListener() {

            final InstallPickAccountActivity._cls3._cls1 this$2;

            public void onAuthorizeCompleted(boolean flag, int i)
            {
                if (flag)
                {
                    setResult(-1);
                    finish();
                    return;
                } else
                {
                    MsgBox.openMessageBox(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_ERROR), NativeManager.getInstance().getLanguageString(DisplayStrings.DS_CANNOT_CONFIGURE_SERVICE__PLEASE_TRY), false);
                    return;
                }
            }

            
            {
                this$2 = InstallPickAccountActivity._cls3._cls1.this;
                super();
            }
        }, false);
    }


    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/waze/install/InstallPickAccountActivity$3

/* anonymous class */
    class InstallPickAccountActivity._cls3
        implements android.view.View.OnClickListener
    {

        final InstallPickAccountActivity this$0;

        public void onClick(View view)
        {
            FacebookWrapper.getInstance().logout(InstallPickAccountActivity.this, new InstallPickAccountActivity._cls3._cls1());
        }


            
            {
                this$0 = InstallPickAccountActivity.this;
                super();
            }
    }

}
