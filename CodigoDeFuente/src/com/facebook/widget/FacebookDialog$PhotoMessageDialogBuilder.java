// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.widget;

import android.app.Activity;
import java.util.Collection;
import java.util.EnumSet;
import java.util.List;

// Referenced classes of package com.facebook.widget:
//            FacebookDialog

public static class it> extends it>
{

    public volatile it> addPhotoFiles(Collection collection)
    {
        return super.PhotoFiles(collection);
    }

    public volatile PhotoFiles addPhotos(Collection collection)
    {
        return super.Photos(collection);
    }

    protected EnumSet getDialogFeatures()
    {
        return EnumSet.of(GE_DIALOG, S);
    }

    int getMaximumNumberOfPhotos()
    {
        return MAXIMUM_PHOTO_COUNT;
    }

    public volatile MAXIMUM_PHOTO_COUNT setFriends(List list)
    {
        return setFriends(list);
    }

    public setFriends setFriends(List list)
    {
        return this;
    }

    public volatile setFriends setPlace(String s)
    {
        return setPlace(s);
    }

    public setPlace setPlace(String s)
    {
        return this;
    }

    public (Activity activity)
    {
        super(activity);
    }
}
