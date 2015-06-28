// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.view.View;

// Referenced classes of package com.waze:
//            ScreenShotManager

private final class nit> extends View
{

    final ScreenShotManager this$0;

    public (Context context, Bitmap bitmap)
    {
        this$0 = ScreenShotManager.this;
        super(context);
        setFocusable(true);
        setBackgroundDrawable(new BitmapDrawable(bitmap));
    }
}
