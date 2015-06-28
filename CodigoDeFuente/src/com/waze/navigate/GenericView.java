// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.content.res.Resources;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.waze.NativeManager;

// Referenced classes of package com.waze.navigate:
//            AddressOptionsActivity

public class GenericView
{

    private Integer imageId;
    private Integer landscapeImageId;
    private int textId;
    private Integer visibility;

    GenericView(Integer integer, int i, Integer integer1)
    {
        imageId = integer;
        textId = i;
        visibility = integer1;
    }

    GenericView(Integer integer, int i, Integer integer1, Integer integer2)
    {
        this(integer, i, integer1);
        landscapeImageId = integer2;
    }

    void fillContent(LinearLayout linearlayout, NativeManager nativemanager)
    {
        if (visibility != null)
        {
            linearlayout.setVisibility(visibility.intValue());
        }
        if (textId > 0)
        {
            ((TextView)linearlayout.findViewById(0x7f0900ef)).setText(nativemanager.getLanguageString(linearlayout.getResources().getString(textId)));
        }
        if (imageId != null)
        {
            ((ImageView)linearlayout.findViewById(0x7f0900ee)).setImageDrawable(linearlayout.getResources().getDrawable(imageId.intValue()));
        }
    }

    public void fillContent(LinearLayout linearlayout, NativeManager nativemanager, int i)
    {
        fillContent(linearlayout, nativemanager);
        if (i == 2 && landscapeImageId != null)
        {
            ((ImageView)linearlayout.findViewById(0x7f0900ee)).setImageDrawable(linearlayout.getResources().getDrawable(landscapeImageId.intValue()));
        }
    }

    Integer getImageId()
    {
        return imageId;
    }

    int getText()
    {
        return textId;
    }

    Integer getVisibility()
    {
        return visibility;
    }

    void onClick(AddressOptionsActivity addressoptionsactivity, View view)
    {
    }

    public void setImageId(Integer integer)
    {
        imageId = integer;
    }

    public void setLandscapeImageId(Integer integer)
    {
        landscapeImageId = integer;
    }
}
