// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.multiplayer.turnbased;

import android.database.CharArrayBuffer;
import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.multiplayer.Participant;
import com.google.android.gms.games.multiplayer.ParticipantEntity;
import com.google.android.gms.internal.hl;
import com.google.android.gms.internal.il;
import java.util.ArrayList;

// Referenced classes of package com.google.android.gms.games.multiplayer.turnbased:
//            TurnBasedMatch, TurnBasedMatchEntityCreator

public final class TurnBasedMatchEntity
    implements SafeParcelable, TurnBasedMatch
{

    public static final TurnBasedMatchEntityCreator CREATOR = new TurnBasedMatchEntityCreator();
    private final String Mm;
    private final String Of;
    private final GameEntity Rq;
    private final long SR;
    private final ArrayList SU;
    private final int SV;
    private final int TA;
    private final int TB;
    private final byte TC[];
    private final String TD;
    private final byte TE[];
    private final int TF;
    private final int TG;
    private final boolean TH;
    private final String TI;
    private final Bundle Tl;
    private final String Tp;
    private final String Tx;
    private final long Ty;
    private final String Tz;
    private final int xJ;

    TurnBasedMatchEntity(int i, GameEntity gameentity, String s, String s1, long l, String s2, 
            long l1, String s3, int j, int k, int i1, byte abyte0[], 
            ArrayList arraylist, String s4, byte abyte1[], int j1, Bundle bundle, int k1, boolean flag, 
            String s5, String s6)
    {
        xJ = i;
        Rq = gameentity;
        Of = s;
        Tp = s1;
        SR = l;
        Tx = s2;
        Ty = l1;
        Tz = s3;
        TA = j;
        TG = k1;
        SV = k;
        TB = i1;
        TC = abyte0;
        SU = arraylist;
        TD = s4;
        TE = abyte1;
        TF = j1;
        Tl = bundle;
        TH = flag;
        Mm = s5;
        TI = s6;
    }

    public TurnBasedMatchEntity(TurnBasedMatch turnbasedmatch)
    {
        xJ = 2;
        Rq = new GameEntity(turnbasedmatch.getGame());
        Of = turnbasedmatch.getMatchId();
        Tp = turnbasedmatch.getCreatorId();
        SR = turnbasedmatch.getCreationTimestamp();
        Tx = turnbasedmatch.getLastUpdaterId();
        Ty = turnbasedmatch.getLastUpdatedTimestamp();
        Tz = turnbasedmatch.getPendingParticipantId();
        TA = turnbasedmatch.getStatus();
        TG = turnbasedmatch.getTurnStatus();
        SV = turnbasedmatch.getVariant();
        TB = turnbasedmatch.getVersion();
        TD = turnbasedmatch.getRematchId();
        TF = turnbasedmatch.getMatchNumber();
        Tl = turnbasedmatch.getAutoMatchCriteria();
        TH = turnbasedmatch.isLocallyModified();
        Mm = turnbasedmatch.getDescription();
        TI = turnbasedmatch.getDescriptionParticipantId();
        byte abyte0[] = turnbasedmatch.getData();
        byte abyte1[];
        ArrayList arraylist;
        int i;
        if (abyte0 == null)
        {
            TC = null;
        } else
        {
            TC = new byte[abyte0.length];
            System.arraycopy(abyte0, 0, TC, 0, abyte0.length);
        }
        abyte1 = turnbasedmatch.getPreviousMatchData();
        if (abyte1 == null)
        {
            TE = null;
        } else
        {
            TE = new byte[abyte1.length];
            System.arraycopy(abyte1, 0, TE, 0, abyte1.length);
        }
        arraylist = turnbasedmatch.getParticipants();
        i = arraylist.size();
        SU = new ArrayList(i);
        for (int j = 0; j < i; j++)
        {
            SU.add((ParticipantEntity)(ParticipantEntity)((Participant)arraylist.get(j)).freeze());
        }

    }

    static int a(TurnBasedMatch turnbasedmatch)
    {
        Object aobj[] = new Object[18];
        aobj[0] = turnbasedmatch.getGame();
        aobj[1] = turnbasedmatch.getMatchId();
        aobj[2] = turnbasedmatch.getCreatorId();
        aobj[3] = Long.valueOf(turnbasedmatch.getCreationTimestamp());
        aobj[4] = turnbasedmatch.getLastUpdaterId();
        aobj[5] = Long.valueOf(turnbasedmatch.getLastUpdatedTimestamp());
        aobj[6] = turnbasedmatch.getPendingParticipantId();
        aobj[7] = Integer.valueOf(turnbasedmatch.getStatus());
        aobj[8] = Integer.valueOf(turnbasedmatch.getTurnStatus());
        aobj[9] = turnbasedmatch.getDescription();
        aobj[10] = Integer.valueOf(turnbasedmatch.getVariant());
        aobj[11] = Integer.valueOf(turnbasedmatch.getVersion());
        aobj[12] = turnbasedmatch.getParticipants();
        aobj[13] = turnbasedmatch.getRematchId();
        aobj[14] = Integer.valueOf(turnbasedmatch.getMatchNumber());
        aobj[15] = turnbasedmatch.getAutoMatchCriteria();
        aobj[16] = Integer.valueOf(turnbasedmatch.getAvailableAutoMatchSlots());
        aobj[17] = Boolean.valueOf(turnbasedmatch.isLocallyModified());
        return hl.hashCode(aobj);
    }

    static int a(TurnBasedMatch turnbasedmatch, String s)
    {
        ArrayList arraylist = turnbasedmatch.getParticipants();
        int i = arraylist.size();
        for (int j = 0; j < i; j++)
        {
            Participant participant = (Participant)arraylist.get(j);
            if (participant.getParticipantId().equals(s))
            {
                return participant.getStatus();
            }
        }

        throw new IllegalStateException((new StringBuilder()).append("Participant ").append(s).append(" is not in match ").append(turnbasedmatch.getMatchId()).toString());
    }

    static boolean a(TurnBasedMatch turnbasedmatch, Object obj)
    {
        boolean flag = true;
        if (!(obj instanceof TurnBasedMatch))
        {
            flag = false;
        } else
        if (turnbasedmatch != obj)
        {
            TurnBasedMatch turnbasedmatch1 = (TurnBasedMatch)obj;
            if (!hl.equal(turnbasedmatch1.getGame(), turnbasedmatch.getGame()) || !hl.equal(turnbasedmatch1.getMatchId(), turnbasedmatch.getMatchId()) || !hl.equal(turnbasedmatch1.getCreatorId(), turnbasedmatch.getCreatorId()) || !hl.equal(Long.valueOf(turnbasedmatch1.getCreationTimestamp()), Long.valueOf(turnbasedmatch.getCreationTimestamp())) || !hl.equal(turnbasedmatch1.getLastUpdaterId(), turnbasedmatch.getLastUpdaterId()) || !hl.equal(Long.valueOf(turnbasedmatch1.getLastUpdatedTimestamp()), Long.valueOf(turnbasedmatch.getLastUpdatedTimestamp())) || !hl.equal(turnbasedmatch1.getPendingParticipantId(), turnbasedmatch.getPendingParticipantId()) || !hl.equal(Integer.valueOf(turnbasedmatch1.getStatus()), Integer.valueOf(turnbasedmatch.getStatus())) || !hl.equal(Integer.valueOf(turnbasedmatch1.getTurnStatus()), Integer.valueOf(turnbasedmatch.getTurnStatus())) || !hl.equal(turnbasedmatch1.getDescription(), turnbasedmatch.getDescription()) || !hl.equal(Integer.valueOf(turnbasedmatch1.getVariant()), Integer.valueOf(turnbasedmatch.getVariant())) || !hl.equal(Integer.valueOf(turnbasedmatch1.getVersion()), Integer.valueOf(turnbasedmatch.getVersion())) || !hl.equal(turnbasedmatch1.getParticipants(), turnbasedmatch.getParticipants()) || !hl.equal(turnbasedmatch1.getRematchId(), turnbasedmatch.getRematchId()) || !hl.equal(Integer.valueOf(turnbasedmatch1.getMatchNumber()), Integer.valueOf(turnbasedmatch.getMatchNumber())) || !hl.equal(turnbasedmatch1.getAutoMatchCriteria(), turnbasedmatch.getAutoMatchCriteria()) || !hl.equal(Integer.valueOf(turnbasedmatch1.getAvailableAutoMatchSlots()), Integer.valueOf(turnbasedmatch.getAvailableAutoMatchSlots())) || !hl.equal(Boolean.valueOf(turnbasedmatch1.isLocallyModified()), Boolean.valueOf(turnbasedmatch.isLocallyModified())))
            {
                return false;
            }
        }
        return flag;
    }

    static String b(TurnBasedMatch turnbasedmatch)
    {
        return hl.e(turnbasedmatch).a("Game", turnbasedmatch.getGame()).a("MatchId", turnbasedmatch.getMatchId()).a("CreatorId", turnbasedmatch.getCreatorId()).a("CreationTimestamp", Long.valueOf(turnbasedmatch.getCreationTimestamp())).a("LastUpdaterId", turnbasedmatch.getLastUpdaterId()).a("LastUpdatedTimestamp", Long.valueOf(turnbasedmatch.getLastUpdatedTimestamp())).a("PendingParticipantId", turnbasedmatch.getPendingParticipantId()).a("MatchStatus", Integer.valueOf(turnbasedmatch.getStatus())).a("TurnStatus", Integer.valueOf(turnbasedmatch.getTurnStatus())).a("Description", turnbasedmatch.getDescription()).a("Variant", Integer.valueOf(turnbasedmatch.getVariant())).a("Data", turnbasedmatch.getData()).a("Version", Integer.valueOf(turnbasedmatch.getVersion())).a("Participants", turnbasedmatch.getParticipants()).a("RematchId", turnbasedmatch.getRematchId()).a("PreviousData", turnbasedmatch.getPreviousMatchData()).a("MatchNumber", Integer.valueOf(turnbasedmatch.getMatchNumber())).a("AutoMatchCriteria", turnbasedmatch.getAutoMatchCriteria()).a("AvailableAutoMatchSlots", Integer.valueOf(turnbasedmatch.getAvailableAutoMatchSlots())).a("LocallyModified", Boolean.valueOf(turnbasedmatch.isLocallyModified())).a("DescriptionParticipantId", turnbasedmatch.getDescriptionParticipantId()).toString();
    }

    static String b(TurnBasedMatch turnbasedmatch, String s)
    {
        ArrayList arraylist = turnbasedmatch.getParticipants();
        int i = arraylist.size();
        for (int j = 0; j < i; j++)
        {
            Participant participant = (Participant)arraylist.get(j);
            Player player = participant.getPlayer();
            if (player != null && player.getPlayerId().equals(s))
            {
                return participant.getParticipantId();
            }
        }

        return null;
    }

    static Participant c(TurnBasedMatch turnbasedmatch, String s)
    {
        ArrayList arraylist = turnbasedmatch.getParticipants();
        int i = arraylist.size();
        for (int j = 0; j < i; j++)
        {
            Participant participant = (Participant)arraylist.get(j);
            if (participant.getParticipantId().equals(s))
            {
                return participant;
            }
        }

        throw new IllegalStateException((new StringBuilder()).append("Participant ").append(s).append(" is not in match ").append(turnbasedmatch.getMatchId()).toString());
    }

    static ArrayList c(TurnBasedMatch turnbasedmatch)
    {
        ArrayList arraylist = turnbasedmatch.getParticipants();
        int i = arraylist.size();
        ArrayList arraylist1 = new ArrayList(i);
        for (int j = 0; j < i; j++)
        {
            arraylist1.add(((Participant)arraylist.get(j)).getParticipantId());
        }

        return arraylist1;
    }

    public boolean canRematch()
    {
        return TA == 2 && TD == null;
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        return a(this, obj);
    }

    public TurnBasedMatch freeze()
    {
        return this;
    }

    public volatile Object freeze()
    {
        return freeze();
    }

    public Bundle getAutoMatchCriteria()
    {
        return Tl;
    }

    public int getAvailableAutoMatchSlots()
    {
        if (Tl == null)
        {
            return 0;
        } else
        {
            return Tl.getInt("max_automatch_players");
        }
    }

    public long getCreationTimestamp()
    {
        return SR;
    }

    public String getCreatorId()
    {
        return Tp;
    }

    public byte[] getData()
    {
        return TC;
    }

    public String getDescription()
    {
        return Mm;
    }

    public void getDescription(CharArrayBuffer chararraybuffer)
    {
        il.b(Mm, chararraybuffer);
    }

    public Participant getDescriptionParticipant()
    {
        return getParticipant(getDescriptionParticipantId());
    }

    public String getDescriptionParticipantId()
    {
        return TI;
    }

    public Game getGame()
    {
        return Rq;
    }

    public long getLastUpdatedTimestamp()
    {
        return Ty;
    }

    public String getLastUpdaterId()
    {
        return Tx;
    }

    public String getMatchId()
    {
        return Of;
    }

    public int getMatchNumber()
    {
        return TF;
    }

    public Participant getParticipant(String s)
    {
        return c(this, s);
    }

    public String getParticipantId(String s)
    {
        return b(this, s);
    }

    public ArrayList getParticipantIds()
    {
        return c(this);
    }

    public int getParticipantStatus(String s)
    {
        return a(this, s);
    }

    public ArrayList getParticipants()
    {
        return new ArrayList(SU);
    }

    public String getPendingParticipantId()
    {
        return Tz;
    }

    public byte[] getPreviousMatchData()
    {
        return TE;
    }

    public String getRematchId()
    {
        return TD;
    }

    public int getStatus()
    {
        return TA;
    }

    public int getTurnStatus()
    {
        return TG;
    }

    public int getVariant()
    {
        return SV;
    }

    public int getVersion()
    {
        return TB;
    }

    public int getVersionCode()
    {
        return xJ;
    }

    public int hashCode()
    {
        return a(this);
    }

    public boolean isDataValid()
    {
        return true;
    }

    public boolean isLocallyModified()
    {
        return TH;
    }

    public String toString()
    {
        return b(this);
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        TurnBasedMatchEntityCreator.a(this, parcel, i);
    }

}
