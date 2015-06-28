// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.app.Activity;
import android.content.ContentUris;
import android.database.Cursor;
import android.net.Uri;
import android.util.Log;

// Referenced classes of package com.waze:
//            IntentManager

private static final class 
{

    private static String FetchContactAddress(Uri uri, Activity activity)
    {
        String s;
        Cursor cursor;
        s = null;
        long l = ContentUris.parseId(uri);
        String as[] = {
            "data1", "data4", "data7", "data9", "data4", "data8", "data10", "data2"
        };
        String s1 = (new StringBuilder("_id = ")).append(l).append(" AND ContactsContract.Data.MIMETYPE = '").append("vnd.android.cursor.item/postal-address_v2").append("'").toString();
        cursor = activity.managedQuery(android.provider._fld1, as, s1, null, "data10 asc");
        if (cursor != null) goto _L2; else goto _L1
_L1:
        Log.w("WAZE", (new StringBuilder("No data for uri: ")).append(uri.toString()).toString());
_L4:
        return s;
_L2:
        boolean flag = cursor.moveToFirst();
        s = null;
        if (!flag)
        {
            continue; /* Loop/switch isn't completed */
        }
        int i = cursor.getColumnIndex("data1");
        do
        {
            s = cursor.getString(i);
            if (s != null && s.length() > 0)
            {
                continue; /* Loop/switch isn't completed */
            }
            if (!cursor.moveToNext())
            {
                return s;
            }
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }


    private ()
    {
    }
}
