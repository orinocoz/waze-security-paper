// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.text.InputFilter;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.NativeManager;
import com.waze.ResManager;
import com.waze.navigate.Product;
import com.waze.strings.DisplayStrings;
import com.waze.view.title.TitleBar;

// Referenced classes of package com.waze.reports:
//            UpdatePriceActivity

class this._cls0
    implements com.waze.navigate.roductListener
{

    final UpdatePriceActivity this$0;

    private void setEditTextMaxLength(Product product)
    {
        int ai[] = {
            0x7f09077d, 0x7f090782, 0x7f090787, 0x7f09078c
        };
        int i = 0;
        do
        {
            if (i >= nProducts)
            {
                return;
            }
            EditText edittext = (EditText)findViewById(ai[i]);
            InputFilter ainputfilter[] = new InputFilter[1];
            ainputfilter[0] = new android.text.er(product.formats[i].length());
            edittext.setFilters(ainputfilter);
            i++;
        } while (true);
    }

    public void onComplete(Product product)
    {
        nProducts = product.labels.length;
        UpdatePriceActivity.access$4(UpdatePriceActivity.this, product);
        NativeManager nativemanager = AppService.getNativeManager();
        ((TextView)findViewById(0x7f090778)).setText(product.name);
        ((ImageView)findViewById(0x7f090777)).setImageDrawable(ResManager.GetSkinDrawable((new StringBuilder(String.valueOf(product.icon))).append(".bin").toString()));
        boolean flag;
        int ai[];
        int ai1[];
        int j;
        if (nProducts == 4)
        {
            flag = false | UpdatePriceActivity.access$5(UpdatePriceActivity.this, product, 0, 0x7f09077d) | UpdatePriceActivity.access$5(UpdatePriceActivity.this, product, 1, 0x7f090782) | UpdatePriceActivity.access$5(UpdatePriceActivity.this, product, 2, 0x7f090787) | UpdatePriceActivity.access$5(UpdatePriceActivity.this, product, 3, 0x7f09078c);
        } else
        if (nProducts == 1)
        {
            flag = false | UpdatePriceActivity.access$5(UpdatePriceActivity.this, product, 0, 0x7f09077d);
        } else
        if (nProducts == 2)
        {
            flag = false | UpdatePriceActivity.access$5(UpdatePriceActivity.this, product, 0, 0x7f09077d) | UpdatePriceActivity.access$5(UpdatePriceActivity.this, product, 1, 0x7f090782);
        } else
        {
            int i = nProducts;
            flag = false;
            if (i == 3)
            {
                flag = false | UpdatePriceActivity.access$5(UpdatePriceActivity.this, product, 0, 0x7f09077d) | UpdatePriceActivity.access$5(UpdatePriceActivity.this, product, 1, 0x7f090782) | UpdatePriceActivity.access$5(UpdatePriceActivity.this, product, 2, 0x7f090787);
            }
        }
        findViewById(0x7f09079d).setOnClickListener(new android.view.View.OnClickListener() {

            final UpdatePriceActivity._cls2 this$1;

            public void onClick(View view)
            {
                ((TitleBar)findViewById(0x7f090058)).onCloseClicked();
            }

            
            {
                this$1 = UpdatePriceActivity._cls2.this;
                super();
            }
        });
        ai = (new int[] {
            0x7f09077a, 0x7f09077f, 0x7f090784, 0x7f090789
        });
        ai1 = (new int[] {
            0x7f09077e, 0x7f090783, 0x7f090788, 0x7f09078d
        });
        j = 0;
        do
        {
            if (j >= nProducts)
            {
                ((TextView)findViewById(0x7f09077c)).setText(product.currency);
                ((TextView)findViewById(0x7f090781)).setText(product.currency);
                ((TextView)findViewById(0x7f090786)).setText(product.currency);
                ((TextView)findViewById(0x7f09078b)).setText(product.currency);
                ((TextView)findViewById(0x7f09079e)).setText(nativemanager.getLanguageString(DisplayStrings.DS_CLOSE));
                ((TextView)findViewById(0x7f09079c)).setText(nativemanager.getLanguageString(DisplayStrings.DS_YES));
                ((TextView)findViewById(0x7f0907a0)).setText(nativemanager.getLanguageString(DisplayStrings.DS_NO));
                ((TextView)findViewById(0x7f090797)).setText(nativemanager.getLanguageString(DisplayStrings.DS_ARE_THESE_PRICES_CORRECT));
                if (!flag)
                {
                    ((TextView)findViewById(0x7f090797)).setText("");
                    findViewById(0x7f09079b).setVisibility(8);
                    findViewById(0x7f09079f).setVisibility(8);
                    findViewById(0x7f09079d).setVisibility(0);
                }
                if (product.lastUpdated != -1)
                {
                    long l = (System.currentTimeMillis() / 1000L - (long)product.lastUpdated) / 3600L / 24L;
                    String s;
                    if (l > 0L)
                    {
                        s = (new StringBuilder(String.valueOf(nativemanager.getLanguageString(DisplayStrings.DS_LAST_UPDATE)))).append(" ").append(l).append(" ").append(nativemanager.getLanguageString(DisplayStrings.DS_DAYS_AGO_BY)).append(" ").append(product.updatedBy).toString();
                    } else
                    if (product.updatedBy != null)
                    {
                        s = (new StringBuilder(String.valueOf(nativemanager.getLanguageString(DisplayStrings.DS_LAST_UPDATE_TODAY_BY)))).append(" ").append(product.updatedBy).toString();
                    } else
                    {
                        s = "";
                    }
                    ((TextView)findViewById(0x7f090796)).setText(s);
                } else
                {
                    findViewById(0x7f090796).setVisibility(4);
                }
                UpdatePriceActivity.access$6(UpdatePriceActivity.this, 0x7f09077d, 0, 0x7f090782);
                UpdatePriceActivity.access$6(UpdatePriceActivity.this, 0x7f090782, 1, 0x7f090787);
                UpdatePriceActivity.access$6(UpdatePriceActivity.this, 0x7f090787, 2, 0x7f09078c);
                UpdatePriceActivity.access$6(UpdatePriceActivity.this, 0x7f09078c, 3, 0);
                setEditTextMaxLength(product);
                return;
            }
            findViewById(ai[j]).setVisibility(0);
            ((TextView)findViewById(ai1[j])).setText(product.labels[j]);
            j++;
        } while (true);
    }


    _cls1.this._cls1()
    {
        this$0 = UpdatePriceActivity.this;
        super();
    }
}
