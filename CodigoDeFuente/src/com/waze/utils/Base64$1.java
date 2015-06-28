// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.utils;

import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.io.StreamCorruptedException;

// Referenced classes of package com.waze.utils:
//            Base64

class m extends ObjectInputStream
{

    private final ClassLoader val$loader;

    public Class resolveClass(ObjectStreamClass objectstreamclass)
        throws IOException, ClassNotFoundException
    {
        Class class1 = Class.forName(objectstreamclass.getName(), false, val$loader);
        if (class1 == null)
        {
            class1 = super.resolveClass(objectstreamclass);
        }
        return class1;
    }

    xception(ClassLoader classloader)
        throws StreamCorruptedException, IOException
    {
        val$loader = classloader;
        super(final_inputstream);
    }
}
