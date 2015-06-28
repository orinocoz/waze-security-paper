// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Spanned;
import android.text.TextWatcher;
import android.util.Log;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.NativeManager;
import com.waze.ResManager;
import com.waze.analytics.Analytics;
import com.waze.ifs.ui.ActivityBase;
import com.waze.navigate.DriveToNativeManager;
import com.waze.navigate.Product;
import com.waze.strings.DisplayStrings;
import com.waze.view.text.TypingLockListener;
import com.waze.view.title.TitleBar;

public class UpdatePriceActivity extends ActivityBase
{

    private static final String PRICE_NOT_AVAILABLE = "N/A";
    private static String s_priceFormatString = null;
    private EditText currentEditText;
    private DriveToNativeManager driveToNativeManager;
    private boolean isPriceChanged;
    private boolean isTextBoxFilledByUser;
    protected boolean mIgnoredeletionCheck;
    private int mIndex;
    protected int nProducts;
    android.view.View.OnClickListener onClickYesListener;
    protected boolean overrideFilter;
    private Product product;
    protected boolean skipOnTextChanged;

    public UpdatePriceActivity()
    {
        isPriceChanged = false;
        isTextBoxFilledByUser = true;
        onClickYesListener = new android.view.View.OnClickListener() {

            final UpdatePriceActivity this$0;

            private void setData(float af[], int ai[], int i, int j)
            {
                String s = ((EditText)findViewById(j)).getText().toString();
                if (s.equals("N/A"))
                {
                    af[i] = -1F;
                    ai[i] = 2;
                    return;
                }
                String s1 = s.replace(',', '.');
                try
                {
                    af[i] = Float.parseFloat(s1);
                    if (Float.compare(af[i], product.prices[i]) == 0)
                    {
                        ai[i] = 0;
                        return;
                    }
                }
                catch (Exception exception)
                {
                    af[i] = 0.0F;
                    ai[i] = 0;
                    return;
                }
                ai[i] = 1;
                return;
            }

            public void onClick(View view)
            {
                float af[] = new float[product.labels.length];
                int ai[] = new int[product.labels.length];
                NativeManager nativemanager;
                if (product.labels.length == 4)
                {
                    setData(af, ai, 0, 0x7f09077d);
                    setData(af, ai, 1, 0x7f090782);
                    setData(af, ai, 2, 0x7f090787);
                    setData(af, ai, 3, 0x7f09078c);
                } else
                if (product.labels.length == 3)
                {
                    setData(af, ai, 0, 0x7f09077d);
                    setData(af, ai, 1, 0x7f090782);
                    setData(af, ai, 2, 0x7f090787);
                } else
                if (product.labels.length == 2)
                {
                    setData(af, ai, 0, 0x7f09077d);
                    setData(af, ai, 1, 0x7f090782);
                } else
                {
                    setData(af, ai, 0, 0x7f09077d);
                }
                Analytics.log("GAS_UPDATE");
                driveToNativeManager.setProductPrices(mIndex, af, ai, nProducts);
                findViewById(0x7f090796).setVisibility(8);
                nativemanager = AppService.getNativeManager();
                ((TextView)findViewById(0x7f090797)).setText(nativemanager.getLanguageString(DisplayStrings.DS_SENDING_UPDATEPPP));
                findViewById(0x7f09079a).setVisibility(8);
                findViewById(0x7f090799).setVisibility(0);
                findViewById(0x7f09077d).setEnabled(false);
                findViewById(0x7f090782).setEnabled(false);
                findViewById(0x7f090787).setEnabled(false);
                findViewById(0x7f09078c).setEnabled(false);
                findViewById(0x7f090775).requestFocus();
                if (currentEditText != null)
                {
                    ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(currentEditText.getWindowToken(), 0);
                }
            }

            
            {
                this$0 = UpdatePriceActivity.this;
                super();
            }
        };
        overrideFilter = false;
        skipOnTextChanged = false;
        nProducts = -1;
    }

