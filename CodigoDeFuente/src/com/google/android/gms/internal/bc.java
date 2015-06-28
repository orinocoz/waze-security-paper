// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.google.android.gms.internal:
//            bi, bd, ey, ev, 
//            m, l, et, ew, 
//            cg, h

public final class bc
{

    public static final bd mR = new bd() {

        public void b(ey ey, Map map)
        {
        }

    };
    public static final bd mS = new bd() {

        public void b(ey ey1, Map map)
        {
            String s = (String)map.get("urls");
            if (TextUtils.isEmpty(s))
            {
                ev.D("URLs missing in canOpenURLs GMSG.");
                return;
            }
            String as[] = s.split(",");
            HashMap hashmap = new HashMap();
            PackageManager packagemanager = ey1.getContext().getPackageManager();
            int i = as.length;
            int j = 0;
            while (j < i) 
            {
                String s1 = as[j];
                String as1[] = s1.split(";", 2);
                String s2 = as1[0].trim();
                String s3;
                boolean flag;
                if (as1.length > 1)
                {
                    s3 = as1[1].trim();
                } else
                {
                    s3 = "android.intent.action.VIEW";
                }
                if (packagemanager.resolveActivity(new Intent(s3, Uri.parse(s2)), 0x10000) != null)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                hashmap.put(s1, Boolean.valueOf(flag));
                j++;
            }
            ey1.a("openableURLs", hashmap);
        }

    };
    public static final bd mT = new bd() {

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

    };
    public static final bd mU = new bd() {

        public void b(ey ey1, Map map)
        {
            cg cg1 = ey1.bV();
            if (cg1 == null)
            {
                ev.D("A GMSG tried to close something that wasn't an overlay.");
                return;
            } else
            {
                cg1.close();
                return;
            }
        }

    };
    public static final bd mV = new bd() {

        public void b(ey ey1, Map map)
        {
            cg cg1 = ey1.bV();
            if (cg1 == null)
            {
                ev.D("A GMSG tried to use a custom close button on something that wasn't an overlay.");
                return;
            } else
            {
                cg1.j("1".equals(map.get("custom_close")));
                return;
            }
        }

    };
    public static final bd mW = new bd() {

        public void b(ey ey1, Map map)
        {
            String s = (String)map.get("u");
            if (s == null)
            {
                ev.D("URL missing from httpTrack GMSG.");
                return;
            } else
            {
                (new et(ey1.getContext(), ey1.bY().st, s)).start();
                return;
            }
        }

    };
    public static final bd mX = new bd() {

        public void b(ey ey, Map map)
        {
            ev.B((new StringBuilder()).append("Received log message: ").append((String)map.get("string")).toString());
        }

    };
    public static final bd mY = new bd() {

        public void b(ey ey1, Map map)
        {
            String s = (String)map.get("tx");
            String s1 = (String)map.get("ty");
            String s2 = (String)map.get("td");
            int i;
            int j;
            int k;
            l l1;
            try
            {
                i = Integer.parseInt(s);
                j = Integer.parseInt(s1);
                k = Integer.parseInt(s2);
                l1 = ey1.bX();
            }
            catch (NumberFormatException numberformatexception)
            {
                ev.D("Could not parse touch parameters from gmsg.");
                return;
            }
            if (l1 == null)
            {
                break MISSING_BLOCK_LABEL_85;
            }
            l1.y().a(i, j, k);
        }

    };
    public static final bd mZ = new bi();

}
