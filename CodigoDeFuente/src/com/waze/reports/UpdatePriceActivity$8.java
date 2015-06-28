// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.text.Editable;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageView;
import com.waze.AppService;
import com.waze.NativeManager;
import com.waze.navigate.Product;
import com.waze.view.text.TypingLockListener;

// Referenced classes of package com.waze.reports:
//            UpdatePriceActivity

class val.index
    implements android.view.ener
{

    final UpdatePriceActivity this$0;
    private final EditText val$editText;
    private final ImageView val$imageView;
    private final int val$index;
    private final int val$resource;

    private void handleFocusIn(EditText edittext, ImageView imageview, View view)
    {
        UpdatePriceActivity.access$10(UpdatePriceActivity.this, edittext);
        findViewById(0x7f09078e).setVisibility(0);
        imageview.setImageResource(0x7f020307);
        ((EditText)view).setHint(((EditText)view).getText().toString());
        ((EditText)view).setText("");
        UpdatePriceActivity.access$8(UpdatePriceActivity.this, true);
        ((InputMethodManager)getSystemService("input_method")).showSoftInput(edittext, 1);
    }

    private void handleFocusOut(int i, int j, ImageView imageview, View view)
    {
        UpdatePriceActivity.access$8(UpdatePriceActivity.this, false);
        findViewById(0x7f09078e).setVisibility(8);
        EditText edittext = (EditText)view;
        String s = edittext.getText().toString().replace(',', '.');
        if (!isPriceAndFormattedOK(s))
        {
            restorePriceFromPlaceHolder(i, j, imageview);
            return;
        }
        if (!s.equalsIgnoreCase("N/A"))
        {
            String s1 = UpdatePriceActivity.padWithZeroRightToPeriod(UpdatePriceActivity.access$0(UpdatePriceActivity.this).formats[j], Float.parseFloat(s));
            skipOnTextChanged = true;
            edittext.setText(s1);
        }
        imageview.setImageResource(0x7f020308);
    }

    private boolean isPriceAndFormattedOK(String s)
    {
        return !s.equals("") && (s.equalsIgnoreCase("N/A") || UpdatePriceActivity.access$9(UpdatePriceActivity.this, s));
    }

    private void restorePriceFromPlaceHolder(int i, int j, ImageView imageview)
    {
        mIgnoredeletionCheck = true;
        imageview.setImageResource(0x7f020306);
        UpdatePriceActivity.access$5(UpdatePriceActivity.this, UpdatePriceActivity.access$0(UpdatePriceActivity.this), j, i);
    }

    public void onFocusChange(View view, boolean flag)
    {
        if (flag)
        {
            AppService.getNativeManager().checkTypingLock(new TypingLockListener() {

                final UpdatePriceActivity._cls8 this$1;

                public void shouldLock()
                {
                    findViewById(0x7f090775).requestFocus();
                }

            
            {
                this$1 = UpdatePriceActivity._cls8.this;
                super();
            }
            });
            handleFocusIn(val$editText, val$imageView, view);
            return;
        } else
        {
            handleFocusOut(val$resource, val$index, val$imageView, view);
            return;
        }
    }


    _cls1.this._cls1()
    {
        this$0 = final_updatepriceactivity;
        val$editText = edittext;
        val$imageView = imageview;
        val$resource = i;
        val$index = I.this;
        super();
    }
}
