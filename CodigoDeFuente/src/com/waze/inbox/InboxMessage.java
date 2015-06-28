// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.inbox;

import java.io.Serializable;

public class InboxMessage
    implements Serializable
{

    protected static final int MSG_TYPE_CONTENT = 1;
    protected static final int MSG_TYPE_LINK = 0;
    protected static final int MSG_TYPE_SECURED_LINK = 2;
    private static final long serialVersionUID = 1L;
    protected String id;
    protected String message;
    protected int messageType;
    protected String preview;
    protected long sent;
    protected String sentFString;
    protected String title;
    protected boolean unread;

    public InboxMessage()
    {
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null)
            {
                return false;
            }
            if (getClass() != obj.getClass())
            {
                return false;
            }
            if (!id.equals(((InboxMessage)obj).id))
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        return id.hashCode();
    }
}
