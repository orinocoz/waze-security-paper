// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tokenautocomplete;


// Referenced classes of package com.tokenautocomplete:
//            TokenCompleteTextView

public static final class mIsSelectable extends Enum
{

    public static final ENUM.VALUES Delete;
    private static final ENUM.VALUES ENUM$VALUES[];
    public static final ENUM.VALUES None;
    public static final ENUM.VALUES Select;
    public static final ENUM.VALUES SelectDeselect;
    private boolean mIsSelectable;

    public static mIsSelectable valueOf(String s)
    {
        return (mIsSelectable)Enum.valueOf(com/tokenautocomplete/TokenCompleteTextView$TokenClickStyle, s);
    }

    public static mIsSelectable[] values()
    {
        mIsSelectable amisselectable[] = ENUM$VALUES;
        int i = amisselectable.length;
        mIsSelectable amisselectable1[] = new ENUM.VALUES[i];
        System.arraycopy(amisselectable, 0, amisselectable1, 0, i);
        return amisselectable1;
    }

    public boolean isSelectable()
    {
        return mIsSelectable;
    }

    static 
    {
        None = new <init>("None", 0, false);
        Delete = new <init>("Delete", 1, false);
        Select = new <init>("Select", 2, true);
        SelectDeselect = new <init>("SelectDeselect", 3, true);
        mIsSelectable amisselectable[] = new <init>[4];
        amisselectable[0] = None;
        amisselectable[1] = Delete;
        amisselectable[2] = Select;
        amisselectable[3] = SelectDeselect;
        ENUM$VALUES = amisselectable;
    }

    private A(String s, int i, boolean flag)
    {
        super(s, i);
        mIsSelectable = false;
        mIsSelectable = flag;
    }
}
