// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.quest;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.internal.hl;
import com.google.android.gms.internal.il;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.google.android.gms.games.quest:
//            Quest, QuestEntityCreator, Milestone, MilestoneEntity

public final class QuestEntity
    implements SafeParcelable, Quest
{

    public static final QuestEntityCreator CREATOR = new QuestEntityCreator();
    private final int AQ;
    private final String Mm;
    private final GameEntity Rq;
    private final String TM;
    private final long TN;
    private final Uri TO;
    private final String TP;
    private final long TQ;
    private final Uri TR;
    private final String TS;
    private final long TT;
    private final long TU;
    private final ArrayList TV;
    private final long Ty;
    private final String mName;
    private final int mState;
    private final int xJ;

    QuestEntity(int i, GameEntity gameentity, String s, long l, Uri uri, String s1, 
            String s2, long l1, long l2, Uri uri1, String s3, 
            String s4, long l3, long l4, int j, int k, 
            ArrayList arraylist)
    {
        xJ = i;
        Rq = gameentity;
        TM = s;
        TN = l;
        TO = uri;
        TP = s1;
        Mm = s2;
        TQ = l1;
        Ty = l2;
        TR = uri1;
        TS = s3;
        mName = s4;
        TT = l3;
        TU = l4;
        mState = j;
        AQ = k;
        TV = arraylist;
    }

    public QuestEntity(Quest quest)
    {
        xJ = 2;
        Rq = new GameEntity(quest.getGame());
        TM = quest.getQuestId();
        TN = quest.getAcceptedTimestamp();
        Mm = quest.getDescription();
        TO = quest.getBannerImageUri();
        TP = quest.getBannerImageUrl();
        TQ = quest.getEndTimestamp();
        TR = quest.getIconImageUri();
        TS = quest.getIconImageUrl();
        Ty = quest.getLastUpdatedTimestamp();
        mName = quest.getName();
        TT = quest.iF();
        TU = quest.getStartTimestamp();
        mState = quest.getState();
        AQ = quest.getType();
        List list = quest.iE();
        int i = list.size();
        TV = new ArrayList(i);
        for (int j = 0; j < i; j++)
        {
            TV.add((MilestoneEntity)(MilestoneEntity)((Milestone)list.get(j)).freeze());
        }

    }

    static int a(Quest quest)
    {
        Object aobj[] = new Object[13];
        aobj[0] = quest.getGame();
        aobj[1] = quest.getQuestId();
        aobj[2] = Long.valueOf(quest.getAcceptedTimestamp());
        aobj[3] = quest.getBannerImageUri();
        aobj[4] = quest.getDescription();
        aobj[5] = Long.valueOf(quest.getEndTimestamp());
        aobj[6] = quest.getIconImageUri();
        aobj[7] = Long.valueOf(quest.getLastUpdatedTimestamp());
        aobj[8] = quest.iE();
        aobj[9] = quest.getName();
        aobj[10] = Long.valueOf(quest.iF());
        aobj[11] = Long.valueOf(quest.getStartTimestamp());
        aobj[12] = Integer.valueOf(quest.getState());
        return hl.hashCode(aobj);
    }

    static boolean a(Quest quest, Object obj)
    {
        boolean flag = true;
        if (!(obj instanceof Quest))
        {
            flag = false;
        } else
        if (quest != obj)
        {
            Quest quest1 = (Quest)obj;
            if (!hl.equal(quest1.getGame(), quest.getGame()) || !hl.equal(quest1.getQuestId(), quest.getQuestId()) || !hl.equal(Long.valueOf(quest1.getAcceptedTimestamp()), Long.valueOf(quest.getAcceptedTimestamp())) || !hl.equal(quest1.getBannerImageUri(), quest.getBannerImageUri()) || !hl.equal(quest1.getDescription(), quest.getDescription()) || !hl.equal(Long.valueOf(quest1.getEndTimestamp()), Long.valueOf(quest.getEndTimestamp())) || !hl.equal(quest1.getIconImageUri(), quest.getIconImageUri()) || !hl.equal(Long.valueOf(quest1.getLastUpdatedTimestamp()), Long.valueOf(quest.getLastUpdatedTimestamp())) || !hl.equal(quest1.iE(), quest.iE()) || !hl.equal(quest1.getName(), quest.getName()) || !hl.equal(Long.valueOf(quest1.iF()), Long.valueOf(quest.iF())) || !hl.equal(Long.valueOf(quest1.getStartTimestamp()), Long.valueOf(quest.getStartTimestamp())) || !hl.equal(Integer.valueOf(quest1.getState()), Integer.valueOf(quest.getState())))
            {
                return false;
            }
        }
        return flag;
    }

    static String b(Quest quest)
    {
        return hl.e(quest).a("Game", quest.getGame()).a("QuestId", quest.getQuestId()).a("AcceptedTimestamp", Long.valueOf(quest.getAcceptedTimestamp())).a("BannerImageUri", quest.getBannerImageUri()).a("BannerImageUrl", quest.getBannerImageUrl()).a("Description", quest.getDescription()).a("EndTimestamp", Long.valueOf(quest.getEndTimestamp())).a("IconImageUri", quest.getIconImageUri()).a("IconImageUrl", quest.getIconImageUrl()).a("LastUpdatedTimestamp", Long.valueOf(quest.getLastUpdatedTimestamp())).a("Milestones", quest.iE()).a("Name", quest.getName()).a("NotifyTimestamp", Long.valueOf(quest.iF())).a("StartTimestamp", Long.valueOf(quest.getStartTimestamp())).a("State", Integer.valueOf(quest.getState())).toString();
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        return a(this, obj);
    }

    public Quest freeze()
    {
        return this;
    }

    public volatile Object freeze()
    {
        return freeze();
    }

    public long getAcceptedTimestamp()
    {
        return TN;
    }

    public Uri getBannerImageUri()
    {
        return TO;
    }

    public String getBannerImageUrl()
    {
        return TP;
    }

    public Milestone getCurrentMilestone()
    {
        return (Milestone)iE().get(0);
    }

    public String getDescription()
    {
        return Mm;
    }

    public void getDescription(CharArrayBuffer chararraybuffer)
    {
        il.b(Mm, chararraybuffer);
    }

    public long getEndTimestamp()
    {
        return TQ;
    }

    public Game getGame()
    {
        return Rq;
    }

    public Uri getIconImageUri()
    {
        return TR;
    }

    public String getIconImageUrl()
    {
        return TS;
    }

    public long getLastUpdatedTimestamp()
    {
        return Ty;
    }

    public String getName()
    {
        return mName;
    }

    public void getName(CharArrayBuffer chararraybuffer)
    {
        il.b(mName, chararraybuffer);
    }

    public String getQuestId()
    {
        return TM;
    }

    public long getStartTimestamp()
    {
        return TU;
    }

    public int getState()
    {
        return mState;
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

    public List iE()
    {
        return new ArrayList(TV);
    }

    public long iF()
    {
        return TT;
    }

    public boolean isDataValid()
    {
        return true;
    }

    public boolean isEndingSoon()
    {
        return TT <= 0x1b7740L + System.currentTimeMillis();
    }

    public String toString()
    {
        return b(this);
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        QuestEntityCreator.a(this, parcel, i);
    }

}
