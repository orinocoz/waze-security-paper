// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.messages;

import com.waze.user.UserData;
import java.io.Serializable;

public abstract class OnSendHandler
    implements Serializable
{

    protected static final long serialVersionUID = 1L;

    public OnSendHandler()
    {
    }

    public abstract void onSend(boolean flag, UserData userdata, String s);
}
