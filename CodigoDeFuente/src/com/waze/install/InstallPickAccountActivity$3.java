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

class this._cls0
    implements android.view.y._cls3
{

    final InstallPickAccountActivity this$0;

    public void onClick(View view)
    {
        FacebookWrapper.getInstance().logout(InstallPickAccountActivity.this, new com.waze.social.facebook.FacebookWrapper.OnLogoutCompletedListener() {

            final InstallPickAccountActivity._cls3 this$1;

            public void onLogoutCompleted()
            {
                FacebookWrapper.getInstance().SignIn(this$0, new com.waze.social.facebook.FacebookWrapper.IOnAuthorizeCompletedListener() {

                    final _cls1 this$2;

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
                this$2 = _cls1.this;
                super();
            }
                }, false);
            }


            
            {
                this$1 = InstallPickAccountActivity._cls3.this;
                super();
            }
        });
    }


    _cls1.this._cls1()
    {
        this$0 = InstallPickAccountActivity.this;
        super();
    }
}
