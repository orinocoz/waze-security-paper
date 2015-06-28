// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.install;

import android.view.View;
import android.widget.AdapterView;
import com.waze.settings.SettingsValue;

// Referenced classes of package com.waze.install:
//            SelectCountryActivity, InstallNativeManager

class this._cls0
    implements android.widget.istener
{

    final SelectCountryActivity this$0;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        (new InstallNativeManager()).setCountry(SelectCountryActivity.access$0(SelectCountryActivity.this)[i].value);
    }

    tener()
    {
        this$0 = SelectCountryActivity.this;
        super();
    }
}
