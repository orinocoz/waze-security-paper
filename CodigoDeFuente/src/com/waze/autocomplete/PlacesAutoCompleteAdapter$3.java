// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.autocomplete;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;

// Referenced classes of package com.waze.autocomplete:
//            PlacesAutoCompleteAdapter

class this._cls0
    implements android.view.dapter._cls3
{

    final PlacesAutoCompleteAdapter this$0;

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        if (motionevent.getAction() == 0)
        {
            ((InputMethodManager)PlacesAutoCompleteAdapter.access$9(PlacesAutoCompleteAdapter.this).getSystemService("input_method")).hideSoftInputFromWindow(PlacesAutoCompleteAdapter.access$10(PlacesAutoCompleteAdapter.this).getWindowToken(), 0);
        }
        return false;
    }

    ()
    {
        this$0 = PlacesAutoCompleteAdapter.this;
        super();
    }
}
