// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.cast;

import android.text.TextUtils;
import com.google.android.gms.internal.gj;
import com.google.android.gms.internal.hl;
import com.google.android.gms.internal.io;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.cast:
//            MediaMetadata, MediaTrack, TextTrackStyle

public final class MediaInfo
{
    public static class Builder
    {

        private final MediaInfo Ay;

        public MediaInfo build()
            throws IllegalArgumentException
        {
            Ay.dT();
            return Ay;
        }

        public Builder setContentType(String s)
            throws IllegalArgumentException
        {
            Ay.setContentType(s);
            return this;
        }

        public Builder setCustomData(JSONObject jsonobject)
        {
            Ay.setCustomData(jsonobject);
            return this;
        }

        public Builder setMediaTracks(List list)
        {
            Ay.b(list);
            return this;
        }

        public Builder setMetadata(MediaMetadata mediametadata)
        {
            Ay.a(mediametadata);
            return this;
        }

        public Builder setStreamDuration(long l)
            throws IllegalArgumentException
        {
            Ay.m(l);
            return this;
        }

        public Builder setStreamType(int i)
            throws IllegalArgumentException
        {
            Ay.setStreamType(i);
            return this;
        }

        public Builder setTextTrackStyle(TextTrackStyle texttrackstyle)
        {
            Ay.setTextTrackStyle(texttrackstyle);
            return this;
        }

        public Builder(String s)
            throws IllegalArgumentException
        {
            if (TextUtils.isEmpty(s))
            {
                throw new IllegalArgumentException("Content ID cannot be empty");
            } else
            {
                Ay = new MediaInfo(s);
                return;
            }
        }
    }


    public static final int STREAM_TYPE_BUFFERED = 1;
    public static final int STREAM_TYPE_INVALID = -1;
    public static final int STREAM_TYPE_LIVE = 2;
    public static final int STREAM_TYPE_NONE;
    private final String Aq;
    private int Ar;
    private String As;
    private MediaMetadata At;
    private long Au;
    private List Av;
    private TextTrackStyle Aw;
    private JSONObject Ax;

    MediaInfo(String s)
        throws IllegalArgumentException
    {
        if (TextUtils.isEmpty(s))
        {
            throw new IllegalArgumentException("content ID cannot be null or empty");
        } else
        {
            Aq = s;
            Ar = -1;
            return;
        }
    }

    MediaInfo(JSONObject jsonobject)
        throws JSONException
    {
        int i = 0;
        super();
        Aq = jsonobject.getString("contentId");
        String s = jsonobject.getString("streamType");
        if ("NONE".equals(s))
        {
            Ar = 0;
        } else
        if ("BUFFERED".equals(s))
        {
            Ar = 1;
        } else
        if ("LIVE".equals(s))
        {
            Ar = 2;
        } else
        {
            Ar = -1;
        }
        As = jsonobject.getString("contentType");
        if (jsonobject.has("metadata"))
        {
            JSONObject jsonobject2 = jsonobject.getJSONObject("metadata");
            At = new MediaMetadata(jsonobject2.getInt("metadataType"));
            At.b(jsonobject2);
        }
        Au = gj.b(jsonobject.optDouble("duration", 0.0D));
        if (jsonobject.has("tracks"))
        {
            Av = new ArrayList();
            for (JSONArray jsonarray = jsonobject.getJSONArray("tracks"); i < jsonarray.length(); i++)
            {
                MediaTrack mediatrack = new MediaTrack(jsonarray.getJSONObject(i));
                Av.add(mediatrack);
            }

        } else
        {
            Av = null;
        }
        if (jsonobject.has("textTrackStyle"))
        {
            JSONObject jsonobject1 = jsonobject.getJSONObject("textTrackStyle");
            TextTrackStyle texttrackstyle = new TextTrackStyle();
            texttrackstyle.b(jsonobject1);
            Aw = texttrackstyle;
        } else
        {
            Aw = null;
        }
        Ax = jsonobject.optJSONObject("customData");
    }

    void a(MediaMetadata mediametadata)
    {
        At = mediametadata;
    }

    void b(List list)
    {
        Av = list;
    }

    void dT()
        throws IllegalArgumentException
    {
        if (TextUtils.isEmpty(Aq))
        {
            throw new IllegalArgumentException("content ID cannot be null or empty");
        }
        if (TextUtils.isEmpty(As))
        {
            throw new IllegalArgumentException("content type cannot be null or empty");
        }
        if (Ar == -1)
        {
            throw new IllegalArgumentException("a valid stream type must be specified");
        } else
        {
            return;
        }
    }

