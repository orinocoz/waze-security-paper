// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.rtalerts;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.waze.ifs.ui.ActivityBase;
import com.waze.view.title.TitleBar;

// Referenced classes of package com.waze.rtalerts:
//            RTAlertsNativeManager, RTAlertsListAdapter, RTAlertsAlertData, RTAlertsCommentsAdapter, 
//            RTAlertsCommentData

public class RTAlertsComments extends ActivityBase
{

    protected static RTAlertsAlertData mAlertData = null;
    protected static RTAlertsComments mThis = null;
    protected RTAlertsCommentsAdapter mAdapter;

    public RTAlertsComments()
    {
        mAdapter = null;
    }

    private void setAddCommentButton(final int alertId)
    {
        final RTAlertsNativeManager mgr = RTAlertsNativeManager.getInstance();
        View view = findViewById(0x7f0905c1);
        ((TextView)view.findViewById(0x7f0905c2)).setText(mgr.getLangStr(0x7f07018b));
        view.setOnClickListener(new android.view.View.OnClickListener() {

            final RTAlertsComments this$0;
            private final int val$alertId;
            private final RTAlertsNativeManager val$mgr;

            public void onClick(View view1)
            {
                mgr.postCommentValidate(RTAlertsComments.this, alertId);
            }

            
            {
                this$0 = RTAlertsComments.this;
                mgr = rtalertsnativemanager;
                alertId = i;
                super();
            }
        });
    }

    private void setCommentsList()
    {
        RTAlertsNativeManager rtalertsnativemanager = RTAlertsNativeManager.getInstance();
        View view = findViewById(0x7f0905ca);
        RTAlertsListAdapter.getView(this, view, mAlertData);
        final LinearLayout commentsListContainer = (LinearLayout)view.findViewById(0x7f0905db);
        commentsListContainer.setVisibility(0);
        view.setClickable(true);
        view.setOnClickListener(new android.view.View.OnClickListener() {

            final RTAlertsComments this$0;

            public void onClick(View view1)
            {
                Intent intent = new Intent();
                intent.putExtra("PopUp alert id", RTAlertsComments.mAlertData.mID);
                setResult(1001, intent);
                finish();
            }

            
            {
                this$0 = RTAlertsComments.this;
                super();
            }
        });
        RTAlertsNativeManager.IAlertsCommentDataHandler ialertscommentdatahandler = new RTAlertsNativeManager.IAlertsCommentDataHandler() {

            final RTAlertsComments this$0;
            private final LinearLayout val$commentsListContainer;

            public void handler(RTAlertsCommentData artalertscommentdata[])
            {
                if (artalertscommentdata == null) goto _L2; else goto _L1
_L1:
                int i;
                mAdapter.update(artalertscommentdata);
                i = 0;
_L6:
                if (i < mAdapter.getCount()) goto _L4; else goto _L3
_L3:
                commentsListContainer.setPadding(0, 0, 0, 0);
                commentsListContainer.requestLayout();
_L2:
                return;
_L4:
                if (i > 0)
                {
                    View view1 = new View(RTAlertsComments.this);
                    view1.setBackgroundResource(0x7f080037);
                    commentsListContainer.addView(view1, new android.view.ViewGroup.LayoutParams(-1, 1));
                }
                View view2 = mAdapter.getView(i, null, commentsListContainer);
                commentsListContainer.addView(view2);
                i++;
                if (true) goto _L6; else goto _L5
_L5:
            }

            
            {
                this$0 = RTAlertsComments.this;
                commentsListContainer = linearlayout;
                super();
            }
        };
        rtalertsnativemanager.getAlertsCommentData(mAlertData.mID, ialertscommentdatahandler);
    }

    public static void show(Activity activity, RTAlertsAlertData rtalertsalertdata)
    {
        mAlertData = rtalertsalertdata;
        activity.startActivityForResult(new Intent(activity, com/waze/rtalerts/RTAlertsComments), 32773);
    }

    public static void updateFbImage(int i, int j, byte abyte0[], int k, int l)
    {
        View view;
        if (mThis != null && mAlertData != null && mAlertData.mID == i)
        {
            if ((view = ((LinearLayout)mThis.findViewById(0x7f0905db)).findViewById(j)) != null)
            {
                mThis.mAdapter.updateFbImage(view, abyte0, k, l);
                return;
            }
        }
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        super.onActivityResult(i, j, intent);
        if (j == -1)
        {
            setResult(1002);
            finish();
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f0300d5);
        mThis = this;
        if (mAlertData == null)
        {
            Log.e("WAZE", "Cannot open alerts comments this way. Please use show function and provide alert data!");
            return;
        } else
        {
            RTAlertsNativeManager rtalertsnativemanager = RTAlertsNativeManager.getInstance();
            mAdapter = new RTAlertsCommentsAdapter(this);
            ((TitleBar)findViewById(0x7f0905c0)).init(this, rtalertsnativemanager.getLangStr(0x7f07018a));
            setAddCommentButton(mAlertData.mID);
            setCommentsList();
            return;
        }
    }

    protected void onDestroy()
    {
        super.onDestroy();
        mThis = null;
    }

}