    private boolean displayEdit(Product product1, int i, int j)
    {
        if (product1 == null)
        {
            return false;
        }
        EditText edittext = (EditText)findViewById(j);
        if (product1.prices.length > i && (int)(100F * product1.prices[i]) > 0)
        {
            edittext.setText(padWithZeroRightToPeriod(product1.formats[i], product1.prices[i]));
            return true;
        } else
        {
            edittext.setText("N/A");
            return false;
        }
    }

    private void focusNextField()
    {
        if (!findNextField())
        {
            findViewById(0x7f090775).requestFocus();
            if (currentEditText != null)
            {
                ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(currentEditText.getWindowToken(), 0);
            }
        }
    }

    private static int getNumberOfDigits(String s)
    {
        int i = s.indexOf('.');
        if (i == -1)
        {
            return 0;
        } else
        {
            return -1 + (s.length() - i);
        }
    }

    public static int getNumberOfDigitsAfterPeriod(String s)
    {
        int i = s.indexOf('.');
        if (i == -1)
        {
            int j = s.indexOf(',');
            if (j == -1)
            {
                return 0;
            } else
            {
                return -1 + (s.length() - j);
            }
        } else
        {
            return -1 + (s.length() - i);
        }
    }

    public static String getPriceFormatString(DriveToNativeManager drivetonativemanager, String s)
    {
        if (s_priceFormatString != null)
        {
            return s_priceFormatString;
        } else
        {
            DriveToNativeManager.getInstance().getPriceFormat(new com.waze.navigate.DriveToNativeManager.PriceFormatListener() {

                public void onComplete(String s1)
                {
                    int i = UpdatePriceActivity.getNumberOfDigits(s1);
                    if (i > 2 && i <= 5)
                    {
                        UpdatePriceActivity.s_priceFormatString = (new StringBuilder("%2.")).append(i).append("f").toString();
                        return;
                    } else
                    {
                        UpdatePriceActivity.s_priceFormatString = "%2.2f";
                        return;
                    }
                }

            }, s);
            return "%2.2f";
        }
    }

    private boolean isParseFloatOk(String s)
    {
        try
        {
            Float.parseFloat(s);
        }
        catch (NumberFormatException numberformatexception)
        {
            return false;
        }
        return true;
    }

    public static String padWithZeroRightToPeriod(String s, float f)
    {
        int i = getNumberOfDigitsAfterPeriod(s);
        String s1 = (new StringBuilder("%.")).append(i).append("f").toString();
        Object aobj[] = new Object[1];
        aobj[0] = Float.valueOf(f);
        String s2 = String.format(s1, aobj);
        if (s.indexOf(',') != -1)
        {
            s2 = s2.replace('.', ',');
        }
        return s2;
    }

    private void priceChanged()
    {
        if (isPriceChanged)
        {
            return;
        } else
        {
            isPriceChanged = true;
            ((TextView)findViewById(0x7f090797)).setText("");
            findViewById(0x7f09079b).setVisibility(8);
            findViewById(0x7f09079f).setVisibility(8);
            findViewById(0x7f09079d).setVisibility(8);
            NativeManager nativemanager = NativeManager.getInstance();
            TitleBar titlebar = (TitleBar)findViewById(0x7f090058);
            titlebar.setCloseImageResource(0x7f020128);
            titlebar.setCloseEnabled(false);
            titlebar.setCloseText(nativemanager.getLanguageString(DisplayStrings.DS_SEND));
            titlebar.setOnClickCloseListener(onClickYesListener);
            return;
        }
    }

