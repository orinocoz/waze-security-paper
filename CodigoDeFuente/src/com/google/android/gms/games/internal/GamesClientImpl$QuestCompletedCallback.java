// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal;

import com.google.android.gms.games.quest.Quest;
import com.google.android.gms.games.quest.QuestUpdateListener;

// Referenced classes of package com.google.android.gms.games.internal:
//            GamesClientImpl

private final class ND extends com.google.android.gms.internal.lback
{

    final GamesClientImpl NB;
    private final Quest ND;

    protected void b(QuestUpdateListener questupdatelistener)
    {
        questupdatelistener.onQuestCompleted(ND);
    }

    protected void d(Object obj)
    {
        b((QuestUpdateListener)obj);
    }

    protected void fp()
    {
    }

    (GamesClientImpl gamesclientimpl, QuestUpdateListener questupdatelistener, Quest quest)
    {
        NB = gamesclientimpl;
        super(gamesclientimpl, questupdatelistener);
        ND = quest;
    }
}
