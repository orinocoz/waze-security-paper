// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.samples;

import android.util.Log;

public class JniSampleStatic
{
    public static final class JniSampleStaticData
    {

        public int _int;
        public String _string;

        public JniSampleStaticData(int i)
        {
            _int = i;
        }
    }


    private static final int INTEGER_FIELD = 2011;
    private static final String LOG_TAG = "WAZE JniStaticSample";
    private static final String STRING_FIELD = "StaticMethod call from native layer";

    private JniSampleStatic()
    {
    }

    public static void InitNativeLayer()
    {
        InitNativeLayerNTV();
    }

    private static native void InitNativeLayerNTV();

    private static native void RunSampleNTV(String s, int i);

    public static void StaticMethod(JniSampleStaticData jnisamplestaticdata)
    {
        Log.w("WAZE JniStaticSample", (new StringBuilder("## ============== Call from Native layer ============== \n## JniSampleStatic.StaticMethod.\n## String: '")).append(jnisamplestaticdata._string).append("'\n").append("## Integer: ").append(jnisamplestaticdata._int).toString());
    }

    public static void runSample()
    {
        Log.w("WAZE JniStaticSample", "## ============== Jni Sample for static calls and C=>Java data pass has been executed. ============== \n## Your are supposed to see JniSampleStatic.StaticMethod print with string and integer fields \n## String field: 'StaticMethod call from native layer'\n## Integer field: 2011");
        InitNativeLayer();
        RunSampleNTV("StaticMethod call from native layer", 2011);
    }
}
