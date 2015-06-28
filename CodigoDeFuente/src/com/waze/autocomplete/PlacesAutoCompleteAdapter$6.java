// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.autocomplete;

import android.view.View;
import android.widget.AutoCompleteTextView;

// Referenced classes of package com.waze.autocomplete:
//            PlacesAutoCompleteAdapter

class this._cls0
    implements android.view.dapter._cls6
{

    final PlacesAutoCompleteAdapter this$0;

    public void onClick(View view)
    {
        String s = view.getTag().toString();
        if (s != null)
        {
            ((AutoCompleteTextView)PlacesAutoCompleteAdapter.access$10(PlacesAutoCompleteAdapter.this)).setText((new StringBuilder(String.valueOf(s))).append(" ").toString());
            ((AutoCompleteTextView)PlacesAutoCompleteAdapter.access$10(PlacesAutoCompleteAdapter.this)).setSelection(1 + s.length());
        }
    }

    ()
    {
        this$0 = PlacesAutoCompleteAdapter.this;
        super();
    }
}
