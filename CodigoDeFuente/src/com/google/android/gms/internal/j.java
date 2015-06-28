// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.ArrayList;

// Referenced classes of package com.google.android.gms.internal:
//            i, n, p, r, 
//            o

public abstract class j extends i
{
    static class a extends Exception
    {

        public a()
        {
        }

        public a(Throwable throwable)
        {
            super(throwable);
        }
    }


    private static Method jS;
    private static Method jT;
    private static Method jU;
    private static Method jV;
    private static Method jW;
    private static Method jX;
    private static String jY;
    private static p jZ;
    static boolean ka = false;
    private static long startTime = 0L;

    protected j(Context context, n n1, o o)
    {
        super(context, n1, o);
    }

    static String a(Context context, n n1)
        throws a
    {
        if (jU == null)
        {
            throw new a();
        }
        ByteBuffer bytebuffer;
        String s;
        try
        {
            bytebuffer = (ByteBuffer)jU.invoke(null, new Object[] {
                context
            });
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new a(illegalaccessexception);
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            throw new a(invocationtargetexception);
        }
        if (bytebuffer != null)
        {
            break MISSING_BLOCK_LABEL_57;
        }
        throw new a();
        s = n1.a(bytebuffer.array(), true);
        return s;
    }

    static ArrayList a(MotionEvent motionevent, DisplayMetrics displaymetrics)
        throws a
    {
        if (jV == null || motionevent == null)
        {
            throw new a();
        }
        ArrayList arraylist;
        try
        {
            arraylist = (ArrayList)jV.invoke(null, new Object[] {
                motionevent, displaymetrics
            });
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new a(illegalaccessexception);
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            throw new a(invocationtargetexception);
        }
        return arraylist;
    }

    protected static void a(String s, Context context, n n1)
    {
        com/google/android/gms/internal/j;
        JVM INSTR monitorenter ;
        boolean flag = ka;
        Exception exception;
        if (!flag)
        {
            try
            {
                jZ = new p(n1, null);
                jY = s;
                e(context);
                startTime = w().longValue();
                ka = true;
            }
            catch (a a1) { }
            catch (UnsupportedOperationException unsupportedoperationexception) { }
            finally
            {
                com/google/android/gms/internal/j;
            }
        }
        com/google/android/gms/internal/j;
        JVM INSTR monitorexit ;
        return;
        throw exception;
    }

    static String b(Context context, n n1)
        throws a
    {
        if (jX == null)
        {
            throw new a();
        }
        ByteBuffer bytebuffer;
        String s;
        try
        {
            bytebuffer = (ByteBuffer)jX.invoke(null, new Object[] {
                context
            });
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new a(illegalaccessexception);
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            throw new a(invocationtargetexception);
        }
        if (bytebuffer != null)
        {
            break MISSING_BLOCK_LABEL_57;
        }
        throw new a();
        s = n1.a(bytebuffer.array(), true);
        return s;
    }

    private static String b(byte abyte0[], String s)
        throws a
    {
        String s1;
        try
        {
            s1 = new String(jZ.c(abyte0, s), "UTF-8");
        }
        catch (p.a a1)
        {
            throw new a(a1);
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            throw new a(unsupportedencodingexception);
        }
        return s1;
    }

    static String d(Context context)
        throws a
    {
        String s;
        if (jW == null)
        {
            throw new a();
        }
        try
        {
            s = (String)jW.invoke(null, new Object[] {
                context
            });
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new a(illegalaccessexception);
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            throw new a(invocationtargetexception);
        }
        if (s != null)
        {
            break MISSING_BLOCK_LABEL_65;
        }
        throw new a();
        return s;
    }

