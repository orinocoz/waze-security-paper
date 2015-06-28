// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.achartengine.renderer;


// Referenced classes of package org.achartengine.renderer:
//            DialRenderer

public static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES ARROW;
    public static final .VALUES NEEDLE;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(org/achartengine/renderer/DialRenderer$Type, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        NEEDLE = new <init>("NEEDLE", 0);
        ARROW = new <init>("ARROW", 1);
        e_3B_.clone aclone[] = new <init>[2];
        aclone[0] = NEEDLE;
        aclone[1] = ARROW;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
