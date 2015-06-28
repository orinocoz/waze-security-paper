// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import com.waze.AppService;
import com.waze.NativeManager;
import com.waze.main.navigate.LocationData;
import com.waze.navigate.AddressItem;
import com.waze.navigate.social.ShareDriveActivity;
import com.waze.strings.DisplayStrings;

// Referenced classes of package com.waze.share:
//            ShareUtility

class val.Url
    implements com.waze.navigate.nager.LocationDataListener
{

    private final String val$Url;
    private final AddressItem val$addressItem;
    private final areType val$type;

    public void onComplete(LocationData locationdata)
    {
        ShareUtility.access$2(locationdata);
        String s = ShareUtility.access$5().getLanguageString(DisplayStrings.DS_ETA);
        if (ShareUtility.access$3() != null)
        {
            if (val$type != areType.ShareType_PickUp && val$type != areType.ShareType_ShareDrive)
            {
                if (ShareUtility.access$4() == 1)
                {
                    ShareUtility.access$7(ShareUtility.access$5().getLanguageString(DisplayStrings.DS_HEADED_TO));
                } else
                if (ShareUtility.access$4() == 2)
                {
                    ShareUtility.access$7(ShareUtility.access$5().getLanguageString(DisplayStrings.DS_ISM_AT));
                } else
                if (ShareUtility.access$4() == 3)
                {
                    ShareUtility.access$7(ShareUtility.access$5().getLanguageString(DisplayStrings.DS_HERESS_THE_PLACEC));
                }
                if (ShareUtility.access$4() == 1)
                {
                    ShareUtility.access$7((new StringBuilder(String.valueOf(ShareUtility.access$8()))).append(" ").append(ShareUtility.access$3().destinationName).append(". ").append(s).append(": ").append(ShareUtility.access$3().locationEta).toString());
                } else
                if (ShareUtility.access$4() == 2)
                {
                    ShareUtility.access$7((new StringBuilder(String.valueOf(ShareUtility.access$8()))).append(" ").append(ShareUtility.access$3().locationName).toString());
                } else
                if (ShareUtility.access$4() == 3 && val$addressItem != null)
                {
                    ShareUtility.access$7((new StringBuilder(String.valueOf(ShareUtility.access$8()))).append(" ").append(ShareUtility.access$6()).toString());
                }
                if (ShareUtility.access$4() == 2)
                {
                    ShareUtility.access$7((new StringBuilder(String.valueOf(ShareUtility.access$8()))).append(" ").append(ShareUtility.access$5().getLanguageString(DisplayStrings.DS_ALREADY_HAVE_WAZEQ_TAP)).append(" ").append(ShareUtility.access$5().getLanguageString(DisplayStrings.DS_HERE_WITH_WAZE)).append(" ").append(ShareUtility.access$3().smsLocationUrlPrefix).append("/h").append(ShareUtility.access$3().locationHash).append(" ").append(ShareUtility.access$5().getLanguageString(DisplayStrings.DS_NO_WAZEQ)).append(" ").append(ShareUtility.access$3().downloadUrl).toString());
                } else
                {
                    ShareUtility.access$7((new StringBuilder(String.valueOf(ShareUtility.access$8()))).append(" ").append(ShareUtility.access$5().getLanguageString(DisplayStrings.DS_ALREADY_HAVE_WAZEQ_TAP)).append(" ").append(ShareUtility.access$5().getLanguageString(DisplayStrings.DS_THERE_WITH_WAZE)).append(" ").append(ShareUtility.access$3().smsLocationUrlPrefix).append("/h").append(ShareUtility.access$3().locationHash).append(" ").append(ShareUtility.access$5().getLanguageString(DisplayStrings.DS_NO_WAZEQ)).append(" ").append(ShareUtility.access$3().downloadUrl).toString());
                }
            } else
            if (val$type == areType.ShareType_ShareDrive)
            {
                ShareUtility.access$7((new StringBuilder(String.valueOf(ShareUtility.access$5().getLanguageString(DisplayStrings.DS_IM_ON_THE_WAY_TO)))).append(" ").append(ShareUtility.access$3().destinationName).append(", ").append(s).append(": ").append(ShareUtility.access$3().locationEta).append(". ").append(ShareUtility.access$5().getLanguageString(DisplayStrings.DS_TRACK_MY_LOCATIONC)).append(" ").toString());
                ShareUtility.access$7((new StringBuilder(String.valueOf(ShareUtility.access$8()))).append(val$Url).toString());
            } else
            {
                ShareUtility.access$7((new StringBuilder(String.valueOf(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_SMS_TEXT)))).append(" ").toString());
                ShareUtility.access$7((new StringBuilder(String.valueOf(ShareUtility.access$8()))).append(val$Url).toString());
            }
            if (AppService.getActiveActivity() instanceof ShareDriveActivity)
            {
                ((ShareDriveActivity)AppService.getActiveActivity()).SendURL(ShareUtility.access$8());
                return;
            }
        }
    }

    areType()
    {
        val$type = aretype;
        val$addressItem = addressitem;
        val$Url = s;
        super();
    }
}
