// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaStatus;
import com.google.android.gms.cast.TextTrackStyle;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            gh, gj, gs, go, 
//            gr

public class gp extends gh
{
    private class a
        implements Runnable
    {

        final gp CF;

        public void run()
        {
            boolean flag;
            flag = false;
            gp.a(CF, false);
            long l = SystemClock.elapsedRealtime();
            for (Iterator iterator = gp.a(CF).iterator(); iterator.hasNext(); ((gs)iterator.next()).d(l, 3)) { }
            Object obj = gs.CK;
            obj;
            JVM INSTR monitorenter ;
_L2:
            boolean flag1;
            for (Iterator iterator1 = gp.a(CF).iterator(); iterator1.hasNext();)
            {
                Exception exception;
                if (((gs)iterator1.next()).eq())
                {
                    flag1 = true;
                } else
                {
                    flag1 = flag;
                }
                break MISSING_BLOCK_LABEL_135;
            }

            obj;
            JVM INSTR monitorexit ;
            gp.b(CF, flag);
            return;
            exception;
            obj;
            JVM INSTR monitorexit ;
            throw exception;
            flag = flag1;
            if (true) goto _L2; else goto _L1
_L1:
        }

        private a()
        {
            CF = gp.this;
            super();
        }

    }


    private static final long Cm;
    private static final long Cn;
    private static final long Co;
    private static final long Cp;
    private static final String NAMESPACE = gj.al("com.google.cast.media");
    private final gs CA;
    private final gs CB;
    private final List CC;
    private final Runnable CD;
    private boolean CE;
    private long Cq;
    private MediaStatus Cr;
    private final gs Cs;
    private final gs Ct;
    private final gs Cu;
    private final gs Cv;
    private final gs Cw;
    private final gs Cx;
    private final gs Cy;
    private final gs Cz;
    private final Handler mHandler;

    public gp()
    {
        this(null);
    }

    public gp(String s)
    {
        super(NAMESPACE, "MediaControlChannel", s);
        mHandler = new Handler(Looper.getMainLooper());
        CD = new a();
        CC = new ArrayList();
        Cs = new gs(Cn);
        CC.add(Cs);
        Ct = new gs(Cm);
        CC.add(Ct);
        Cu = new gs(Cm);
        CC.add(Cu);
        Cv = new gs(Cm);
        CC.add(Cv);
        Cw = new gs(Co);
        CC.add(Cw);
        Cx = new gs(Cm);
        CC.add(Cx);
        Cy = new gs(Cm);
        CC.add(Cy);
        Cz = new gs(Cm);
        CC.add(Cz);
        CA = new gs(Cm);
        CC.add(CA);
        CB = new gs(Cm);
        CC.add(CB);
        eo();
    }

    static List a(gp gp1)
    {
        return gp1.CC;
    }

    private void a(long l, JSONObject jsonobject)
        throws JSONException
    {
        boolean flag = true;
        boolean flag1 = Cs.p(l);
        boolean flag2;
        int i;
        int j;
        if (Cw.eq() && !Cw.p(l))
        {
            flag2 = flag;
        } else
        {
            flag2 = false;
        }
        if ((!Cx.eq() || Cx.p(l)) && (!Cy.eq() || Cy.p(l)))
        {
            flag = false;
        }
        if (flag2)
        {
            i = 2;
        } else
        {
            i = 0;
        }
        if (flag)
        {
            i |= 1;
        }
        if (flag1 || Cr == null)
        {
            Cr = new MediaStatus(jsonobject);
            Cq = SystemClock.elapsedRealtime();
            j = 7;
        } else
        {
            j = Cr.a(jsonobject, i);
        }
        if ((j & 1) != 0)
        {
            Cq = SystemClock.elapsedRealtime();
            onStatusUpdated();
        }
        if ((j & 2) != 0)
        {
            Cq = SystemClock.elapsedRealtime();
            onStatusUpdated();
        }
        if ((j & 4) != 0)
        {
            onMetadataUpdated();
        }
        for (Iterator iterator = CC.iterator(); iterator.hasNext(); ((gs)iterator.next()).c(l, 0)) { }
    }

