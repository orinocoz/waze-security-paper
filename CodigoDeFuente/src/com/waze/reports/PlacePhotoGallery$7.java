// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.view.animation.Animation;

// Referenced classes of package com.waze.reports:
//            PlacePhotoGallery

class this._cls0
    implements android.view.animation.istener
{

    final PlacePhotoGallery this$0;

    public void onAnimationEnd(Animation animation)
    {
        dismiss();
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
    }

    ationListener()
    {
        this$0 = PlacePhotoGallery.this;
        super();
    }
}
