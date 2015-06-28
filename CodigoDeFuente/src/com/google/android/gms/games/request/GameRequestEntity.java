// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.request;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.internal.hl;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

// Referenced classes of package com.google.android.gms.games.request:
//            GameRequest, GameRequestEntityCreator

public final class GameRequestEntity
    implements SafeParcelable, GameRequest
{

    public static final GameRequestEntityCreator CREATOR = new GameRequestEntityCreator();
    private final int AQ;
    private final String Oy;
    private final GameEntity Rq;
    private final long SR;
    private final int SY;
    private final byte TC[];
    private final PlayerEntity TX;
    private final ArrayList TY;
    private final long TZ;
    private final Bundle Ua;
    private final int xJ;

    GameRequestEntity(int i, GameEntity gameentity, PlayerEntity playerentity, byte abyte0[], String s, ArrayList arraylist, int j, 
            long l, long l1, Bundle bundle, int k)
    {
        xJ = i;
        Rq = gameentity;
        TX = playerentity;
        TC = abyte0;
        Oy = s;
        TY = arraylist;
        AQ = j;
        SR = l;
        TZ = l1;
        Ua = bundle;
        SY = k;
    }

    public GameRequestEntity(GameRequest gamerequest)
    {
        xJ = 2;
        Rq = new GameEntity(gamerequest.getGame());
        TX = new PlayerEntity(gamerequest.getSender());
        Oy = gamerequest.getRequestId();
        AQ = gamerequest.getType();
        SR = gamerequest.getCreationTimestamp();
        TZ = gamerequest.getExpirationTimestamp();
        SY = gamerequest.getStatus();
        byte abyte0[] = gamerequest.getData();
        List list;
        int i;
        if (abyte0 == null)
        {
            TC = null;
        } else
        {
            TC = new byte[abyte0.length];
            System.arraycopy(abyte0, 0, TC, 0, abyte0.length);
        }
        list = gamerequest.getRecipients();
        i = list.size();
        TY = new ArrayList(i);
        Ua = new Bundle();
        for (int j = 0; j < i; j++)
        {
            Player player = (Player)((Player)list.get(j)).freeze();
            String s = player.getPlayerId();
            TY.add((PlayerEntity)player);
            Ua.putInt(s, gamerequest.getRecipientStatus(s));
        }

    }

    static int a(GameRequest gamerequest)
    {
        Object aobj[] = new Object[8];
        aobj[0] = gamerequest.getGame();
        aobj[1] = gamerequest.getRecipients();
        aobj[2] = gamerequest.getRequestId();
        aobj[3] = gamerequest.getSender();
        aobj[4] = b(gamerequest);
        aobj[5] = Integer.valueOf(gamerequest.getType());
        aobj[6] = Long.valueOf(gamerequest.getCreationTimestamp());
        aobj[7] = Long.valueOf(gamerequest.getExpirationTimestamp());
        return hl.hashCode(aobj);
    }

    static boolean a(GameRequest gamerequest, Object obj)
    {
        boolean flag = true;
        if (!(obj instanceof GameRequest))
        {
            flag = false;
        } else
        if (gamerequest != obj)
        {
            GameRequest gamerequest1 = (GameRequest)obj;
            if (!hl.equal(gamerequest1.getGame(), gamerequest.getGame()) || !hl.equal(gamerequest1.getRecipients(), gamerequest.getRecipients()) || !hl.equal(gamerequest1.getRequestId(), gamerequest.getRequestId()) || !hl.equal(gamerequest1.getSender(), gamerequest.getSender()) || !Arrays.equals(b(gamerequest1), b(gamerequest)) || !hl.equal(Integer.valueOf(gamerequest1.getType()), Integer.valueOf(gamerequest.getType())) || !hl.equal(Long.valueOf(gamerequest1.getCreationTimestamp()), Long.valueOf(gamerequest.getCreationTimestamp())) || !hl.equal(Long.valueOf(gamerequest1.getExpirationTimestamp()), Long.valueOf(gamerequest.getExpirationTimestamp())))
            {
                return false;
            }
        }
        return flag;
    }

    private static int[] b(GameRequest gamerequest)
    {
        List list = gamerequest.getRecipients();
        int i = list.size();
        int ai[] = new int[i];
        for (int j = 0; j < i; j++)
        {
            ai[j] = gamerequest.getRecipientStatus(((Player)list.get(j)).getPlayerId());
        }

        return ai;
    }

    static String c(GameRequest gamerequest)
    {
        return hl.e(gamerequest).a("Game", gamerequest.getGame()).a("Sender", gamerequest.getSender()).a("Recipients", gamerequest.getRecipients()).a("Data", gamerequest.getData()).a("RequestId", gamerequest.getRequestId()).a("Type", Integer.valueOf(gamerequest.getType())).a("CreationTimestamp", Long.valueOf(gamerequest.getCreationTimestamp())).a("ExpirationTimestamp", Long.valueOf(gamerequest.getExpirationTimestamp())).toString();
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        return a(this, obj);
    }

    public GameRequest freeze()
    {
        return this;
    }

    public volatile Object freeze()
    {
        return freeze();
    }

    public long getCreationTimestamp()
    {
        return SR;
    }

    public byte[] getData()
    {
        return TC;
    }

    public long getExpirationTimestamp()
    {
        return TZ;
    }

    public Game getGame()
    {
        return Rq;
    }

    public int getRecipientStatus(String s)
    {
        return Ua.getInt(s, 0);
    }

    public List getRecipients()
    {
        return new ArrayList(TY);
    }

    public String getRequestId()
    {
        return Oy;
    }

    public Player getSender()
    {
        return TX;
    }

    public int getStatus()
    {
        return SY;
    }

    public int getType()
    {
        return AQ;
    }

    public int getVersionCode()
    {
        return xJ;
    }

    public int hashCode()
    {
        return a(this);
    }

    public Bundle iG()
    {
        return Ua;
    }

    public boolean isConsumed(String s)
    {
        return getRecipientStatus(s) == 1;
    }

    public boolean isDataValid()
    {
        return true;
    }

    public String toString()
    {
        return c(this);
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        GameRequestEntityCreator.a(this, parcel, i);
    }

}
