// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.snapshot;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.games.internal.GamesLog;
import com.google.android.gms.internal.hl;
import com.google.android.gms.internal.hn;
import com.google.android.gms.internal.il;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.channels.FileChannel;

// Referenced classes of package com.google.android.gms.games.snapshot:
//            Snapshot, SnapshotEntityCreator, SnapshotMetadataEntity, SnapshotMetadata

public final class SnapshotEntity
    implements SafeParcelable, Snapshot
{

    public static final SnapshotEntityCreator CREATOR = new SnapshotEntityCreator();
    private static final Object Ub = new Object();
    private Contents HD;
    private final SnapshotMetadataEntity Uc;
    private final int xJ;

    SnapshotEntity(int i, SnapshotMetadata snapshotmetadata, Contents contents)
    {
        xJ = i;
        Uc = new SnapshotMetadataEntity(snapshotmetadata);
        HD = contents;
    }

    public SnapshotEntity(SnapshotMetadata snapshotmetadata, Contents contents)
    {
        this(1, snapshotmetadata, contents);
    }

    private boolean a(int i, byte abyte0[], int j, int k, boolean flag)
    {
        hn.b(HD, "Must provide a previously opened Snapshot");
        Object obj = Ub;
        obj;
        JVM INSTR monitorenter ;
        FileOutputStream fileoutputstream;
        BufferedOutputStream bufferedoutputstream;
        fileoutputstream = new FileOutputStream(HD.getParcelFileDescriptor().getFileDescriptor());
        bufferedoutputstream = new BufferedOutputStream(fileoutputstream);
        FileChannel filechannel;
        filechannel = fileoutputstream.getChannel();
        filechannel.position(i);
        bufferedoutputstream.write(abyte0, j, k);
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_86;
        }
        filechannel.truncate(abyte0.length);
        bufferedoutputstream.flush();
        obj;
        JVM INSTR monitorexit ;
        return true;
        IOException ioexception;
        ioexception;
        GamesLog.a("Snapshot", "Failed to write snapshot data", ioexception);
        obj;
        JVM INSTR monitorexit ;
        return false;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    static boolean a(Snapshot snapshot, Object obj)
    {
        boolean flag = true;
        if (!(obj instanceof Snapshot))
        {
            flag = false;
        } else
        if (snapshot != obj)
        {
            Snapshot snapshot1 = (Snapshot)obj;
            if (!hl.equal(snapshot1.getMetadata(), snapshot.getMetadata()) || !hl.equal(snapshot1.getContents(), snapshot.getContents()))
            {
                return false;
            }
        }
        return flag;
    }

    static int b(Snapshot snapshot)
    {
        Object aobj[] = new Object[2];
        aobj[0] = snapshot.getMetadata();
        aobj[1] = snapshot.getContents();
        return hl.hashCode(aobj);
    }

    static String c(Snapshot snapshot)
    {
        com.google.android.gms.internal.hl.a a1 = hl.e(snapshot).a("Metadata", snapshot.getMetadata());
        boolean flag;
        if (snapshot.getContents() != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        return a1.a("HasContents", Boolean.valueOf(flag)).toString();
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        return a(this, obj);
    }

    public Snapshot freeze()
    {
        return this;
    }

    public volatile Object freeze()
    {
        return freeze();
    }

    public Contents getContents()
    {
        return HD;
    }

    public SnapshotMetadata getMetadata()
    {
        return Uc;
    }

    public int getVersionCode()
    {
        return xJ;
    }

    public int hashCode()
    {
        return b(this);
    }

    public void iH()
    {
        HD.close();
        HD = null;
    }

    public boolean isDataValid()
    {
        return true;
    }

    public boolean modifyBytes(int i, byte abyte0[], int j, int k)
    {
        return a(i, abyte0, j, abyte0.length, false);
    }

    public byte[] readFully()
    {
        hn.b(HD, "Must provide a previously opened Snapshot");
        Object obj = Ub;
        obj;
        JVM INSTR monitorenter ;
        FileInputStream fileinputstream;
        BufferedInputStream bufferedinputstream;
        fileinputstream = new FileInputStream(HD.getParcelFileDescriptor().getFileDescriptor());
        bufferedinputstream = new BufferedInputStream(fileinputstream);
        fileinputstream.getChannel().position(0L);
_L1:
        byte abyte0[] = il.a(bufferedinputstream, false);
        return abyte0;
        IOException ioexception;
        ioexception;
        GamesLog.a("Snapshot", "Failed to read snapshot data", ioexception);
          goto _L1
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public String toString()
    {
        return c(this);
    }

    public boolean writeBytes(byte abyte0[])
    {
        return a(0, abyte0, 0, abyte0.length, true);
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        SnapshotEntityCreator.a(this, parcel, i);
    }

}
