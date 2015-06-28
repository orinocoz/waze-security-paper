// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.ui;

import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.Intent;
import android.os.Bundle;
import com.waze.settings.SettingsValue;
import java.util.Random;

// Referenced classes of package com.waze.ifs.ui:
//            ActivityBase, OmniSelectionFragment

public class OmniSelectionActivity extends ActivityBase
    implements OmniSelectionFragment.IOmniSelect
{

    public static final String ARG_EDIT_BOX_HINT = (new StringBuilder(String.valueOf(TAG))).append(".arg.hint").toString();
    public static final String ARG_EXPANDABLE = (new StringBuilder(String.valueOf(TAG))).append(".arg.expandable").toString();
    public static final String ARG_FILTER = (new StringBuilder(String.valueOf(TAG))).append(".arg.filter").toString();
    public static final String ARG_FWD_INTENT = (new StringBuilder(String.valueOf(TAG))).append(".arg.fwd_intent").toString();
    public static final String ARG_INDEXED = (new StringBuilder(String.valueOf(TAG))).append(".arg.indexed").toString();
    public static final String ARG_MULTI_SELECT = (new StringBuilder(String.valueOf(TAG))).append(".arg.multi_select").toString();
    public static final String ARG_SEARCH = (new StringBuilder(String.valueOf(TAG))).append(".arg.search").toString();
    public static final String ARG_SUBTITLE = (new StringBuilder(String.valueOf(TAG))).append(".arg.subtitle").toString();
    public static final String ARG_TITLE = (new StringBuilder(String.valueOf(TAG))).append(".arg.title").toString();
    public static final String ARG_USER_INPUT = (new StringBuilder(String.valueOf(TAG))).append(".arg.user_input").toString();
    public static final String ARG_USER_INPUT_FORMAT = (new StringBuilder(String.valueOf(TAG))).append(".arg.user_input_format").toString();
    public static final String ARG_VALUES = (new StringBuilder(String.valueOf(TAG))).append(".arg.values").toString();
    public static final String RET_SELECTED_IDX = (new StringBuilder(String.valueOf(TAG))).append(".ret.selected_idx").toString();
    public static final String RET_SELECTED_TITLE = (new StringBuilder(String.valueOf(TAG))).append(".ret.selected_title").toString();
    public static final String RET_SELECTED_USER_INPUT = (new StringBuilder(String.valueOf(TAG))).append(".ret.selected_user_input").toString();
    public static final String RET_SELECTED_VAL = (new StringBuilder(String.valueOf(TAG))).append(".ret.selected_val").toString();
    private static final String TAG = com/waze/ifs/ui/OmniSelectionActivity.getName();
    private Intent mFwdIntent;

    public OmniSelectionActivity()
    {
    }

    public static Intent testExpandableArray(ActivityBase activitybase)
    {
        Intent intent = new Intent(activitybase, com/waze/ifs/ui/OmniSelectionActivity);
        intent.putExtra(ARG_TITLE, "testFilteredArray");
        intent.putExtra(ARG_VALUES, testValues2());
        intent.putExtra(ARG_EXPANDABLE, true);
        return intent;
    }

    public static Intent testFilteredArray(ActivityBase activitybase)
    {
        Intent intent = new Intent(activitybase, com/waze/ifs/ui/OmniSelectionActivity);
        intent.putExtra(ARG_TITLE, "testFilteredArray");
        intent.putExtra(ARG_VALUES, testValues1());
        intent.putExtra(ARG_SEARCH, true);
        intent.putExtra(ARG_FILTER, true);
        intent.putExtra(ARG_USER_INPUT, true);
        intent.putExtra(ARG_USER_INPUT_FORMAT, "*Add \"%s\"");
        return intent;
    }

    public static SettingsValue[] testValues1()
    {
        Random random;
        int i;
        SettingsValue asettingsvalue[];
        int j;
        random = new Random();
        i = 50 + random.nextInt(100);
        asettingsvalue = new SettingsValue[i];
        j = 0;
_L2:
        int k;
        int l;
        if (j >= i)
        {
            return asettingsvalue;
        }
        asettingsvalue[j] = new SettingsValue("", "", false);
        asettingsvalue[j].display = "";
        k = 1 + random.nextInt(2);
        l = 0;
_L3:
label0:
        {
            if (l < k)
            {
                break label0;
            }
            asettingsvalue[j].value = asettingsvalue[j].display;
            asettingsvalue[j].display2 = asettingsvalue[j].display;
            j++;
        }
        if (true) goto _L2; else goto _L1
_L1:
        int i1;
        int j1;
        i1 = 3 + random.nextInt(6);
        j1 = 0;
_L4:
label1:
        {
            if (j1 < i1)
            {
                break label1;
            }
            if (l < k - 1)
            {
                SettingsValue settingsvalue1 = asettingsvalue[j];
                settingsvalue1.display = (new StringBuilder(String.valueOf(settingsvalue1.display))).append(' ').toString();
            }
            l++;
        }
          goto _L3
        int k1 = random.nextInt(10);
        byte byte0;
        char c;
        SettingsValue settingsvalue;
        if (j1 == 0)
        {
            byte0 = 65;
        } else
        {
            byte0 = 97;
        }
        c = (char)(byte0 + k1);
        settingsvalue = asettingsvalue[j];
        settingsvalue.display = (new StringBuilder(String.valueOf(settingsvalue.display))).append(c).toString();
        j1++;
          goto _L4
    }

    public static SettingsValue[] testValues2()
    {
        Random random;
        int i;
        int j;
        SettingsValue asettingsvalue[];
        int k;
        random = new Random();
        i = 10 + random.nextInt(50);
        j = 0;
        asettingsvalue = new SettingsValue[i];
        k = 0;
_L2:
        int l;
        int i1;
        if (k >= i)
        {
            return asettingsvalue;
        }
        asettingsvalue[k] = new SettingsValue("", "", false);
        asettingsvalue[k].display = "";
        l = 1 + random.nextInt(2);
        i1 = 0;
_L3:
label0:
        {
            if (i1 < l)
            {
                break label0;
            }
            asettingsvalue[k].value = asettingsvalue[k].display;
            int j1;
            int k1;
            int l1;
            byte byte0;
            char c;
            SettingsValue settingsvalue;
            SettingsValue settingsvalue1;
            if (j == 0)
            {
                asettingsvalue[k].isHeader = true;
                j = 1 + random.nextInt(6);
            } else
            {
                j--;
            }
            k++;
        }
        if (true) goto _L2; else goto _L1
_L1:
        j1 = 3 + random.nextInt(6);
        k1 = 0;
_L4:
label1:
        {
            if (k1 < j1)
            {
                break label1;
            }
            if (i1 < l - 1)
            {
                settingsvalue1 = asettingsvalue[k];
                settingsvalue1.display = (new StringBuilder(String.valueOf(settingsvalue1.display))).append(' ').toString();
            }
            i1++;
        }
          goto _L3
        l1 = random.nextInt(25);
        if (k1 == 0)
        {
            byte0 = 65;
        } else
        {
            byte0 = 97;
        }
        c = (char)(byte0 + l1);
        settingsvalue = asettingsvalue[k];
        settingsvalue.display = (new StringBuilder(String.valueOf(settingsvalue.display))).append(c).toString();
        k1++;
          goto _L4
    }

    public void isSearching(int i)
    {
    }

    public void omniSelected(int i, String s, String s1, boolean flag)
    {
        Intent intent;
        if (mFwdIntent == null)
        {
            intent = new Intent();
        } else
        {
            intent = mFwdIntent;
        }
        intent.setExtrasClassLoader(com/waze/ifs/ui/OmniSelectionActivity.getClassLoader());
        intent.putExtra(RET_SELECTED_IDX, i);
        intent.putExtra(RET_SELECTED_VAL, s);
        intent.putExtra(RET_SELECTED_TITLE, s1);
        if (flag)
        {
            intent.putExtra(RET_SELECTED_USER_INPUT, flag);
        }
        if (mFwdIntent == null)
        {
            setResult(-1, intent);
            finish();
            return;
        } else
        {
            setResult(-1);
            startActivityForResult(mFwdIntent, 0);
            return;
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f03005a);
        OmniSelectionFragment omniselectionfragment = new OmniSelectionFragment();
        Intent intent = getIntent();
        omniselectionfragment.setTitle(intent.getStringExtra(ARG_TITLE));
        omniselectionfragment.setEditBoxHint(intent.getStringExtra(ARG_EDIT_BOX_HINT));
        android.os.Parcelable aparcelable[] = intent.getParcelableArrayExtra(ARG_VALUES);
        SettingsValue asettingsvalue[] = new SettingsValue[aparcelable.length];
        int i = 0;
        do
        {
            if (i >= asettingsvalue.length)
            {
                omniselectionfragment.setValues(asettingsvalue);
                omniselectionfragment.setIndexed(intent.getBooleanExtra(ARG_INDEXED, false));
                omniselectionfragment.setSearch(intent.getBooleanExtra(ARG_SEARCH, false));
                omniselectionfragment.setFilter(intent.getBooleanExtra(ARG_FILTER, false));
                omniselectionfragment.setMultiSelect(intent.getBooleanExtra(ARG_MULTI_SELECT, false));
                omniselectionfragment.setUserInput(intent.getBooleanExtra(ARG_USER_INPUT, false), intent.getStringExtra(ARG_USER_INPUT_FORMAT));
                omniselectionfragment.setExpandable(intent.getBooleanExtra(ARG_EXPANDABLE, false));
                mFwdIntent = (Intent)intent.getParcelableExtra(ARG_FWD_INTENT);
                getFragmentManager().beginTransaction().add(0x7f0902cc, omniselectionfragment).commit();
                return;
            }
            asettingsvalue[i] = (SettingsValue)aparcelable[i];
            i++;
        } while (true);
    }

}
