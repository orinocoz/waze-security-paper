// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package jp.pioneer.ce.aam2.AAM2Kit.replydata;


// Referenced classes of package jp.pioneer.ce.aam2.AAM2Kit.replydata:
//            AAM2TrackInfoReplyDataBase

public class AAM2TrackElapsedTimeNotificationData extends AAM2TrackInfoReplyDataBase
{

    private int a;

    public AAM2TrackElapsedTimeNotificationData(long l)
    {
        super(6, l);
    }

    public int a()
    {
        return a;
    }

    public void setElapsedTime(int i)
    {
        a = i;
    }
}
