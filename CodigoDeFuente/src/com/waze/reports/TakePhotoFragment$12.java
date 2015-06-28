// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.view.animation.Animation;
import android.widget.ImageButton;

// Referenced classes of package com.waze.reports:
//            TakePhotoFragment

class this._cls0
    implements android.view.animation.stener
{

    final TakePhotoFragment this$0;

    public void onAnimationEnd(Animation animation)
    {
        TakePhotoFragment.access$0(TakePhotoFragment.this).setVisibility(8);
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
        TakePhotoFragment.access$10(TakePhotoFragment.this).setVisibility(0);
    }

    tionListener()
    {
        this$0 = TakePhotoFragment.this;
        super();
    }
}
