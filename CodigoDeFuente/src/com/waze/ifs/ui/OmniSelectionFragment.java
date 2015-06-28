// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.ui;

import android.app.Activity;
import android.app.Fragment;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AutoCompleteTextView;
import android.widget.BaseAdapter;
import android.widget.EditText;
import android.widget.ExpandableListAdapter;
import android.widget.ExpandableListView;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.SectionIndexer;
import android.widget.TextView;
import com.waze.NativeManager;
import com.waze.ResManager;
import com.waze.settings.SettingsTitleText;
import com.waze.settings.SettingsValue;
import com.waze.strings.DisplayStrings;
import com.waze.view.title.TitleBarTextButton;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Random;
import junit.framework.Assert;

public class OmniSelectionFragment extends Fragment
{
    public static class AutoCompleteOmniSelectAdapter extends FilteredOmniSelectAdapter
        implements Filterable
    {

        public View getView(int i, View view, ViewGroup viewgroup)
        {
            View view1 = super.getView(i, view, viewgroup);
            view1.findViewById(0x7f0904cc).setVisibility(8);
            return view1;
        }

        public AutoCompleteOmniSelectAdapter(Context context)
        {
            super(context);
        }
    }

    public static class FilteredOmniSelectAdapter extends OmniSelectAdapter
        implements Filterable
    {

        SettingsValue _last;
        SettingsValue originalValues[];

        public Filter getFilter()
        {
            return new Filter() {

                final FilteredOmniSelectAdapter this$1;

                protected android.widget.Filter.FilterResults performFiltering(CharSequence charsequence)
                {
                    android.widget.Filter.FilterResults filterresults;
                    SettingsValue asettingsvalue[];
                    String s;
                    int i;
                    SettingsValue asettingsvalue1[];
                    int j;
                    int k;
                    filterresults = new android.widget.Filter.FilterResults();
                    asettingsvalue = new SettingsValue[originalValues.length];
                    s = charsequence.toString().toLowerCase();
                    i = 0;
                    asettingsvalue1 = originalValues;
                    j = asettingsvalue1.length;
                    k = 0;
_L2:
                    SettingsValue settingsvalue;
                    if (k >= j)
                    {
                        filterresults.count = i;
                        SettingsValue asettingsvalue2[] = (SettingsValue[])Arrays.copyOf(asettingsvalue, i);
                        Arrays.sort(asettingsvalue2, new Comparator() {

                            final FilteredOmniSelectAdapter._cls1 this$2;

                            public int compare(SettingsValue settingsvalue, SettingsValue settingsvalue1)
                            {
                                if (settingsvalue.rank > settingsvalue1.rank)
                                {
                                    return -1;
                                }
                                return settingsvalue.rank >= settingsvalue1.rank ? 0 : 1;
                            }

                            public volatile int compare(Object obj, Object obj1)
                            {
                                return compare((SettingsValue)obj, (SettingsValue)obj1);
                            }

            
            {
                this$2 = FilteredOmniSelectAdapter._cls1.this;
                super();
            }
                        });
                        filterresults.values = asettingsvalue2;
                        return filterresults;
                    }
                    settingsvalue = asettingsvalue1[k];
                    if (settingsvalue != _last)
                    {
                        break; /* Loop/switch isn't completed */
                    }
                    settingsvalue.rank = 0.0F;
                    asettingsvalue[i] = settingsvalue;
                    i++;
_L6:
                    k++;
                    if (true) goto _L2; else goto _L1
_L1:
                    settingsvalue.rank = OmniSelectionFragment.calcRank(settingsvalue.display.toLowerCase(), s.toString());
                    if (settingsvalue.aliases == null) goto _L4; else goto _L3
_L3:
                    String as[];
                    int l;
                    int i1;
                    as = settingsvalue.aliases;
                    l = as.length;
                    i1 = 0;
_L8:
                    if (i1 < l) goto _L5; else goto _L4
_L4:
                    if (settingsvalue.rank >= 1.0F)
                    {
                        asettingsvalue[i] = settingsvalue;
                        i++;
                    }
                      goto _L6
_L5:
                    String s1 = as[i1];
                    if (settingsvalue.rank >= 2.0F) goto _L4; else goto _L7
_L7:
                    if (s1 != null)
                    {
                        settingsvalue.rank = Math.max(settingsvalue.rank, OmniSelectionFragment.calcRank(s1.toLowerCase(), s.toString()));
                    }
                    i1++;
                      goto _L8
                }

                protected void publishResults(CharSequence charsequence, android.widget.Filter.FilterResults filterresults)
                {
                    values = (SettingsValue[])filterresults.values;
                    notifyDataSetChanged();
                }

            
            {
                this$1 = FilteredOmniSelectAdapter.this;
                super();
            }
            };
        }

        public int getOriginalIndex(SettingsValue settingsvalue)
        {
            int i = 0;
_L6:
            if (i < originalValues.length) goto _L2; else goto _L1
_L1:
            i = -1;
_L4:
            return i;
_L2:
            if (originalValues[i] == settingsvalue) goto _L4; else goto _L3
_L3:
            i++;
            if (true) goto _L6; else goto _L5
_L5:
        }

        public void setLast(SettingsValue settingsvalue)
        {
            _last = settingsvalue;
        }

        public void setValues(SettingsValue asettingsvalue[])
        {
            originalValues = asettingsvalue;
            super.setValues(asettingsvalue);
        }

        public FilteredOmniSelectAdapter(Context context)
        {
            super(context);
        }
    }