    private static void e(Context context)
        throws a
    {
        byte abyte0[];
        byte abyte1[];
        File file;
        File file1;
        FileOutputStream fileoutputstream;
        DexClassLoader dexclassloader;
        Class class1;
        Class class2;
        Class class3;
        Class class4;
        Class class5;
        Class class6;
        String s;
        try
        {
            abyte0 = jZ.b(r.getKey());
            abyte1 = jZ.c(abyte0, r.A());
            file = context.getCacheDir();
        }
        catch (FileNotFoundException filenotfoundexception)
        {
            throw new a(filenotfoundexception);
        }
        catch (IOException ioexception)
        {
            throw new a(ioexception);
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            throw new a(classnotfoundexception);
        }
        catch (p.a a1)
        {
            throw new a(a1);
        }
        catch (NoSuchMethodException nosuchmethodexception)
        {
            throw new a(nosuchmethodexception);
        }
        catch (NullPointerException nullpointerexception)
        {
            throw new a(nullpointerexception);
        }
        if (file != null)
        {
            break MISSING_BLOCK_LABEL_69;
        }
        file = context.getDir("dex", 0);
        if (file != null)
        {
            break MISSING_BLOCK_LABEL_69;
        }
        throw new a();
        file1 = File.createTempFile("ads", ".jar", file);
        fileoutputstream = new FileOutputStream(file1);
        fileoutputstream.write(abyte1, 0, abyte1.length);
        fileoutputstream.close();
        dexclassloader = new DexClassLoader(file1.getAbsolutePath(), file.getAbsolutePath(), null, context.getClassLoader());
        class1 = dexclassloader.loadClass(b(abyte0, r.B()));
        class2 = dexclassloader.loadClass(b(abyte0, r.H()));
        class3 = dexclassloader.loadClass(b(abyte0, r.F()));
        class4 = dexclassloader.loadClass(b(abyte0, r.L()));
        class5 = dexclassloader.loadClass(b(abyte0, r.D()));
        class6 = dexclassloader.loadClass(b(abyte0, r.J()));
        jS = class1.getMethod(b(abyte0, r.C()), new Class[0]);
        jT = class2.getMethod(b(abyte0, r.I()), new Class[0]);
        jU = class3.getMethod(b(abyte0, r.G()), new Class[] {
            android/content/Context
        });
        jV = class4.getMethod(b(abyte0, r.M()), new Class[] {
            android/view/MotionEvent, android/util/DisplayMetrics
        });
        jW = class5.getMethod(b(abyte0, r.E()), new Class[] {
            android/content/Context
        });
        jX = class6.getMethod(b(abyte0, r.K()), new Class[] {
            android/content/Context
        });
        s = file1.getName();
        file1.delete();
        (new File(file, s.replace(".jar", ".dex"))).delete();
        return;
    }

    static String v()
        throws a
    {
        if (jY == null)
        {
            throw new a();
        } else
        {
            return jY;
        }
    }

    static Long w()
        throws a
    {
        if (jS == null)
        {
            throw new a();
        }
        Long long1;
        try
        {
            long1 = (Long)jS.invoke(null, new Object[0]);
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new a(illegalaccessexception);
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            throw new a(invocationtargetexception);
        }
        return long1;
    }

    static String x()
        throws a
    {
        if (jT == null)
        {
            throw new a();
        }
        String s;
        try
        {
            s = (String)jT.invoke(null, new Object[0]);
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new a(illegalaccessexception);
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            throw new a(invocationtargetexception);
        }
        return s;
    }

    protected void b(Context context)
    {
        IOException ioexception;
        try
        {
            a(1, x());
        }
        catch (a a1) { }
        try
        {
            a(2, v());
        }
        catch (a a2) { }
        try
        {
            a(25, w().longValue());
        }
        catch (a a3) { }
        try
        {
            a(24, d(context));
            return;
        }
        catch (a a4)
        {
            return;
        }
        ioexception;
    }

    protected void c(Context context)
    {
        IOException ioexception;
        try
        {
            a(2, v());
        }
        catch (a a1) { }
        try
        {
            a(1, x());
        }
        catch (a a2) { }
        try
        {
            long l = w().longValue();
            a(25, l);
            if (startTime != 0L)
            {
                a(17, l - startTime);
                a(23, startTime);
            }
        }
        catch (a a3) { }
        try
        {
            ArrayList arraylist = a(jO, jP);
            a(14, ((Long)arraylist.get(0)).longValue());
            a(15, ((Long)arraylist.get(1)).longValue());
            if (arraylist.size() >= 3)
            {
                a(16, ((Long)arraylist.get(2)).longValue());
            }
        }
        catch (a a4) { }
        try
        {
            a(27, a(context, jQ));
        }
        catch (a a5) { }
        try
        {
            a(29, b(context, jQ));
            return;
        }
        catch (a a6)
        {
            return;
        }
        ioexception;
    }

}
