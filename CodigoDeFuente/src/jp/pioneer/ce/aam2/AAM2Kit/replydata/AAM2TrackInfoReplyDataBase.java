// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package jp.pioneer.ce.aam2.AAM2Kit.replydata;


// Referenced classes of package jp.pioneer.ce.aam2.AAM2Kit.replydata:
//            b

public class AAM2TrackInfoReplyDataBase extends b
{

    private long a;

    public AAM2TrackInfoReplyDataBase(int i, long l)
    {
        super(i);
        setTrackToken(l);
    }

    public long c()
    {
        return a;
    }

    public void setTrackToken(long l)
    {
        a = l;
    }
}