    public static class FilteredOmniSelectExpandableAdapter extends OmniSelectExpandableAdapter
        implements Filterable
    {

        SettingsValue originalValues[];

        public Filter getFilter()
        {
            return new Filter() {

                final FilteredOmniSelectExpandableAdapter this$1;

                protected android.widget.Filter.FilterResults performFiltering(CharSequence charsequence)
                {
                    android.widget.Filter.FilterResults filterresults;
                    SettingsValue asettingsvalue[];
                    String s;
                    int i;
                    SettingsValue asettingsvalue1[];
                    int j;
                    int k;
                    filterresults = new android.widget.Filter.FilterResults();
                    asettingsvalue = new SettingsValue[originalValues.length];
                    s = charsequence.toString().toLowerCase();
                    i = 0;
                    asettingsvalue1 = originalValues;
                    j = asettingsvalue1.length;
                    k = 0;
_L3:
                    if (k < j) goto _L2; else goto _L1
_L1:
                    SettingsValue asettingsvalue2[];
                    int l;
                    SettingsValue asettingsvalue3[];
                    int i1;
                    asettingsvalue2 = (SettingsValue[])Arrays.copyOf(asettingsvalue, i);
                    calcGroups(asettingsvalue2);
                    l = 0;
                    asettingsvalue3 = new SettingsValue[asettingsvalue2.length];
                    i1 = 0;
_L4:
                    if (i1 >= asettingsvalue2.length)
                    {
                        SettingsValue asettingsvalue4[] = (SettingsValue[])Arrays.copyOf(asettingsvalue3, l);
                        calcGroups(asettingsvalue4);
                        filterresults.count = asettingsvalue4.length;
                        filterresults.values = asettingsvalue4;
                        return filterresults;
                    }
                    break MISSING_BLOCK_LABEL_199;
_L2:
                    SettingsValue settingsvalue = asettingsvalue1[k];
                    settingsvalue.rank = OmniSelectionFragment.calcRank(settingsvalue.display.toLowerCase(), s.toString());
                    if (settingsvalue.rank >= 1.0F || settingsvalue.isHeader)
                    {
                        asettingsvalue[i] = settingsvalue;
                        i++;
                    }
                    k++;
                      goto _L3
                    SettingsValue settingsvalue1 = asettingsvalue2[i1];
                    if (settingsvalue1.rank >= 1.0F)
                    {
                        asettingsvalue3[l] = settingsvalue1;
                        l++;
                    } else
                    if (settingsvalue1.isHeader && i1 < -1 + asettingsvalue2.length && !asettingsvalue2[i1 + 1].isHeader)
                    {
                        asettingsvalue3[l] = settingsvalue1;
                        l++;
                    }
                    i1++;
                      goto _L4
                }

                protected void publishResults(CharSequence charsequence, android.widget.Filter.FilterResults filterresults)
                {
                    values = (SettingsValue[])filterresults.values;
                    notifyDataSetChanged();
                }

            
            {
                this$1 = FilteredOmniSelectExpandableAdapter.this;
                super();
            }
            };
        }

        public int getOriginalIndex(SettingsValue settingsvalue)
        {
            int i = 0;
_L6:
            if (i < originalValues.length) goto _L2; else goto _L1
_L1:
            i = -1;
_L4:
            return i;
_L2:
            if (originalValues[i] == settingsvalue) goto _L4; else goto _L3
_L3:
            i++;
            if (true) goto _L6; else goto _L5
_L5:
        }

        public void setValues(SettingsValue asettingsvalue[])
        {
            originalValues = asettingsvalue;
            super.setValues(asettingsvalue);
        }

        public FilteredOmniSelectExpandableAdapter(Context context)
        {
            super(context);
        }
    }

    public static interface IOmniSelect
    {

        public abstract void isSearching(int i);

        public abstract void omniSelected(int i, String s, String s1, boolean flag);
    }

    public static class IndexedOmniSelectAdapter extends OmniSelectAdapter
        implements SectionIndexer
    {

        private static int MAX_SECTIONS = 64;
        int _numSections;
        int _positionForSection[];
        int _sectionForPosition[];
        String _sections[];

        public int getPositionForSection(int i)
        {
            if (i < _positionForSection.length)
            {
                return _positionForSection[i];
            } else
            {
                return -1;
            }
        }

        public int getSectionForPosition(int i)
        {
            if (i < _sectionForPosition.length)
            {
                return _sectionForPosition[i];
            } else
            {
                return -1;
            }
        }

        public Object[] getSections()
        {
            return _sections;
        }

        public void setValues(SettingsValue asettingsvalue[])
        {
            char c;
            int i;
            _sectionForPosition = new int[asettingsvalue.length];
            c = '\uFFFF';
            i = 0;
_L5:
            if (i < asettingsvalue.length) goto _L2; else goto _L1
_L1:
            _sections = (String[])Arrays.copyOf(_sections, _numSections);
            _positionForSection = Arrays.copyOf(_positionForSection, _numSections);
            super.setValues(asettingsvalue);
            return;
_L2:
            char c1 = asettingsvalue[i].display.charAt(0);
            if (c1 != c)
            {
                _sections[_numSections] = (new StringBuilder()).append(c1).toString();
                _positionForSection[_numSections] = i;
                c = c1;
                _numSections = 1 + _numSections;
            }
            _sectionForPosition[i] = -1 + _numSections;
            if (_numSections == MAX_SECTIONS) goto _L1; else goto _L3
_L3:
            i++;
            if (true) goto _L5; else goto _L4
_L4:
        }


        public IndexedOmniSelectAdapter(Context context)
        {
            super(context);
            _numSections = 0;
            _sections = new String[MAX_SECTIONS];
            _positionForSection = new int[MAX_SECTIONS];
        }
    }

