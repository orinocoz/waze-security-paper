// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package bolts;


// Referenced classes of package bolts:
//            AppLinkNavigation

public static final class succeeded extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES APP;
    public static final .VALUES FAILED;
    public static final .VALUES WEB;
    private String code;
    private boolean succeeded;

    public static succeeded valueOf(String s)
    {
        return (succeeded)Enum.valueOf(bolts/AppLinkNavigation$NavigationResult, s);
    }

    public static succeeded[] values()
    {
        return (succeeded[])$VALUES.clone();
    }

    public String getCode()
    {
        return code;
    }

    public boolean isSucceeded()
    {
        return succeeded;
    }

    static 
    {
        FAILED = new <init>("FAILED", 0, "failed", false);
        WEB = new <init>("WEB", 1, "web", true);
        APP = new <init>("APP", 2, "app", true);
        succeeded asucceeded[] = new <init>[3];
        asucceeded[0] = FAILED;
        asucceeded[1] = WEB;
        asucceeded[2] = APP;
        $VALUES = asucceeded;
    }

    private (String s, int i, String s1, boolean flag)
    {
        super(s, i);
        code = s1;
        succeeded = flag;
    }
}
