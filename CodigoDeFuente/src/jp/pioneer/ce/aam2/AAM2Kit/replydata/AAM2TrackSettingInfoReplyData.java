// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package jp.pioneer.ce.aam2.AAM2Kit.replydata;


// Referenced classes of package jp.pioneer.ce.aam2.AAM2Kit.replydata:
//            b

public class AAM2TrackSettingInfoReplyData extends b
{

    private boolean a;
    private boolean b;
    private boolean c;
    private boolean d;
    private boolean e;
    private boolean f;
    private boolean g;
    private boolean h;
    private boolean i;

    public AAM2TrackSettingInfoReplyData()
    {
        super(1);
        a = false;
        b = true;
        c = true;
        d = true;
        e = true;
        f = false;
        g = false;
        h = true;
        i = false;
    }

    public boolean a()
    {
        return a;
    }

    public boolean b()
    {
        return b;
    }

    public boolean c()
    {
        return c;
    }

    public boolean e()
    {
        return d;
    }

    public boolean f()
    {
        return e;
    }

    public boolean g()
    {
        return f;
    }

    public boolean h()
    {
        return g;
    }

    public boolean i()
    {
        return h;
    }

    public boolean j()
    {
        return i;
    }

    public void setHasAlbumTitle(boolean flag)
    {
        e = flag;
    }

    public void setHasArtistName(boolean flag)
    {
        d = flag;
    }

    public void setHasElapsedTime(boolean flag)
    {
        h = flag;
    }

    public void setHasRatingValue(boolean flag)
    {
        i = flag;
    }

    public void setHasTrackInformation(boolean flag)
    {
        b = flag;
    }

    public void setHasTrackTitle(boolean flag)
    {
        c = flag;
    }
}
