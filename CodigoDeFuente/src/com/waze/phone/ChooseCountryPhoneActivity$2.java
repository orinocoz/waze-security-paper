// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.phone;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import com.waze.settings.SettingsValue;

// Referenced classes of package com.waze.phone:
//            ChooseCountryPhoneActivity

class this._cls0
    implements android.widget.er
{

    final ChooseCountryPhoneActivity this$0;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        if (ChooseCountryPhoneActivity.access$0(ChooseCountryPhoneActivity.this) == null)
        {
            return;
        }
        if (ChooseCountryPhoneActivity.access$1(ChooseCountryPhoneActivity.this).GetSelectedItem() != null)
        {
            ChooseCountryPhoneActivity.access$1(ChooseCountryPhoneActivity.this).GetSelectedItem().isSelected = false;
        }
        ChooseCountryPhoneActivity.access$0(ChooseCountryPhoneActivity.this)[i].isSelected = true;
        Intent intent = new Intent();
        intent.putExtra("index", Integer.parseInt(ChooseCountryPhoneActivity.access$0(ChooseCountryPhoneActivity.this)[i].value));
        setResult(-1, intent);
        finish();
    }

    dexedSettingValueAdapter()
    {
        this$0 = ChooseCountryPhoneActivity.this;
        super();
    }
}
