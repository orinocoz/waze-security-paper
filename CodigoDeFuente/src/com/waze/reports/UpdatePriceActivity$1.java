// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.text.Editable;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.NativeManager;
import com.waze.analytics.Analytics;
import com.waze.navigate.DriveToNativeManager;
import com.waze.navigate.Product;
import com.waze.strings.DisplayStrings;

// Referenced classes of package com.waze.reports:
//            UpdatePriceActivity

class this._cls0
    implements android.view.y._cls1
{

    final UpdatePriceActivity this$0;

    private void setData(float af[], int ai[], int i, int j)
    {
        String s = ((EditText)findViewById(j)).getText().toString();
        if (s.equals("N/A"))
        {
            af[i] = -1F;
            ai[i] = 2;
            return;
        }
        String s1 = s.replace(',', '.');
        try
        {
            af[i] = Float.parseFloat(s1);
            if (Float.compare(af[i], UpdatePriceActivity.access$0(UpdatePriceActivity.this).prices[i]) == 0)
            {
                ai[i] = 0;
                return;
            }
        }
        catch (Exception exception)
        {
            af[i] = 0.0F;
            ai[i] = 0;
            return;
        }
        ai[i] = 1;
        return;
    }

    public void onClick(View view)
    {
        float af[] = new float[UpdatePriceActivity.access$0(UpdatePriceActivity.this).labels.length];
        int ai[] = new int[UpdatePriceActivity.access$0(UpdatePriceActivity.this).labels.length];
        NativeManager nativemanager;
        if (UpdatePriceActivity.access$0(UpdatePriceActivity.this).labels.length == 4)
        {
            setData(af, ai, 0, 0x7f09077d);
            setData(af, ai, 1, 0x7f090782);
            setData(af, ai, 2, 0x7f090787);
            setData(af, ai, 3, 0x7f09078c);
        } else
        if (UpdatePriceActivity.access$0(UpdatePriceActivity.this).labels.length == 3)
        {
            setData(af, ai, 0, 0x7f09077d);
            setData(af, ai, 1, 0x7f090782);
            setData(af, ai, 2, 0x7f090787);
        } else
        if (UpdatePriceActivity.access$0(UpdatePriceActivity.this).labels.length == 2)
        {
            setData(af, ai, 0, 0x7f09077d);
            setData(af, ai, 1, 0x7f090782);
        } else
        {
            setData(af, ai, 0, 0x7f09077d);
        }
        Analytics.log("GAS_UPDATE");
        UpdatePriceActivity.access$1(UpdatePriceActivity.this).setProductPrices(UpdatePriceActivity.access$2(UpdatePriceActivity.this), af, ai, nProducts);
        findViewById(0x7f090796).setVisibility(8);
        nativemanager = AppService.getNativeManager();
        ((TextView)findViewById(0x7f090797)).setText(nativemanager.getLanguageString(DisplayStrings.DS_SENDING_UPDATEPPP));
        findViewById(0x7f09079a).setVisibility(8);
        findViewById(0x7f090799).setVisibility(0);
        findViewById(0x7f09077d).setEnabled(false);
        findViewById(0x7f090782).setEnabled(false);
        findViewById(0x7f090787).setEnabled(false);
        findViewById(0x7f09078c).setEnabled(false);
        findViewById(0x7f090775).requestFocus();
        if (UpdatePriceActivity.access$3(UpdatePriceActivity.this) != null)
        {
            ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(UpdatePriceActivity.access$3(UpdatePriceActivity.this).getWindowToken(), 0);
        }
    }

    ager()
    {
        this$0 = UpdatePriceActivity.this;
        super();
    }
}
