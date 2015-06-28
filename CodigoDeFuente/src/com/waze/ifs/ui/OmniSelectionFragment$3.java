// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.ui;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.Filter;
import com.waze.settings.SettingsValue;

// Referenced classes of package com.waze.ifs.ui:
//            OmniSelectionFragment

class this._cls0
    implements TextWatcher
{

    final OmniSelectionFragment this$0;

    public void afterTextChanged(Editable editable)
    {
    }

    public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
        boolean flag = true;
        if (OmniSelectionFragment.access$3(OmniSelectionFragment.this) instanceof lteredOmniSelectAdapter)
        {
            String s = charsequence.toString().trim();
            if (OmniSelectionFragment.access$5(OmniSelectionFragment.this))
            {
                SettingsValue settingsvalue = OmniSelectionFragment.access$6(OmniSelectionFragment.this);
                String s1 = OmniSelectionFragment.access$7(OmniSelectionFragment.this);
                Object aobj[] = new Object[flag];
                aobj[0] = s;
                settingsvalue.display = String.format(s1, aobj);
                OmniSelectionFragment.access$6(OmniSelectionFragment.this).value = (new StringBuilder()).append(s).toString();
                if (s.length() < 2)
                {
                    flag = false;
                }
                OmniSelectionFragment.access$3(OmniSelectionFragment.this).setShowLastItem(flag);
                OmniSelectionFragment.access$3(OmniSelectionFragment.this).setBoldLastItem(flag);
            } else
            {
                OmniSelectionFragment.access$3(OmniSelectionFragment.this).setShowLastItem(flag);
                OmniSelectionFragment.access$3(OmniSelectionFragment.this).setBoldLastItem(false);
            }
            ((lteredOmniSelectAdapter)OmniSelectionFragment.access$3(OmniSelectionFragment.this)).getFilter().filter(s);
        } else
        {
            if (OmniSelectionFragment.access$3(OmniSelectionFragment.this) instanceof lteredOmniSelectExpandableAdapter)
            {
                ((lteredOmniSelectExpandableAdapter)OmniSelectionFragment.access$3(OmniSelectionFragment.this)).getFilter().filter(charsequence);
                return;
            }
            if (OmniSelectionFragment.access$8(OmniSelectionFragment.this))
            {
                OmniSelectionFragment.access$9(OmniSelectionFragment.this).getFilter().filter(charsequence);
                return;
            }
        }
    }

    toCompleteOmniSelectAdapter()
    {
        this$0 = OmniSelectionFragment.this;
        super();
    }
}