    static boolean a(gp gp1, boolean flag)
    {
        gp1.CE = flag;
        return flag;
    }

    static void b(gp gp1, boolean flag)
    {
        gp1.z(flag);
    }

    private void eo()
    {
        z(false);
        Cq = 0L;
        Cr = null;
        Cs.clear();
        Cw.clear();
        Cx.clear();
    }

    private void z(boolean flag)
    {
label0:
        {
            if (CE != flag)
            {
                CE = flag;
                if (!flag)
                {
                    break label0;
                }
                mHandler.postDelayed(CD, Cp);
            }
            return;
        }
        mHandler.removeCallbacks(CD);
    }

    public long a(gr gr)
        throws IOException
    {
        JSONObject jsonobject = new JSONObject();
        long l = dY();
        Cz.a(l, gr);
        z(true);
        try
        {
            jsonobject.put("requestId", l);
            jsonobject.put("type", "GET_STATUS");
            if (Cr != null)
            {
                jsonobject.put("mediaSessionId", Cr.dV());
            }
        }
        catch (JSONException jsonexception) { }
        a(jsonobject.toString(), l, null);
        return l;
    }

    public long a(gr gr, double d, JSONObject jsonobject)
        throws IOException, IllegalStateException, IllegalArgumentException
    {
        JSONObject jsonobject1;
        long l;
        if (Double.isInfinite(d) || Double.isNaN(d))
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Volume cannot be ").append(d).toString());
        }
        jsonobject1 = new JSONObject();
        l = dY();
        Cx.a(l, gr);
        z(true);
        jsonobject1.put("requestId", l);
        jsonobject1.put("type", "SET_VOLUME");
        jsonobject1.put("mediaSessionId", dV());
        JSONObject jsonobject2 = new JSONObject();
        jsonobject2.put("level", d);
        jsonobject1.put("volume", jsonobject2);
        if (jsonobject != null)
        {
            try
            {
                jsonobject1.put("customData", jsonobject);
            }
            catch (JSONException jsonexception) { }
        }
        a(jsonobject1.toString(), l, null);
        return l;
    }

    public long a(gr gr, long l, int i, JSONObject jsonobject)
        throws IOException, IllegalStateException
    {
        JSONObject jsonobject1;
        long l1;
        jsonobject1 = new JSONObject();
        l1 = dY();
        Cw.a(l1, gr);
        z(true);
        jsonobject1.put("requestId", l1);
        jsonobject1.put("type", "SEEK");
        jsonobject1.put("mediaSessionId", dV());
        jsonobject1.put("currentTime", gj.o(l));
        if (i != 1) goto _L2; else goto _L1
_L1:
        jsonobject1.put("resumeState", "PLAYBACK_START");
_L4:
        if (jsonobject != null)
        {
            try
            {
                jsonobject1.put("customData", jsonobject);
            }
            catch (JSONException jsonexception) { }
        }
        a(jsonobject1.toString(), l1, null);
        return l1;
_L2:
        if (i != 2) goto _L4; else goto _L3
_L3:
        jsonobject1.put("resumeState", "PLAYBACK_PAUSE");
          goto _L4
    }

    public long a(gr gr, MediaInfo mediainfo, boolean flag, long l, JSONObject jsonobject)
        throws IOException
    {
        JSONObject jsonobject1;
        long l1;
        jsonobject1 = new JSONObject();
        l1 = dY();
        Cs.a(l1, gr);
        z(true);
        jsonobject1.put("requestId", l1);
        jsonobject1.put("type", "LOAD");
        jsonobject1.put("media", mediainfo.dU());
        jsonobject1.put("autoplay", flag);
        jsonobject1.put("currentTime", gj.o(l));
        if (jsonobject != null)
        {
            try
            {
                jsonobject1.put("customData", jsonobject);
            }
            catch (JSONException jsonexception) { }
        }
        a(jsonobject1.toString(), l1, null);
        return l1;
    }

    public long a(gr gr, TextTrackStyle texttrackstyle)
        throws IOException
    {
        JSONObject jsonobject;
        long l;
        jsonobject = new JSONObject();
        l = dY();
        CB.a(l, gr);
        z(true);
        jsonobject.put("requestId", l);
        jsonobject.put("type", "EDIT_TRACKS_INFO");
        if (texttrackstyle == null)
        {
            break MISSING_BLOCK_LABEL_64;
        }
        jsonobject.put("textTrackStyle", texttrackstyle.dU());
        jsonobject.put("mediaSessionId", dV());
_L2:
        a(jsonobject.toString(), l, null);
        return l;
        JSONException jsonexception;
        jsonexception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public long a(gr gr, JSONObject jsonobject)
        throws IOException
    {
        JSONObject jsonobject1;
        long l;
        jsonobject1 = new JSONObject();
        l = dY();
        Ct.a(l, gr);
        z(true);
        jsonobject1.put("requestId", l);
        jsonobject1.put("type", "PAUSE");
        jsonobject1.put("mediaSessionId", dV());
        if (jsonobject != null)
        {
            try
            {
                jsonobject1.put("customData", jsonobject);
            }
            catch (JSONException jsonexception) { }
        }
        a(jsonobject1.toString(), l, null);
        return l;
    }

    public long a(gr gr, boolean flag, JSONObject jsonobject)
        throws IOException, IllegalStateException
    {
        JSONObject jsonobject1;
        long l;
        jsonobject1 = new JSONObject();
        l = dY();
        Cy.a(l, gr);
        z(true);
        jsonobject1.put("requestId", l);
        jsonobject1.put("type", "SET_VOLUME");
        jsonobject1.put("mediaSessionId", dV());
        JSONObject jsonobject2 = new JSONObject();
        jsonobject2.put("muted", flag);
        jsonobject1.put("volume", jsonobject2);
        if (jsonobject != null)
        {
            try
            {
                jsonobject1.put("customData", jsonobject);
            }
            catch (JSONException jsonexception) { }
        }
        a(jsonobject1.toString(), l, null);
        return l;
    }

    public long a(gr gr, long al[])
        throws IOException
    {
        JSONObject jsonobject;
        long l;
        jsonobject = new JSONObject();
        l = dY();
        CA.a(l, gr);
        z(true);
        JSONArray jsonarray;
        jsonobject.put("requestId", l);
        jsonobject.put("type", "EDIT_TRACKS_INFO");
        jsonobject.put("mediaSessionId", dV());
        jsonarray = new JSONArray();
        int i = 0;
_L2:
        if (i >= al.length)
        {
            break; /* Loop/switch isn't completed */
        }
        jsonarray.put(i, al[i]);
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        try
        {
            jsonobject.put("activeTrackIds", jsonarray);
        }
        catch (JSONException jsonexception) { }
        a(jsonobject.toString(), l, null);
        return l;
    }

    public void a(long l, int i)
    {
        for (Iterator iterator = CC.iterator(); iterator.hasNext(); ((gs)iterator.next()).c(l, i)) { }
    }

    public final void ai(String s)
    {
        BA.b("message received: %s", new Object[] {
            s
        });
        JSONObject jsonobject;
        String s1;
        long l;
        jsonobject = new JSONObject(s);
        s1 = jsonobject.getString("type");
        l = jsonobject.optLong("requestId", -1L);
        if (!s1.equals("MEDIA_STATUS"))
        {
            break MISSING_BLOCK_LABEL_149;
        }
        JSONArray jsonarray = jsonobject.getJSONArray("status");
        if (jsonarray.length() > 0)
        {
            a(l, jsonarray.getJSONObject(0));
            return;
        }
        try
        {
            Cr = null;
            onStatusUpdated();
            onMetadataUpdated();
            Cz.c(l, 0);
            return;
        }
        catch (JSONException jsonexception)
        {
            go go1 = BA;
            Object aobj[] = new Object[2];
            aobj[0] = jsonexception.getMessage();
            aobj[1] = s;
            go1.d("Message is malformed (%s); ignoring: %s", aobj);
            return;
        }
        if (s1.equals("INVALID_PLAYER_STATE"))
        {
            BA.d("received unexpected error: Invalid Player State.", new Object[0]);
            JSONObject jsonobject4 = jsonobject.optJSONObject("customData");
            for (Iterator iterator1 = CC.iterator(); iterator1.hasNext(); ((gs)iterator1.next()).b(l, 1, jsonobject4)) { }
            break MISSING_BLOCK_LABEL_371;
        }
        if (s1.equals("LOAD_FAILED"))
        {
            JSONObject jsonobject3 = jsonobject.optJSONObject("customData");
            Cs.b(l, 1, jsonobject3);
            return;
        }
        if (s1.equals("LOAD_CANCELLED"))
        {
            JSONObject jsonobject2 = jsonobject.optJSONObject("customData");
            Cs.b(l, 2, jsonobject2);
            return;
        }
        if (s1.equals("INVALID_REQUEST"))
        {
            BA.d("received unexpected error: Invalid Request.", new Object[0]);
            JSONObject jsonobject1 = jsonobject.optJSONObject("customData");
            for (Iterator iterator = CC.iterator(); iterator.hasNext(); ((gs)iterator.next()).b(l, 1, jsonobject1)) { }
        }
    }

    public long b(gr gr, JSONObject jsonobject)
        throws IOException
    {
        JSONObject jsonobject1;
        long l;
        jsonobject1 = new JSONObject();
        l = dY();
        Cv.a(l, gr);
        z(true);
        jsonobject1.put("requestId", l);
        jsonobject1.put("type", "STOP");
        jsonobject1.put("mediaSessionId", dV());
        if (jsonobject != null)
        {
            try
            {
                jsonobject1.put("customData", jsonobject);
            }
            catch (JSONException jsonexception) { }
        }
        a(jsonobject1.toString(), l, null);
        return l;
    }

    public long c(gr gr, JSONObject jsonobject)
        throws IOException, IllegalStateException
    {
        JSONObject jsonobject1;
        long l;
        jsonobject1 = new JSONObject();
        l = dY();
        Cu.a(l, gr);
        z(true);
        jsonobject1.put("requestId", l);
        jsonobject1.put("type", "PLAY");
        jsonobject1.put("mediaSessionId", dV());
        if (jsonobject != null)
        {
            try
            {
                jsonobject1.put("customData", jsonobject);
            }
            catch (JSONException jsonexception) { }
        }
        a(jsonobject1.toString(), l, null);
        return l;
    }

    public long dV()
        throws IllegalStateException
    {
        if (Cr == null)
        {
            throw new IllegalStateException("No current media session");
        } else
        {
            return Cr.dV();
        }
    }

    public void dZ()
    {
        eo();
    }

    public long getApproximateStreamPosition()
    {
        MediaInfo mediainfo;
        for (mediainfo = getMediaInfo(); mediainfo == null || Cq == 0L;)
        {
            return 0L;
        }

        double d = Cr.getPlaybackRate();
        long l = Cr.getStreamPosition();
        int i = Cr.getPlayerState();
        if (d == 0.0D || i != 2)
        {
            return l;
        }
        long l1 = SystemClock.elapsedRealtime() - Cq;
        long l2;
        long l3;
        long l4;
        if (l1 < 0L)
        {
            l2 = 0L;
        } else
        {
            l2 = l1;
        }
        if (l2 == 0L)
        {
            return l;
        }
        l3 = mediainfo.getStreamDuration();
        l4 = l + (long)(d * (double)l2);
        if (l4 <= l3)
        {
            if (l4 < 0L)
            {
                l3 = 0L;
            } else
            {
                l3 = l4;
            }
        }
        return l3;
    }

    public MediaInfo getMediaInfo()
    {
        if (Cr == null)
        {
            return null;
        } else
        {
            return Cr.getMediaInfo();
        }
    }

    public MediaStatus getMediaStatus()
    {
        return Cr;
    }

    public long getStreamDuration()
    {
        MediaInfo mediainfo = getMediaInfo();
        if (mediainfo != null)
        {
            return mediainfo.getStreamDuration();
        } else
        {
            return 0L;
        }
    }

    protected void onMetadataUpdated()
    {
    }

    protected void onStatusUpdated()
    {
    }

    static 
    {
        Cm = TimeUnit.HOURS.toMillis(24L);
        Cn = TimeUnit.HOURS.toMillis(24L);
        Co = TimeUnit.HOURS.toMillis(24L);
        Cp = TimeUnit.SECONDS.toMillis(1L);
    }
}
