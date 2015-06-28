// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.ListView;
import java.util.ArrayList;

// Referenced classes of package com.waze:
//            PhoneList

class t>
    implements TextWatcher
{

    final PhoneList this$0;

    public void afterTextChanged(Editable editable)
    {
    }

    public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
        textlength = PhoneList.access$3(PhoneList.this).getText().length();
        PhoneList.access$1(PhoneList.this).clear();
        int l = 0;
        do
        {
            if (l >= PhoneList.access$2(PhoneList.this).length)
            {
                PhoneList.access$4(PhoneList.this, true);
                PhoneList.access$5(PhoneList.this).setAdapter(new ArrayAdapter(PhoneList.this, 0x7f030041, 0x7f090233, PhoneList.access$1(PhoneList.this)));
                return;
            }
            if (textlength <= PhoneList.access$2(PhoneList.this)[l].length() && PhoneList.access$3(PhoneList.this).getText().toString().equalsIgnoreCase((String)PhoneList.access$2(PhoneList.this)[l].subSequence(0, textlength)))
            {
                PhoneList.access$1(PhoneList.this).add(PhoneList.access$2(PhoneList.this)[l]);
            }
            l++;
        } while (true);
    }

    e()
    {
        this$0 = PhoneList.this;
        super();
    }
}
