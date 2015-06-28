// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package jp.pioneer.ce.aam2.AAM2Kit.replydata;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

// Referenced classes of package jp.pioneer.ce.aam2.AAM2Kit.replydata:
//            AAM2TrackInfoReplyData, AAM2TrackSettingInfoReplyData, AAM2TrackTitleReplyData, AAM2TrackArtistNameReplyData, 
//            AAM2TrackAlbumTitleReplyData, AAM2TrackElapsedTimeNotificationData, AAM2TrackInfoReplyDataBase, b

public class a
{

    public a()
    {
    }

    public static long a(byte abyte0[])
    {
        DataInputStream datainputstream = new DataInputStream(new ByteArrayInputStream(abyte0));
        long l;
        try
        {
            l = datainputstream.readLong();
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
            return -1L;
        }
        return l;
    }

    public static byte[] a(int i, AAM2TrackInfoReplyDataBase aam2trackinforeplydatabase)
    {
        byte abyte0[] = (byte[])null;
        switch (i)
        {
        default:
            return abyte0;

        case 2: // '\002'
            return a(aam2trackinforeplydatabase);

        case 3: // '\003'
            return b(aam2trackinforeplydatabase);

        case 4: // '\004'
            return c(aam2trackinforeplydatabase);

        case 5: // '\005'
            return d(aam2trackinforeplydatabase);

        case 6: // '\006'
            return e(aam2trackinforeplydatabase);
        }
    }

    public static byte[] a(AAM2TrackInfoReplyDataBase aam2trackinforeplydatabase)
    {
        if (!(aam2trackinforeplydatabase instanceof AAM2TrackInfoReplyData))
        {
            throw new IllegalArgumentException("param class type unmatched");
        }
        AAM2TrackInfoReplyData aam2trackinforeplydata = (AAM2TrackInfoReplyData)aam2trackinforeplydatabase;
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        DataOutputStream dataoutputstream = new DataOutputStream(bytearrayoutputstream);
        try
        {
            dataoutputstream.writeByte(aam2trackinforeplydata.d());
            dataoutputstream.writeLong(aam2trackinforeplydata.c());
            dataoutputstream.writeShort(aam2trackinforeplydata.a());
            dataoutputstream.writeShort(aam2trackinforeplydata.b());
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
            return null;
        }
        return bytearrayoutputstream.toByteArray();
    }

    public static byte[] a(b b1)
    {
        byte byte0;
        byte byte1;
        byte byte2;
        byte byte3;
        byte byte4;
        byte byte5;
        byte byte6;
        byte byte7;
        if (!(b1 instanceof AAM2TrackSettingInfoReplyData))
        {
            throw new IllegalArgumentException("param class type unmatched");
        }
        AAM2TrackSettingInfoReplyData aam2tracksettinginforeplydata = (AAM2TrackSettingInfoReplyData)b1;
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        DataOutputStream dataoutputstream = new DataOutputStream(bytearrayoutputstream);
        int i;
        byte abyte0[];
        try
        {
            i = aam2tracksettinginforeplydata.d();
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
            return null;
        }
        abyte0 = null;
        if (i != 1) goto _L2; else goto _L1
_L1:
        dataoutputstream.writeByte(aam2tracksettinginforeplydata.d());
        if (!aam2tracksettinginforeplydata.a())
        {
            break MISSING_BLOCK_LABEL_208;
        }
        dataoutputstream.writeByte(1);
_L3:
        if (aam2tracksettinginforeplydata.b())
        {
            byte0 = (byte)1;
        } else
        {
            byte0 = (byte)0;
        }
        if (aam2tracksettinginforeplydata.c())
        {
            byte1 = (byte)(byte0 | 2);
        } else
        {
            byte1 = (byte)(byte0 & -1);
        }
        if (aam2tracksettinginforeplydata.e())
        {
            byte2 = (byte)(byte1 | 4);
        } else
        {
            byte2 = (byte)(byte1 & -1);
        }
        if (aam2tracksettinginforeplydata.f())
        {
            byte3 = (byte)(byte2 | 8);
        } else
        {
            byte3 = (byte)(byte2 & -1);
        }
        if (aam2tracksettinginforeplydata.g())
        {
            byte4 = (byte)(byte3 | 0x10);
        } else
        {
            byte4 = (byte)(byte3 & -1);
        }
        if (aam2tracksettinginforeplydata.h())
        {
            byte5 = (byte)(byte4 | 0x20);
        } else
        {
            byte5 = (byte)(byte4 & -1);
        }
        if (aam2tracksettinginforeplydata.i())
        {
            byte6 = (byte)(byte5 | 0x40);
        } else
        {
            byte6 = (byte)(byte5 & -1);
        }
        if (aam2tracksettinginforeplydata.j())
        {
            byte7 = (byte)(byte6 | 0xffffff80);
        } else
        {
            byte7 = (byte)(byte6 & -1);
        }
        dataoutputstream.writeByte(byte7);
        dataoutputstream.writeByte(0);
        abyte0 = bytearrayoutputstream.toByteArray();
_L2:
        return abyte0;
        dataoutputstream.writeByte(0);
          goto _L3
    }

