// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.rtalerts;

import android.app.Activity;
import com.waze.AppService;
import com.waze.Logger;
import com.waze.NativeManager;
import com.waze.ifs.async.RunnableExecutor;
import com.waze.ifs.async.RunnableUICallback;
import com.waze.strings.DisplayStrings;
import java.util.HashMap;
import java.util.concurrent.Executor;

// Referenced classes of package com.waze.rtalerts:
//            RTAlertsAlertData, RTAlertsCommentData, RTAlertsMenuData, MapProblem, 
//            RTAlertsComments, RTAlertsCommentsEditor

public class RTAlertsNativeManager
{
    public static interface IAlertsCommentDataHandler
    {

        public abstract void handler(RTAlertsCommentData artalertscommentdata[]);
    }

    public static interface IAlertsCountHandler
    {

        public abstract void handler(int i);
    }

    public static interface IAlertsListDataHandler
    {

        public abstract void handler(Data data);
    }

    public static class IAlertsListDataHandler.Data
    {

        public RTAlertsAlertData mAlertsData[];

        public IAlertsListDataHandler.Data()
        {
        }
    }

    public static interface IAlertsMenuDataHandler
    {

        public abstract void handler(String s, RTAlertsMenuData artalertsmenudata[]);
    }

    public static interface MapProblemsListener
    {

        public abstract void onComplete(MapProblem amapproblem[]);
    }


    public static final int MENU_ITEM_ID_ACCIDENTS = 8;
    public static final int MENU_ITEM_ID_ALL = 1;
    public static final int MENU_ITEM_ID_CHITCHATS = 16;
    public static final int MENU_ITEM_ID_CLOSURE = 32;
    public static final int MENU_ITEM_ID_OTHER = 64;
    public static final int MENU_ITEM_ID_POLICE = 2;
    public static final int MENU_ITEM_ID_TRAFFIC = 4;
    private static final long POPUP_EVENT_DELAY = 300L;
    protected static RTAlertsNativeManager mInstance = null;
    protected volatile HashMap mLangHash;
    protected RTAlertsAlertData mListData[];

    public RTAlertsNativeManager()
    {
        mListData = null;
        mLangHash = null;
    }

    private native RTAlertsCommentData[] GetRTAlertsCommentNTV(int i);

    private native int GetRTAlertsCountNTV();

    private native RTAlertsAlertData[] GetRTAlertsListNTV();

    private native RTAlertsMenuData[] GetRTAlertsMenuNTV();

    private native void InitNativeLayerNTV();

    private native void PostCommentNTV(int i, String s);

    private native boolean PostCommentValidateNTV(int i);

    private native void ShowPopUpByIdNTV(int i);

    public static RTAlertsNativeManager create()
    {
        if (mInstance == null)
        {
            mInstance = new RTAlertsNativeManager();
            mInstance.initNativeLayer();
            mInstance.loadLangStrings();
        }
        return mInstance;
    }

    public static RTAlertsNativeManager getInstance()
    {
        create();
        return mInstance;
    }

    private native MapProblem[] getMapProblemsNTV();

    private void initNativeLayer()
    {
        NativeManager.Post(new Runnable() {

            final RTAlertsNativeManager this$0;

            public void run()
            {
                InitNativeLayerNTV();
            }

            
            {
                this$0 = RTAlertsNativeManager.this;
                super();
            }
        });
    }

    private void loadLangStrings()
    {
        NativeManager.registerOnAppStartedEvent(new RunnableExecutor(NativeManager.getInstance()) {

            final RTAlertsNativeManager this$0;

            public void event()
            {
                HashMap hashmap = new HashMap();
                NativeManager nativemanager = NativeManager.getInstance();
                String s = nativemanager.getLanguageString(DisplayStrings.DS_COMMENTS);
                hashmap.put(Integer.valueOf(0x7f070187), s);
                String s1 = nativemanager.getLanguageString(DisplayStrings.DS_THANKS);
                hashmap.put(Integer.valueOf(0x7f070188), s1);
                String s2 = nativemanager.getLanguageString(DisplayStrings.DS_AWAY);
                hashmap.put(Integer.valueOf(0x7f070189), s2);
                String s3 = nativemanager.getLanguageString(DisplayStrings.DS_COMMENTS);
                hashmap.put(Integer.valueOf(0x7f07018a), s3);
                String s4 = nativemanager.getLanguageString(DisplayStrings.DS_ADD_COMMENT);
                hashmap.put(Integer.valueOf(0x7f07018b), s4);
                mLangHash = hashmap;
            }

            
            {
                this$0 = RTAlertsNativeManager.this;
                super(executor);
            }
        });
    }

    private native boolean policeSubtypesAllowedNTV();

    private native void reportBadRouteNTV();

    private native void reportMapIssueNTV(String s, int i);

    public void getAlertsCommentData(final int alertId, final IAlertsCommentDataHandler dataHandler)
    {
        NativeManager.Post(new RunnableUICallback() {

            RTAlertsCommentData mData[];
            final RTAlertsNativeManager this$0;
            private final int val$alertId;
            private final IAlertsCommentDataHandler val$dataHandler;

            public void callback()
            {
                dataHandler.handler(mData);
            }

            public void event()
            {
                mData = GetRTAlertsCommentNTV(alertId);
            }

            
            {
                this$0 = RTAlertsNativeManager.this;
                alertId = i;
                dataHandler = ialertscommentdatahandler;
                super();
            }
        });
    }

