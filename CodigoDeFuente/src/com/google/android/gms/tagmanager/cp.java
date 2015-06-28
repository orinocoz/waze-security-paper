// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.res.Resources;
import com.google.android.gms.internal.me;
import com.google.android.gms.internal.mf;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONException;

// Referenced classes of package com.google.android.gms.tagmanager:
//            ba, bh, cq, bg, 
//            cd

class cp
    implements o.f
{

    private final String aeq;
    private bg agK;
    private final ExecutorService agR = Executors.newSingleThreadExecutor();
    private final Context mContext;

    cp(Context context, String s)
    {
        mContext = context;
        aeq = s;
    }

    private cq.c a(ByteArrayOutputStream bytearrayoutputstream)
    {
        cq.c c1;
        try
        {
            c1 = ba.bY(bytearrayoutputstream.toString("UTF-8"));
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            bh.z("Tried to convert binary resource to string for JSON parsing; not UTF-8 format");
            return null;
        }
        catch (JSONException jsonexception)
        {
            bh.D("Resource is a UTF-8 encoded string but doesn't contain a JSON container");
            return null;
        }
        return c1;
    }

    private cq.c k(byte abyte0[])
    {
        cq.c c1;
        try
        {
            c1 = cq.b(com.google.android.gms.internal.c.f.a(abyte0));
        }
        catch (me me1)
        {
            bh.D("Resource doesn't contain a binary container");
            return null;
        }
        catch (cq.g g)
        {
            bh.D("Resource doesn't contain a binary container");
            return null;
        }
        return c1;
    }

    public void a(bg bg1)
    {
        agK = bg1;
    }

    public void b(com.google.android.gms.internal.lf.a a1)
    {
        agR.execute(new Runnable(a1) {

            final cp agS;
            final com.google.android.gms.internal.lf.a agT;

            public void run()
            {
                agS.c(agT);
            }

            
            {
                agS = cp.this;
                agT = a1;
                super();
            }
        });
    }

    boolean c(com.google.android.gms.internal.lf.a a1)
    {
        File file;
        FileOutputStream fileoutputstream;
        file = mh();
        try
        {
            fileoutputstream = new FileOutputStream(file);
        }
        catch (FileNotFoundException filenotfoundexception)
        {
            bh.A("Error opening resource file for writing");
            return false;
        }
        fileoutputstream.write(mf.d(a1));
        try
        {
            fileoutputstream.close();
        }
        catch (IOException ioexception3)
        {
            bh.D("error closing stream for writing resource to disk");
            return true;
        }
        return true;
        IOException ioexception1;
        ioexception1;
        bh.D("Error writing resource to disk. Removing resource from disk.");
        file.delete();
        try
        {
            fileoutputstream.close();
        }
        catch (IOException ioexception2)
        {
            bh.D("error closing stream for writing resource to disk");
            return false;
        }
        return false;
        Exception exception;
        exception;
        try
        {
            fileoutputstream.close();
        }
        catch (IOException ioexception)
        {
            bh.D("error closing stream for writing resource to disk");
        }
        throw exception;
    }

    public cq.c dn(int i)
    {
        bh.C((new StringBuilder()).append("Atttempting to load container from resource ID ").append(i).toString());
        ByteArrayOutputStream bytearrayoutputstream;
        cq.c c1;
        cq.c c2;
        try
        {
            java.io.InputStream inputstream = mContext.getResources().openRawResource(i);
            bytearrayoutputstream = new ByteArrayOutputStream();
            cq.b(inputstream, bytearrayoutputstream);
            c1 = a(bytearrayoutputstream);
        }
        catch (IOException ioexception)
        {
            bh.D((new StringBuilder()).append("Error reading default container resource with ID ").append(i).toString());
            return null;
        }
        catch (android.content.res.Resources.NotFoundException notfoundexception)
        {
            bh.D("No default container resource found.");
            return null;
        }
        if (c1 != null)
        {
            return c1;
        }
        c2 = k(bytearrayoutputstream.toByteArray());
        return c2;
    }

    public void lr()
    {
        agR.execute(new Runnable() {

            final cp agS;

            public void run()
            {
                agS.mg();
            }

            
            {
                agS = cp.this;
                super();
            }
        });
    }

    void mg()
    {
        FileInputStream fileinputstream;
        if (agK == null)
        {
            throw new IllegalStateException("callback must be set before execute");
        }
        agK.lq();
        bh.C("Start loading resource from disk ...");
        if ((cd.lY().lZ() == cd.a.agz || cd.lY().lZ() == cd.a.agA) && aeq.equals(cd.lY().getContainerId()))
        {
            agK.a(bg.a.agd);
            return;
        }
        ByteArrayOutputStream bytearrayoutputstream;
        try
        {
            fileinputstream = new FileInputStream(mh());
        }
        catch (FileNotFoundException filenotfoundexception)
        {
            bh.z("resource not on disk");
            agK.a(bg.a.agd);
            return;
        }
        bytearrayoutputstream = new ByteArrayOutputStream();
        cq.b(fileinputstream, bytearrayoutputstream);
        agK.i(com.google.android.gms.internal.lf.a.l(bytearrayoutputstream.toByteArray()));
        try
        {
            fileinputstream.close();
        }
        catch (IOException ioexception3)
        {
            bh.D("error closing stream for reading resource from disk");
        }
_L2:
        bh.C("Load resource from disk finished.");
        return;
        IOException ioexception1;
        ioexception1;
        bh.D("error reading resource from disk");
        agK.a(bg.a.age);
        try
        {
            fileinputstream.close();
        }
        catch (IOException ioexception2)
        {
            bh.D("error closing stream for reading resource from disk");
        }
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        try
        {
            fileinputstream.close();
        }
        catch (IOException ioexception)
        {
            bh.D("error closing stream for reading resource from disk");
        }
        throw exception;
    }

    File mh()
    {
        String s = (new StringBuilder()).append("resource_").append(aeq).toString();
        return new File(mContext.getDir("google_tagmanager", 0), s);
    }

    public void release()
    {
        this;
        JVM INSTR monitorenter ;
        agR.shutdown();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }
}
