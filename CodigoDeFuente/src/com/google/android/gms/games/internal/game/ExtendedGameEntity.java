// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal.game;

import android.os.Parcel;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.internal.GamesDowngradeableSafeParcel;
import com.google.android.gms.games.snapshot.SnapshotMetadata;
import com.google.android.gms.games.snapshot.SnapshotMetadataEntity;
import com.google.android.gms.internal.hl;
import java.util.ArrayList;

// Referenced classes of package com.google.android.gms.games.internal.game:
//            ExtendedGame, GameBadge, GameBadgeEntity, ExtendedGameEntityCreator, 
//            GameBadgeEntityCreator

public final class ExtendedGameEntity extends GamesDowngradeableSafeParcel
    implements ExtendedGame
{
    static final class ExtendedGameEntityCreatorCompat extends ExtendedGameEntityCreator
    {

        public ExtendedGameEntity bg(Parcel parcel)
        {
            if (ExtendedGameEntity.b(ExtendedGameEntity.gM()) || ExtendedGameEntity.aQ(com/google/android/gms/games/internal/game/ExtendedGameEntity.getCanonicalName()))
            {
                return super.bg(parcel);
            }
            GameEntity gameentity = (GameEntity)GameEntity.CREATOR.createFromParcel(parcel);
            int i = parcel.readInt();
            boolean flag;
            int j;
            long l;
            long l1;
            String s;
            long l2;
            String s1;
            int k;
            ArrayList arraylist;
            if (parcel.readInt() == 1)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            j = parcel.readInt();
            l = parcel.readLong();
            l1 = parcel.readLong();
            s = parcel.readString();
            l2 = parcel.readLong();
            s1 = parcel.readString();
            k = parcel.readInt();
            arraylist = new ArrayList(k);
            for (int i1 = 0; i1 < k; i1++)
            {
                arraylist.add(GameBadgeEntity.CREATOR.bh(parcel));
            }

            return new ExtendedGameEntity(2, gameentity, i, flag, j, l, l1, s, l2, s1, arraylist, null);
        }

        public Object createFromParcel(Parcel parcel)
        {
            return bg(parcel);
        }

        ExtendedGameEntityCreatorCompat()
        {
        }
    }


    public static final ExtendedGameEntityCreator CREATOR = new ExtendedGameEntityCreatorCompat();
    private final SnapshotMetadataEntity RA;
    private final GameEntity Rq;
    private final int Rr;
    private final boolean Rs;
    private final int Rt;
    private final long Ru;
    private final long Rv;
    private final String Rw;
    private final long Rx;
    private final String Ry;
    private final ArrayList Rz;
    private final int xJ;

    ExtendedGameEntity(int i, GameEntity gameentity, int j, boolean flag, int k, long l, 
            long l1, String s, long l2, String s1, ArrayList arraylist, 
            SnapshotMetadataEntity snapshotmetadataentity)
    {
        xJ = i;
        Rq = gameentity;
        Rr = j;
        Rs = flag;
        Rt = k;
        Ru = l;
        Rv = l1;
        Rw = s;
        Rx = l2;
        Ry = s1;
        Rz = arraylist;
        RA = snapshotmetadataentity;
    }

    public ExtendedGameEntity(ExtendedGame extendedgame)
    {
        xJ = 2;
        Game game = extendedgame.getGame();
        GameEntity gameentity;
        SnapshotMetadata snapshotmetadata;
        SnapshotMetadataEntity snapshotmetadataentity;
        ArrayList arraylist;
        int i;
        if (game == null)
        {
            gameentity = null;
        } else
        {
            gameentity = new GameEntity(game);
        }
        Rq = gameentity;
        Rr = extendedgame.hM();
        Rs = extendedgame.hN();
        Rt = extendedgame.hO();
        Ru = extendedgame.hP();
        Rv = extendedgame.hQ();
        Rw = extendedgame.hR();
        Rx = extendedgame.hS();
        Ry = extendedgame.hT();
        snapshotmetadata = extendedgame.hU();
        snapshotmetadataentity = null;
        if (snapshotmetadata != null)
        {
            snapshotmetadataentity = new SnapshotMetadataEntity(snapshotmetadata);
        }
        RA = snapshotmetadataentity;
        arraylist = extendedgame.hL();
        i = arraylist.size();
        Rz = new ArrayList(i);
        for (int j = 0; j < i; j++)
        {
            Rz.add((GameBadgeEntity)((GameBadge)arraylist.get(j)).freeze());
        }

    }

    static int a(ExtendedGame extendedgame)
    {
        Object aobj[] = new Object[9];
        aobj[0] = extendedgame.getGame();
        aobj[1] = Integer.valueOf(extendedgame.hM());
        aobj[2] = Boolean.valueOf(extendedgame.hN());
        aobj[3] = Integer.valueOf(extendedgame.hO());
        aobj[4] = Long.valueOf(extendedgame.hP());
        aobj[5] = Long.valueOf(extendedgame.hQ());
        aobj[6] = extendedgame.hR();
        aobj[7] = Long.valueOf(extendedgame.hS());
        aobj[8] = extendedgame.hT();
        return hl.hashCode(aobj);
    }

    static boolean a(ExtendedGame extendedgame, Object obj)
    {
        boolean flag = true;
        if (!(obj instanceof ExtendedGame))
        {
            flag = false;
        } else
        if (extendedgame != obj)
        {
            ExtendedGame extendedgame1 = (ExtendedGame)obj;
            if (!hl.equal(extendedgame1.getGame(), extendedgame.getGame()) || !hl.equal(Integer.valueOf(extendedgame1.hM()), Integer.valueOf(extendedgame.hM())) || !hl.equal(Boolean.valueOf(extendedgame1.hN()), Boolean.valueOf(extendedgame.hN())) || !hl.equal(Integer.valueOf(extendedgame1.hO()), Integer.valueOf(extendedgame.hO())) || !hl.equal(Long.valueOf(extendedgame1.hP()), Long.valueOf(extendedgame.hP())) || !hl.equal(Long.valueOf(extendedgame1.hQ()), Long.valueOf(extendedgame.hQ())) || !hl.equal(extendedgame1.hR(), extendedgame.hR()) || !hl.equal(Long.valueOf(extendedgame1.hS()), Long.valueOf(extendedgame.hS())) || !hl.equal(extendedgame1.hT(), extendedgame.hT()))
            {
                return false;
            }
        }
        return flag;
    }

    static boolean aQ(String s)
    {
        return aA(s);
    }

    static String b(ExtendedGame extendedgame)
    {
        return hl.e(extendedgame).a("Game", extendedgame.getGame()).a("Availability", Integer.valueOf(extendedgame.hM())).a("Owned", Boolean.valueOf(extendedgame.hN())).a("AchievementUnlockedCount", Integer.valueOf(extendedgame.hO())).a("LastPlayedServerTimestamp", Long.valueOf(extendedgame.hP())).a("PriceMicros", Long.valueOf(extendedgame.hQ())).a("FormattedPrice", extendedgame.hR()).a("FullPriceMicros", Long.valueOf(extendedgame.hS())).a("FormattedFullPrice", extendedgame.hT()).a("Snapshot", extendedgame.hU()).toString();
    }

    static boolean b(Integer integer)
    {
        return c(integer);
    }

    static Integer gM()
    {
        return fl();
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
        return hW();
    }

    public Game getGame()
    {
        return hV();
    }

    public int getVersionCode()
    {
        return xJ;
    }

    public ArrayList hL()
    {
        return new ArrayList(Rz);
    }

    public int hM()
    {
        return Rr;
    }

    public boolean hN()
    {
        return Rs;
    }

    public int hO()
    {
        return Rt;
    }

    public long hP()
    {
        return Ru;
    }

    public long hQ()
    {
        return Rv;
    }

    public String hR()
    {
        return Rw;
    }

    public long hS()
    {
        return Rx;
    }

    public String hT()
    {
        return Ry;
    }

    public SnapshotMetadata hU()
    {
        return RA;
    }

    public GameEntity hV()
    {
        return Rq;
    }

    public ExtendedGame hW()
    {
        return this;
    }

    public int hashCode()
    {
        return a(this);
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
        int j = 0;
        if (!fm())
        {
            ExtendedGameEntityCreator.a(this, parcel, i);
        } else
        {
            Rq.writeToParcel(parcel, i);
            parcel.writeInt(Rr);
            int k;
            int l;
            if (Rs)
            {
                k = 1;
            } else
            {
                k = 0;
            }
            parcel.writeInt(k);
            parcel.writeInt(Rt);
            parcel.writeLong(Ru);
            parcel.writeLong(Rv);
            parcel.writeString(Rw);
            parcel.writeLong(Rx);
            parcel.writeString(Ry);
            l = Rz.size();
            parcel.writeInt(l);
            while (j < l) 
            {
                ((GameBadgeEntity)Rz.get(j)).writeToParcel(parcel, i);
                j++;
            }
        }
    }

}