    public static class OmniSelectAdapter extends BaseAdapter
    {

        private LayoutInflater inflater;
        private boolean mBoldLastItem;
        private SettingsValue mSelectedItem;
        private int mSelectedPos;
        private boolean mShowLastItem;
        protected SettingsValue values[];

        public int getCount()
        {
            if (values == null)
            {
                return 0;
            }
            if (mShowLastItem)
            {
                return values.length;
            } else
            {
                return -1 + values.length;
            }
        }

        public Object getItem(int i)
        {
            if (values == null)
            {
                return null;
            } else
            {
                return values[i];
            }
        }

        public long getItemId(int i)
        {
            return (long)i;
        }

        public SettingsValue getSelectedItem()
        {
            return mSelectedItem;
        }

        public int getSelectedPosition()
        {
            return mSelectedPos;
        }

        public SettingsValue[] getValues()
        {
            return values;
        }

        public View getView(int i, View view, ViewGroup viewgroup)
        {
            if (view == null)
            {
                view = inflater.inflate(0x7f03009c, viewgroup, false);
            }
            SettingsValue settingsvalue = values[i];
            int j = -1 + values.length;
            TextView textview = (TextView)view.findViewById(0x7f0904ca);
            TextView textview1 = (TextView)view.findViewById(0x7f0904cb);
            ImageView imageview = (ImageView)view.findViewById(0x7f0904c8);
            ImageView imageview1;
            int k;
            View view1;
            if (imageview != null && settingsvalue != null)
            {
                if (settingsvalue.icon != null)
                {
                    imageview.setImageDrawable(settingsvalue.icon);
                    imageview.setVisibility(0);
                } else
                if (settingsvalue.iconName != null)
                {
                    android.graphics.drawable.Drawable drawable = ResManager.GetSkinDrawable((new StringBuilder(String.valueOf(settingsvalue.iconName))).append(".bin").toString());
                    if (drawable != null)
                    {
                        imageview.setImageDrawable(drawable);
                    } else
                    {
                        imageview.setVisibility(8);
                    }
                } else
                {
                    imageview.setVisibility(8);
                }
            }
            textview.setText(settingsvalue.display);
            if (mBoldLastItem && i == j)
            {
                textview.setTypeface(null, 1);
            } else
            {
                textview.setTypeface(null, 0);
            }
            if (settingsvalue.display2 == null || settingsvalue.display2.length() == 0)
            {
                textview1.setVisibility(8);
            } else
            {
                textview1.setText(settingsvalue.display2);
            }
            if (settingsvalue.isSelected)
            {
                mSelectedItem = settingsvalue;
                mSelectedPos = i;
            }
            imageview1 = (ImageView)view.findViewById(0x7f0904cc);
            if (settingsvalue.isSelected)
            {
                k = 0;
            } else
            {
                k = 4;
            }
            imageview1.setVisibility(k);
            if (!mShowLastItem)
            {
                j--;
            }
            view1 = view.findViewById(0x7f0904c7);
            if (i == 0)
            {
                if (i == j)
                {
                    view1.setBackgroundResource(0x7f020225);
                } else
                {
                    view1.setBackgroundResource(0x7f020226);
                }
            } else
            if (i == j)
            {
                view1.setBackgroundResource(0x7f020223);
            } else
            {
                view1.setBackgroundResource(0x7f020224);
            }
            view1.setPadding(0, 0, 0, 0);
            return view;
        }

        public void setBoldLastItem(boolean flag)
        {
            mBoldLastItem = flag;
        }

        public void setShowLastItem(boolean flag)
        {
            mShowLastItem = flag;
        }

        public void setValues(SettingsValue asettingsvalue[])
        {
            values = asettingsvalue;
            notifyDataSetChanged();
        }

        public OmniSelectAdapter(Context context)
        {
            mSelectedItem = null;
            mSelectedPos = -1;
            mShowLastItem = true;
            mBoldLastItem = false;
            inflater = LayoutInflater.from(context);
        }
    }

