// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.ui;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Filterable;

// Referenced classes of package com.waze.ifs.ui:
//            OmniSelectionFragment

public static class t> extends t>
    implements Filterable
{

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        View view1 = super.iew(i, view, viewgroup);
        view1.findViewById(0x7f0904cc).setVisibility(8);
        return view1;
    }

    public I(Context context)
    {
        super(context);
    }
}
