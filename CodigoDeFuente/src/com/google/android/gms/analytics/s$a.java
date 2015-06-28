// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.analytics;


// Referenced classes of package com.google.android.gms.analytics:
//            s

private static final class  extends Enum
{

    public static final uC uA;
    public static final uC uB;
    private static final uC uC[];
    public static final uC uv;
    public static final uC uw;
    public static final uC ux;
    public static final uC uy;
    public static final uC uz;

    public static  valueOf(String s1)
    {
        return ()Enum.valueOf(com/google/android/gms/analytics/s$a, s1);
    }

    public static [] values()
    {
        return ([])uC.clone();
    }

    static 
    {
        uv = new <init>("CONNECTING", 0);
        uw = new <init>("CONNECTED_SERVICE", 1);
        ux = new <init>("CONNECTED_LOCAL", 2);
        uy = new <init>("BLOCKED", 3);
        uz = new <init>("PENDING_CONNECTION", 4);
        uA = new <init>("PENDING_DISCONNECT", 5);
        uB = new <init>("DISCONNECTED", 6);
        lone alone[] = new <init>[7];
        alone[0] = uv;
        alone[1] = uw;
        alone[2] = ux;
        alone[3] = uy;
        alone[4] = uz;
        alone[5] = uA;
        alone[6] = uB;
        uC = alone;
    }

    private (String s1, int i)
    {
        super(s1, i);
    }
}
