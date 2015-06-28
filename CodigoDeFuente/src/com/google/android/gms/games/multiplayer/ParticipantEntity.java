// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.multiplayer;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.games.internal.GamesDowngradeableSafeParcel;
import com.google.android.gms.internal.hl;
import com.google.android.gms.internal.il;

// Referenced classes of package com.google.android.gms.games.multiplayer:
//            Participant, ParticipantEntityCreator, ParticipantResult

public final class ParticipantEntity extends GamesDowngradeableSafeParcel
    implements Participant
{
    static final class ParticipantEntityCreatorCompat extends ParticipantEntityCreator
    {

        public ParticipantEntity bm(Parcel parcel)
        {
            boolean flag = true;
            if (ParticipantEntity.b(ParticipantEntity.gM()) || ParticipantEntity.aQ(com/google/android/gms/games/multiplayer/ParticipantEntity.getCanonicalName()))
            {
                return super.bm(parcel);
            }
            String s = parcel.readString();
            String s1 = parcel.readString();
            String s2 = parcel.readString();
            Uri uri;
            String s3;
            Uri uri1;
            int i;
            String s4;
            boolean flag1;
            PlayerEntity playerentity;
            if (s2 == null)
            {
                uri = null;
            } else
            {
                uri = Uri.parse(s2);
            }
            s3 = parcel.readString();
            if (s3 == null)
            {
                uri1 = null;
            } else
            {
                uri1 = Uri.parse(s3);
            }
            i = parcel.readInt();
            s4 = parcel.readString();
            if (parcel.readInt() > 0)
            {
                flag1 = flag;
            } else
            {
                flag1 = false;
            }
            if (parcel.readInt() <= 0)
            {
                flag = false;
            }
            if (flag)
            {
                playerentity = (PlayerEntity)PlayerEntity.CREATOR.createFromParcel(parcel);
            } else
            {
                playerentity = null;
            }
            return new ParticipantEntity(3, s, s1, uri, uri1, i, s4, flag1, playerentity, 7, null, null, null);
        }

        public Object createFromParcel(Parcel parcel)
        {
            return bm(parcel);
        }

        ParticipantEntityCreatorCompat()
        {
        }
    }


    public static final android.os.Parcelable.Creator CREATOR = new ParticipantEntityCreatorCompat();
    private final int Am;
    private final String Lk;
    private final String MA;
    private final Uri Mo;
    private final Uri Mp;
    private final String Mz;
    private final PlayerEntity Ng;
    private final String Nk;
    private final String On;
    private final int SY;
    private final boolean SZ;
    private final ParticipantResult Ta;
    private final int xJ;

    ParticipantEntity(int i, String s, String s1, Uri uri, Uri uri1, int j, String s2, 
            boolean flag, PlayerEntity playerentity, int k, ParticipantResult participantresult, String s3, String s4)
    {
        xJ = i;
        On = s;
        Lk = s1;
        Mo = uri;
        Mp = uri1;
        SY = j;
        Nk = s2;
        SZ = flag;
        Ng = playerentity;
        Am = k;
        Ta = participantresult;
        Mz = s3;
        MA = s4;
    }

    public ParticipantEntity(Participant participant)
    {
        xJ = 3;
        On = participant.getParticipantId();
        Lk = participant.getDisplayName();
        Mo = participant.getIconImageUri();
        Mp = participant.getHiResImageUri();
        SY = participant.getStatus();
        Nk = participant.gR();
        SZ = participant.isConnectedToRoom();
        Player player = participant.getPlayer();
        PlayerEntity playerentity;
        if (player == null)
        {
            playerentity = null;
        } else
        {
            playerentity = new PlayerEntity(player);
        }
        Ng = playerentity;
        Am = participant.getCapabilities();
        Ta = participant.getResult();
        Mz = participant.getIconImageUrl();
        MA = participant.getHiResImageUrl();
    }

    static int a(Participant participant)
    {
        Object aobj[] = new Object[10];
        aobj[0] = participant.getPlayer();
        aobj[1] = Integer.valueOf(participant.getStatus());
        aobj[2] = participant.gR();
        aobj[3] = Boolean.valueOf(participant.isConnectedToRoom());
        aobj[4] = participant.getDisplayName();
        aobj[5] = participant.getIconImageUri();
        aobj[6] = participant.getHiResImageUri();
        aobj[7] = Integer.valueOf(participant.getCapabilities());
        aobj[8] = participant.getResult();
        aobj[9] = participant.getParticipantId();
        return hl.hashCode(aobj);
    }

    static boolean a(Participant participant, Object obj)
    {
        boolean flag = true;
        if (!(obj instanceof Participant))
        {
            flag = false;
        } else
        if (participant != obj)
        {
            Participant participant1 = (Participant)obj;
            if (!hl.equal(participant1.getPlayer(), participant.getPlayer()) || !hl.equal(Integer.valueOf(participant1.getStatus()), Integer.valueOf(participant.getStatus())) || !hl.equal(participant1.gR(), participant.gR()) || !hl.equal(Boolean.valueOf(participant1.isConnectedToRoom()), Boolean.valueOf(participant.isConnectedToRoom())) || !hl.equal(participant1.getDisplayName(), participant.getDisplayName()) || !hl.equal(participant1.getIconImageUri(), participant.getIconImageUri()) || !hl.equal(participant1.getHiResImageUri(), participant.getHiResImageUri()) || !hl.equal(Integer.valueOf(participant1.getCapabilities()), Integer.valueOf(participant.getCapabilities())) || !hl.equal(participant1.getResult(), participant.getResult()) || !hl.equal(participant1.getParticipantId(), participant.getParticipantId()))
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

    static String b(Participant participant)
    {
        return hl.e(participant).a("ParticipantId", participant.getParticipantId()).a("Player", participant.getPlayer()).a("Status", Integer.valueOf(participant.getStatus())).a("ClientAddress", participant.gR()).a("ConnectedToRoom", Boolean.valueOf(participant.isConnectedToRoom())).a("DisplayName", participant.getDisplayName()).a("IconImage", participant.getIconImageUri()).a("IconImageUrl", participant.getIconImageUrl()).a("HiResImage", participant.getHiResImageUri()).a("HiResImageUrl", participant.getHiResImageUrl()).a("Capabilities", Integer.valueOf(participant.getCapabilities())).a("Result", participant.getResult()).toString();
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

    public Participant freeze()
    {
        return this;
    }

    public volatile Object freeze()
    {
        return freeze();
    }

    public String gR()
    {
        return Nk;
    }

    public int getCapabilities()
    {
        return Am;
    }

    public String getDisplayName()
    {
        if (Ng == null)
        {
            return Lk;
        } else
        {
            return Ng.getDisplayName();
        }
    }

    public void getDisplayName(CharArrayBuffer chararraybuffer)
    {
        if (Ng == null)
        {
            il.b(Lk, chararraybuffer);
            return;
        } else
        {
            Ng.getDisplayName(chararraybuffer);
            return;
        }
    }

    public Uri getHiResImageUri()
    {
        if (Ng == null)
        {
            return Mp;
        } else
        {
            return Ng.getHiResImageUri();
        }
    }

    public String getHiResImageUrl()
    {
        if (Ng == null)
        {
            return MA;
        } else
        {
            return Ng.getHiResImageUrl();
        }
    }

    public Uri getIconImageUri()
    {
        if (Ng == null)
        {
            return Mo;
        } else
        {
            return Ng.getIconImageUri();
        }
    }

    public String getIconImageUrl()
    {
        if (Ng == null)
        {
            return Mz;
        } else
        {
            return Ng.getIconImageUrl();
        }
    }

    public String getParticipantId()
    {
        return On;
    }

    public Player getPlayer()
    {
        return Ng;
    }

    public ParticipantResult getResult()
    {
        return Ta;
    }

    public int getStatus()
    {
        return SY;
    }

    public int getVersionCode()
    {
        return xJ;
    }

    public int hashCode()
    {
        return a(this);
    }

    public boolean isConnectedToRoom()
    {
        return SZ;
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
            ParticipantEntityCreator.a(this, parcel, i);
        } else
        {
            parcel.writeString(On);
            parcel.writeString(Lk);
            String s;
            Uri uri;
            String s1;
            int j;
            PlayerEntity playerentity;
            int k;
            if (Mo == null)
            {
                s = null;
            } else
            {
                s = Mo.toString();
            }
            parcel.writeString(s);
            uri = Mp;
            s1 = null;
            if (uri != null)
            {
                s1 = Mp.toString();
            }
            parcel.writeString(s1);
            parcel.writeInt(SY);
            parcel.writeString(Nk);
            if (SZ)
            {
                j = 1;
            } else
            {
                j = 0;
            }
            parcel.writeInt(j);
            playerentity = Ng;
            k = 0;
            if (playerentity != null)
            {
                k = 1;
            }
            parcel.writeInt(k);
            if (Ng != null)
            {
                Ng.writeToParcel(parcel, i);
                return;
            }
        }
    }

}
