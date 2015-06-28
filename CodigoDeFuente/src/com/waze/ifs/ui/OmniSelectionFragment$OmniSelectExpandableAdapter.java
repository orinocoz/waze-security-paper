// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.ui;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ExpandableListAdapter;
import com.waze.settings.SettingsValue;
import java.util.Arrays;

// Referenced classes of package com.waze.ifs.ui:
//            OmniSelectionFragment

public static class MAX_GROUPS extends MAX_GROUPS
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
            return super.wType(i);
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
        super.wType(asettingsvalue);
        calcGroups(asettingsvalue);
    }


    public (Context context)
    {
        super(context);
        _numGroups = 0;
        prevGroup = -1;
        _groups = new int[MAX_GROUPS];
    }
}