    public static byte[] b(AAM2TrackInfoReplyDataBase aam2trackinforeplydatabase)
    {
        AAM2TrackTitleReplyData aam2tracktitlereplydata;
        ByteArrayOutputStream bytearrayoutputstream;
        DataOutputStream dataoutputstream;
        if (!(aam2trackinforeplydatabase instanceof AAM2TrackTitleReplyData))
        {
            throw new IllegalArgumentException("param class type unmatched");
        }
        aam2tracktitlereplydata = (AAM2TrackTitleReplyData)aam2trackinforeplydatabase;
        bytearrayoutputstream = new ByteArrayOutputStream();
        dataoutputstream = new DataOutputStream(bytearrayoutputstream);
        String s;
        dataoutputstream.writeByte(aam2tracktitlereplydata.d());
        dataoutputstream.writeLong(aam2tracktitlereplydata.c());
        s = aam2tracktitlereplydata.a();
label0:
        {
            {
                if (aam2tracktitlereplydata.c() == -1L || s == null)
                {
                    break label0;
                }
                try
                {
                    String s1 = (new StringBuilder(String.valueOf(s))).append('\0').toString();
                    dataoutputstream.writeShort(s1.getBytes("utf8").length);
                    dataoutputstream.write(s1.getBytes("utf8"));
                }
                catch (IOException ioexception)
                {
                    ioexception.printStackTrace();
                    return null;
                }
            }
            return bytearrayoutputstream.toByteArray();
        }
        dataoutputstream.writeShort(0);
        dataoutputstream.writeByte(0);
        if (false)
        {
        } else
        {
            break MISSING_BLOCK_LABEL_121;
        }
    }

    public static byte[] c(AAM2TrackInfoReplyDataBase aam2trackinforeplydatabase)
    {
        AAM2TrackArtistNameReplyData aam2trackartistnamereplydata;
        ByteArrayOutputStream bytearrayoutputstream;
        DataOutputStream dataoutputstream;
        if (!(aam2trackinforeplydatabase instanceof AAM2TrackArtistNameReplyData))
        {
            throw new IllegalArgumentException("param class type unmatched");
        }
        aam2trackartistnamereplydata = (AAM2TrackArtistNameReplyData)aam2trackinforeplydatabase;
        bytearrayoutputstream = new ByteArrayOutputStream();
        dataoutputstream = new DataOutputStream(bytearrayoutputstream);
        String s;
        dataoutputstream.writeByte(aam2trackartistnamereplydata.d());
        dataoutputstream.writeLong(aam2trackartistnamereplydata.c());
        s = aam2trackartistnamereplydata.a();
label0:
        {
            {
                if (aam2trackartistnamereplydata.c() == -1L || s == null)
                {
                    break label0;
                }
                try
                {
                    String s1 = (new StringBuilder(String.valueOf(s))).append('\0').toString();
                    dataoutputstream.writeShort(s1.getBytes("utf8").length);
                    dataoutputstream.write(s1.getBytes("utf8"));
                }
                catch (IOException ioexception)
                {
                    ioexception.printStackTrace();
                    return null;
                }
            }
            return bytearrayoutputstream.toByteArray();
        }
        dataoutputstream.writeShort(0);
        dataoutputstream.writeByte(0);
        if (false)
        {
        } else
        {
            break MISSING_BLOCK_LABEL_121;
        }
    }

    public static byte[] d(AAM2TrackInfoReplyDataBase aam2trackinforeplydatabase)
    {
        AAM2TrackAlbumTitleReplyData aam2trackalbumtitlereplydata;
        ByteArrayOutputStream bytearrayoutputstream;
        DataOutputStream dataoutputstream;
        if (!(aam2trackinforeplydatabase instanceof AAM2TrackAlbumTitleReplyData))
        {
            throw new IllegalArgumentException("param class type unmatched");
        }
        aam2trackalbumtitlereplydata = (AAM2TrackAlbumTitleReplyData)aam2trackinforeplydatabase;
        bytearrayoutputstream = new ByteArrayOutputStream();
        dataoutputstream = new DataOutputStream(bytearrayoutputstream);
        String s;
        dataoutputstream.writeByte(aam2trackalbumtitlereplydata.d());
        dataoutputstream.writeLong(aam2trackalbumtitlereplydata.c());
        s = aam2trackalbumtitlereplydata.a();
label0:
        {
            {
                if (aam2trackalbumtitlereplydata.c() == -1L || s == null)
                {
                    break label0;
                }
                try
                {
                    String s1 = (new StringBuilder(String.valueOf(s))).append('\0').toString();
                    dataoutputstream.writeShort(s1.getBytes("utf8").length);
                    dataoutputstream.write(s1.getBytes("utf8"));
                }
                catch (IOException ioexception)
                {
                    ioexception.printStackTrace();
                    return null;
                }
            }
            return bytearrayoutputstream.toByteArray();
        }
        dataoutputstream.writeShort(0);
        dataoutputstream.writeByte(0);
        if (false)
        {
        } else
        {
            break MISSING_BLOCK_LABEL_121;
        }
    }

    public static byte[] e(AAM2TrackInfoReplyDataBase aam2trackinforeplydatabase)
    {
        if (!(aam2trackinforeplydatabase instanceof AAM2TrackElapsedTimeNotificationData))
        {
            throw new IllegalArgumentException("param class type unmatched");
        }
        AAM2TrackElapsedTimeNotificationData aam2trackelapsedtimenotificationdata = (AAM2TrackElapsedTimeNotificationData)aam2trackinforeplydatabase;
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        DataOutputStream dataoutputstream = new DataOutputStream(bytearrayoutputstream);
        try
        {
            dataoutputstream.writeByte(aam2trackelapsedtimenotificationdata.d());
            dataoutputstream.writeLong(aam2trackelapsedtimenotificationdata.c());
            dataoutputstream.writeShort(aam2trackelapsedtimenotificationdata.a());
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
            return null;
        }
        return bytearrayoutputstream.toByteArray();
    }
}
