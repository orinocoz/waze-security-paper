// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.view.ViewTreeObserver;
import android.widget.ImageButton;

// Referenced classes of package com.waze.reports:
//            TakePhotoFragment

class this._cls0
    implements android.view.lobalLayoutListener
{

    final TakePhotoFragment this$0;

    public void onGlobalLayout()
    {
        TakePhotoFragment.access$0(TakePhotoFragment.this).getViewTreeObserver().removeGlobalOnLayoutListener(this);
        TakePhotoFragment.access$1(TakePhotoFragment.this);
    }

    lLayoutListener()
    {
        this$0 = TakePhotoFragment.this;
        super();
    }
}
