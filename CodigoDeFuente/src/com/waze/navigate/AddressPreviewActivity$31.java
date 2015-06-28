// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.content.DialogInterface;
import com.waze.NativeManager;
import com.waze.reports.VenueData;

// Referenced classes of package com.waze.navigate:
//            AddressPreviewActivity, AddressItem

class val.optionValues
    implements android.content.tener
{

    final AddressPreviewActivity this$0;
    private final int val$optionValues[];

    public void onClick(DialogInterface dialoginterface, int i)
    {
        AddressPreviewActivity.access$32(AddressPreviewActivity.this, val$optionValues[i]);
        switch (AddressPreviewActivity.access$33(AddressPreviewActivity.this))
        {
        case 2: // '\002'
        case 7: // '\007'
        case 8: // '\b'
        case 9: // '\t'
        default:
            return;

        case 10: // '\n'
            AddressPreviewActivity.access$20(AddressPreviewActivity.this).venueFlag(AddressPreviewActivity.access$6(AddressPreviewActivity.this).venueData.id, AddressPreviewActivity.access$33(AddressPreviewActivity.this), null, null);
            AddressPreviewActivity.access$34(AddressPreviewActivity.this);
            return;

        case 1: // '\001'
            AddressPreviewActivity.access$35(AddressPreviewActivity.this);
            return;

        case 4: // '\004'
            AddressPreviewActivity.access$36(AddressPreviewActivity.this);
            return;

        case 5: // '\005'
            AddressPreviewActivity.access$37(AddressPreviewActivity.this, true);
            return;

        case 6: // '\006'
            AddressPreviewActivity.access$37(AddressPreviewActivity.this, false);
            return;

        case 3: // '\003'
            AddressPreviewActivity.access$38(AddressPreviewActivity.this);
            return;
        }
    }

    ner()
    {
        this$0 = final_addresspreviewactivity;
        val$optionValues = _5B_I.this;
        super();
    }
}
