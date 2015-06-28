// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.install;

import android.app.Activity;
import android.content.Intent;
import android.util.Log;
import com.waze.AppService;
import com.waze.ifs.async.RunnableCallback;
import java.util.Locale;
import java.util.concurrent.Executor;

// Referenced classes of package com.waze.install:
//            InstallNativeManager, SelectLangActivity, Lang

class t> extends RunnableCallback
{

    private final Lang val$langs[];

    public void callback()
    {
        Log.d("WAZE", (new StringBuilder("openSelectLangMenu callback running in thread ")).append(Thread.currentThread().getId()).toString());
    }

    public void event()
    {
        Log.d("WAZE", (new StringBuilder("openSelectLangMenu event running in thread ")).append(Thread.currentThread().getId()).toString());
        String s = Locale.getDefault().getDisplayLanguage();
        if (s.equals("Hebrew"))
        {
            s = "\u25CA\242\u25CA\353\u25CA\256\u25CA\364\u25CA\u2122";
        }
        Log.d("WAZE", (new StringBuilder("Device lang is ")).append(s).toString());
        if (Locale.getDefault() == Locale.CHINESE)
        {
            s = "\u2030\u220F\u2260\312\361\341";
        }
        if (Locale.getDefault().getCountry().equals(Locale.UK.getCountry()))
        {
            s = "English-UK";
        }
        Lang alang[] = val$langs;
        int i = alang.length;
        int j = 0;
        do
        {
            if (j >= i)
            {
                com.waze.ifs.ui.ActivityBase activitybase = AppService.getActiveActivity();
                Intent intent = new Intent(activitybase, com/waze/install/SelectLangActivity);
                intent.putExtra("LANGS", val$langs);
                activitybase.startActivityForResult(intent, 1);
                return;
            }
            Lang lang = alang[j];
            if (s.toLowerCase().equals(lang.getLable().toLowerCase()))
            {
                (new InstallNativeManager()).langSelected(lang.getValue());
                return;
            }
            j++;
        } while (true);
    }

    (Lang alang[])
    {
        val$langs = alang;
        super(final_executor);
    }
}
