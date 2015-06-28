// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.install;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;

// Referenced classes of package com.waze.install:
//            Lang, SelectLangActivity

private class langs extends BaseAdapter
{

    private Lang langs[];
    final SelectLangActivity this$0;

    public int getCount()
    {
        return langs.length;
    }

    public Object getItem(int i)
    {
        return langs[i];
    }

    public long getItemId(int i)
    {
        return (long)i;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        Lang lang;
        lang = (Lang)getItem(i);
        if (view == null)
        {
            view = ((LayoutInflater)getSystemService("layout_inflater")).inflate(0x7f030071, null);
        }
        view.setTag(0x7f09002d, lang);
        if (lang == null) goto _L2; else goto _L1
_L1:
        View view1;
        ((TextView)view.findViewById(0x7f09036d)).setText(lang.getLable());
        view1 = view.findViewById(0x7f09036c);
        boolean flag;
        byte byte0;
        if (i == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (i == -1 + getCount())
        {
            byte0 = 2;
        } else
        {
            byte0 = 0;
        }
        flag | byte0;
        JVM INSTR tableswitch 0 3: default 128
    //                   0 151
    //                   1 161
    //                   2 171
    //                   3 181;
           goto _L3 _L4 _L5 _L6 _L7
_L3:
        view1.setPadding(0, 0, 0, 0);
_L2:
        return view;
_L4:
        view1.setBackgroundResource(0x7f020224);
        continue; /* Loop/switch isn't completed */
_L5:
        view1.setBackgroundResource(0x7f020226);
        continue; /* Loop/switch isn't completed */
_L6:
        view1.setBackgroundResource(0x7f020223);
        continue; /* Loop/switch isn't completed */
_L7:
        view1.setBackgroundResource(0x7f020225);
        if (true) goto _L3; else goto _L8
_L8:
    }

    public _cls9(Lang alang[])
    {
        this$0 = SelectLangActivity.this;
        super();
        langs = alang;
    }
}
