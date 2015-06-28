// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.ui;

import android.content.Context;
import android.widget.SectionIndexer;
import com.waze.settings.SettingsValue;
import java.util.Arrays;

// Referenced classes of package com.waze.ifs.ui:
//            OmniSelectionFragment

public static class MAX_SECTIONS extends MAX_SECTIONS
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
        super.es(asettingsvalue);
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


    public (Context context)
    {
        super(context);
        _numSections = 0;
        _sections = new String[MAX_SECTIONS];
        _positionForSection = new int[MAX_SECTIONS];
    }
}
