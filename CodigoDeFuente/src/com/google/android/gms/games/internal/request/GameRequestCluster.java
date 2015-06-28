// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal.request;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.request.GameRequest;
import com.google.android.gms.games.request.GameRequestEntity;
import com.google.android.gms.internal.gy;
import com.google.android.gms.internal.hl;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.google.android.gms.games.internal.request:
//            GameRequestClusterCreator

public final class GameRequestCluster
    implements SafeParcelable, GameRequest
{

    public static final GameRequestClusterCreator CREATOR = new GameRequestClusterCreator();
    private final ArrayList Sj;
    private final int xJ;

    GameRequestCluster(int i, ArrayList arraylist)
    {
        xJ = i;
        Sj = arraylist;
        id();
    }

    private void id()
    {
        boolean flag;
        GameRequest gamerequest;
        int i;
        int j;
        if (!Sj.isEmpty())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        gy.A(flag);
        gamerequest = (GameRequest)Sj.get(0);
        i = Sj.size();
        j = 1;
        while (j < i) 
        {
            GameRequest gamerequest1 = (GameRequest)Sj.get(j);
            boolean flag1;
            if (gamerequest.getType() == gamerequest1.getType())
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            gy.a(flag1, "All the requests must be of the same type");
            gy.a(gamerequest.getSender().equals(gamerequest1.getSender()), "All the requests must be from the same sender");
            j++;
        }
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        if (!(obj instanceof GameRequestCluster))
        {
            return false;
        }
        if (this == obj)
        {
            return true;
        }
        GameRequestCluster gamerequestcluster = (GameRequestCluster)obj;
        if (gamerequestcluster.Sj.size() != Sj.size())
        {
            return false;
        }
        int i = Sj.size();
        for (int j = 0; j < i; j++)
        {
            if (!((GameRequest)Sj.get(j)).equals((GameRequest)gamerequestcluster.Sj.get(j)))
            {
                return false;
            }
        }

        return true;
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
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    public byte[] getData()
    {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    public long getExpirationTimestamp()
    {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    public Game getGame()
    {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    public int getRecipientStatus(String s)
    {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    public List getRecipients()
    {
        return is();
    }

    public String getRequestId()
    {
        return ((GameRequestEntity)Sj.get(0)).getRequestId();
    }

    public Player getSender()
    {
        return ((GameRequestEntity)Sj.get(0)).getSender();
    }

    public int getStatus()
    {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    public int getType()
    {
        return ((GameRequestEntity)Sj.get(0)).getType();
    }

    public int getVersionCode()
    {
        return xJ;
    }

    public int hashCode()
    {
        return hl.hashCode(Sj.toArray());
    }

    public ArrayList ir()
    {
        return new ArrayList(Sj);
    }

    public ArrayList is()
    {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    public boolean isConsumed(String s)
    {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    public boolean isDataValid()
    {
        return true;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        GameRequestClusterCreator.a(this, parcel, i);
    }

}
