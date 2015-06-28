// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.util.Log;
import android.view.View;

// Referenced classes of package com.waze.navigate:
//            GenericView, AddressOptionsActivity

public class MoreButton extends GenericView
{

    public MoreButton()
    {
        super(Integer.valueOf(0x7f0201cb), 0x7f07004e, Integer.valueOf(0), Integer.valueOf(0x7f0201cb));
    }

    void onClick(AddressOptionsActivity addressoptionsactivity, View view)
    {
        Log.d("WAZE", (new StringBuilder(String.valueOf(getClass().toString()))).append(":onClick").toString());
    }
}
