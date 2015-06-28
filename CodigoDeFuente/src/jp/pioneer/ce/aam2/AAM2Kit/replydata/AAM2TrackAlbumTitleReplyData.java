// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package jp.pioneer.ce.aam2.AAM2Kit.replydata;


// Referenced classes of package jp.pioneer.ce.aam2.AAM2Kit.replydata:
//            AAM2TrackInfoReplyDataBase

public class AAM2TrackAlbumTitleReplyData extends AAM2TrackInfoReplyDataBase
{

    private String a;

    public AAM2TrackAlbumTitleReplyData(long l)
    {
        super(5, l);
    }

    public String a()
    {
        return a;
    }

    public void setAlbumTitle(String s)
    {
        a = s;
    }
}