    private void setEditTextChangedListener(int i, final int index, int j)
    {
        final EditText editText = (EditText)findViewById(i);
        editText.addTextChangedListener(new TextWatcher() {

            final UpdatePriceActivity this$0;
            private final EditText val$editText;
            private final int val$index;

            private boolean deleteAllInputIfUserShortenedInput(EditText edittext, int k, int l)
            {
                boolean flag = false;
                if (k > l)
                {
                    edittext.setText("");
                    flag = true;
                }
                return flag;
            }

            private void fitInputIntoFormat(int k, EditText edittext, String s)
            {
                if (s.trim().length() <= product.formats[k].length())
                {
                    char c = product.formats[k].charAt(s.trim().length());
                    if (c != '#')
                    {
                        overrideFilter = true;
                        edittext.append((new StringBuilder()).append(c).toString());
                    }
                    return;
                } else
                {
                    Log.e("WAZE", (new StringBuilder("Index out of bound: tried to access char at: ")).append(k).append(" in format: ").append(product.formats[k]).append(" to compare with price: ").append(s).toString());
                    edittext.setText("");
                    return;
                }
            }

            public void afterTextChanged(Editable editable)
            {
            }

            public void beforeTextChanged(CharSequence charsequence, int k, int l, int i1)
            {
            }

            public void onTextChanged(CharSequence charsequence, int k, int l, int i1)
            {
                if (!skipOnTextChanged) goto _L2; else goto _L1
_L1:
                skipOnTextChanged = false;
_L4:
                return;
_L2:
                String s;
                priceChanged();
                s = editText.getText().toString();
                if (product.formats.length <= index)
                {
                    Log.d("WAZE", "Index is out from product format");
                    return;
                }
                if (mIgnoredeletionCheck)
                {
                    break; /* Loop/switch isn't completed */
                }
                if (deleteAllInputIfUserShortenedInput(editText, l, i1))
                {
                    continue; /* Loop/switch isn't completed */
                }
_L5:
                if (!s.equalsIgnoreCase("N/A"))
                {
                    if (s.trim().length() != product.formats[index].length())
                    {
                        continue; /* Loop/switch isn't completed */
                    }
                    if (isTextBoxFilledByUser)
                    {
                        focusNextField();
                        return;
                    }
                }
                if (true) goto _L4; else goto _L3
_L3:
                mIgnoredeletionCheck = false;
                  goto _L5
                if (k <= -1 + charsequence.length() && !Character.isDigit(charsequence.charAt(k)) || s.trim().length() <= 0) goto _L4; else goto _L6
_L6:
                fitInputIntoFormat(index, editText, s);
                return;
            }

            
            {
                this$0 = UpdatePriceActivity.this;
                editText = edittext;
                index = i;
                super();
            }
        });
        editText.setFilters(new InputFilter[] {
            new InputFilter() {

                final UpdatePriceActivity this$0;

                public CharSequence filter(CharSequence charsequence, int k, int l, Spanned spanned, int i1, int j1)
                {
                    if (overrideFilter)
                    {
                        overrideFilter = false;
                    } else
                    if (charsequence.equals(".") || charsequence.equals(","))
                    {
                        return "";
                    }
                    return null;
                }

            
            {
                this$0 = UpdatePriceActivity.this;
                super();
            }
            }
        });
    }

