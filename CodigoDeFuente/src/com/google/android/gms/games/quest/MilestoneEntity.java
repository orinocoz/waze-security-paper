// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.quest;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.hl;

// Referenced classes of package com.google.android.gms.games.quest:
//            Milestone, MilestoneEntityCreator

public final class MilestoneEntity
    implements SafeParcelable, Milestone
{

    public static final MilestoneEntityCreator CREATOR = new MilestoneEntityCreator();
    private final String Nf;
    private final String Oq;
    private final long TJ;
    private final long TK;
    private final byte TL[];
    private final int mState;
    private final int xJ;

    MilestoneEntity(int i, String s, long l, long l1, byte abyte0[], 
            int j, String s1)
    {
        xJ = i;
        Oq = s;
        TJ = l;
        TK = l1;
        TL = abyte0;
        mState = j;
        Nf = s1;
    }

    public MilestoneEntity(Milestone milestone)
    {
        xJ = 4;
        Oq = milestone.getMilestoneId();
        TJ = milestone.getCurrentProgress();
        TK = milestone.getTargetProgress();
        mState = milestone.getState();
        Nf = milestone.getEventId();
        byte abyte0[] = milestone.getCompletionRewardData();
        if (abyte0 == null)
        {
            TL = null;
            return;
        } else
        {
            TL = new byte[abyte0.length];
            System.arraycopy(abyte0, 0, TL, 0, abyte0.length);
            return;
        }
    }

    static int a(Milestone milestone)
    {
        Object aobj[] = new Object[5];
        aobj[0] = milestone.getMilestoneId();
        aobj[1] = Long.valueOf(milestone.getCurrentProgress());
        aobj[2] = Long.valueOf(milestone.getTargetProgress());
        aobj[3] = Integer.valueOf(milestone.getState());
        aobj[4] = milestone.getEventId();
        return hl.hashCode(aobj);
    }

    static boolean a(Milestone milestone, Object obj)
    {
        boolean flag = true;
        if (!(obj instanceof Milestone))
        {
            flag = false;
        } else
        if (milestone != obj)
        {
            Milestone milestone1 = (Milestone)obj;
            if (!hl.equal(milestone1.getMilestoneId(), milestone.getMilestoneId()) || !hl.equal(Long.valueOf(milestone1.getCurrentProgress()), Long.valueOf(milestone.getCurrentProgress())) || !hl.equal(Long.valueOf(milestone1.getTargetProgress()), Long.valueOf(milestone.getTargetProgress())) || !hl.equal(Integer.valueOf(milestone1.getState()), Integer.valueOf(milestone.getState())) || !hl.equal(milestone1.getEventId(), milestone.getEventId()))
            {
                return false;
            }
        }
        return flag;
    }

    static String b(Milestone milestone)
    {
        return hl.e(milestone).a("MilestoneId", milestone.getMilestoneId()).a("CurrentProgress", Long.valueOf(milestone.getCurrentProgress())).a("TargetProgress", Long.valueOf(milestone.getTargetProgress())).a("State", Integer.valueOf(milestone.getState())).a("CompletionRewardData", milestone.getCompletionRewardData()).a("EventId", milestone.getEventId()).toString();
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        return a(this, obj);
    }

    public Milestone freeze()
    {
        return this;
    }

    public volatile Object freeze()
    {
        return freeze();
    }

    public byte[] getCompletionRewardData()
    {
        return TL;
    }

    public long getCurrentProgress()
    {
        return TJ;
    }

    public String getEventId()
    {
        return Nf;
    }

    public String getMilestoneId()
    {
        return Oq;
    }

    public int getState()
    {
        return mState;
    }

    public long getTargetProgress()
    {
        return TK;
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
        MilestoneEntityCreator.a(this, parcel, i);
    }

}
