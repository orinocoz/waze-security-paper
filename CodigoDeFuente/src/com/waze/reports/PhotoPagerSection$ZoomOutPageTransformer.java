// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.view.View;

// Referenced classes of package com.waze.reports:
//            PhotoPagerSection

public class this._cls0
    implements com.waze.ifs.ui.
{

    final PhotoPagerSection this$0;

    public void transformPage(View view, float f)
    {
        if (f >= -1F && f <= 1.0F)
        {
            float f1 = Math.max(0.85F, 1.0F - Math.abs(f));
            view.setScaleX(f1);
            view.setScaleY(f1);
        }
    }

    public ()
    {
        this$0 = PhotoPagerSection.this;
        super();
    }
}