    public void getAlertsCount(final IAlertsCountHandler dataHandler)
    {
        NativeManager.Post(new RunnableUICallback() {

            int mCount;
            final RTAlertsNativeManager this$0;
            private final IAlertsCountHandler val$dataHandler;

            public void callback()
            {
                dataHandler.handler(mCount);
            }

            public void event()
            {
                mCount = GetRTAlertsCountNTV();
            }

            
            {
                this$0 = RTAlertsNativeManager.this;
                dataHandler = ialertscounthandler;
                super();
            }
        });
    }

    public void getAlertsListData(final IAlertsListDataHandler dataHandler)
    {
        NativeManager.Post(new RunnableUICallback() {

            final IAlertsListDataHandler.Data mData = new IAlertsListDataHandler.Data();
            final RTAlertsNativeManager this$0;
            private final IAlertsListDataHandler val$dataHandler;

            public void callback()
            {
                dataHandler.handler(mData);
            }

            public void event()
            {
                mData.mAlertsData = GetRTAlertsListNTV();
            }

            
            {
                this$0 = RTAlertsNativeManager.this;
                dataHandler = ialertslistdatahandler;
                super();
            }
        });
    }

    public void getAlertsMenuData(final IAlertsMenuDataHandler dataHandler)
    {
        NativeManager.Post(new RunnableUICallback() {

            RTAlertsMenuData mData[];
            String mTitle;
            final RTAlertsNativeManager this$0;
            private final IAlertsMenuDataHandler val$dataHandler;

            public void callback()
            {
                dataHandler.handler(mTitle, mData);
            }

            public void event()
            {
                mTitle = NativeManager.getInstance().getLanguageString(DisplayStrings.DS_REPORTS);
                mData = GetRTAlertsMenuNTV();
            }

            
            {
                this$0 = RTAlertsNativeManager.this;
                dataHandler = ialertsmenudatahandler;
                super();
            }
        });
    }

    public String getLangStr(int i)
    {
        if (mLangHash == null)
        {
            return null;
        } else
        {
            return (String)mLangHash.get(Integer.valueOf(i));
        }
    }

    public void getMapProblems(final MapProblemsListener listener)
    {
        NativeManager.Post(new RunnableUICallback() {

            MapProblem problems[];
            final RTAlertsNativeManager this$0;
            private final MapProblemsListener val$listener;

            public void callback()
            {
                listener.onComplete(problems);
            }

            public void event()
            {
                problems = getMapProblemsNTV();
            }

            
            {
                this$0 = RTAlertsNativeManager.this;
                listener = mapproblemslistener;
                super();
            }
        });
    }

    public boolean isPoliceSubtypesAllowed()
    {
        return policeSubtypesAllowedNTV();
    }

    public void onFbImageDownload(final int alertId, final int commentId, byte abyte0[], int i, int j)
    {
        AppService.Post(new Runnable() {

            final RTAlertsNativeManager this$0;
            private final int val$alertId;
            private final int val$commentId;
            private final int val$height;
            private final byte val$imageCopy[];
            private final int val$width;

            public void run()
            {
                RTAlertsComments.updateFbImage(alertId, commentId, imageCopy, width, height);
            }

            
            {
                this$0 = RTAlertsNativeManager.this;
                alertId = i;
                commentId = j;
                imageCopy = abyte0;
                width = k;
                height = l;
                super();
            }
        });
    }

    public void postComment(final int alertId, final String comment)
    {
        NativeManager.Post(new Runnable() {

            final RTAlertsNativeManager this$0;
            private final int val$alertId;
            private final String val$comment;

            public void run()
            {
                PostCommentNTV(alertId, comment);
            }

            
            {
                this$0 = RTAlertsNativeManager.this;
                alertId = i;
                comment = s;
                super();
            }
        });
    }

    public void postCommentValidate(final Activity context4Result, final int alertId)
    {
        NativeManager.Post(new RunnableUICallback() {

            boolean mValidated;
            final RTAlertsNativeManager this$0;
            private final int val$alertId;
            private final Activity val$context4Result;

            public void callback()
            {
                if (mValidated)
                {
                    RTAlertsCommentsEditor.start(context4Result, alertId);
                }
            }

            public void event()
            {
                mValidated = PostCommentValidateNTV(alertId);
            }

            
            {
                this$0 = RTAlertsNativeManager.this;
                alertId = i;
                context4Result = activity;
                super();
            }
        });
    }

    public void reportBadRoute()
    {
        NativeManager.Post(new Runnable() {

            final RTAlertsNativeManager this$0;

            public void run()
            {
                reportBadRouteNTV();
            }

            
            {
                this$0 = RTAlertsNativeManager.this;
                super();
            }
        });
    }

    public void reportMapIssue(final String desc, final int problemIndex)
    {
        NativeManager.Post(new Runnable() {

            final RTAlertsNativeManager this$0;
            private final String val$desc;
            private final int val$problemIndex;

            public void run()
            {
                reportMapIssueNTV(desc, problemIndex);
            }

            
            {
                this$0 = RTAlertsNativeManager.this;
                desc = s;
                problemIndex = i;
                super();
            }
        });
    }

    public void showAlertPopUp(final int alertId)
    {
        NativeManager.Post(new Runnable() {

            final RTAlertsNativeManager this$0;
            private final int val$alertId;

            public void run()
            {
                if (alertId != -1)
                {
                    ShowPopUpByIdNTV(alertId);
                    return;
                } else
                {
                    Logger.ee("Invalid alertId was supplied - cannot show PopUp");
                    return;
                }
            }

            
            {
                this$0 = RTAlertsNativeManager.this;
                alertId = i;
                super();
            }
        }, 300L);
    }












}
