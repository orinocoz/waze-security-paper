// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import com.waze.AppService;
import com.waze.NativeManager;
import com.waze.ResManager;
import com.waze.ifs.ui.ActivityBase;
import com.waze.main.navigate.Category;
import com.waze.settings.GeneralListAdapter;
import com.waze.settings.SettingsValue;
import com.waze.strings.DisplayStrings;
import com.waze.view.title.TitleBar;

// Referenced classes of package com.waze.navigate:
//            DriveToNativeManager, SearchActivity

public class CategoriesActivity extends ActivityBase
{

    final String CATEGORY_MENU_DEFAULT = "category_menu_default";
    GeneralListAdapter adapter;
    private Category categories[];
    ListView mListView;

    public CategoriesActivity()
    {
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        if (j == -1)
        {
            setResult(-1);
            finish();
        }
        if (j == 0 && categories != null && categories[0].iconName.contains("category_menu_default"))
        {
            refreshCategoriesIcons();
        }
        super.onActivityResult(i, j, intent);
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f0300fa);
        ((TitleBar)findViewById(0x7f090058)).init(this, DisplayStrings.DS_CATEGORIES);
        adapter = new GeneralListAdapter(this);
        refreshCategoriesIcons();
        mListView = (ListView)findViewById(0x7f090674);
        mListView.setAdapter(adapter);
        mListView.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

            final CategoriesActivity this$0;

            public void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                Intent intent = new Intent(CategoriesActivity.this, com/waze/navigate/SearchActivity);
                intent.putExtra("SearchCategory", categories[i].value);
                intent.putExtra("SearchMode", 2);
                startActivityForResult(intent, 1);
            }

            
            {
                this$0 = CategoriesActivity.this;
                super();
            }
        });
    }

    public void refreshCategoriesIcons()
    {
        DriveToNativeManager.getInstance().getCategories(new DriveToNativeManager.CategoriesListener() {

            final CategoriesActivity this$0;

            private SettingsValue[] getCategoriesItemsValues(Category acategory[])
            {
                categories = acategory;
                NativeManager nativemanager = AppService.getNativeManager();
                SettingsValue asettingsvalue[] = new SettingsValue[categories.length];
                int i = 0;
                do
                {
                    if (i >= categories.length)
                    {
                        return asettingsvalue;
                    }
                    asettingsvalue[i] = new SettingsValue(categories[i].value, nativemanager.getLanguageString(categories[i].displayString), false);
                    asettingsvalue[i].icon = ResManager.GetSkinDrawable((new StringBuilder(String.valueOf(categories[i].iconName))).append(".bin").toString());
                    i++;
                } while (true);
            }

            public void onComplete(Category acategory[])
            {
                SettingsValue asettingsvalue[] = getCategoriesItemsValues(acategory);
                adapter.setValues(asettingsvalue);
            }

            
            {
                this$0 = CategoriesActivity.this;
                super();
            }
        });
    }


}