    public static class OmniSelectExpandableAdapter extends OmniSelectAdapter
        implements ExpandableListAdapter
    {

        private static int MAX_GROUPS = 64;
        int _groups[];
        int _numGroups;
        int prevGroup;

        protected void calcGroups(SettingsValue asettingsvalue[])
        {
            int i;
            Arrays.fill(_groups, 0);
            _numGroups = 0;
            i = 0;
_L5:
            if (i < asettingsvalue.length) goto _L2; else goto _L1
_L1:
            return;
_L2:
            if (asettingsvalue[i].isHeader)
            {
                _groups[_numGroups] = i;
                _numGroups = 1 + _numGroups;
            }
            if (_numGroups == MAX_GROUPS) goto _L1; else goto _L3
_L3:
            i++;
            if (true) goto _L5; else goto _L4
_L4:
        }

        public Object getChild(int i, int j)
        {
            return values[getChildIndex(i, j)];
        }

        public long getChildId(int i, int j)
        {
            return (long)getChildIndex(i, j);
        }

        public int getChildIndex(int i, int j)
        {
            return 1 + (j + _groups[i]);
        }

        public View getChildView(int i, int j, boolean flag, View view, ViewGroup viewgroup)
        {
            int k = getChildIndex(i, j);
            if (k == values.length)
            {
                View view1 = new View(viewgroup.getContext());
                view1.setBackgroundResource(0x7f02007c);
                return view1;
            }
            if (!(view instanceof ViewGroup))
            {
                view = null;
            }
            View view2 = getView(k, view, viewgroup);
            View view3 = view2.findViewById(0x7f0904c7);
            if (j == 0)
            {
                if (flag)
                {
                    view3.setBackgroundResource(0x7f020209);
                } else
                {
                    view3.setBackgroundResource(0x7f02020a);
                }
            } else
            if (flag || k == -1 + values.length)
            {
                view3.setBackgroundResource(0x7f020207);
            } else
            {
                view3.setBackgroundResource(0x7f020208);
            }
            view3.setPadding(0, 0, 0, 0);
            return view2;
        }

        public int getChildrenCount(int i)
        {
            int j;
            if (i < -1 + _numGroups)
            {
                j = _groups[i + 1];
            } else
            {
                j = 1 + values.length;
            }
            return -1 + (j - _groups[i]);
        }

        public long getCombinedChildId(long l, long l1)
        {
            return 0L;
        }

        public long getCombinedGroupId(long l)
        {
            return 0L;
        }

        public Object getGroup(int i)
        {
            return values[_groups[i]];
        }

        public int getGroupCount()
        {
            return _numGroups;
        }

        public long getGroupId(int i)
        {
            return (long)getChildIndex(i, -1);
        }

        public View getGroupView(int i, boolean flag, View view, ViewGroup viewgroup)
        {
            View view1 = getView(_groups[i], view, viewgroup);
            if (flag)
            {
                View view2 = view1.findViewById(0x7f0904c7);
                view2.setBackgroundResource(0x7f020225);
                view2.setPadding(0, 0, 0, 0);
            }
            return view1;
        }

        public int getItemViewType(int i)
        {
            if (i == values.length)
            {
                return -1;
            } else
            {
                return super.getItemViewType(i);
            }
        }

        public boolean isChildSelectable(int i, int j)
        {
            return true;
        }

        public void onGroupCollapsed(int i)
        {
        }

        public void onGroupExpanded(int i)
        {
        }

        public void setValues(SettingsValue asettingsvalue[])
        {
            super.setValues(asettingsvalue);
            calcGroups(asettingsvalue);
        }


        public OmniSelectExpandableAdapter(Context context)
        {
            super(context);
            _numGroups = 0;
            prevGroup = -1;
            _groups = new int[MAX_GROUPS];
        }
    }


    static final boolean OPTIMIZE = true;
    private static final String TAG = com/waze/ifs/ui/OmniSelectionFragment.getName();
    private OmniSelectAdapter mAdapter;
    private SettingsValue mAddUserInput;
    private AutoCompleteOmniSelectAdapter mAutoCompleteAdapter;
    private String mEditBoxHint;
    private EditText mEditText;
    private boolean mIsAutoComplete;
    private boolean mIsExpandable;
    private boolean mIsFilter;
    private boolean mIsIndexed;
    private boolean mIsMultiSelect;
    private boolean mIsPortrait;
    private boolean mIsSearch;
    private boolean mIsUserInput;
    private ListView mListView;
    private int mPrevGroup;
    private String mSubTitle;
    private int mTimesEnteredSearch;
    private String mTitleText;
    private int mTopOptionIcon;
    private String mTopOptionText;
    private String mUserInputFormat;
    private SettingsValue mValues[];
    private View r;

    public OmniSelectionFragment()
    {
        mValues = null;
        mIsMultiSelect = false;
        mIsUserInput = false;
        mUserInputFormat = null;
        mIsIndexed = false;
        mIsSearch = false;
        mTitleText = null;
        mEditBoxHint = null;
        mSubTitle = null;
        mIsFilter = false;
        mIsExpandable = false;
        mIsAutoComplete = false;
        mTopOptionText = null;
        mTopOptionIcon = 0;
        mTimesEnteredSearch = 0;
        mIsPortrait = false;
        mPrevGroup = -1;
    }

    private static float calcRank(String s, String s1)
    {
        if (s1.length() == 0)
        {
            return 1.0F;
        }
        if (s.length() == 0)
        {
            return 0.0F;
        }
        int i = Math.min(s.length(), s1.length());
        byte byte0 = 2;
        if (i <= 2)
        {
            byte0 = 0;
        }
        if (i <= 4)
        {
            byte0 = 1;
        }
        return calcRank(s, s1, byte0);
    }

    private static float calcRank(String s, String s1, int i)
    {
        if (s1.length() == 0)
        {
            return 0.5F * (float)i;
        }
        int j = s.indexOf(s1.charAt(0));
        if (j < 0)
        {
            if (i > 0)
            {
                return calcRank(s, s1.substring(1), i - 1);
            } else
            {
                return -0.5F * (float)s1.length();
            }
        }
        float f;
        float f1;
        if (j == 0 || Character.isWhitespace(s.charAt(j - 1)))
        {
            f = 0.5F;
        } else
        {
            f = 0.5F - 0.5F * (float)j;
        }
        f1 = calcRank(s.substring(j + 1), s1.substring(1), i);
        if (f1 + f > 1.0F)
        {
            return f + f1;
        }
        float f2 = calcRank(s.substring(j + 1), s1, i);
        if (f2 + f > 1.0F)
        {
            return f + f2;
        }
        if (i > 0)
        {
            return f + Math.max(f2, Math.max(f1, calcRank(s, s1.substring(1), i - 1)));
        } else
        {
            return f + Math.max(f2, f1);
        }
    }

