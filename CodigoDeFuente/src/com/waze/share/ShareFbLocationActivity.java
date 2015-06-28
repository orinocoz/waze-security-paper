// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import android.app.Activity;
import android.content.Intent;
import android.location.Location;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.ListView;
import com.waze.NativeLocListener;
import com.waze.ifs.async.RunnableExecutor;
import com.waze.ifs.ui.ActivityBase;
import com.waze.location.Position;
import com.waze.view.title.TitleBar;
import java.util.ArrayList;

// Referenced classes of package com.waze.share:
//            ShareFbLocation, ShareFbQueries, ShareNativeManager, ShareFbLocListAdapter

public class ShareFbLocationActivity extends ActivityBase
    implements ShareFbQueries.ILocationsListCallback, ShareNativeManager.IShareFbLocationDataHandler
{

    private static final int LOCATIONS_LIST_LENGTH_LIMIT = 40;
    private static ShareFbLocation mSelectedLocation = null;
    private ShareFbLocListAdapter mAdapter;
    private final android.widget.AdapterView.OnItemClickListener mListClickListener = new android.widget.AdapterView.OnItemClickListener() {

        final ShareFbLocationActivity this$0;

        public void onItemClick(AdapterView adapterview, View view, int i, long l)
        {
            ShareFbLocationActivity.mSelectedLocation = (ShareFbLocation)((ShareFbLocListAdapter)adapterview.getAdapter()).getItem(i);
            Intent intent = new Intent();
            intent.putExtra("Position id", ShareFbLocationActivity.mSelectedLocation.name);
            setResult(3, intent);
            finish();
        }

            
            {
                this$0 = ShareFbLocationActivity.this;
                super();
            }
    };
    private ListView mListView;
    private EditText mSearchBox;
    private final TextWatcher mSearchTextWatcher = new TextWatcher() {

        final ShareFbLocationActivity this$0;

        public void afterTextChanged(Editable editable)
        {
            String s = editable.toString();
            if (s != null && s.length() > 0)
            {
                fetchLocations(s, false, false);
            }
        }

        public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
        {
        }

        public void onTextChanged(CharSequence charsequence, int i, int j, int k)
        {
        }

            
            {
                this$0 = ShareFbLocationActivity.this;
                super();
            }
    };

    public ShareFbLocationActivity()
    {
    }

    private void fetchLocations(final String pattern, boolean flag, boolean flag1)
    {
        final NativeLocListener nl = NativeLocListener.getInstance();
        final Position pos = new Position();
        RunnableExecutor runnableexecutor = new RunnableExecutor(flag) {

            final ShareFbLocationActivity this$0;
            private final NativeLocListener val$nl;
            private final String val$pattern;
            private final Position val$pos;
            private final boolean val$showProgress;

            public void event()
            {
                Location location1 = NativeLocListener.getInstance().getLastLocation();
                pos.latitude = location1.getLatitude();
                pos.longitude = location1.getLongitude();
                nl.unregisterLocListener(this);
                requestLocations(pattern, pos, showProgress);
            }

            
            {
                this$0 = ShareFbLocationActivity.this;
                pos = position;
                nl = nativeloclistener;
                pattern = s;
                showProgress = flag;
                super(final_activity);
            }
        };
        Location location = NativeLocListener.getInstance().getLastLocation();
        if (location != null)
        {
            pos.latitude = location.getLatitude();
            pos.longitude = location.getLongitude();
            requestLocations(pattern, pos, flag);
        } else
        if (flag1)
        {
            nl.registerLocListener(runnableexecutor);
            return;
        }
    }

    public static ShareFbLocation getSelected(String s)
    {
        if (mSelectedLocation != null && mSelectedLocation.name.equals(s))
        {
            return mSelectedLocation;
        } else
        {
            Log.e("WAZE", "There is no match between the supplied id and selected lcoation");
            return null;
        }
    }

    private void requestLocations(String s, Position position, boolean flag)
    {
        ShareFbQueries.getLocationsList(this, s, 40, position, this, flag);
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030102);
        ShareNativeManager.getInstance().getShareFbLocationData(this);
        mSearchBox = (EditText)findViewById(0x7f0906b2);
        mListView = (ListView)findViewById(0x7f0906b3);
        mSearchBox.addTextChangedListener(mSearchTextWatcher);
        mAdapter = new ShareFbLocListAdapter(this);
        mListView.setAdapter(mAdapter);
        mListView.setOnItemClickListener(mListClickListener);
        fetchLocations("", true, true);
    }

    public void onFbLocationData(String s)
    {
        if (isAlive())
        {
            ((TitleBar)findViewById(0x7f0906b1)).init(this, s);
        }
    }

    public void onLocationsListResult(final ArrayList result, int i, String s)
    {
        Runnable runnable = new Runnable() {

            final ShareFbLocationActivity this$0;
            private final ArrayList val$result;

            public void run()
            {
                mAdapter.updateList(result, 40);
                mListView.invalidateViews();
            }

            
            {
                this$0 = ShareFbLocationActivity.this;
                result = arraylist;
                super();
            }
        };
        if (i == 0)
        {
            runOnUiThread(runnable);
        }
    }







}
