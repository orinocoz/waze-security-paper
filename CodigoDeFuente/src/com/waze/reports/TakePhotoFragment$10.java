// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.app.Activity;
import android.content.DialogInterface;

// Referenced classes of package com.waze.reports:
//            TakePhotoFragment

class this._cls0
    implements android.content.ckListener
{

    final TakePhotoFragment this$0;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        getActivity().finish();
    }

    kListener()
    {
        this$0 = TakePhotoFragment.this;
        super();
    }
}
