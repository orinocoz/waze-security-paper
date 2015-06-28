// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            NativeManager

public static final class  extends Enum
{

    private static final ENUM.VALUES ENUM$VALUES[];
    public static final ENUM.VALUES UI_EVENT_FORCE_NEW_CANVAS;
    public static final ENUM.VALUES UI_EVENT_KEY_DOWN;
    public static final ENUM.VALUES UI_EVENT_LOW_MEMORY;
    public static final ENUM.VALUES UI_EVENT_NATIVE;
    public static final ENUM.VALUES UI_EVENT_SCREENSHOT;
    public static final ENUM.VALUES UI_EVENT_START;
    public static final ENUM.VALUES UI_EVENT_STARTUP_GPUERROR;
    public static final ENUM.VALUES UI_EVENT_STARTUP_NOSDCARD;
    public static final ENUM.VALUES UI_EVENT_TOUCH;
    public static final ENUM.VALUES UI_PRIORITY_EVENT_NATIVE;

    public static  FromInt(int i)
    {
        return values()[i];
    }

    public static int ToInt(values values1)
    {
        return values1.ordinal();
    }

    public static ordinal valueOf(String s)
    {
        return (ordinal)Enum.valueOf(com/waze/NativeManager$UIEvent, s);
    }

    public static ordinal[] values()
    {
        ordinal aordinal[] = ENUM$VALUES;
        int i = aordinal.length;
        ordinal aordinal1[] = new ENUM.VALUES[i];
        System.arraycopy(aordinal, 0, aordinal1, 0, i);
        return aordinal1;
    }

    static 
    {
        UI_EVENT_START = new <init>("UI_EVENT_START", 0);
        UI_EVENT_FORCE_NEW_CANVAS = new <init>("UI_EVENT_FORCE_NEW_CANVAS", 1);
        UI_EVENT_KEY_DOWN = new <init>("UI_EVENT_KEY_DOWN", 2);
        UI_EVENT_TOUCH = new <init>("UI_EVENT_TOUCH", 3);
        UI_EVENT_STARTUP_NOSDCARD = new <init>("UI_EVENT_STARTUP_NOSDCARD", 4);
        UI_EVENT_STARTUP_GPUERROR = new <init>("UI_EVENT_STARTUP_GPUERROR", 5);
        UI_EVENT_LOW_MEMORY = new <init>("UI_EVENT_LOW_MEMORY", 6);
        UI_EVENT_SCREENSHOT = new <init>("UI_EVENT_SCREENSHOT", 7);
        UI_EVENT_NATIVE = new <init>("UI_EVENT_NATIVE", 8);
        UI_PRIORITY_EVENT_NATIVE = new <init>("UI_PRIORITY_EVENT_NATIVE", 9);
        ENUM.VALUES avalues[] = new <init>[10];
        avalues[0] = UI_EVENT_START;
        avalues[1] = UI_EVENT_FORCE_NEW_CANVAS;
        avalues[2] = UI_EVENT_KEY_DOWN;
        avalues[3] = UI_EVENT_TOUCH;
        avalues[4] = UI_EVENT_STARTUP_NOSDCARD;
        avalues[5] = UI_EVENT_STARTUP_GPUERROR;
        avalues[6] = UI_EVENT_LOW_MEMORY;
        avalues[7] = UI_EVENT_SCREENSHOT;
        avalues[8] = UI_EVENT_NATIVE;
        avalues[9] = UI_PRIORITY_EVENT_NATIVE;
        ENUM$VALUES = avalues;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
