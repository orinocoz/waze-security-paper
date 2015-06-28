// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import com.waze.AppService;
import com.waze.NativeManager;
import com.waze.ResManager;
import com.waze.main.navigate.Category;
import com.waze.settings.GeneralListAdapter;
import com.waze.settings.SettingsValue;

// Referenced classes of package com.waze.navigate:
//            CategoriesActivity

class this._cls0
    implements CategoriesListener
{

    final CategoriesActivity this$0;

    private SettingsValue[] getCategoriesItemsValues(Category acategory[])
    {
        CategoriesActivity.access$1(CategoriesActivity.this, acategory);
        NativeManager nativemanager = AppService.getNativeManager();
        SettingsValue asettingsvalue[] = new SettingsValue[CategoriesActivity.access$0(CategoriesActivity.this).length];
        int i = 0;
        do
        {
            if (i >= CategoriesActivity.access$0(CategoriesActivity.this).length)
            {
                return asettingsvalue;
            }
            asettingsvalue[i] = new SettingsValue(CategoriesActivity.access$0(CategoriesActivity.this)[i].value, nativemanager.getLanguageString(CategoriesActivity.access$0(CategoriesActivity.this)[i].displayString), false);
            asettingsvalue[i].icon = ResManager.GetSkinDrawable((new StringBuilder(String.valueOf(CategoriesActivity.access$0(CategoriesActivity.this)[i].iconName))).append(".bin").toString());
            i++;
        } while (true);
    }

    public void onComplete(Category acategory[])
    {
        SettingsValue asettingsvalue[] = getCategoriesItemsValues(acategory);
        adapter.setValues(asettingsvalue);
    }

    CategoriesListener()
    {
        this$0 = CategoriesActivity.this;
        super();
    }
}