    private void setEditTextListener(int i, int j, int k)
    {
        final EditText editText = (EditText)findViewById(i);
        editText.setOnFocusChangeListener(new android.view.View.OnFocusChangeListener() {

            final UpdatePriceActivity this$0;
            private final EditText val$editText;
            private final ImageView val$imageView;
            private final int val$index;
            private final int val$resource;

            private void handleFocusIn(EditText edittext, ImageView imageview, View view)
            {
                currentEditText = edittext;
                findViewById(0x7f09078e).setVisibility(0);
                imageview.setImageResource(0x7f020307);
                ((EditText)view).setHint(((EditText)view).getText().toString());
                ((EditText)view).setText("");
                isTextBoxFilledByUser = true;
                ((InputMethodManager)getSystemService("input_method")).showSoftInput(edittext, 1);
            }

            private void handleFocusOut(int l, int i1, ImageView imageview, View view)
            {
                isTextBoxFilledByUser = false;
                findViewById(0x7f09078e).setVisibility(8);
                EditText edittext = (EditText)view;
                String s = edittext.getText().toString().replace(',', '.');
                if (!isPriceAndFormattedOK(s))
                {
                    restorePriceFromPlaceHolder(l, i1, imageview);
                    return;
                }
                if (!s.equalsIgnoreCase("N/A"))
                {
                    String s1 = UpdatePriceActivity.padWithZeroRightToPeriod(product.formats[i1], Float.parseFloat(s));
                    skipOnTextChanged = true;
                    edittext.setText(s1);
                }
                imageview.setImageResource(0x7f020308);
            }

            private boolean isPriceAndFormattedOK(String s)
            {
                return !s.equals("") && (s.equalsIgnoreCase("N/A") || isParseFloatOk(s));
            }

            private void restorePriceFromPlaceHolder(int l, int i1, ImageView imageview)
            {
                mIgnoredeletionCheck = true;
                imageview.setImageResource(0x7f020306);
                displayEdit(product, i1, l);
            }

            public void onFocusChange(View view, boolean flag)
            {
                if (flag)
                {
                    AppService.getNativeManager().checkTypingLock(new TypingLockListener() {

                        final _cls8 this$1;

                        public void shouldLock()
                        {
                            findViewById(0x7f090775).requestFocus();
                        }

            
            {
                this$1 = _cls8.this;
                super();
            }
                    });
                    handleFocusIn(editText, imageView, view);
                    return;
                } else
                {
                    handleFocusOut(resource, index, imageView, view);
                    return;
                }
            }


            
            {
                this$0 = UpdatePriceActivity.this;
                editText = edittext;
                imageView = imageview;
                resource = i;
                index = j;
                super();
            }
        });
    }

    protected boolean findNextField()
    {
        if (currentEditText != null) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        int i;
        int ai[];
        int j;
        i = currentEditText.getId();
        ai = (new int[] {
            0x7f09077d, 0x7f090782, 0x7f090787, 0x7f09078c
        });
        j = 0;
_L7:
        if (i != ai[j]) goto _L4; else goto _L3
_L3:
        EditText edittext = null;
_L11:
        boolean flag = false;
        if (true) goto _L6; else goto _L5
_L5:
        if (flag)
        {
            edittext.requestFocus();
            return true;
        }
          goto _L1
_L4:
        j++;
          goto _L7
_L6:
        int k;
        j++;
        k = ai.length;
        flag = false;
        if (j >= k) goto _L5; else goto _L8
_L8:
        int l;
        l = nProducts;
        flag = false;
        if (j >= l) goto _L5; else goto _L9
_L9:
        edittext = (EditText)findViewById(ai[j]);
        if (edittext.getText().toString().equals("N/A")) goto _L11; else goto _L10
_L10:
        flag = true;
          goto _L5
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f03012e);
        ((TitleBar)findViewById(0x7f090058)).init(this, DisplayStrings.DS_UPDATE_PRICE);
        mIndex = getIntent().getExtras().getInt("index");
        driveToNativeManager = DriveToNativeManager.getInstance();
        driveToNativeManager.getProduct(mIndex, new com.waze.navigate.DriveToNativeManager.ProductListener() {

            final UpdatePriceActivity this$0;

            private void setEditTextMaxLength(Product product1)
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
                    ainputfilter[0] = new android.text.InputFilter.LengthFilter(product1.formats[i].length());
                    edittext.setFilters(ainputfilter);
                    i++;
                } while (true);
            }

