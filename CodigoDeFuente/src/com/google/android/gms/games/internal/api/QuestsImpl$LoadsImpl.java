// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.quest.QuestBuffer;

// Referenced classes of package com.google.android.gms.games.internal.api:
//            QuestsImpl

private static abstract class <init> extends com.google.android.gms.games.hodImpl
{

    public com.google.android.gms.games.quest.lt U(Status status)
    {
        return new com.google.android.gms.games.quest.Quests.LoadQuestsResult(status) {

            final QuestsImpl.LoadsImpl Qs;
            final Status yG;

            public QuestBuffer getQuests()
            {
                return null;
            }

            public Status getStatus()
            {
                return yG;
            }

            public void release()
            {
            }

            
            {
                Qs = QuestsImpl.LoadsImpl.this;
                yG = status;
                super();
            }
        };
    }

    public Result c(Status status)
    {
        return U(status);
    }

    private _cls1.yG()
    {
    }

    _cls1.yG(_cls1.yG yg)
    {
        this();
    }
}