    public JSONObject dU()
    {
        JSONObject jsonobject = new JSONObject();
        jsonobject.put("contentId", Aq);
        Ar;
        JVM INSTR tableswitch 1 2: default 215
    //                   1 225
    //                   2 232;
           goto _L1 _L2 _L3
_L3:
        break MISSING_BLOCK_LABEL_232;
_L8:
        String s;
        jsonobject.put("streamType", s);
        if (As != null)
        {
            jsonobject.put("contentType", As);
        }
        if (At != null)
        {
            jsonobject.put("metadata", At.dU());
        }
        jsonobject.put("duration", gj.o(Au));
        if (Av == null) goto _L5; else goto _L4
_L4:
        JSONArray jsonarray;
        jsonarray = new JSONArray();
        for (Iterator iterator = Av.iterator(); iterator.hasNext(); jsonarray.put(((MediaTrack)iterator.next()).dU())) { }
        jsonobject.put("tracks", jsonarray);
_L5:
        if (Aw != null)
        {
            jsonobject.put("textTrackStyle", Aw.dU());
        }
        if (Ax == null) goto _L7; else goto _L6
_L6:
        jsonobject.put("customData", Ax);
        return jsonobject;
_L1:
        s = "NONE";
          goto _L8
        JSONException jsonexception;
        jsonexception;
_L7:
        return jsonobject;
_L2:
        s = "BUFFERED";
          goto _L8
        s = "LIVE";
          goto _L8
    }

    public boolean equals(Object obj)
    {
        boolean flag = true;
        if (this != obj) goto _L2; else goto _L1
_L1:
        boolean flag2 = flag;
_L4:
        return flag2;
_L2:
        boolean flag1;
        flag1 = obj instanceof MediaInfo;
        flag2 = false;
        if (!flag1) goto _L4; else goto _L3
_L3:
        MediaInfo mediainfo = (MediaInfo)obj;
        boolean flag3;
        boolean flag4;
        boolean flag5;
        if (Ax == null)
        {
            flag3 = flag;
        } else
        {
            flag3 = false;
        }
        if (mediainfo.Ax == null)
        {
            flag4 = flag;
        } else
        {
            flag4 = false;
        }
        flag2 = false;
        if (flag3 != flag4) goto _L4; else goto _L5
_L5:
        if (Ax == null || mediainfo.Ax == null)
        {
            break; /* Loop/switch isn't completed */
        }
        flag5 = io.d(Ax, mediainfo.Ax);
        flag2 = false;
        if (!flag5) goto _L4; else goto _L6
_L6:
        if (!gj.a(Aq, mediainfo.Aq) || Ar != mediainfo.Ar || !gj.a(As, mediainfo.As) || !gj.a(At, mediainfo.At) || Au != mediainfo.Au)
        {
            flag = false;
        }
        return flag;
    }

    public String getContentId()
    {
        return Aq;
    }

    public String getContentType()
    {
        return As;
    }

    public JSONObject getCustomData()
    {
        return Ax;
    }

    public List getMediaTracks()
    {
        return Av;
    }

    public MediaMetadata getMetadata()
    {
        return At;
    }

    public long getStreamDuration()
    {
        return Au;
    }

    public int getStreamType()
    {
        return Ar;
    }

    public TextTrackStyle getTextTrackStyle()
    {
        return Aw;
    }

    public int hashCode()
    {
        Object aobj[] = new Object[6];
        aobj[0] = Aq;
        aobj[1] = Integer.valueOf(Ar);
        aobj[2] = As;
        aobj[3] = At;
        aobj[4] = Long.valueOf(Au);
        aobj[5] = String.valueOf(Ax);
        return hl.hashCode(aobj);
    }

    void m(long l)
        throws IllegalArgumentException
    {
        if (l < 0L)
        {
            throw new IllegalArgumentException("Stream duration cannot be negative");
        } else
        {
            Au = l;
            return;
        }
    }

    void setContentType(String s)
        throws IllegalArgumentException
    {
        if (TextUtils.isEmpty(s))
        {
            throw new IllegalArgumentException("content type cannot be null or empty");
        } else
        {
            As = s;
            return;
        }
    }

    void setCustomData(JSONObject jsonobject)
    {
        Ax = jsonobject;
    }

    void setStreamType(int i)
        throws IllegalArgumentException
    {
        if (i < -1 || i > 2)
        {
            throw new IllegalArgumentException("invalid stream type");
        } else
        {
            Ar = i;
            return;
        }
    }

    public void setTextTrackStyle(TextTrackStyle texttrackstyle)
    {
        Aw = texttrackstyle;
    }
}
