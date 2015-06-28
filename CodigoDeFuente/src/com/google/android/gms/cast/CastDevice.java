// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.cast;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.gj;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.google.android.gms.cast:
//            b

public class CastDevice
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new b();
    private String Ae;
    String Af;
    private Inet4Address Ag;
    private String Ah;
    private String Ai;
    private String Aj;
    private int Ak;
    private List Al;
    private int Am;
    private final int xJ;

    private CastDevice()
    {
        this(2, null, null, null, null, null, -1, ((List) (new ArrayList())), 0);
    }

    CastDevice(int i, String s, String s1, String s2, String s3, String s4, int j, 
            List list, int k)
    {
        xJ = i;
        Ae = s;
        Af = s1;
        if (Af != null)
        {
            try
            {
                InetAddress inetaddress = InetAddress.getByName(Af);
                if (inetaddress instanceof Inet4Address)
                {
                    Ag = (Inet4Address)inetaddress;
                }
            }
            catch (UnknownHostException unknownhostexception)
            {
                Ag = null;
            }
        }
        Ah = s2;
        Ai = s3;
        Aj = s4;
        Ak = j;
        Al = list;
        Am = k;
    }

    public static CastDevice getFromBundle(Bundle bundle)
    {
        if (bundle == null)
        {
            return null;
        } else
        {
            bundle.setClassLoader(com/google/android/gms/cast/CastDevice.getClassLoader());
            return (CastDevice)bundle.getParcelable("com.google.android.gms.cast.EXTRA_CAST_DEVICE");
        }
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        if (obj != this) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        CastDevice castdevice;
        if (!(obj instanceof CastDevice))
        {
            return false;
        }
        castdevice = (CastDevice)obj;
        if (getDeviceId() != null)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (castdevice.getDeviceId() == null) goto _L1; else goto _L3
_L3:
        return false;
        if (gj.a(Ae, castdevice.Ae) && gj.a(Ag, castdevice.Ag) && gj.a(Ai, castdevice.Ai) && gj.a(Ah, castdevice.Ah) && gj.a(Aj, castdevice.Aj) && Ak == castdevice.Ak && gj.a(Al, castdevice.Al) && Am == castdevice.Am) goto _L1; else goto _L4
_L4:
        return false;
    }

    public int getCapabilities()
    {
        return Am;
    }

    public String getDeviceId()
    {
        return Ae;
    }

    public String getDeviceVersion()
    {
        return Aj;
    }

    public String getFriendlyName()
    {
        return Ah;
    }

    public WebImage getIcon(int i, int j)
    {
        WebImage webimage;
        Iterator iterator;
        WebImage webimage1;
        webimage = null;
        if (Al.isEmpty())
        {
            return null;
        }
        if (i <= 0 || j <= 0)
        {
            return (WebImage)Al.get(0);
        }
        iterator = Al.iterator();
        webimage1 = null;
_L2:
        WebImage webimage2;
        WebImage webimage3;
        if (!iterator.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        webimage2 = (WebImage)iterator.next();
        int k = webimage2.getWidth();
        int l = webimage2.getHeight();
        if (k >= i && l >= j)
        {
            if (webimage1 != null && (webimage1.getWidth() <= k || webimage1.getHeight() <= l))
            {
                break MISSING_BLOCK_LABEL_223;
            }
            WebImage webimage4 = webimage;
            webimage3 = webimage2;
            webimage2 = webimage4;
        } else
        {
            if (k >= i || l >= j || webimage != null && (webimage.getWidth() >= k || webimage.getHeight() >= l))
            {
                break MISSING_BLOCK_LABEL_223;
            }
            webimage3 = webimage1;
        }
_L3:
        webimage1 = webimage3;
        webimage = webimage2;
        if (true) goto _L2; else goto _L1
_L1:
        if (webimage1 == null)
        {
            if (webimage != null)
            {
                webimage1 = webimage;
            } else
            {
                webimage1 = (WebImage)Al.get(0);
            }
        }
        return webimage1;
        webimage2 = webimage;
        webimage3 = webimage1;
          goto _L3
    }

    public List getIcons()
    {
        return Collections.unmodifiableList(Al);
    }

    public Inet4Address getIpAddress()
    {
        return Ag;
    }

    public String getModelName()
    {
        return Ai;
    }

    public int getServicePort()
    {
        return Ak;
    }

    int getVersionCode()
    {
        return xJ;
    }

    public boolean hasIcons()
    {
        return !Al.isEmpty();
    }

    public int hashCode()
    {
        if (Ae == null)
        {
            return 0;
        } else
        {
            return Ae.hashCode();
        }
    }

    public boolean isSameDevice(CastDevice castdevice)
    {
        if (castdevice != null)
        {
            if (getDeviceId() == null)
            {
                if (castdevice.getDeviceId() == null)
                {
                    return true;
                }
            } else
            {
                return gj.a(getDeviceId(), castdevice.getDeviceId());
            }
        }
        return false;
    }

    public void putInBundle(Bundle bundle)
    {
        if (bundle == null)
        {
            return;
        } else
        {
            bundle.putParcelable("com.google.android.gms.cast.EXTRA_CAST_DEVICE", this);
            return;
        }
    }

    public String toString()
    {
        Object aobj[] = new Object[2];
        aobj[0] = Ah;
        aobj[1] = Ae;
        return String.format("\"%s\" (%s)", aobj);
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        b.a(this, parcel, i);
    }

}
