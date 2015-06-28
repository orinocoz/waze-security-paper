// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.install;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.NativeManager;
import com.waze.ifs.ui.ActivityBase;
import com.waze.view.title.TitleBar;

// Referenced classes of package com.waze.install:
//            Lang, InstallNativeManager

public final class SelectLangActivity extends ActivityBase
{
    private class LangListAdapter extends BaseAdapter
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
        //                       0 151
        //                       1 161
        //                       2 171
        //                       3 181;
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

        public LangListAdapter(Lang alang[])
        {
            this$0 = SelectLangActivity.this;
            super();
            langs = alang;
        }
    }


    protected static final String LANGS = "LANGS";
    private NativeManager nativeManager;
    private InstallNativeManager nm;

    public SelectLangActivity()
    {
    }

    public void langClicked(View view)
    {
        Log.d("WAZE", "lang pressed");
        nm.langSelected(((Lang)view.getTag(0x7f09002d)).getValue());
        setResult(-1);
        finish();
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        if (j == -1)
        {
            setResult(-1);
            finish();
        }
        super.onActivityResult(i, j, intent);
    }

    public void onBackPressed()
    {
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(0x7f0300e1);
        nativeManager = AppService.getNativeManager();
        ((TitleBar)findViewById(0x7f090058)).init(this, nativeManager.getLanguageString(getString(0x7f0700e2)), false);
        ((ListView)findViewById(0x7f0905fe)).setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

            final SelectLangActivity this$0;

            public void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                langClicked(view);
            }

            
            {
                this$0 = SelectLangActivity.this;
                super();
            }
        });
        LangListAdapter langlistadapter = new LangListAdapter(Lang.getLangArray((Object[])getIntent().getExtras().getSerializable("LANGS")));
        ((ListView)findViewById(0x7f0905fe)).setAdapter(langlistadapter);
        nm = new InstallNativeManager();
    }
}
