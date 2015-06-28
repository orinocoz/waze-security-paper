// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import com.waze.NativeManager;
import com.waze.settings.SettingsValue;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

public class EditPlaceCategoriesHolder
{

    private static com.waze.NativeManager.VenueCategory mAllCategories[] = null;
    private static HashMap mCategoryIconById = null;
    private static HashMap mCategoryIdForParent = null;
    private static HashMap mCategoryNameById = null;
    private static ArrayList mCategoryParentIds = null;
    private static SettingsValue mSettingValues[];

    public EditPlaceCategoriesHolder()
    {
    }

    public static com.waze.NativeManager.VenueCategory[] getCategories()
    {
        if (mAllCategories == null)
        {
            NativeManager.Post(new Runnable() {

                public void run()
                {
                    EditPlaceCategoriesHolder.mAllCategories = NativeManager.getInstance().venueProviderGetCategories();
                }

            });
        }
        return mAllCategories;
    }

    public static String getCategoryById(String s)
    {
        if (mCategoryNameById != null) goto _L2; else goto _L1
_L1:
        int i;
        if (mAllCategories == null)
        {
            return null;
        }
        mCategoryNameById = new HashMap();
        i = 0;
_L5:
        if (i < mAllCategories.length) goto _L3; else goto _L2
_L2:
        return (String)mCategoryNameById.get(s);
_L3:
        mCategoryNameById.put(mAllCategories[i].id, mAllCategories[i].label);
        i++;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public static String getCategoryIconById(String s)
    {
        if (mCategoryIconById != null) goto _L2; else goto _L1
_L1:
        int i;
        if (mAllCategories == null)
        {
            return null;
        }
        mCategoryIconById = new HashMap();
        i = 0;
_L5:
        if (i < mAllCategories.length) goto _L3; else goto _L2
_L2:
        return (String)mCategoryIconById.get(s);
_L3:
        mCategoryIconById.put(mAllCategories[i].id, mAllCategories[i].icon);
        i++;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public static SettingsValue[] getCategoryValues()
    {
        if (mCategoryIdForParent != null) goto _L2; else goto _L1
_L1:
        int i1;
        if (mAllCategories == null)
        {
            return null;
        }
        mCategoryIdForParent = new HashMap();
        mCategoryParentIds = new ArrayList();
        i1 = 0;
_L6:
        if (i1 < mAllCategories.length) goto _L3; else goto _L2
_L2:
        int l;
        Iterator iterator;
        if (mSettingValues != null)
        {
            break MISSING_BLOCK_LABEL_306;
        }
        int k = mAllCategories.length;
        l = 0;
        mSettingValues = new SettingsValue[k];
        iterator = mCategoryParentIds.iterator();
_L7:
        if (iterator.hasNext()) goto _L5; else goto _L4
_L4:
        return mSettingValues;
_L3:
        String s2 = mAllCategories[i1].id;
        String s3 = mAllCategories[i1].parent;
        if (s3 == null || s3.isEmpty())
        {
            mCategoryParentIds.add(s2);
            mCategoryIdForParent.put(s2, new ArrayList());
        } else
        {
            ((List)mCategoryIdForParent.get(s3)).add(s2);
        }
        i1++;
          goto _L6
_L5:
        String s = (String)iterator.next();
        mSettingValues[l] = new SettingsValue(s, getCategoryById(s), false);
        mSettingValues[l].isHeader = true;
        mSettingValues[l].iconName = getCategoryIconById(s);
        l++;
        Iterator iterator1 = ((List)mCategoryIdForParent.get(s)).iterator();
        while (iterator1.hasNext()) 
        {
            String s1 = (String)iterator1.next();
            mSettingValues[l] = new SettingsValue(s1, getCategoryById(s1), false);
            l++;
        }
          goto _L7
        SettingsValue asettingsvalue[] = mSettingValues;
        int i = asettingsvalue.length;
        int j = 0;
        while (j < i) 
        {
            SettingsValue settingsvalue = asettingsvalue[j];
            settingsvalue.isSelected = false;
            settingsvalue.rank = 0.0F;
            j++;
        }
          goto _L4
    }

    public static int sortCategoryIdsArray(String as[])
    {
        int i;
        if (mAllCategories == null)
        {
            i = as.length;
        } else
        {
            HashSet hashset = new HashSet(Arrays.asList(as));
            i = 0;
            int j = 0;
            while (j < mAllCategories.length) 
            {
                if (hashset.contains(mAllCategories[j].id))
                {
                    as[i] = mAllCategories[j].id;
                    i++;
                }
                j++;
            }
        }
        return i;
    }


}
