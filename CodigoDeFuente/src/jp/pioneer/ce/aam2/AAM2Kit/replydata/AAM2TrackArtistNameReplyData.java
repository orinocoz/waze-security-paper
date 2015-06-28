// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package jp.pioneer.ce.aam2.AAM2Kit.replydata;


// Referenced classes of package jp.pioneer.ce.aam2.AAM2Kit.replydata:
//            AAM2TrackInfoReplyDataBase

public class AAM2TrackArtistNameReplyData extends AAM2TrackInfoReplyDataBase
{

    private String a;

    public AAM2TrackArtistNameReplyData(long l)
    {
        super(4, l);
    }

    public String a()
    {
        return a;
    }

    public void setArtistName(String s)
    {
        a = s;
    }
}
