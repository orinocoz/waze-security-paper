// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package jp.pioneer.ce.aam2.AAM2Kit.b.a;

import android.os.Bundle;
import android.os.Message;

public class m
{

    private static final int a;

    public m()
    {
    }

    public static Object a(Message message)
    {
        if (message.obj == null && a < 8)
        {
            Bundle bundle = message.peekData();
            if (bundle != null)
            {
                return bundle.getParcelable("Object");
            }
        } else
        if (message.obj != null)
        {
            return message.obj;
        }
        return null;
    }

    static 
    {
        a = android.os.Build.VERSION.SDK_INT;
    }
}
