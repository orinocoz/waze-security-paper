// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.leaderboard;

import com.google.android.gms.games.internal.constants.LeaderboardCollection;
import com.google.android.gms.games.internal.constants.TimeSpan;
import com.google.android.gms.internal.hl;

// Referenced classes of package com.google.android.gms.games.leaderboard:
//            LeaderboardVariant

public final class LeaderboardVariantEntity
    implements LeaderboardVariant
{

    private final int SE;
    private final int SF;
    private final boolean SG;
    private final long SH;
    private final String SI;
    private final long SJ;
    private final String SK;
    private final String SL;
    private final long SM;
    private final String SN;
    private final String SO;
    private final String SP;

    public LeaderboardVariantEntity(LeaderboardVariant leaderboardvariant)
    {
        SE = leaderboardvariant.getTimeSpan();
        SF = leaderboardvariant.getCollection();
        SG = leaderboardvariant.hasPlayerInfo();
        SH = leaderboardvariant.getRawPlayerScore();
        SI = leaderboardvariant.getDisplayPlayerScore();
        SJ = leaderboardvariant.getPlayerRank();
        SK = leaderboardvariant.getDisplayPlayerRank();
        SL = leaderboardvariant.getPlayerScoreTag();
        SM = leaderboardvariant.getNumScores();
        SN = leaderboardvariant.iy();
        SO = leaderboardvariant.iz();
        SP = leaderboardvariant.iA();
    }

    static int a(LeaderboardVariant leaderboardvariant)
    {
        Object aobj[] = new Object[11];
        aobj[0] = Integer.valueOf(leaderboardvariant.getTimeSpan());
        aobj[1] = Integer.valueOf(leaderboardvariant.getCollection());
        aobj[2] = Boolean.valueOf(leaderboardvariant.hasPlayerInfo());
        aobj[3] = Long.valueOf(leaderboardvariant.getRawPlayerScore());
        aobj[4] = leaderboardvariant.getDisplayPlayerScore();
        aobj[5] = Long.valueOf(leaderboardvariant.getPlayerRank());
        aobj[6] = leaderboardvariant.getDisplayPlayerRank();
        aobj[7] = Long.valueOf(leaderboardvariant.getNumScores());
        aobj[8] = leaderboardvariant.iy();
        aobj[9] = leaderboardvariant.iA();
        aobj[10] = leaderboardvariant.iz();
        return hl.hashCode(aobj);
    }

    static boolean a(LeaderboardVariant leaderboardvariant, Object obj)
    {
        boolean flag = true;
        if (!(obj instanceof LeaderboardVariant))
        {
            flag = false;
        } else
        if (leaderboardvariant != obj)
        {
            LeaderboardVariant leaderboardvariant1 = (LeaderboardVariant)obj;
            if (!hl.equal(Integer.valueOf(leaderboardvariant1.getTimeSpan()), Integer.valueOf(leaderboardvariant.getTimeSpan())) || !hl.equal(Integer.valueOf(leaderboardvariant1.getCollection()), Integer.valueOf(leaderboardvariant.getCollection())) || !hl.equal(Boolean.valueOf(leaderboardvariant1.hasPlayerInfo()), Boolean.valueOf(leaderboardvariant.hasPlayerInfo())) || !hl.equal(Long.valueOf(leaderboardvariant1.getRawPlayerScore()), Long.valueOf(leaderboardvariant.getRawPlayerScore())) || !hl.equal(leaderboardvariant1.getDisplayPlayerScore(), leaderboardvariant.getDisplayPlayerScore()) || !hl.equal(Long.valueOf(leaderboardvariant1.getPlayerRank()), Long.valueOf(leaderboardvariant.getPlayerRank())) || !hl.equal(leaderboardvariant1.getDisplayPlayerRank(), leaderboardvariant.getDisplayPlayerRank()) || !hl.equal(Long.valueOf(leaderboardvariant1.getNumScores()), Long.valueOf(leaderboardvariant.getNumScores())) || !hl.equal(leaderboardvariant1.iy(), leaderboardvariant.iy()) || !hl.equal(leaderboardvariant1.iA(), leaderboardvariant.iA()) || !hl.equal(leaderboardvariant1.iz(), leaderboardvariant.iz()))
            {
                return false;
            }
        }
        return flag;
    }

    static String b(LeaderboardVariant leaderboardvariant)
    {
        com.google.android.gms.internal.hl.a a1 = hl.e(leaderboardvariant).a("TimeSpan", TimeSpan.cm(leaderboardvariant.getTimeSpan())).a("Collection", LeaderboardCollection.cm(leaderboardvariant.getCollection()));
        Object obj;
        com.google.android.gms.internal.hl.a a2;
        String s;
        com.google.android.gms.internal.hl.a a3;
        Object obj1;
        com.google.android.gms.internal.hl.a a4;
        String s1;
        if (leaderboardvariant.hasPlayerInfo())
        {
            obj = Long.valueOf(leaderboardvariant.getRawPlayerScore());
        } else
        {
            obj = "none";
        }
        a2 = a1.a("RawPlayerScore", obj);
        if (leaderboardvariant.hasPlayerInfo())
        {
            s = leaderboardvariant.getDisplayPlayerScore();
        } else
        {
            s = "none";
        }
        a3 = a2.a("DisplayPlayerScore", s);
        if (leaderboardvariant.hasPlayerInfo())
        {
            obj1 = Long.valueOf(leaderboardvariant.getPlayerRank());
        } else
        {
            obj1 = "none";
        }
        a4 = a3.a("PlayerRank", obj1);
        if (leaderboardvariant.hasPlayerInfo())
        {
            s1 = leaderboardvariant.getDisplayPlayerRank();
        } else
        {
            s1 = "none";
        }
        return a4.a("DisplayPlayerRank", s1).a("NumScores", Long.valueOf(leaderboardvariant.getNumScores())).a("TopPageNextToken", leaderboardvariant.iy()).a("WindowPageNextToken", leaderboardvariant.iA()).a("WindowPagePrevToken", leaderboardvariant.iz()).toString();
    }

    public boolean equals(Object obj)
    {
        return a(this, obj);
    }

    public Object freeze()
    {
        return iB();
    }

    public int getCollection()
    {
        return SF;
    }

    public String getDisplayPlayerRank()
    {
        return SK;
    }

    public String getDisplayPlayerScore()
    {
        return SI;
    }

    public long getNumScores()
    {
        return SM;
    }

    public long getPlayerRank()
    {
        return SJ;
    }

    public String getPlayerScoreTag()
    {
        return SL;
    }

    public long getRawPlayerScore()
    {
        return SH;
    }

    public int getTimeSpan()
    {
        return SE;
    }

    public boolean hasPlayerInfo()
    {
        return SG;
    }

    public int hashCode()
    {
        return a(this);
    }

    public String iA()
    {
        return SP;
    }

    public LeaderboardVariant iB()
    {
        return this;
    }

    public boolean isDataValid()
    {
        return true;
    }

    public String iy()
    {
        return SN;
    }

    public String iz()
    {
        return SO;
    }

    public String toString()
    {
        return b(this);
    }
}
