// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.multiplayer;

import android.os.Parcel;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.internal.GamesDowngradeableSafeParcel;
import com.google.android.gms.internal.hl;
import com.google.android.gms.internal.hn;
import java.util.ArrayList;

// Referenced classes of package com.google.android.gms.games.multiplayer:
//            Invitation, Participant, ParticipantEntity, InvitationEntityCreator

public final class InvitationEntity extends GamesDowngradeableSafeParcel
    implements Invitation
{
    static final class InvitationEntityCreatorCompat extends InvitationEntityCreator
    {

        public InvitationEntity bl(Parcel parcel)
        {
            if (InvitationEntity.b(InvitationEntity.gM()) || InvitationEntity.aQ(com/google/android/gms/games/multiplayer/InvitationEntity.getCanonicalName()))
            {
                return super.bl(parcel);
            }
            GameEntity gameentity = (GameEntity)GameEntity.CREATOR.createFromParcel(parcel);
            String s = parcel.readString();
            long l = parcel.readLong();
            int i = parcel.readInt();
            ParticipantEntity participantentity = (ParticipantEntity)ParticipantEntity.CREATOR.createFromParcel(parcel);
            int j = parcel.readInt();
            ArrayList arraylist = new ArrayList(j);
            for (int k = 0; k < j; k++)
            {
                arraylist.add(ParticipantEntity.CREATOR.createFromParcel(parcel));
            }

            return new InvitationEntity(2, gameentity, s, l, i, participantentity, arraylist, -1, 0);
        }

        public Object createFromParcel(Parcel parcel)
        {
            return bl(parcel);
        }

        InvitationEntityCreatorCompat()
        {
        }
    }


    public static final android.os.Parcelable.Creator CREATOR = new InvitationEntityCreatorCompat();
    private final String NN;
    private final GameEntity Rq;
    private final long SR;
    private final int SS;
    private final ParticipantEntity ST;
    private final ArrayList SU;
    private final int SV;
    private final int SW;
    private final int xJ;

    InvitationEntity(int i, GameEntity gameentity, String s, long l, int j, ParticipantEntity participantentity, 
            ArrayList arraylist, int k, int i1)
    {
        xJ = i;
        Rq = gameentity;
        NN = s;
        SR = l;
        SS = j;
        ST = participantentity;
        SU = arraylist;
        SV = k;
        SW = i1;
    }

    InvitationEntity(Invitation invitation)
    {
        xJ = 2;
        Rq = new GameEntity(invitation.getGame());
        NN = invitation.getInvitationId();
        SR = invitation.getCreationTimestamp();
        SS = invitation.getInvitationType();
        SV = invitation.getVariant();
        SW = invitation.getAvailableAutoMatchSlots();
        String s = invitation.getInviter().getParticipantId();
        Participant participant = null;
        ArrayList arraylist = invitation.getParticipants();
        int i = arraylist.size();
        SU = new ArrayList(i);
        for (int j = 0; j < i; j++)
        {
            Participant participant1 = (Participant)arraylist.get(j);
            if (participant1.getParticipantId().equals(s))
            {
                participant = participant1;
            }
            SU.add((ParticipantEntity)participant1.freeze());
        }

        hn.b(participant, "Must have a valid inviter!");
        ST = (ParticipantEntity)participant.freeze();
    }

    static int a(Invitation invitation)
    {
        Object aobj[] = new Object[8];
        aobj[0] = invitation.getGame();
        aobj[1] = invitation.getInvitationId();
        aobj[2] = Long.valueOf(invitation.getCreationTimestamp());
        aobj[3] = Integer.valueOf(invitation.getInvitationType());
        aobj[4] = invitation.getInviter();
        aobj[5] = invitation.getParticipants();
        aobj[6] = Integer.valueOf(invitation.getVariant());
        aobj[7] = Integer.valueOf(invitation.getAvailableAutoMatchSlots());
        return hl.hashCode(aobj);
    }

    static boolean a(Invitation invitation, Object obj)
    {
        boolean flag = true;
        if (!(obj instanceof Invitation))
        {
            flag = false;
        } else
        if (invitation != obj)
        {
            Invitation invitation1 = (Invitation)obj;
            if (!hl.equal(invitation1.getGame(), invitation.getGame()) || !hl.equal(invitation1.getInvitationId(), invitation.getInvitationId()) || !hl.equal(Long.valueOf(invitation1.getCreationTimestamp()), Long.valueOf(invitation.getCreationTimestamp())) || !hl.equal(Integer.valueOf(invitation1.getInvitationType()), Integer.valueOf(invitation.getInvitationType())) || !hl.equal(invitation1.getInviter(), invitation.getInviter()) || !hl.equal(invitation1.getParticipants(), invitation.getParticipants()) || !hl.equal(Integer.valueOf(invitation1.getVariant()), Integer.valueOf(invitation.getVariant())) || !hl.equal(Integer.valueOf(invitation1.getAvailableAutoMatchSlots()), Integer.valueOf(invitation.getAvailableAutoMatchSlots())))
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

    static String b(Invitation invitation)
    {
        return hl.e(invitation).a("Game", invitation.getGame()).a("InvitationId", invitation.getInvitationId()).a("CreationTimestamp", Long.valueOf(invitation.getCreationTimestamp())).a("InvitationType", Integer.valueOf(invitation.getInvitationType())).a("Inviter", invitation.getInviter()).a("Participants", invitation.getParticipants()).a("Variant", Integer.valueOf(invitation.getVariant())).a("AvailableAutoMatchSlots", Integer.valueOf(invitation.getAvailableAutoMatchSlots())).toString();
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

    public Invitation freeze()
    {
        return this;
    }

    public volatile Object freeze()
    {
        return freeze();
    }

    public int getAvailableAutoMatchSlots()
    {
        return SW;
    }

    public long getCreationTimestamp()
    {
        return SR;
    }

    public Game getGame()
    {
        return Rq;
    }

    public String getInvitationId()
    {
        return NN;
    }

    public int getInvitationType()
    {
        return SS;
    }

    public Participant getInviter()
    {
        return ST;
    }

    public ArrayList getParticipants()
    {
        return new ArrayList(SU);
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
            InvitationEntityCreator.a(this, parcel, i);
        } else
        {
            Rq.writeToParcel(parcel, i);
            parcel.writeString(NN);
            parcel.writeLong(SR);
            parcel.writeInt(SS);
            ST.writeToParcel(parcel, i);
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
