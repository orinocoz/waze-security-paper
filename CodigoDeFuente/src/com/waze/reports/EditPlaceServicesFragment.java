// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.app.Fragment;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.waze.NativeManager;
import com.waze.settings.SettingsSwitchView;
import com.waze.settings.SwitchCheckedCallback;
import com.waze.strings.DisplayStrings;
import com.waze.view.title.TitleButtonBar;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;

// Referenced classes of package com.waze.reports:
//            VenueData, EditPlaceFlowActivity

public class EditPlaceServicesFragment extends Fragment
{

    public static final String SERVICES = "services";
    private static com.waze.NativeManager.VenueServices mAllServices = null;
    private static HashMap mServiceIconById = null;
    private static HashMap mServiceNameById = null;
    private ViewGroup mLinesContainer;
    private NativeManager mNm;
    private HashSet mSetServiceIds;
    private View r;

    public EditPlaceServicesFragment()
    {
    }

    public static String getServiceById(String s)
    {
        if (mServiceNameById != null) goto _L2; else goto _L1
_L1:
        int i;
        if (mAllServices == null)
        {
            return null;
        }
        mServiceNameById = new HashMap();
        getServices();
        i = 0;
_L5:
        if (i < mAllServices.count) goto _L3; else goto _L2
_L2:
        return (String)mServiceNameById.get(s);
_L3:
        mServiceNameById.put(mAllServices.ids[i], mAllServices.names[i]);
        i++;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public static String getServiceIconById(String s)
    {
        if (mServiceIconById != null) goto _L2; else goto _L1
_L1:
        int i;
        if (mAllServices == null)
        {
            return null;
        }
        mServiceIconById = new HashMap();
        getServices();
        i = 0;
_L5:
        if (i < mAllServices.count) goto _L3; else goto _L2
_L2:
        return (String)mServiceIconById.get(s);
_L3:
        mServiceIconById.put(mAllServices.ids[i], mAllServices.icons[i]);
        i++;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public static com.waze.NativeManager.VenueServices getServices()
    {
        if (mAllServices == null)
        {
            NativeManager.Post(new Runnable() {

                public void run()
                {
                    EditPlaceServicesFragment.mAllServices = NativeManager.getInstance().venueProviderGetServices();
                }

            });
        }
        return mAllServices;
    }

    public static String getServicesString(VenueData venuedata)
    {
        return getServicesString(venuedata, "\n");
    }

    public static String getServicesString(VenueData venuedata, String s)
    {
        StringBuilder stringbuilder = new StringBuilder();
        int i = 0;
        do
        {
            if (i >= venuedata.numServices)
            {
                if (stringbuilder.length() > 0)
                {
                    stringbuilder.delete(stringbuilder.length() - s.length(), stringbuilder.length());
                }
                return stringbuilder.toString();
            }
            stringbuilder.append(getServiceById(venuedata.services[i]));
            stringbuilder.append(s);
            i++;
        } while (true);
    }

    private void setUpFragment()
    {
        TitleButtonBar titlebuttonbar = (TitleButtonBar)r.findViewById(0x7f090058);
        titlebuttonbar.init(getActivity(), mNm.getLanguageString(DisplayStrings.DS_SERVICES), 0, 0x7f02010b);
        titlebuttonbar.setButtonTwoListener(new android.view.View.OnClickListener() {

            final EditPlaceServicesFragment this$0;

            public void onClick(View view)
            {
                ArrayList arraylist = new ArrayList(mSetServiceIds.size());
                int i = 0;
                do
                {
                    if (i >= EditPlaceServicesFragment.mAllServices.count)
                    {
                        ((EditPlaceFlowActivity)getActivity()).doneServices(arraylist);
                        return;
                    }
                    if (mSetServiceIds.contains(EditPlaceServicesFragment.mAllServices.ids[i]))
                    {
                        arraylist.add(EditPlaceServicesFragment.mAllServices.ids[i]);
                    }
                    i++;
                } while (true);
            }

            
            {
                this$0 = EditPlaceServicesFragment.this;
                super();
            }
        });
        mLinesContainer = (ViewGroup)r.findViewById(0x7f09027e);
    }

    public static int sortServiceIdsArray(String as[], int i)
    {
        if (mAllServices != null) goto _L2; else goto _L1
_L1:
        int k = as.length;
_L4:
        return k;
_L2:
        HashSet hashset = new HashSet(i);
        int j = 0;
        do
        {
label0:
            {
                if (j < i)
                {
                    break label0;
                }
                k = 0;
                int l = 0;
                while (l < mAllServices.count) 
                {
                    if (hashset.contains(mAllServices.ids[l]))
                    {
                        as[k] = mAllServices.ids[l];
                        k++;
                    }
                    l++;
                }
            }
            if (true)
            {
                continue;
            }
            hashset.add(as[j]);
            j++;
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected void addLine(String s, final String id, boolean flag)
    {
        SettingsSwitchView settingsswitchview = new SettingsSwitchView(getActivity());
        settingsswitchview.setText(s);
        settingsswitchview.setValue(flag);
        settingsswitchview.setOnChecked(new SwitchCheckedCallback() {

            final EditPlaceServicesFragment this$0;
            private final String val$id;

            public void OnCallback(boolean flag1)
            {
                if (flag1)
                {
                    mSetServiceIds.add(id);
                    return;
                } else
                {
                    mSetServiceIds.remove(id);
                    return;
                }
            }

            
            {
                this$0 = EditPlaceServicesFragment.this;
                id = s;
                super();
            }
        });
        mLinesContainer.addView(settingsswitchview);
        settingsswitchview.getLayoutParams().height = (int)(64F * getResources().getDisplayMetrics().density);
        settingsswitchview.setBackgroundResource(0x7f020224);
        settingsswitchview.setPadding(0, 0, 0, 0);
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        if (bundle != null && bundle.containsKey((new StringBuilder(String.valueOf(getClass().getName()))).append(".mSetServiceIds").toString()))
        {
            mSetServiceIds = new HashSet(bundle.getStringArrayList((new StringBuilder(String.valueOf(getClass().getName()))).append(".mSetServiceIds").toString()));
        }
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        super.onCreateView(layoutinflater, viewgroup, bundle);
        mNm = NativeManager.getInstance();
        getServices();
        r = layoutinflater.inflate(0x7f030049, viewgroup, false);
        setUpFragment();
        if (mSetServiceIds == null)
        {
            mSetServiceIds = new HashSet();
        }
        int i = 0;
        do
        {
            if (i >= mAllServices.count)
            {
                return r;
            }
            boolean flag = mSetServiceIds.contains(mAllServices.ids[i]);
            addLine(mAllServices.names[i], mAllServices.ids[i], flag);
            i++;
        } while (true);
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        bundle.putStringArrayList((new StringBuilder(String.valueOf(getClass().getName()))).append(".mSetServiceIds").toString(), new ArrayList(mSetServiceIds));
    }

    public void setServiceIds(HashSet hashset)
    {
        mSetServiceIds = hashset;
    }




}
