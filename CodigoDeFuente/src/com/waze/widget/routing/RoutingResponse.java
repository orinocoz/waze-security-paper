// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.widget.routing;

import com.waze.widget.WazeAppWidgetLog;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.waze.widget.routing:
//            RoutingRequest

public class RoutingResponse
{

    private int mAverageTime;
    private JSONObject mJson;
    private int mMax;
    private int mMin;
    private JSONArray mValuesArray;

    public RoutingResponse(String s)
        throws JSONException
    {
        int i = 0;
        int j;
        int k;
        String s1;
        try
        {
            mMin = 0x7fffffff;
            mMax = 0;
            mAverageTime = 0;
            mJson = new JSONObject(s);
            mValuesArray = mJson.getJSONArray("response");
        }
        catch (JSONException jsonexception)
        {
            WazeAppWidgetLog.e((new StringBuilder("JSONException parsing routing result [")).append(s).append("]").append(jsonexception.getMessage()).toString());
            throw jsonexception;
        }
        j = 0;
        k = mValuesArray.length();
        if (j >= k)
        {
            mAverageTime = i / mValuesArray.length();
            return;
        }
        s1 = mValuesArray.getString(j);
        i += Integer.parseInt(s1);
        if (Integer.parseInt(s1) < mMin)
        {
            mMin = Integer.parseInt(s1);
        }
        if (Integer.parseInt(s1) > mMax)
        {
            mMax = Integer.parseInt(s1);
        }
        j++;
        if (false)
        {
        } else
        {
            break MISSING_BLOCK_LABEL_50;
        }
    }

    public int getAveragetTime()
    {
        return mAverageTime;
    }

    public double[] getList()
    {
        if (mValuesArray != null)
        {
            double ad[] = new double[mValuesArray.length()];
            int i = 0;
            do
            {
                if (i >= mValuesArray.length())
                {
                    return ad;
                }
                try
                {
                    ad[i] = Double.parseDouble(mValuesArray.getString(i)) / 60D;
                }
                catch (JSONException jsonexception) { }
                i++;
            } while (true);
        } else
        {
            return null;
        }
    }

    public int getMaxValue()
    {
        return mMax;
    }

    public int getMinValue()
    {
        return mMin;
    }

    public int getNumResults()
    {
        return mValuesArray.length();
    }

    public int getTime()
    {
        if (mValuesArray == null)
        {
            return 0;
        }
        int i;
        try
        {
            i = Integer.parseInt(mValuesArray.getString(RoutingRequest.getNowLocation()));
        }
        catch (JSONException jsonexception)
        {
            return 0;
        }
        return i;
    }

    public String toString()
    {
        if (mJson != null)
        {
            return mJson.toString();
        } else
        {
            return null;
        }
    }
}