    private void setResultValueAndContinue(int i, SettingsValue settingsvalue, boolean flag)
    {
        if (settingsvalue == null)
        {
            return;
        }
        settingsvalue.isSelected = false;
        if (mIsSearch || mIsAutoComplete)
        {
            EditText edittext = (EditText)r.findViewById(0x7f0904c4);
            ((InputMethodManager)getActivity().getSystemService("input_method")).hideSoftInputFromWindow(edittext.getWindowToken(), 0);
        }
        if (mIsFilter)
        {
            if (mIsExpandable)
            {
                i = ((FilteredOmniSelectExpandableAdapter)mAdapter).getOriginalIndex(settingsvalue);
            } else
            {
                i = ((FilteredOmniSelectAdapter)mAdapter).getOriginalIndex(settingsvalue);
            }
        }
        ((IOmniSelect)getActivity()).omniSelected(i, settingsvalue.value, settingsvalue.display, flag);
    }

    public static void testCalcRank()
    {
        boolean flag = true;
        boolean flag1;
        boolean flag2;
        boolean flag3;
        boolean flag4;
        boolean flag5;
        boolean flag6;
        boolean flag7;
        boolean flag8;
        boolean flag9;
        boolean flag10;
        boolean flag11;
        if (calcRank("car rental", "car") > 2.0F)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        Assert.assertTrue(flag1);
        if (calcRank("car rental", "rent") >= 2.0F)
        {
            flag2 = flag;
        } else
        {
            flag2 = false;
        }
        Assert.assertTrue(flag2);
        if (calcRank("car rental", "re") >= 1.0F)
        {
            flag3 = flag;
        } else
        {
            flag3 = false;
        }
        Assert.assertTrue(flag3);
        if (calcRank("car rental", "boat") < 1.0F)
        {
            flag4 = flag;
        } else
        {
            flag4 = false;
        }
        Assert.assertTrue(flag4);
        if (calcRank("waze", "ee") < 1.0F)
        {
            flag5 = flag;
        } else
        {
            flag5 = false;
        }
        Assert.assertTrue(flag5);
        if (calcRank("college / university", "uni") >= 2.0F)
        {
            flag6 = flag;
        } else
        {
            flag6 = false;
        }
        Assert.assertTrue(flag6);
        if (calcRank("college / university", "univ") > 2.0F)
        {
            flag7 = flag;
        } else
        {
            flag7 = false;
        }
        Assert.assertTrue(flag7);
        if (calcRank("college / university", "univer") > 3F)
        {
            flag8 = flag;
        } else
        {
            flag8 = false;
        }
        Assert.assertTrue(flag8);
        if (calcRank("college / university", "universit") > 4F)
        {
            flag9 = flag;
        } else
        {
            flag9 = false;
        }
        Assert.assertTrue(flag9);
        if (calcRank("waze", "wazeeeeee") < 1.0F)
        {
            flag10 = flag;
        } else
        {
            flag10 = false;
        }
        Assert.assertTrue(flag10);
        if (calcRank("waze", "wazeeeeeeee") <= 0.0F)
        {
            flag11 = flag;
        } else
        {
            flag11 = false;
        }
        Assert.assertTrue(flag11);
        if (calcRank("waze", "") < 1.0F)
        {
            flag = false;
        }
        Assert.assertTrue(flag);
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

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        super.onCreateView(layoutinflater, viewgroup, bundle);
        boolean flag;
        TitleBarTextButton titlebartextbutton;
        if (bundle != null)
        {
            mIsIndexed = bundle.getBoolean((new StringBuilder(String.valueOf(TAG))).append(".mIsIndexed").toString(), mIsIndexed);
            mIsSearch = bundle.getBoolean((new StringBuilder(String.valueOf(TAG))).append(".mIsSearch").toString(), mIsSearch);
            mIsFilter = bundle.getBoolean((new StringBuilder(String.valueOf(TAG))).append(".mIsFilter").toString(), mIsFilter);
            mIsMultiSelect = bundle.getBoolean((new StringBuilder(String.valueOf(TAG))).append(".mIsMultiSelect").toString(), mIsMultiSelect);
            mIsUserInput = bundle.getBoolean((new StringBuilder(String.valueOf(TAG))).append(".mIsUserInput").toString(), mIsUserInput);
            mUserInputFormat = bundle.getString((new StringBuilder(String.valueOf(TAG))).append(".mUserInputFormat").toString(), mUserInputFormat);
            mIsExpandable = bundle.getBoolean((new StringBuilder(String.valueOf(TAG))).append(".mIsExpandable").toString(), mIsExpandable);
            mIsAutoComplete = bundle.getBoolean((new StringBuilder(String.valueOf(TAG))).append(".mIsAutoComplete").toString(), mIsAutoComplete);
            mTitleText = bundle.getString((new StringBuilder(String.valueOf(TAG))).append(".mTitleText").toString(), mTitleText);
            mEditBoxHint = bundle.getString((new StringBuilder(String.valueOf(TAG))).append(".mEditBoxHint").toString(), mEditBoxHint);
            mSubTitle = bundle.getString((new StringBuilder(String.valueOf(TAG))).append(".mSubTitle").toString(), mSubTitle);
            mValues = (SettingsValue[])bundle.getParcelableArray((new StringBuilder(String.valueOf(TAG))).append(".mValues").toString());
            mTimesEnteredSearch = bundle.getInt((new StringBuilder(String.valueOf(TAG))).append(".mTimesEnteredSearch").toString(), mTimesEnteredSearch);
            mTopOptionText = bundle.getString((new StringBuilder(String.valueOf(TAG))).append(".mTopOptionText").toString(), mTopOptionText);
            mTopOptionIcon = bundle.getInt((new StringBuilder(String.valueOf(TAG))).append(".mTopOptionIcon").toString(), mTopOptionIcon);
            if (mIsUserInput)
            {
                mAddUserInput = mValues[-1 + mValues.length];
            }
        } else
        if (mIsUserInput)
        {
            int i = mValues.length;
            mValues = (SettingsValue[])Arrays.copyOf(mValues, i + 1);
            SettingsValue asettingsvalue[] = mValues;
            SettingsValue settingsvalue = new SettingsValue("", String.format(mUserInputFormat, new Object[] {
                ""
            }), false);
            mAddUserInput = settingsvalue;
            asettingsvalue[i] = settingsvalue;
        }
        if (getResources().getConfiguration().orientation == 1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        mIsPortrait = flag;
        r = layoutinflater.inflate(0x7f03009b, viewgroup, false);
        titlebartextbutton = (TitleBarTextButton)r.findViewById(0x7f090058);
        if (mIsMultiSelect || mIsExpandable)
        {
            titlebartextbutton.init(getActivity(), mTitleText, NativeManager.getInstance().getLanguageString(DisplayStrings.DS_DONE));
        } else
        {
            titlebartextbutton.init(getActivity(), mTitleText);
        }
        titlebartextbutton.setOnClickCloseListener(new android.view.View.OnClickListener() {

            final OmniSelectionFragment this$0;

            public void onClick(View view1)
            {
                if (mIsMultiSelect || mIsExpandable)
                {
                    SettingsValue settingsvalue1 = mAdapter.getSelectedItem();
                    if (settingsvalue1 != null)
                    {
                        setResultValueAndContinue(mAdapter.getSelectedPosition(), settingsvalue1, false);
                    }
                }
            }

            
            {
                this$0 = OmniSelectionFragment.this;
                super();
            }
        });
        if (mTopOptionText != null)
        {
            View view = r.findViewById(0x7f0904c0);
            view.setVisibility(0);
            ((TextView)r.findViewById(0x7f0904c2)).setText(mTopOptionText);
            ((ImageView)r.findViewById(0x7f0904c1)).setImageResource(mTopOptionIcon);
            view.setOnClickListener(new android.view.View.OnClickListener() {

                final OmniSelectionFragment this$0;

                public void onClick(View view1)
                {
                    ((IOmniSelect)getActivity()).omniSelected(-1, null, null, false);
                }

            
            {
                this$0 = OmniSelectionFragment.this;
                super();
            }
            });
        }
        if (mSubTitle != null)
        {
            SettingsTitleText settingstitletext = (SettingsTitleText)r.findViewById(0x7f09027f);
            settingstitletext.setText(mSubTitle);
            settingstitletext.setVisibility(0);
        }
        if (mIsSearch || mIsAutoComplete)
        {
            r.findViewById(0x7f0904c3).setVisibility(0);
            mEditText = (EditText)r.findViewById(0x7f0904c4);
            if (mIsUserInput && mIsPortrait)
            {
                mEditText.requestFocus();
            }
            if (mIsFilter || mIsAutoComplete)
            {
                mEditText.addTextChangedListener(new TextWatcher() {

                    final OmniSelectionFragment this$0;

                    public void afterTextChanged(Editable editable)
                    {
                    }

                    public void beforeTextChanged(CharSequence charsequence, int j, int k, int l)
                    {
                    }

                    public void onTextChanged(CharSequence charsequence, int j, int k, int l)
                    {
                        boolean flag1 = true;
                        if (mAdapter instanceof FilteredOmniSelectAdapter)
                        {
                            String s = charsequence.toString().trim();
                            if (mIsUserInput)
                            {
                                SettingsValue settingsvalue1 = mAddUserInput;
                                String s1 = mUserInputFormat;
                                Object aobj[] = new Object[flag1];
                                aobj[0] = s;
                                settingsvalue1.display = String.format(s1, aobj);
                                mAddUserInput.value = (new StringBuilder()).append(s).toString();
                                if (s.length() < 2)
                                {
                                    flag1 = false;
                                }
                                mAdapter.setShowLastItem(flag1);
                                mAdapter.setBoldLastItem(flag1);
                            } else
                            {
                                mAdapter.setShowLastItem(flag1);
                                mAdapter.setBoldLastItem(false);
                            }
                            ((FilteredOmniSelectAdapter)mAdapter).getFilter().filter(s);
                        } else
                        {
                            if (mAdapter instanceof FilteredOmniSelectExpandableAdapter)
                            {
                                ((FilteredOmniSelectExpandableAdapter)mAdapter).getFilter().filter(charsequence);
                                return;
                            }
                            if (mIsAutoComplete)
                            {
                                mAutoCompleteAdapter.getFilter().filter(charsequence);
                                return;
                            }
                        }
                    }

            
            {
                this$0 = OmniSelectionFragment.this;
                super();
            }
                });
                mEditText.setOnEditorActionListener(new android.widget.TextView.OnEditorActionListener() {

                    final OmniSelectionFragment this$0;

                    public boolean onEditorAction(TextView textview, int j, KeyEvent keyevent)
                    {
                        if (mIsAutoComplete)
                        {
                            if (mAutoCompleteAdapter.getCount() > 0)
                            {
                                SettingsValue settingsvalue1 = (SettingsValue)mAutoCompleteAdapter.getItem(0);
                                if (settingsvalue1.rank >= 2.0F)
                                {
                                    int k = mAutoCompleteAdapter.getOriginalIndex(settingsvalue1);
                                    setResultValueAndContinue(k, settingsvalue1, false);
                                }
                            }
                            return true;
                        }
                        if (mIsUserInput && mAddUserInput.value.length() >= 2)
                        {
                            setResultValueAndContinue(mValues.length, mAddUserInput, true);
                        }
                        return false;
                    }

            
            {
                this$0 = OmniSelectionFragment.this;
                super();
            }
                });
                if (mEditText != null)
                {
                    mEditText.setHint(mEditBoxHint);
                }
                if (mIsAutoComplete)
                {
                    mAutoCompleteAdapter = new AutoCompleteOmniSelectAdapter(getActivity());
                    mAutoCompleteAdapter.setValues(mValues);
                    AutoCompleteTextView autocompletetextview = (AutoCompleteTextView)mEditText;
                    autocompletetextview.setAdapter(mAutoCompleteAdapter);
                    autocompletetextview.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

                        final OmniSelectionFragment this$0;

                        public void onItemClick(AdapterView adapterview, View view1, int j, long l)
                        {
                            SettingsValue settingsvalue1 = (SettingsValue)mAutoCompleteAdapter.getItem(j);
                            int k = mAutoCompleteAdapter.getOriginalIndex(settingsvalue1);
                            setResultValueAndContinue(k, settingsvalue1, false);
                        }

            
            {
                this$0 = OmniSelectionFragment.this;
                super();
            }
                    });
                }
            }
            mEditText.setOnFocusChangeListener(new android.view.View.OnFocusChangeListener() {

                final OmniSelectionFragment this$0;

                public void onFocusChange(View view1, boolean flag1)
                {
                    if (flag1)
                    {
                        OmniSelectionFragment omniselectionfragment = OmniSelectionFragment.this;
                        omniselectionfragment.mTimesEnteredSearch = 1 + omniselectionfragment.mTimesEnteredSearch;
                        ((IOmniSelect)getActivity()).isSearching(mTimesEnteredSearch);
                    }
                }

            
            {
                this$0 = OmniSelectionFragment.this;
                super();
            }
            });
        } else
        {
            r.findViewById(0x7f0904c3).setVisibility(8);
        }
        if (mIsFilter && mIsExpandable)
        {
            mAdapter = new FilteredOmniSelectExpandableAdapter(getActivity());
        } else
        if (mIsFilter)
        {
            mAdapter = new FilteredOmniSelectAdapter(getActivity());
            ((FilteredOmniSelectAdapter)mAdapter).setLast(mAddUserInput);
            mAdapter.setShowLastItem(false);
        } else
        if (mIsIndexed)
        {
            mAdapter = new IndexedOmniSelectAdapter(getActivity());
        } else
        if (mIsExpandable)
        {
            mAdapter = new OmniSelectExpandableAdapter(getActivity());
        } else
        {
            mAdapter = new OmniSelectAdapter(getActivity());
        }
        mListView = (ListView)r.findViewById(0x7f0904c5);
        if (mIsIndexed)
        {
            mListView.setFastScrollEnabled(true);
        }
        if (mIsExpandable)
        {
            mListView.setVisibility(8);
            final ExpandableListView lv = (ExpandableListView)r.findViewById(0x7f0904c6);
            lv.setVisibility(0);
            lv.setAdapter((ExpandableListAdapter)mAdapter);
            lv.setOnGroupClickListener(new android.widget.ExpandableListView.OnGroupClickListener() {

                final OmniSelectionFragment this$0;
                private final ExpandableListView val$lv;

                public boolean onGroupClick(ExpandableListView expandablelistview, View view1, int j, long l)
                {
                    int k = ((OmniSelectExpandableAdapter)mAdapter).getChildIndex(j, -1);
                    SettingsValue settingsvalue1 = (SettingsValue)((OmniSelectExpandableAdapter)mAdapter).getItem(k);
                    if (settingsvalue1.isSelected)
                    {
                        setResultValueAndContinue(k, settingsvalue1, false);
                        return true;
                    }
                    if (mAdapter.getSelectedItem() != null)
                    {
                        mAdapter.getSelectedItem().isSelected = false;
                    }
                    settingsvalue1.isSelected = true;
                    if (lv.isGroupExpanded(j))
                    {
                        lv.collapseGroup(j);
                        mPrevGroup = -1;
                        return true;
                    }
                    lv.expandGroup(j);
                    if (mPrevGroup != -1)
                    {
                        lv.collapseGroup(mPrevGroup);
                    }
                    mPrevGroup = j;
                    lv.smoothScrollToPosition(j);
                    return true;
                }

            
            {
                this$0 = OmniSelectionFragment.this;
                lv = expandablelistview;
                super();
            }
            });
            lv.setOnChildClickListener(new android.widget.ExpandableListView.OnChildClickListener() {

                final OmniSelectionFragment this$0;

                public boolean onChildClick(ExpandableListView expandablelistview, View view1, int j, int k, long l)
                {
                    int i1 = ((OmniSelectExpandableAdapter)mAdapter).getChildIndex(j, k);
                    SettingsValue settingsvalue1 = (SettingsValue)((OmniSelectExpandableAdapter)mAdapter).getItem(i1);
                    if (settingsvalue1.isSelected)
                    {
                        setResultValueAndContinue(i1, settingsvalue1, false);
                    } else
                    {
                        if (mAdapter.getSelectedItem() != null)
                        {
                            mAdapter.getSelectedItem().isSelected = false;
                        }
                        settingsvalue1.isSelected = true;
                    }
                    mAdapter.notifyDataSetChanged();
                    return true;
                }

            
            {
                this$0 = OmniSelectionFragment.this;
                super();
            }
            });
            mListView = lv;
        } else
        {
            mListView.setAdapter(mAdapter);
        }
        mAdapter.setValues(mValues);
        mListView.invalidateViews();
        mListView.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

