// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.list;

import android.os.Bundle;
import com.waze.ifs.ui.ActivityBase;
import java.util.ArrayList;

// Referenced classes of package com.waze.view.list:
//            ListMenuAdapter, ListMenu

public class MyListMenu extends ActivityBase
{

    public MyListMenu()
    {
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f03008c);
        ArrayList arraylist = new ArrayList();
        arraylist.add(new ListMenuAdapter.RowData("General", null, "general_settings", null, "button_arrow"));
        ListMenuAdapter.RowData rowdata = new ListMenuAdapter.RowData("Map", null, "map_settings", null, "button_arrow");
        rowdata.setLabelFontSize(20);
        arraylist.add(rowdata);
        ListMenuAdapter.RowData rowdata1 = new ListMenuAdapter.RowData("Navigation", null, "traffic", null, "button_arrow");
        rowdata1.setLabelFontSize(25);
        arraylist.add(rowdata1);
        ListMenuAdapter.RowData rowdata2 = new ListMenuAdapter.RowData("Groups", null, "groups", null, "button_arrow");
        rowdata2.setLabelFontSize(30);
        arraylist.add(rowdata2);
        ListMenuAdapter.RowData rowdata3 = new ListMenuAdapter.RowData("Advanced settings", null, "advanced_settings", null, "button_arrow");
        rowdata3.setLabelFontSize(35);
        arraylist.add(rowdata3);
        ListMenuAdapter listmenuadapter = new ListMenuAdapter(this, arraylist);
        ((ListMenu)findViewById(0x7f090410)).setAdapter(listmenuadapter);
    }
}
