// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.net.Uri;
import java.util.Map;

// Referenced classes of package com.google.android.gms.internal:
//            bd, bc, m, ev, 
//            ey, l, et, ew

static final class 
    implements bd
{

    public void b(ey ey1, Map map)
    {
        String s;
        Uri uri;
        s = (String)map.get("u");
        if (s == null)
        {
            ev.D("URL missing from click GMSG.");
            return;
        }
        uri = Uri.parse(s);
        l l1 = ey1.bX();
        if (l1 == null) goto _L2; else goto _L1
_L1:
        if (!l1.a(uri)) goto _L2; else goto _L3
_L3:
        Uri uri2 = l1.a(uri, ey1.getContext());
        Uri uri1 = uri2;
_L5:
        String s1 = uri1.toString();
        (new et(ey1.getContext(), ey1.bY().st, s1)).start();
        return;
        m m1;
        m1;
        ev.D((new StringBuilder()).append("Unable to append parameter to URL: ").append(s).toString());
_L2:
        uri1 = uri;
        if (true) goto _L5; else goto _L4
_L4:
    }

    ()
    {
    }
}
