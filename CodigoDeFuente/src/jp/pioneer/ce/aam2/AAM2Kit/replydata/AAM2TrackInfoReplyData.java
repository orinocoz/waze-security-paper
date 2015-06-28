// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package jp.pioneer.ce.aam2.AAM2Kit.replydata;


// Referenced classes of package jp.pioneer.ce.aam2.AAM2Kit.replydata:
//            AAM2TrackInfoReplyDataBase

public class AAM2TrackInfoReplyData extends AAM2TrackInfoReplyDataBase
{

    private int a;
    private int b;

    public AAM2TrackInfoReplyData(long l)
    {
        super(2, l);
    }

    public int a()
    {
        return a;
    }

    public int b()
    {
        return b;
    }

    public void setDurationTime(int i)
    {
        b = i;
    }

    public void setTrackNumber(int i)
    {
        a = i;
    }
}
