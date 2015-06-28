// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal.multiplayer;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.multiplayer.Invitation;
import com.google.android.gms.games.multiplayer.InvitationEntity;
import com.google.android.gms.games.multiplayer.Participant;
import com.google.android.gms.internal.gy;
import com.google.android.gms.internal.hl;
import java.util.ArrayList;

// Referenced classes of package com.google.android.gms.games.internal.multiplayer:
//            InvitationClusterCreator

public final class ZInvitationCluster
    implements SafeParcelable, Invitation
{

    public static final InvitationClusterCreator CREATOR = new InvitationClusterCreator();
    private final ArrayList RE;
    private final int xJ;

    ZInvitationCluster(int i, ArrayList arraylist)
    {
        xJ = i;
        RE = arraylist;
        id();
    }

    private void id()
    {
        boolean flag;
        Invitation invitation;
        int i;
        if (!RE.isEmpty())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        gy.A(flag);
        invitation = (Invitation)RE.get(0);
        i = RE.size();
        for (int j = 1; j < i; j++)
        {
            Invitation invitation1 = (Invitation)RE.get(j);
            gy.a(invitation.getInviter().equals(invitation1.getInviter()), "All the invitations must be from the same inviter");
        }

    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        if (!(obj instanceof ZInvitationCluster))
        {
            return false;
        }
        if (this == obj)
        {
            return true;
        }
        ZInvitationCluster zinvitationcluster = (ZInvitationCluster)obj;
        if (zinvitationcluster.RE.size() != RE.size())
        {
            return false;
        }
        int i = RE.size();
        for (int j = 0; j < i; j++)
        {
            if (!((Invitation)RE.get(j)).equals((Invitation)zinvitationcluster.RE.get(j)))
            {
                return false;
            }
        }

        return true;
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
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    public long getCreationTimestamp()
    {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    public Game getGame()
    {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    public String getInvitationId()
    {
        return ((InvitationEntity)RE.get(0)).getInvitationId();
    }

    public int getInvitationType()
    {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    public Participant getInviter()
    {
        return ((InvitationEntity)RE.get(0)).getInviter();
    }

    public ArrayList getParticipants()
    {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    public int getVariant()
    {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    public int getVersionCode()
    {
        return xJ;
    }

    public int hashCode()
    {
        return hl.hashCode(RE.toArray());
    }

    public ArrayList ie()
    {
        return new ArrayList(RE);
    }

    public boolean isDataValid()
    {
        return true;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        InvitationClusterCreator.a(this, parcel, i);
    }

}
