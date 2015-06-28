// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.CRC32;

// Referenced classes of package com.google.android.gms.internal:
//            ft, fh, fl, fj, 
//            mf

public class fs
    implements SafeParcelable
{

    public static final ft CREATOR = new ft();
    public final String mN;
    final int xJ;
    final fj yn;
    final long yo;
    final int yp;
    final fh yq;

    fs(int i, fj fj1, long l, int j, String s, fh fh1)
    {
        xJ = i;
        yn = fj1;
        yo = l;
        yp = j;
        mN = s;
        yq = fh1;
    }

    public fs(fj fj1, long l, int i)
    {
        this(1, fj1, l, i, null, ((fh) (null)));
    }

    public fs(String s, Intent intent, String s1, Uri uri, String s2, List list)
    {
        this(1, a(s, intent), System.currentTimeMillis(), 0, null, a(intent, s1, uri, s2, list));
    }

    static fh a(Intent intent, String s, Uri uri, String s1, List list)
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(ab(s));
        if (uri != null)
        {
            arraylist.add(e(uri));
        }
        if (list != null)
        {
            arraylist.add(a(list));
        }
        String s2 = intent.getAction();
        if (s2 != null)
        {
            arraylist.add(f("intent_action", s2));
        }
        String s3 = intent.getDataString();
        if (s3 != null)
        {
            arraylist.add(f("intent_data", s3));
        }
        ComponentName componentname = intent.getComponent();
        if (componentname != null)
        {
            arraylist.add(f("intent_activity", componentname.getClassName()));
        }
        Bundle bundle = intent.getExtras();
        if (bundle != null)
        {
            String s4 = bundle.getString("intent_extra_data_key");
            if (s4 != null)
            {
                arraylist.add(f("intent_extra_data", s4));
            }
        }
        return new fh(s1, true, (fl[])arraylist.toArray(new fl[arraylist.size()]));
    }

    public static fj a(String s, Intent intent)
    {
        return new fj(s, "", f(intent));
    }

    private static fl a(List list)
    {
        iw.a a1 = new iw.a();
        iw.a.a aa[] = new iw.a.a[list.size()];
        for (int i = 0; i < aa.length; i++)
        {
            aa[i] = new iw.a.a();
            com.google.android.gms.appindexing.AppIndexApi.AppIndexingLink appindexinglink = (com.google.android.gms.appindexing.AppIndexApi.AppIndexingLink)list.get(i);
            aa[i].Ux = appindexinglink.appIndexingUrl.toString();
            aa[i].Uy = appindexinglink.webUrl.toString();
            aa[i].viewId = appindexinglink.viewId;
        }

        a1.Uv = aa;
        return new fl(mf.d(a1), (new fq.a("outlinks")).w(true).aa(".private:outLinks").Z("blob").dL());
    }

    private static fl ab(String s)
    {
        return new fl(s, (new fq.a("title")).I(1).x(true).aa("name").dL(), "text1");
    }

    private static fl e(Uri uri)
    {
        return new fl(uri.toString(), (new fq.a("web_url")).I(4).w(true).aa("url").dL());
    }

    private static fl f(String s, String s1)
    {
        return new fl(s1, (new fq.a(s)).w(true).dL(), s);
    }

    private static String f(Intent intent)
    {
        String s = intent.toUri(1);
        CRC32 crc32 = new CRC32();
        try
        {
            crc32.update(s.getBytes("UTF-8"));
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            throw new IllegalStateException(unsupportedencodingexception);
        }
        return Long.toHexString(crc32.getValue());
    }

    public int describeContents()
    {
        ft _tmp = CREATOR;
        return 0;
    }

    public String toString()
    {
        Object aobj[] = new Object[3];
        aobj[0] = yn;
        aobj[1] = Long.valueOf(yo);
        aobj[2] = Integer.valueOf(yp);
        return String.format("UsageInfo[documentId=%s, timestamp=%d, usageType=%d]", aobj);
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        ft _tmp = CREATOR;
        ft.a(this, parcel, i);
    }

}
