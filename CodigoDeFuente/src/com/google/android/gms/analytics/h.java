// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.analytics;

import android.content.Context;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.UUID;

// Referenced classes of package com.google.android.gms.analytics:
//            m, aa

class h
    implements m
{

    private static h tE;
    private static final Object tn = new Object();
    private final Context mContext;
    private String tF;
    private boolean tG;
    private final Object tH = new Object();

    protected h(Context context)
    {
        tG = false;
        mContext = context;
        cu();
    }

    private boolean K(String s)
    {
        try
        {
            aa.C("Storing clientId.");
            FileOutputStream fileoutputstream = mContext.openFileOutput("gaClientId", 0);
            fileoutputstream.write(s.getBytes());
            fileoutputstream.close();
        }
        catch (FileNotFoundException filenotfoundexception)
        {
            aa.A("Error creating clientId file.");
            return false;
        }
        catch (IOException ioexception)
        {
            aa.A("Error writing to clientId file.");
            return false;
        }
        return true;
    }

    static Object a(h h1)
    {
        return h1.tH;
    }

    static String a(h h1, String s)
    {
        h1.tF = s;
        return s;
    }

    static boolean a(h h1, boolean flag)
    {
        h1.tG = flag;
        return flag;
    }

    public static h cq()
    {
        h h1;
        synchronized (tn)
        {
            h1 = tE;
        }
        return h1;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private String cs()
    {
        if (tG) goto _L2; else goto _L1
_L1:
        Object obj = tH;
        obj;
        JVM INSTR monitorenter ;
        if (tG) goto _L2; else goto _L3
_L3:
        aa.C("Waiting for clientId to load");
_L7:
        tH.wait();
_L5:
        if (!tG)
        {
            break; /* Loop/switch isn't completed */
        }
_L2:
        aa.C("Loaded clientId");
        return tF;
        InterruptedException interruptedexception;
        interruptedexception;
        aa.A((new StringBuilder()).append("Exception while waiting for clientId: ").append(interruptedexception).toString());
        if (true) goto _L5; else goto _L4
_L4:
        if (true) goto _L7; else goto _L6
_L6:
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void cu()
    {
        (new Thread("client_id_fetcher") {

            final h tI;

            public void run()
            {
                synchronized (h.a(tI))
                {
                    h.a(tI, tI.cv());
                    h.a(tI, true);
                    h.a(tI).notifyAll();
                }
                return;
                exception;
                obj;
                JVM INSTR monitorexit ;
                throw exception;
            }

            
            {
                tI = h.this;
                super(s);
            }
        }).start();
    }

    public static void r(Context context)
    {
        synchronized (tn)
        {
            if (tE == null)
            {
                tE = new h(context);
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean J(String s)
    {
        return "&cid".equals(s);
    }

    String cr()
    {
        String s;
        synchronized (tH)
        {
            tF = ct();
            s = tF;
        }
        return s;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    protected String ct()
    {
        String s = UUID.randomUUID().toString().toLowerCase();
        if (!K(s))
        {
            s = "0";
        }
        return s;
        Exception exception;
        exception;
        return null;
    }

    String cv()
    {
        String s = null;
        FileInputStream fileinputstream;
        byte abyte0[];
        int i;
        fileinputstream = mContext.openFileInput("gaClientId");
        abyte0 = new byte[128];
        i = fileinputstream.read(abyte0, 0, 128);
        if (fileinputstream.available() <= 0) goto _L2; else goto _L1
_L1:
        aa.A("clientId file seems corrupted, deleting it.");
        fileinputstream.close();
        mContext.deleteFile("gaClientId");
_L6:
        if (s == null)
        {
            s = ct();
        }
        return s;
_L2:
        if (i > 0)
        {
            break MISSING_BLOCK_LABEL_102;
        }
        aa.A("clientId file seems empty, deleting it.");
        fileinputstream.close();
        mContext.deleteFile("gaClientId");
        s = null;
        continue; /* Loop/switch isn't completed */
        String s1 = new String(abyte0, 0, i);
        fileinputstream.close();
        aa.C("Loaded client id from disk.");
        s = s1;
        continue; /* Loop/switch isn't completed */
        IOException ioexception;
        ioexception;
_L4:
        aa.A("Error reading clientId file, deleting it.");
        mContext.deleteFile("gaClientId");
        continue; /* Loop/switch isn't completed */
        IOException ioexception1;
        ioexception1;
        s = s1;
        if (true) goto _L4; else goto _L3
_L3:
        FileNotFoundException filenotfoundexception1;
        filenotfoundexception1;
        s = s1;
        continue; /* Loop/switch isn't completed */
        FileNotFoundException filenotfoundexception;
        filenotfoundexception;
        s = null;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public String getValue(String s)
    {
        if ("&cid".equals(s))
        {
            return cs();
        } else
        {
            return null;
        }
    }

}
