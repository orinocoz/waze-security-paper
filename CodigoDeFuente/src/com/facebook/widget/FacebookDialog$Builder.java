// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.widget;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.facebook.FacebookException;
import com.facebook.NativeAppCallAttachmentStore;
import com.facebook.NativeAppCallContentProvider;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.ServerProtocol;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

// Referenced classes of package com.facebook.widget:
//            FacebookDialog

public static abstract class plicationId
{

    protected final Activity activity;
    protected final all appCall = new all(64207);
    protected final String applicationId;
    protected String applicationName;
    protected Fragment fragment;
    protected HashMap imageAttachments;
    protected HashMap mediaAttachmentFiles;

    protected plicationId addImageAttachment(String s, Bitmap bitmap)
    {
        imageAttachments.put(s, bitmap);
        return this;
    }

    protected imageAttachments addImageAttachment(String s, File file)
    {
        mediaAttachmentFiles.put(s, file);
        return this;
    }

    protected List addImageAttachmentFiles(Collection collection)
    {
        ArrayList arraylist = new ArrayList();
        Iterator iterator = collection.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return arraylist;
            }
            File file = (File)iterator.next();
            String s = UUID.randomUUID().toString();
            addImageAttachment(s, file);
            arraylist.add(NativeAppCallContentProvider.getAttachmentUrl(applicationId, appCall.getCallId(), s));
        } while (true);
    }

    protected List addImageAttachments(Collection collection)
    {
        ArrayList arraylist = new ArrayList();
        Iterator iterator = collection.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return arraylist;
            }
            Bitmap bitmap = (Bitmap)iterator.next();
            String s = UUID.randomUUID().toString();
            addImageAttachment(s, bitmap);
            arraylist.add(NativeAppCallContentProvider.getAttachmentUrl(applicationId, appCall.getCallId(), s));
        } while (true);
    }

    protected all.getCallId addVideoAttachment(String s, File file)
    {
        mediaAttachmentFiles.put(s, file);
        return this;
    }

    protected String addVideoAttachmentFile(File file)
    {
        String s = UUID.randomUUID().toString();
        addVideoAttachment(s, file);
        return NativeAppCallContentProvider.getAttachmentUrl(applicationId, appCall.getCallId(), s);
    }

    public FacebookDialog build()
    {
        validate();
        String s = FacebookDialog.access$0(getDialogFeatures());
        int i = FacebookDialog.access$2(activity, s, FacebookDialog.access$1(applicationId, s, getDialogFeatures()));
        Bundle bundle;
        android.content.Intent intent;
        if (NativeProtocol.isVersionCompatibleWithBucketedIntent(i))
        {
            bundle = getMethodArguments();
        } else
        {
            bundle = setBundleExtras(new Bundle());
        }
        intent = NativeProtocol.createPlatformActivityIntent(activity, appCall.getCallId().toString(), s, i, applicationName, bundle);
        if (intent == null)
        {
            FacebookDialog.access$4(activity, fragment, FacebookDialog.access$3(s, bundle.containsKey("com.facebook.platform.extra.PHOTOS"), false), "Failed");
            throw new FacebookException("Unable to create Intent; this likely means the Facebook app is not installed.");
        } else
        {
            all.access._mth1(appCall, intent);
            return new FacebookDialog(activity, fragment, appCall, getOnPresentCallback(), null);
        }
    }

    public boolean canPresent()
    {
        return FacebookDialog.access$6(activity, getDialogFeatures());
    }

    protected abstract EnumSet getDialogFeatures();

    List getImageAttachmentNames()
    {
        return new ArrayList(imageAttachments.keySet());
    }

    protected abstract Bundle getMethodArguments();

    tCallback getOnPresentCallback()
    {
        return new FacebookDialog.OnPresentCallback() {

            final FacebookDialog.Builder this$1;

            public void onPresent(Context context)
                throws Exception
            {
                if (imageAttachments != null && imageAttachments.size() > 0)
                {
                    FacebookDialog.access$7().addAttachmentsForCall(context, appCall.getCallId(), imageAttachments);
                }
                if (mediaAttachmentFiles != null && mediaAttachmentFiles.size() > 0)
                {
                    FacebookDialog.access$7().addAttachmentFilesForCall(context, appCall.getCallId(), mediaAttachmentFiles);
                }
            }

            
            {
                this$1 = FacebookDialog.Builder.this;
                super();
            }
        };
    }

    protected String getWebFallbackUrlInternal()
    {
        Iterator iterator = getDialogFeatures().iterator();
        boolean flag = iterator.hasNext();
        String s = null;
        String s1 = null;
        if (flag)
        {
            ature ature = (ature)iterator.next();
            s1 = ature.name();
            s = ature.getAction();
        }
        com.facebook.internal.nfig nfig = Utility.getDialogFeatureConfig(applicationId, s, s1);
        if (nfig != null)
        {
            Uri uri = nfig.getFallbackUrl();
            if (uri != null)
            {
                Bundle bundle = getMethodArguments();
                int i = NativeProtocol.getLatestKnownVersion();
                Bundle bundle1 = ServerProtocol.getQueryParamsForPlatformActivityIntentWebFallback(activity, appCall.getCallId().toString(), i, applicationName, bundle);
                if (bundle1 != null)
                {
                    if (uri.isRelative())
                    {
                        uri = Utility.buildUri(ServerProtocol.getDialogAuthority(), uri.toString(), bundle1);
                    }
                    return uri.toString();
                }
            }
        }
        return null;
    }

    protected void putExtra(Bundle bundle, String s, String s1)
    {
        if (s1 != null)
        {
            bundle.putString(s, s1);
        }
    }

    public logAuthority setApplicationName(String s)
    {
        applicationName = s;
        return this;
    }

    protected Bundle setBundleExtras(Bundle bundle)
    {
        return bundle;
    }

    public applicationName setFragment(Fragment fragment1)
    {
        fragment = fragment1;
        return this;
    }

    public fragment setRequestCode(int i)
    {
        all.access._mth0(appCall, i);
        return this;
    }

    void validate()
    {
    }

    public _cls1.this._cls1(Activity activity1)
    {
        imageAttachments = new HashMap();
        mediaAttachmentFiles = new HashMap();
        Validate.notNull(activity1, "activity");
        activity = activity1;
        applicationId = Utility.getMetadataApplicationId(activity1);
    }
}
