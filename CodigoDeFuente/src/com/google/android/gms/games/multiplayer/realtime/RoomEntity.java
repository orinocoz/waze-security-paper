// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.multiplayer.realtime;

import android.database.CharArrayBuffer;
import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.internal.GamesDowngradeableSafeParcel;
import com.google.android.gms.games.multiplayer.Participant;
import com.google.android.gms.games.multiplayer.ParticipantEntity;
import com.google.android.gms.internal.hl;
import com.google.android.gms.internal.il;
import java.util.ArrayList;

// Referenced classes of package com.google.android.gms.games.multiplayer.realtime:
//            Room, RoomEntityCreator

public final class RoomEntity extends GamesDowngradeableSafeParcel
    implements Room
{
    static final class RoomEntityCreatorCompat extends RoomEntityCreator
    {

        public RoomEntity bo(Parcel parcel)
        {
            if (RoomEntity.b(RoomEntity.gM()) || RoomEntity.aQ(com/google/android/gms/games/multiplayer/realtime/RoomEntity.getCanonicalName()))
            {
                return super.bo(parcel);
            }
            String s = parcel.readString();
            String s1 = parcel.readString();
            long l = parcel.readLong();
            int i = parcel.readInt();
            String s2 = parcel.readString();
            int j = parcel.readInt();
            Bundle bundle = parcel.readBundle();
            int k = parcel.readInt();
            ArrayList arraylist = new ArrayList(k);
            for (int i1 = 0; i1 < k; i1++)
            {
                arraylist.add(ParticipantEntity.CREATOR.createFromParcel(parcel));
            }

            return new RoomEntity(2, s, s1, l, i, s2, j, bundle, arraylist, -1);
        }

        public Object createFromParcel(Parcel parcel)
        {
            return bo(parcel);
        }

        RoomEntityCreatorCompat()
        {
        }
    }


    public static final android.os.Parcelable.Creator CREATOR = new RoomEntityCreatorCompat();
    private final String Mm;
    private final String NP;
    private final long SR;
    private final ArrayList SU;
    private final int SV;
    private final Bundle Tl;
    private final String Tp;
    private final int Tq;
    private final int Tr;
    private final int xJ;

    RoomEntity(int i, String s, String s1, long l, int j, String s2, 
            int k, Bundle bundle, ArrayList arraylist, int i1)
    {
        xJ = i;
        NP = s;
        Tp = s1;
        SR = l;
        Tq = j;
        Mm = s2;
        SV = k;
        Tl = bundle;
        SU = arraylist;
        Tr = i1;
    }

    public RoomEntity(Room room)
    {
        xJ = 2;
        NP = room.getRoomId();
        Tp = room.getCreatorId();
        SR = room.getCreationTimestamp();
        Tq = room.getStatus();
        Mm = room.getDescription();
        SV = room.getVariant();
        Tl = room.getAutoMatchCriteria();
        ArrayList arraylist = room.getParticipants();
        int i = arraylist.size();
        SU = new ArrayList(i);
        for (int j = 0; j < i; j++)
        {
            SU.add((ParticipantEntity)((Participant)arraylist.get(j)).freeze());
        }

        Tr = room.getAutoMatchWaitEstimateSeconds();
    }

    static int a(Room room)
    {
        Object aobj[] = new Object[9];
        aobj[0] = room.getRoomId();
        aobj[1] = room.getCreatorId();
        aobj[2] = Long.valueOf(room.getCreationTimestamp());
        aobj[3] = Integer.valueOf(room.getStatus());
        aobj[4] = room.getDescription();
        aobj[5] = Integer.valueOf(room.getVariant());
        aobj[6] = room.getAutoMatchCriteria();
        aobj[7] = room.getParticipants();
        aobj[8] = Integer.valueOf(room.getAutoMatchWaitEstimateSeconds());
        return hl.hashCode(aobj);
    }

    static int a(Room room, String s)
    {
        ArrayList arraylist = room.getParticipants();
        int i = arraylist.size();
        for (int j = 0; j < i; j++)
        {
            Participant participant = (Participant)arraylist.get(j);
            if (participant.getParticipantId().equals(s))
            {
                return participant.getStatus();
            }
        }

        throw new IllegalStateException((new StringBuilder()).append("Participant ").append(s).append(" is not in room ").append(room.getRoomId()).toString());
    }

    static boolean a(Room room, Object obj)
    {
        boolean flag = true;
        if (!(obj instanceof Room))
        {
            flag = false;
        } else
        if (room != obj)
        {
            Room room1 = (Room)obj;
            if (!hl.equal(room1.getRoomId(), room.getRoomId()) || !hl.equal(room1.getCreatorId(), room.getCreatorId()) || !hl.equal(Long.valueOf(room1.getCreationTimestamp()), Long.valueOf(room.getCreationTimestamp())) || !hl.equal(Integer.valueOf(room1.getStatus()), Integer.valueOf(room.getStatus())) || !hl.equal(room1.getDescription(), room.getDescription()) || !hl.equal(Integer.valueOf(room1.getVariant()), Integer.valueOf(room.getVariant())) || !hl.equal(room1.getAutoMatchCriteria(), room.getAutoMatchCriteria()) || !hl.equal(room1.getParticipants(), room.getParticipants()) || !hl.equal(Integer.valueOf(room1.getAutoMatchWaitEstimateSeconds()), Integer.valueOf(room.getAutoMatchWaitEstimateSeconds())))
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

    static String b(Room room)
    {
        return hl.e(room).a("RoomId", room.getRoomId()).a("CreatorId", room.getCreatorId()).a("CreationTimestamp", Long.valueOf(room.getCreationTimestamp())).a("RoomStatus", Integer.valueOf(room.getStatus())).a("Description", room.getDescription()).a("Variant", Integer.valueOf(room.getVariant())).a("AutoMatchCriteria", room.getAutoMatchCriteria()).a("Participants", room.getParticipants()).a("AutoMatchWaitEstimateSeconds", Integer.valueOf(room.getAutoMatchWaitEstimateSeconds())).toString();
    }

    static String b(Room room, String s)
    {
        ArrayList arraylist = room.getParticipants();
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

    static boolean b(Integer integer)
    {
        return c(integer);
    }

    static Participant c(Room room, String s)
    {
        ArrayList arraylist = room.getParticipants();
        int i = arraylist.size();
        for (int j = 0; j < i; j++)
        {
            Participant participant = (Participant)arraylist.get(j);
            if (participant.getParticipantId().equals(s))
            {
                return participant;
            }
        }

        throw new IllegalStateException((new StringBuilder()).append("Participant ").append(s).append(" is not in match ").append(room.getRoomId()).toString());
    }

    static ArrayList c(Room room)
    {
        ArrayList arraylist = room.getParticipants();
        int i = arraylist.size();
        ArrayList arraylist1 = new ArrayList(i);
        for (int j = 0; j < i; j++)
        {
            arraylist1.add(((Participant)arraylist.get(j)).getParticipantId());
        }

        return arraylist1;
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

    public Room freeze()
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

    public int getAutoMatchWaitEstimateSeconds()
    {
        return Tr;
    }

    public long getCreationTimestamp()
    {
        return SR;
    }

    public String getCreatorId()
    {
        return Tp;
    }

    public String getDescription()
    {
        return Mm;
    }

    public void getDescription(CharArrayBuffer chararraybuffer)
    {
        il.b(Mm, chararraybuffer);
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

    public String getRoomId()
    {
        return NP;
    }

    public int getStatus()
    {
        return Tq;
    }

    public int getVariant()
    {
        return SV;
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

    public String toString()
    {
        return b(this);
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        if (!fm())
        {
            RoomEntityCreator.a(this, parcel, i);
        } else
        {
            parcel.writeString(NP);
            parcel.writeString(Tp);
            parcel.writeLong(SR);
            parcel.writeInt(Tq);
            parcel.writeString(Mm);
            parcel.writeInt(SV);
            parcel.writeBundle(Tl);
            int j = SU.size();
            parcel.writeInt(j);
            int k = 0;
            while (k < j) 
            {
                ((ParticipantEntity)SU.get(k)).writeToParcel(parcel, i);
                k++;
            }
        }
    }

}
