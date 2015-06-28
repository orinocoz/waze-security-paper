// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal.player;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.hl;

// Referenced classes of package com.google.android.gms.games.internal.player:
//            MostRecentGameInfo, MostRecentGameInfoEntityCreator

public final class MostRecentGameInfoEntity
    implements SafeParcelable, MostRecentGameInfo
{

    public static final MostRecentGameInfoEntityCreator CREATOR = new MostRecentGameInfoEntityCreator();
    private final String RF;
    private final String RG;
    private final long RH;
    private final Uri RI;
    private final Uri RJ;
    private final Uri RK;
    private final int xJ;

    MostRecentGameInfoEntity(int i, String s, String s1, long l, Uri uri, Uri uri1, 
            Uri uri2)
    {
        xJ = i;
        RF = s;
        RG = s1;
        RH = l;
        RI = uri;
        RJ = uri1;
        RK = uri2;
    }

    public MostRecentGameInfoEntity(MostRecentGameInfo mostrecentgameinfo)
    {
        xJ = 2;
        RF = mostrecentgameinfo.ik();
        RG = mostrecentgameinfo.il();
        RH = mostrecentgameinfo.im();
        RI = mostrecentgameinfo.in();
        RJ = mostrecentgameinfo.io();
        RK = mostrecentgameinfo.ip();
    }

    static int a(MostRecentGameInfo mostrecentgameinfo)
    {
        Object aobj[] = new Object[6];
        aobj[0] = mostrecentgameinfo.ik();
        aobj[1] = mostrecentgameinfo.il();
        aobj[2] = Long.valueOf(mostrecentgameinfo.im());
        aobj[3] = mostrecentgameinfo.in();
        aobj[4] = mostrecentgameinfo.io();
        aobj[5] = mostrecentgameinfo.ip();
        return hl.hashCode(aobj);
    }

    static boolean a(MostRecentGameInfo mostrecentgameinfo, Object obj)
    {
        boolean flag = true;
        if (!(obj instanceof MostRecentGameInfo))
        {
            flag = false;
        } else
        if (mostrecentgameinfo != obj)
        {
            MostRecentGameInfo mostrecentgameinfo1 = (MostRecentGameInfo)obj;
            if (!hl.equal(mostrecentgameinfo1.ik(), mostrecentgameinfo.ik()) || !hl.equal(mostrecentgameinfo1.il(), mostrecentgameinfo.il()) || !hl.equal(Long.valueOf(mostrecentgameinfo1.im()), Long.valueOf(mostrecentgameinfo.im())) || !hl.equal(mostrecentgameinfo1.in(), mostrecentgameinfo.in()) || !hl.equal(mostrecentgameinfo1.io(), mostrecentgameinfo.io()) || !hl.equal(mostrecentgameinfo1.ip(), mostrecentgameinfo.ip()))
            {
                return false;
            }
        }
        return flag;
    }

    static String b(MostRecentGameInfo mostrecentgameinfo)
    {
        return hl.e(mostrecentgameinfo).a("GameId", mostrecentgameinfo.ik()).a("GameName", mostrecentgameinfo.il()).a("ActivityTimestampMillis", Long.valueOf(mostrecentgameinfo.im())).a("GameIconUri", mostrecentgameinfo.in()).a("GameHiResUri", mostrecentgameinfo.io()).a("GameFeaturedUri", mostrecentgameinfo.ip()).toString();
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        return a(this, obj);
    }

    public Object freeze()
    {
        return iq();
    }

    public int getVersionCode()
    {
        return xJ;
    }

    public int hashCode()
    {
        return a(this);
    }

    public String ik()
    {
        return RF;
    }

    public String il()
    {
        return RG;
    }

    public long im()
    {
        return RH;
    }

    public Uri in()
    {
        return RI;
    }

    public Uri io()
    {
        return RJ;
    }

    public Uri ip()
    {
        return RK;
    }

    public MostRecentGameInfo iq()
    {
        return this;
    }

    public boolean isDataValid()
    {
        return true;
    }

    public String toString()
    {
        return b(this);
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        MostRecentGameInfoEntityCreator.a(this, parcel, i);
    }

}
