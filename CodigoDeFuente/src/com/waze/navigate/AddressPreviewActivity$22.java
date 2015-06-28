// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.widget.ImageView;
import com.waze.DownloadResCallback;
import com.waze.ResManager;

// Referenced classes of package com.waze.navigate:
//            AddressPreviewActivity

class val.icon
    implements DownloadResCallback
{

    final AddressPreviewActivity this$0;
    private final String val$icon;

    public void downloadResCallback()
    {
        android.graphics.drawable.Drawable drawable = ResManager.GetSkinDrawable((new StringBuilder(String.valueOf(val$icon))).append(".bin").toString());
        if (drawable != null)
        {
            AddressPreviewActivity.access$30(AddressPreviewActivity.this).setScaleType(android.widget.NTER);
            AddressPreviewActivity.access$30(AddressPreviewActivity.this).setImageDrawable(drawable);
        }
    }

    ()
    {
        this$0 = final_addresspreviewactivity;
        val$icon = String.this;
        super();
    }
}
