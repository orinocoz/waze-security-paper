// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.phone;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.telephony.SmsMessage;
import android.util.Log;
import com.waze.NativeManager;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class SmsReceiver extends BroadcastReceiver
{

    static SmsReceiver mInstace = null;

    public SmsReceiver()
    {
    }

    public static void Register(Context context)
    {
        if (mInstace == null)
        {
            IntentFilter intentfilter = new IntentFilter();
            intentfilter.addAction("android.provider.Telephony.SMS_RECEIVED");
            intentfilter.addCategory("android.intent.category.DEFAULT");
            mInstace = new SmsReceiver();
            context.registerReceiver(mInstace, intentfilter);
        }
    }

    public static void UnRegister(Context context)
    {
        if (mInstace != null)
        {
            context.unregisterReceiver(mInstace);
            mInstace = null;
        }
    }

    public void onReceive(Context context, Intent intent)
    {
        Object aobj[] = (Object[])intent.getExtras().get("pdus");
        int i = aobj.length;
        int j = 0;
        do
        {
            if (j >= i)
            {
                return;
            }
            SmsMessage smsmessage = SmsMessage.createFromPdu((byte[])aobj[j]);
            Log.d("WAZE", "SMS message");
            smsmessage.getOriginatingAddress();
            String s = smsmessage.getMessageBody();
            if (s != null && s.toUpperCase().contains("(WAZEAPP)"))
            {
                NativeManager.getInstance().SignUplogAnalytics("READ_SMS", "VAUE", "0", true);
                Matcher matcher = Pattern.compile("\\w+([0-9]+)\\w+([0-9]+)").matcher(s);
                matcher.find();
                int k = matcher.groupCount();
                String s1 = null;
                if (k > 0)
                {
                    s1 = matcher.group();
                }
                if (s1 != null)
                {
                    NativeManager.getInstance().AuthPin(s);
                    abortBroadcast();
                }
            }
            j++;
        } while (true);
    }

}
