// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.view.animation.Animation;
import com.waze.ifs.ui.ObservableScrollView;

// Referenced classes of package com.waze.navigate:
//            AddressPreviewActivity

class this._cls0
    implements android.view.animation.er
{

    final AddressPreviewActivity this$0;

    public void onAnimationEnd(Animation animation)
    {
        android.widget.ms ms = (android.widget.ms)AddressPreviewActivity.access$0(AddressPreviewActivity.this).getLayoutParams();
        ms.rightMargin = -AddressPreviewActivity.access$1(AddressPreviewActivity.this);
        AddressPreviewActivity.access$0(AddressPreviewActivity.this).setLayoutParams(ms);
        AddressPreviewActivity.access$0(AddressPreviewActivity.this).clearAnimation();
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
    }

    istener()
    {
        this$0 = AddressPreviewActivity.this;
        super();
    }
}
