// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.widget;


// Referenced classes of package com.facebook.widget:
//            FriendPickerFragment

public static final class requestIsCacheable extends Enum
{

    private static final ENUM.VALUES ENUM$VALUES[];
    public static final ENUM.VALUES FRIENDS;
    public static final ENUM.VALUES INVITABLE_FRIENDS;
    public static final ENUM.VALUES TAGGABLE_FRIENDS;
    private final boolean requestIsCacheable;
    private final String requestPath;

    public static requestIsCacheable valueOf(String s)
    {
        return (requestIsCacheable)Enum.valueOf(com/facebook/widget/FriendPickerFragment$FriendPickerType, s);
    }

    public static requestIsCacheable[] values()
    {
        requestIsCacheable arequestiscacheable[] = ENUM$VALUES;
        int i = arequestiscacheable.length;
        requestIsCacheable arequestiscacheable1[] = new ENUM.VALUES[i];
        System.arraycopy(arequestiscacheable, 0, arequestiscacheable1, 0, i);
        return arequestiscacheable1;
    }

    String getRequestPath()
    {
        return requestPath;
    }

    boolean isCacheable()
    {
        return requestIsCacheable;
    }

    static 
    {
        FRIENDS = new <init>("FRIENDS", 0, "/friends", true);
        TAGGABLE_FRIENDS = new <init>("TAGGABLE_FRIENDS", 1, "/taggable_friends", false);
        INVITABLE_FRIENDS = new <init>("INVITABLE_FRIENDS", 2, "/invitable_friends", false);
        requestIsCacheable arequestiscacheable[] = new <init>[3];
        arequestiscacheable[0] = FRIENDS;
        arequestiscacheable[1] = TAGGABLE_FRIENDS;
        arequestiscacheable[2] = INVITABLE_FRIENDS;
        ENUM$VALUES = arequestiscacheable;
    }

    private (String s, int i, String s1, boolean flag)
    {
        super(s, i);
        requestPath = s1;
        requestIsCacheable = flag;
    }
}