            public void onComplete(Product product1)
            {
                nProducts = product1.labels.length;
                product = product1;
                NativeManager nativemanager1 = AppService.getNativeManager();
                ((TextView)findViewById(0x7f090778)).setText(product1.name);
                ((ImageView)findViewById(0x7f090777)).setImageDrawable(ResManager.GetSkinDrawable((new StringBuilder(String.valueOf(product1.icon))).append(".bin").toString()));
                boolean flag;
                int ai[];
                int ai1[];
                int j;
                if (nProducts == 4)
                {
                    flag = false | displayEdit(product1, 0, 0x7f09077d) | displayEdit(product1, 1, 0x7f090782) | displayEdit(product1, 2, 0x7f090787) | displayEdit(product1, 3, 0x7f09078c);
                } else
                if (nProducts == 1)
                {
                    flag = false | displayEdit(product1, 0, 0x7f09077d);
                } else
                if (nProducts == 2)
                {
                    flag = false | displayEdit(product1, 0, 0x7f09077d) | displayEdit(product1, 1, 0x7f090782);
                } else
                {
                    int i = nProducts;
                    flag = false;
                    if (i == 3)
                    {
                        flag = false | displayEdit(product1, 0, 0x7f09077d) | displayEdit(product1, 1, 0x7f090782) | displayEdit(product1, 2, 0x7f090787);
                    }
                }
                findViewById(0x7f09079d).setOnClickListener(new android.view.View.OnClickListener() {

                    final _cls2 this$1;

                    public void onClick(View view)
                    {
                        ((TitleBar)findViewById(0x7f090058)).onCloseClicked();
                    }

            
            {
                this$1 = _cls2.this;
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
                        ((TextView)findViewById(0x7f09077c)).setText(product1.currency);
                        ((TextView)findViewById(0x7f090781)).setText(product1.currency);
                        ((TextView)findViewById(0x7f090786)).setText(product1.currency);
                        ((TextView)findViewById(0x7f09078b)).setText(product1.currency);
                        ((TextView)findViewById(0x7f09079e)).setText(nativemanager1.getLanguageString(DisplayStrings.DS_CLOSE));
                        ((TextView)findViewById(0x7f09079c)).setText(nativemanager1.getLanguageString(DisplayStrings.DS_YES));
                        ((TextView)findViewById(0x7f0907a0)).setText(nativemanager1.getLanguageString(DisplayStrings.DS_NO));
                        ((TextView)findViewById(0x7f090797)).setText(nativemanager1.getLanguageString(DisplayStrings.DS_ARE_THESE_PRICES_CORRECT));
                        if (!flag)
                        {
                            ((TextView)findViewById(0x7f090797)).setText("");
                            findViewById(0x7f09079b).setVisibility(8);
                            findViewById(0x7f09079f).setVisibility(8);
                            findViewById(0x7f09079d).setVisibility(0);
                        }
                        if (product1.lastUpdated != -1)
                        {
                            long l = (System.currentTimeMillis() / 1000L - (long)product1.lastUpdated) / 3600L / 24L;
                            String s;
                            if (l > 0L)
                            {
                                s = (new StringBuilder(String.valueOf(nativemanager1.getLanguageString(DisplayStrings.DS_LAST_UPDATE)))).append(" ").append(l).append(" ").append(nativemanager1.getLanguageString(DisplayStrings.DS_DAYS_AGO_BY)).append(" ").append(product1.updatedBy).toString();
                            } else
                            if (product1.updatedBy != null)
                            {
                                s = (new StringBuilder(String.valueOf(nativemanager1.getLanguageString(DisplayStrings.DS_LAST_UPDATE_TODAY_BY)))).append(" ").append(product1.updatedBy).toString();
                            } else
                            {
                                s = "";
                            }
                            ((TextView)findViewById(0x7f090796)).setText(s);
                        } else
                        {
                            findViewById(0x7f090796).setVisibility(4);
                        }
                        setEditTextChangedListener(0x7f09077d, 0, 0x7f090782);
                        setEditTextChangedListener(0x7f090782, 1, 0x7f090787);
                        setEditTextChangedListener(0x7f090787, 2, 0x7f09078c);
                        setEditTextChangedListener(0x7f09078c, 3, 0);
                        setEditTextMaxLength(product1);
                        return;
                    }
                    findViewById(ai[j]).setVisibility(0);
                    ((TextView)findViewById(ai1[j])).setText(product1.labels[j]);
                    j++;
                } while (true);
            }


            
            {
                this$0 = UpdatePriceActivity.this;
                super();
            }
        });
        findViewById(0x7f09079f).setOnClickListener(new android.view.View.OnClickListener() {

            final UpdatePriceActivity this$0;

            public void onClick(View view)
            {
                EditText edittext = (EditText)findViewById(0x7f09077d);
                edittext.requestFocus();
                ((InputMethodManager)getSystemService("input_method")).showSoftInput(edittext, 1);
            }

            
            {
                this$0 = UpdatePriceActivity.this;
                super();
            }
        });
        findViewById(0x7f09079b).setOnClickListener(onClickYesListener);
        setEditTextListener(0x7f09077d, 0x7f09077b, 0);
        setEditTextListener(0x7f090782, 0x7f090780, 1);
        setEditTextListener(0x7f090787, 0x7f090785, 2);
        setEditTextListener(0x7f09078c, 0x7f09078a, 3);
        findViewById(0x7f090791).setOnClickListener(new android.view.View.OnClickListener() {

            final UpdatePriceActivity this$0;

            public void onClick(View view)
            {
                focusNextField();
            }

            
            {
                this$0 = UpdatePriceActivity.this;
                super();
            }
        });
        findViewById(0x7f090790).setOnClickListener(new android.view.View.OnClickListener() {

            final UpdatePriceActivity this$0;

            public void onClick(View view)
            {
                findViewById(0x7f09078f).setVisibility(8);
                findViewById(0x7f090792).setVisibility(0);
            }

            
            {
                this$0 = UpdatePriceActivity.this;
                super();
            }
        });
        findViewById(0x7f090794).setOnClickListener(new android.view.View.OnClickListener() {

            final UpdatePriceActivity this$0;

            public void onClick(View view)
            {
                findViewById(0x7f09078f).setVisibility(0);
                findViewById(0x7f090792).setVisibility(8);
                if (currentEditText != null)
                {
                    currentEditText.setText("N/A");
                }
                findNextField();
            }

            
            {
                this$0 = UpdatePriceActivity.this;
                super();
            }
        });
        findViewById(0x7f090795).setOnClickListener(new android.view.View.OnClickListener() {

            final UpdatePriceActivity this$0;

            public void onClick(View view)
            {
                findViewById(0x7f09078f).setVisibility(0);
                findViewById(0x7f090792).setVisibility(8);
            }

            
            {
                this$0 = UpdatePriceActivity.this;
                super();
            }
        });
        NativeManager nativemanager = AppService.getNativeManager();
        ((Button)findViewById(0x7f090795)).setText(nativemanager.getLanguageString(DisplayStrings.DS_NO));
        ((Button)findViewById(0x7f090794)).setText(nativemanager.getLanguageString(DisplayStrings.DS_YES));
        ((TextView)findViewById(0x7f090793)).setText(nativemanager.getLanguageString(DisplayStrings.DS_REMOVE_THIS_GAS_TYPEQ));
        ((Button)findViewById(0x7f090790)).setText(nativemanager.getLanguageString(DisplayStrings.DS_NOT_OFFERED));
        ((Button)findViewById(0x7f090791)).setText(nativemanager.getLanguageString(DisplayStrings.DS_NEXT));
    }

    protected void onResume()
    {
        super.onResume();
        findViewById(0x7f090775).requestFocus();
    }

    public void updateActivityDone(String s, String s1)
    {
        NativeManager nativemanager = AppService.getNativeManager();
        findViewById(0x7f090799).setVisibility(8);
        ((TextView)findViewById(0x7f090797)).setText(nativemanager.getLanguageString(s));
        ((TextView)findViewById(0x7f090798)).setText(nativemanager.getLanguageString(s1));
        ((TextView)findViewById(0x7f090798)).setVisibility(0);
        TitleBar titlebar = (TitleBar)findViewById(0x7f090058);
        titlebar.setCloseImageResource(0x7f0200b2);
        titlebar.setCloseEnabled(true);
        titlebar.setCloseText(null);
        titlebar.setOnClickCloseListener(null);
    }
















}
