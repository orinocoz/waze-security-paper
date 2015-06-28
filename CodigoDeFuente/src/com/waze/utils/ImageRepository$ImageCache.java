// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.utils;

import android.graphics.Bitmap;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.waze.utils:
//            ImageRepository

private static class _maxEntries
{

    private final int _maxEntries;
    private ArrayList imageAccessHistory;
    private Map imageMap;

    private Bitmap get(String s)
    {
        if (imageMap.containsKey(s))
        {
            imageAccessHistory.remove(s);
            imageAccessHistory.add(s);
            return (Bitmap)imageMap.get(s);
        } else
        {
            return null;
        }
    }

    private void put(String s, Bitmap bitmap)
    {
        if (!s.startsWith("file"))
        {
            if (imageMap.containsKey(s))
            {
                imageAccessHistory.remove(s);
                imageAccessHistory.add(s);
                imageMap.put(s, bitmap);
                return;
            }
            imageAccessHistory.add(s);
            imageMap.put(s, bitmap);
            if (imageAccessHistory.size() > _maxEntries)
            {
                String s1 = (String)imageAccessHistory.remove(0);
                imageMap.remove(s1);
                return;
            }
        }
    }

    public boolean has(String s)
    {
        return imageMap.get(s) != null;
    }



    public (int i)
    {
        imageMap = new HashMap();
        imageAccessHistory = new ArrayList();
        _maxEntries = i;
    }
}
