// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.leaderboard;

import android.database.CharArrayBuffer;
import android.net.Uri;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.internal.hl;
import com.google.android.gms.internal.hn;
import com.google.android.gms.internal.il;

// Referenced classes of package com.google.android.gms.games.leaderboard:
//            LeaderboardScore

public final class LeaderboardScoreEntity
    implements LeaderboardScore
{

    private final String SA;
    private final String SB;
    private final String SC;
    private final long Sr;
    private final String Ss;
    private final String St;
    private final long Su;
    private final long Sv;
    private final String Sw;
    private final Uri Sx;
    private final Uri Sy;
    private final PlayerEntity Sz;

    public LeaderboardScoreEntity(LeaderboardScore leaderboardscore)
    {
        Sr = leaderboardscore.getRank();
        Ss = (String)hn.f(leaderboardscore.getDisplayRank());
        St = (String)hn.f(leaderboardscore.getDisplayScore());
        Su = leaderboardscore.getRawScore();
        Sv = leaderboardscore.getTimestampMillis();
        Sw = leaderboardscore.getScoreHolderDisplayName();
        Sx = leaderboardscore.getScoreHolderIconImageUri();
        Sy = leaderboardscore.getScoreHolderHiResImageUri();
        Player player = leaderboardscore.getScoreHolder();
        PlayerEntity playerentity;
        if (player == null)
        {
            playerentity = null;
        } else
        {
            playerentity = (PlayerEntity)player.freeze();
        }
        Sz = playerentity;
        SA = leaderboardscore.getScoreTag();
        SB = leaderboardscore.getScoreHolderIconImageUrl();
        SC = leaderboardscore.getScoreHolderHiResImageUrl();
    }

    static int a(LeaderboardScore leaderboardscore)
    {
        Object aobj[] = new Object[9];
        aobj[0] = Long.valueOf(leaderboardscore.getRank());
        aobj[1] = leaderboardscore.getDisplayRank();
        aobj[2] = Long.valueOf(leaderboardscore.getRawScore());
        aobj[3] = leaderboardscore.getDisplayScore();
        aobj[4] = Long.valueOf(leaderboardscore.getTimestampMillis());
        aobj[5] = leaderboardscore.getScoreHolderDisplayName();
        aobj[6] = leaderboardscore.getScoreHolderIconImageUri();
        aobj[7] = leaderboardscore.getScoreHolderHiResImageUri();
        aobj[8] = leaderboardscore.getScoreHolder();
        return hl.hashCode(aobj);
    }

    static boolean a(LeaderboardScore leaderboardscore, Object obj)
    {
        boolean flag = true;
        if (!(obj instanceof LeaderboardScore))
        {
            flag = false;
        } else
        if (leaderboardscore != obj)
        {
            LeaderboardScore leaderboardscore1 = (LeaderboardScore)obj;
            if (!hl.equal(Long.valueOf(leaderboardscore1.getRank()), Long.valueOf(leaderboardscore.getRank())) || !hl.equal(leaderboardscore1.getDisplayRank(), leaderboardscore.getDisplayRank()) || !hl.equal(Long.valueOf(leaderboardscore1.getRawScore()), Long.valueOf(leaderboardscore.getRawScore())) || !hl.equal(leaderboardscore1.getDisplayScore(), leaderboardscore.getDisplayScore()) || !hl.equal(Long.valueOf(leaderboardscore1.getTimestampMillis()), Long.valueOf(leaderboardscore.getTimestampMillis())) || !hl.equal(leaderboardscore1.getScoreHolderDisplayName(), leaderboardscore.getScoreHolderDisplayName()) || !hl.equal(leaderboardscore1.getScoreHolderIconImageUri(), leaderboardscore.getScoreHolderIconImageUri()) || !hl.equal(leaderboardscore1.getScoreHolderHiResImageUri(), leaderboardscore.getScoreHolderHiResImageUri()) || !hl.equal(leaderboardscore1.getScoreHolder(), leaderboardscore.getScoreHolder()) || !hl.equal(leaderboardscore1.getScoreTag(), leaderboardscore.getScoreTag()))
            {
                return false;
            }
        }
        return flag;
    }

    static String b(LeaderboardScore leaderboardscore)
    {
        com.google.android.gms.internal.hl.a a1 = hl.e(leaderboardscore).a("Rank", Long.valueOf(leaderboardscore.getRank())).a("DisplayRank", leaderboardscore.getDisplayRank()).a("Score", Long.valueOf(leaderboardscore.getRawScore())).a("DisplayScore", leaderboardscore.getDisplayScore()).a("Timestamp", Long.valueOf(leaderboardscore.getTimestampMillis())).a("DisplayName", leaderboardscore.getScoreHolderDisplayName()).a("IconImageUri", leaderboardscore.getScoreHolderIconImageUri()).a("IconImageUrl", leaderboardscore.getScoreHolderIconImageUrl()).a("HiResImageUri", leaderboardscore.getScoreHolderHiResImageUri()).a("HiResImageUrl", leaderboardscore.getScoreHolderHiResImageUrl());
        Player player;
        if (leaderboardscore.getScoreHolder() == null)
        {
            player = null;
        } else
        {
            player = leaderboardscore.getScoreHolder();
        }
        return a1.a("Player", player).a("ScoreTag", leaderboardscore.getScoreTag()).toString();
    }

    public boolean equals(Object obj)
    {
        return a(this, obj);
    }

    public Object freeze()
    {
        return ix();
    }

    public String getDisplayRank()
    {
        return Ss;
    }

    public void getDisplayRank(CharArrayBuffer chararraybuffer)
    {
        il.b(Ss, chararraybuffer);
    }

    public String getDisplayScore()
    {
        return St;
    }

    public void getDisplayScore(CharArrayBuffer chararraybuffer)
    {
        il.b(St, chararraybuffer);
    }

    public long getRank()
    {
        return Sr;
    }

    public long getRawScore()
    {
        return Su;
    }

    public Player getScoreHolder()
    {
        return Sz;
    }

    public String getScoreHolderDisplayName()
    {
        if (Sz == null)
        {
            return Sw;
        } else
        {
            return Sz.getDisplayName();
        }
    }

    public void getScoreHolderDisplayName(CharArrayBuffer chararraybuffer)
    {
        if (Sz == null)
        {
            il.b(Sw, chararraybuffer);
            return;
        } else
        {
            Sz.getDisplayName(chararraybuffer);
            return;
        }
    }

    public Uri getScoreHolderHiResImageUri()
    {
        if (Sz == null)
        {
            return Sy;
        } else
        {
            return Sz.getHiResImageUri();
        }
    }

    public String getScoreHolderHiResImageUrl()
    {
        if (Sz == null)
        {
            return SC;
        } else
        {
            return Sz.getHiResImageUrl();
        }
    }

    public Uri getScoreHolderIconImageUri()
    {
        if (Sz == null)
        {
            return Sx;
        } else
        {
            return Sz.getIconImageUri();
        }
    }

    public String getScoreHolderIconImageUrl()
    {
        if (Sz == null)
        {
            return SB;
        } else
        {
            return Sz.getIconImageUrl();
        }
    }

    public String getScoreTag()
    {
        return SA;
    }

    public long getTimestampMillis()
    {
        return Sv;
    }

    public int hashCode()
    {
        return a(this);
    }

    public boolean isDataValid()
    {
        return true;
    }

    public LeaderboardScore ix()
    {
        return this;
    }

    public String toString()
    {
        return b(this);
    }
}
