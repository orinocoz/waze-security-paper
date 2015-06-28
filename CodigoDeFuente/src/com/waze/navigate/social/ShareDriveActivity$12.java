// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;


// Referenced classes of package com.waze.navigate.social:
//            ShareDriveActivity

class this._cls0
    implements com.waze.phone.og.PhoneRequestAccessResultListener
{

    final ShareDriveActivity this$0;

    public void onResult(boolean flag)
    {
        if (flag)
        {
            ShareDriveActivity.access$17(ShareDriveActivity.this);
            return;
        } else
        {
            setResult(0);
            finish();
            return;
        }
    }

    questAccessResultListener()
    {
        this$0 = ShareDriveActivity.this;
        super();
    }
}
