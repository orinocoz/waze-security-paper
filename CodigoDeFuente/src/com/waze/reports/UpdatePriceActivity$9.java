// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.widget.EditText;
import com.waze.navigate.Product;

// Referenced classes of package com.waze.reports:
//            UpdatePriceActivity

class val.index
    implements TextWatcher
{

    final UpdatePriceActivity this$0;
    private final EditText val$editText;
    private final int val$index;

    private boolean deleteAllInputIfUserShortenedInput(EditText edittext, int i, int j)
    {
        boolean flag = false;
        if (i > j)
        {
            edittext.setText("");
            flag = true;
        }
        return flag;
    }

    private void fitInputIntoFormat(int i, EditText edittext, String s)
    {
        if (s.trim().length() <= UpdatePriceActivity.access$0(UpdatePriceActivity.this).formats[i].length())
        {
            char c = UpdatePriceActivity.access$0(UpdatePriceActivity.this).formats[i].charAt(s.trim().length());
            if (c != '#')
            {
                overrideFilter = true;
                edittext.append((new StringBuilder()).append(c).toString());
            }
            return;
        } else
        {
            Log.e("WAZE", (new StringBuilder("Index out of bound: tried to access char at: ")).append(i).append(" in format: ").append(UpdatePriceActivity.access$0(UpdatePriceActivity.this).formats[i]).append(" to compare with price: ").append(s).toString());
            edittext.setText("");
            return;
        }
    }

    public void afterTextChanged(Editable editable)
    {
    }

    public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
        if (!skipOnTextChanged) goto _L2; else goto _L1
_L1:
        skipOnTextChanged = false;
_L4:
        return;
_L2:
        String s;
        UpdatePriceActivity.access$11(UpdatePriceActivity.this);
        s = val$editText.getText().toString();
        if (UpdatePriceActivity.access$0(UpdatePriceActivity.this).formats.length <= val$index)
        {
            Log.d("WAZE", "Index is out from product format");
            return;
        }
        if (mIgnoredeletionCheck)
        {
            break; /* Loop/switch isn't completed */
        }
        if (deleteAllInputIfUserShortenedInput(val$editText, j, k))
        {
            continue; /* Loop/switch isn't completed */
        }
_L5:
        if (!s.equalsIgnoreCase("N/A"))
        {
            if (s.trim().length() != UpdatePriceActivity.access$0(UpdatePriceActivity.this).formats[val$index].length())
            {
                continue; /* Loop/switch isn't completed */
            }
            if (UpdatePriceActivity.access$12(UpdatePriceActivity.this))
            {
                UpdatePriceActivity.access$7(UpdatePriceActivity.this);
                return;
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
        mIgnoredeletionCheck = false;
          goto _L5
        if (i <= -1 + charsequence.length() && !Character.isDigit(charsequence.charAt(i)) || s.trim().length() <= 0) goto _L4; else goto _L6
_L6:
        fitInputIntoFormat(val$index, val$editText, s);
        return;
    }

    ()
    {
        this$0 = final_updatepriceactivity;
        val$editText = edittext;
        val$index = I.this;
        super();
    }
}
