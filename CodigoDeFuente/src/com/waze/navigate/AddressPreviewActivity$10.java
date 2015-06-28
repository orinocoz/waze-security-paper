// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.view.View;
import android.widget.TextView;
import com.waze.Logger;
import com.waze.NativeManager;
import com.waze.reports.UpdatePriceActivity;
import com.waze.strings.DisplayStrings;

// Referenced classes of package com.waze.navigate:
//            AddressPreviewActivity, Product

class this._cls0
    implements ctListener
{

    final AddressPreviewActivity this$0;

    public void onComplete(Product product)
    {
        if (product == null || product.labels == null || product.prices == null || product.formats == null)
        {
            Logger.e("AddressPreviewActivity.fillGasPrices().onComplete() product is null or has null members");
            return;
        }
        int i = product.labels.length;
        findViewById(0x7f09012e).setVisibility(0);
        TextView textview = (TextView)findViewById(0x7f09012f);
        textview.setVisibility(0);
        String s = AddressPreviewActivity.access$20(AddressPreviewActivity.this).getLanguageString(DisplayStrings.DS_GAS_PRICES);
        if (product.currency != null && !product.currency.isEmpty())
        {
            s = (new StringBuilder(String.valueOf(s))).append(" (").append(AddressPreviewActivity.access$20(AddressPreviewActivity.this).getLanguageString(product.currency)).append(")").toString();
        }
        textview.setText(s);
        View view = findViewById(0x7f090130);
        view.setVisibility(0);
        int ai[] = {
            0x7f090152, 0x7f090155, 0x7f090158, 0x7f09015b
        };
        int ai1[] = {
            0x7f090153, 0x7f090156, 0x7f090159, 0x7f09015c
        };
        int ai2[] = {
            0x7f090154, 0x7f090157, 0x7f09015a, 0x7f09015d
        };
        int j = 0;
        do
        {
            TextView textview1;
            if (j >= 4)
            {
                textview1 = (TextView)findViewById(0x7f090131);
                if (product.lastUpdated != -1)
                {
                    long l = (System.currentTimeMillis() / 1000L - (long)product.lastUpdated) / 3600L / 24L;
                    String s1;
                    if (l > 0L)
                    {
                        s1 = (new StringBuilder(String.valueOf(AddressPreviewActivity.access$20(AddressPreviewActivity.this).getLanguageString(DisplayStrings.DS_LAST_UPDATE)))).append(" ").append(l).append(" ").append(AddressPreviewActivity.access$20(AddressPreviewActivity.this).getLanguageString(DisplayStrings.DS_DAYS_AGO_BY)).append(" ").append(product.updatedBy).toString();
                    } else
                    if (product.updatedBy != null)
                    {
                        s1 = (new StringBuilder(String.valueOf(AddressPreviewActivity.access$20(AddressPreviewActivity.this).getLanguageString(DisplayStrings.DS_LAST_UPDATE_TODAY_BY)))).append(" ").append(product.updatedBy).toString();
                    } else
                    {
                        s1 = "";
                    }
                    textview1.setVisibility(0);
                    textview1.setText(s1);
                    return;
                }
            } else
            {
                if (i > j && product.prices[j] > 0.0F)
                {
                    ((TextView)view.findViewById(ai1[j])).setText(UpdatePriceActivity.padWithZeroRightToPeriod(product.formats[j], product.prices[j]));
                    ((TextView)view.findViewById(ai2[j])).setText(product.labels[j]);
                } else
                {
                    view.findViewById(ai[j]).setVisibility(8);
                }
                j++;
                continue;
            }
            textview1.setVisibility(4);
            return;
        } while (true);
    }

    ctListener()
    {
        this$0 = AddressPreviewActivity.this;
        super();
    }
}
