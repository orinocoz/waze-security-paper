// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.widget;

import android.widget.Toast;

// Referenced classes of package com.waze.widget:
//            WazeAppWidgetService

class val.str
    implements Runnable
{

    private final String val$str;

    private String makePrintFriendly(String s)
    {
        String s1 = s.replace("{", "").replace("}", "").replace("\"", "");
        int i = s1.indexOf("|");
        if (i > -1 && i < -1 + s.length())
        {
            s1 = s1.substring(i + 1);
        }
        return s1;
    }

    public void run()
    {
        String s = makePrintFriendly(val$str);
        Toast.makeText(WazeAppWidgetService.access$0().getApplicationContext(), s, 1).show();
    }

    ()
    {
        val$str = s;
        super();
    }
}
