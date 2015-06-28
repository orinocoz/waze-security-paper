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

    private static final float MIN_SCALE = 0.75F;
    final PhotoPagerSection this$0;

    public void transformPage(View view, float f)
    {
        int i = view.getWidth();
        if (f < -1F)
        {
            view.setAlpha(0.0F);
            return;
        }
        if (f <= 0.0F)
        {
            view.setAlpha(1.0F);
            view.setTranslationX(0.0F);
            view.setScaleX(1.0F);
            view.setScaleY(1.0F);
            return;
        }
        if (f <= 1.0F)
        {
            view.setAlpha(1.0F - f);
            view.setTranslationX((float)i * -f);
            float f1 = 0.75F + 0.25F * (1.0F - Math.abs(f));
            view.setScaleX(f1);
            view.setScaleY(f1);
            return;
        } else
        {
            view.setAlpha(0.0F);
            return;
        }
    }

    public ()
    {
        this$0 = PhotoPagerSection.this;
        super();
    }
}