            final OmniSelectionFragment this$0;

            public void onItemClick(AdapterView adapterview, View view1, int j, long l)
            {
                boolean flag1 = true;
                if (mValues != null)
                {
                    if (!mIsMultiSelect)
                    {
                        if (mAdapter.getSelectedItem() != null)
                        {
                            mAdapter.getSelectedItem().isSelected = false;
                        }
                        SettingsValue settingsvalue1;
                        if (mIsFilter)
                        {
                            settingsvalue1 = (SettingsValue)((FilteredOmniSelectAdapter)mAdapter).getItem(j);
                        } else
                        {
                            settingsvalue1 = (SettingsValue)mAdapter.getItem(j);
                        }
                        settingsvalue1.isSelected = flag1;
                        if (settingsvalue1 != mAddUserInput)
                        {
                            flag1 = false;
                        }
                        if (!flag1 || mAddUserInput.value != null && mAddUserInput.value.length() != 0)
                        {
                            setResultValueAndContinue(j, settingsvalue1, flag1);
                            return;
                        }
                    } else
                    {
                        mValues[j].isSelected = flag1;
                        return;
                    }
                }
            }

            
            {
                this$0 = OmniSelectionFragment.this;
                super();
            }
        });
        return r;
    }

    public void onResume()
    {
        super.onResume();
        EditText edittext = (EditText)r.findViewById(0x7f0904c4);
        InputMethodManager inputmethodmanager = (InputMethodManager)getActivity().getSystemService("input_method");
        if (!mIsSearch && !mIsAutoComplete && !mIsUserInput)
        {
            inputmethodmanager.hideSoftInputFromWindow(edittext.getWindowToken(), 0);
        } else
        if (mIsUserInput && mIsPortrait)
        {
            inputmethodmanager.showSoftInput(edittext, 0);
            return;
        }
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean((new StringBuilder(String.valueOf(TAG))).append(".mIsIndexed").toString(), mIsIndexed);
        bundle.putBoolean((new StringBuilder(String.valueOf(TAG))).append(".mIsSearch").toString(), mIsSearch);
        bundle.putBoolean((new StringBuilder(String.valueOf(TAG))).append(".mIsFilter").toString(), mIsFilter);
        bundle.putBoolean((new StringBuilder(String.valueOf(TAG))).append(".mIsMultiSelect").toString(), mIsMultiSelect);
        bundle.putBoolean((new StringBuilder(String.valueOf(TAG))).append(".mIsUserInput").toString(), mIsUserInput);
        bundle.putString((new StringBuilder(String.valueOf(TAG))).append(".mUserInputFormat").toString(), mUserInputFormat);
        bundle.putBoolean((new StringBuilder(String.valueOf(TAG))).append(".mIsExpandable").toString(), mIsExpandable);
        bundle.putBoolean((new StringBuilder(String.valueOf(TAG))).append(".mIsAutoComplete").toString(), mIsAutoComplete);
        bundle.putString((new StringBuilder(String.valueOf(TAG))).append(".mTitleText").toString(), mTitleText);
        bundle.putString((new StringBuilder(String.valueOf(TAG))).append(".mEditBoxHint").toString(), mEditBoxHint);
        bundle.putString((new StringBuilder(String.valueOf(TAG))).append(".mSubTitle").toString(), mSubTitle);
        bundle.putParcelableArray((new StringBuilder(String.valueOf(TAG))).append(".mValues").toString(), mValues);
        bundle.putInt((new StringBuilder(String.valueOf(TAG))).append(".mTimesEnteredSearch").toString(), mTimesEnteredSearch);
        bundle.putString((new StringBuilder(String.valueOf(TAG))).append(".mTopOptionText").toString(), mTopOptionText);
        bundle.putInt((new StringBuilder(String.valueOf(TAG))).append(".mTopOptionIcon").toString(), mTopOptionIcon);
    }

    public void setAutoComplete(boolean flag)
    {
        mIsAutoComplete = flag;
    }

    public void setEditBoxHint(String s)
    {
        mEditBoxHint = s;
    }

    public void setExpandable(boolean flag)
    {
        mIsExpandable = flag;
    }

    public void setFilter(boolean flag)
    {
        mIsFilter = flag;
    }

    public void setIndexed(boolean flag)
    {
        mIsIndexed = flag;
    }

    public void setMultiSelect(boolean flag)
    {
        mIsMultiSelect = flag;
    }

    public void setSearch(boolean flag)
    {
        mIsSearch = flag;
    }

    public void setSubTitle(String s)
    {
        mSubTitle = s;
    }

    public void setTitle(String s)
    {
        mTitleText = s;
    }

    public void setTopOption(String s, int i)
    {
        mTopOptionText = s;
        mTopOptionIcon = i;
    }

    public void setUserInput(boolean flag, String s)
    {
        mIsUserInput = flag;
        mUserInputFormat = s;
    }

    public void setValues(SettingsValue asettingsvalue[])
    {
        mValues = asettingsvalue;
    }

















}
