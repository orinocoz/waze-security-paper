// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.hl;
import com.google.android.gms.internal.hn;

// Referenced classes of package com.google.android.gms.games:
//            PlayerLevelCreator

public final class PlayerLevel
    implements SafeParcelable
{

    public static final PlayerLevelCreator CREATOR = new PlayerLevelCreator();
    private final int MW;
    private final long MX;
    private final long MY;
    private final int xJ;

    PlayerLevel(int i, int j, long l, long l1)
    {
        boolean flag = true;
        super();
        boolean flag1;
        if (l >= 0L)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        hn.a(flag1, "Min XP must be positive!");
        if (l1 <= l)
        {
            flag = false;
        }
        hn.a(flag, "Max XP must be more than min XP!");
        xJ = i;
        MW = j;
        MX = l;
        MY = l1;
    }

    public PlayerLevel(int i, long l, long l1)
    {
        this(1, i, l, l1);
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        boolean flag = true;
        if (!(obj instanceof PlayerLevel))
        {
            flag = false;
        } else
        if (this != obj)
        {
            PlayerLevel playerlevel = (PlayerLevel)obj;
            if (!hl.equal(Integer.valueOf(playerlevel.getLevelNumber()), Integer.valueOf(getLevelNumber())) || !hl.equal(Long.valueOf(playerlevel.getMinXp()), Long.valueOf(getMinXp())) || !hl.equal(Long.valueOf(playerlevel.getMaxXp()), Long.valueOf(getMaxXp())))
            {
                return false;
            }
        }
        return flag;
    }

    public int getLevelNumber()
    {
        return MW;
    }

    public long getMaxXp()
    {
        return MY;
    }

    public long getMinXp()
    {
        return MX;
    }

    public int getVersionCode()
    {
        return xJ;
    }

    public int hashCode()
    {
        Object aobj[] = new Object[3];
        aobj[0] = Integer.valueOf(MW);
        aobj[1] = Long.valueOf(MX);
        aobj[2] = Long.valueOf(MY);
        return hl.hashCode(aobj);
    }

    public String toString()
    {
        return hl.e(this).a("LevelNumber", Integer.valueOf(getLevelNumber())).a("MinXp", Long.valueOf(getMinXp())).a("MaxXp", Long.valueOf(getMaxXp())).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        PlayerLevelCreator.a(this, parcel, i);
    }

}
