// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Handler;
import android.text.util.Linkify;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.waze.analytics.Analytics;
import com.waze.ifs.ui.ActivityBase;
import com.waze.strings.DisplayStrings;
import com.waze.view.timer.TimerView;
import java.util.Calendar;

// Referenced classes of package com.waze:
//            Logger, AppService, NativeManager, MainActivity, 
//            LayoutManager

public final class MsgBox
{
    private class MsgBoxOnClick
        implements android.content.DialogInterface.OnClickListener
    {

        private volatile long mCbContext;
        private volatile int mCbRes;
        final MsgBox this$0;

        public void onClick(DialogInterface dialoginterface, int i)
        {
            dialoginterface.cancel();
            AppService.getNativeManager().PostRunnable(new Runnable() {

                final MsgBoxOnClick this$1;

                public void run()
                {
                    SpecialMsgBoxCallbackNTV(mCbRes, mCbContext);
                }

            
            {
                this$1 = MsgBoxOnClick.this;
                super();
            }
            });
            if (mIsBlocking)
            {
                synchronized (MsgBox.mInstance)
                {
                    MsgBox.mInstance.notify();
                }
                return;
            } else
            {
                return;
            }
            exception;
            msgbox;
            JVM INSTR monitorexit ;
            throw exception;
        }




        public MsgBoxOnClick(int i, long l)
        {
            this$0 = MsgBox.this;
            super();
            mCbRes = i;
            mCbContext = l;
        }
    }


    private static final int CONFIRM_DIALOG_ABORT = 6;
    private static final int CONFIRM_DIALOG_CANCEL = 2;
    private static final int CONFIRM_DIALOG_CLOSE = 0;
    private static final int CONFIRM_DIALOG_COMMIT = 5;
    private static final int CONFIRM_DIALOG_IGNORE = 8;
    private static final int CONFIRM_DIALOG_NO = 4;
    private static final int CONFIRM_DIALOG_OK = 1;
    private static final int CONFIRM_DIALOG_RETRY = 7;
    private static final int CONFIRM_DIALOG_YES = 3;
    public static final int WAZE_MSG_BOX_RES_CANCEL = 0;
    public static final int WAZE_MSG_BOX_RES_OK = 1;
    private static MsgBox mInstance = null;
    private volatile boolean mIsBlocking;
    private boolean mTripSuggestButtonPressed;
    private String mTripTypeStr;

    private MsgBox()
    {
        mIsBlocking = false;
        mTripSuggestButtonPressed = false;
    }

    private native void ConfirmDialogCallbackNTV(int i, long l, long l1);

    private native void InitMsgBoxNTV();

    static void InitNativeLayer()
    {
        getInstance().InitMsgBoxNTV();
    }

    private native void MsgBoxCallbackNTV(long l);

    public static void Notify()
    {
        synchronized (mInstance)
        {
            mInstance.notify();
        }
        return;
        exception1;
        msgbox;
        JVM INSTR monitorexit ;
        try
        {
            throw exception1;
        }
        catch (Exception exception)
        {
            Logger.w((new StringBuilder("Error notifying the message box: ")).append(exception.getMessage()).toString());
        }
        return;
    }

    public static void OpenMutePopup(final int nType)
    {
        AppService.Post(new Runnable() {

            private final int val$nType;

            public void run()
            {
                if (ActivityBase.getRunningCount() < 1 || AppService.getActiveActivity() == null)
                {
                    return;
                }
                AppService.getNativeManager();
                Dialog dialog = new Dialog(AppService.getActiveActivity(), 0x7f060057);
                AppService.getActiveActivity().setDialog(dialog);
                dialog.setContentView(0x7f03008a);
                if (nType == 0)
                {
                    ((TextView)dialog.findViewById(0x7f09022b)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_SOUNDS_ON));
                    ((ImageView)dialog.findViewById(0x7f090408)).setImageResource(0x7f020063);
                } else
                if (nType == 2)
                {
                    ((TextView)dialog.findViewById(0x7f09022b)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_SOUNDS_OFF));
                    ((ImageView)dialog.findViewById(0x7f090408)).setImageResource(0x7f020062);
                } else
                {
                    ((TextView)dialog.findViewById(0x7f09022b)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_ALERTS_ONLY));
                    ((ImageView)dialog.findViewById(0x7f090408)).setImageResource(0x7f02004d);
                }
                (new Handler()).postDelayed(dialog. new Runnable() {

                    final _cls8 this$1;
                    private final Dialog val$dialog;

                    public void run()
                    {
                        dialog.dismiss();
                    }

            
            {
                this$1 = final__pcls8;
                dialog = Dialog.this;
                super();
            }
                }, 1000L);
                dialog.show();
            }

            
            {
                nType = i;
                super();
            }
        });
    }

    public static void ShowOk(String s, String s1, String s2, android.content.DialogInterface.OnClickListener onclicklistener)
    {
        mInstance.Show(s, s1, s2, null, onclicklistener, null);
    }

    private void ShowRun(byte abyte0[], byte abyte1[], byte abyte2[], byte abyte3[], long l)
    {
        AlertDialog alertdialog = builder().create();
        alertdialog.setCancelable(false);
        if (abyte2 != null)
        {
            alertdialog.setButton(new String(abyte2), new MsgBoxOnClick(1, l));
        }
        if (abyte3 != null)
        {
            alertdialog.setButton2(new String(abyte3), new MsgBoxOnClick(0, l));
        }
        alertdialog.setTitle(new String(abyte0));
        alertdialog.setMessage(new String(abyte1));
        alertdialog.show();
        TextView textview = (TextView)alertdialog.findViewById(0x102000b);
        if (textview != null)
        {
            Linkify.addLinks(textview, 1);
        }
    }

    private native void SpecialMsgBoxCallbackNTV(int i, long l);

    private android.app.AlertDialog.Builder builder()
    {
        return new android.app.AlertDialog.Builder(AppService.getActiveActivity());
    }

    private void confirnDialogNoHandler(Dialog dialog, final long callback, final long context, final int retValue)
    {
        Logger.d_("MsgBox", "Dialog No Handler");
        if (dialog != null)
        {
            if ((TimerView)dialog.findViewById(0x7f090232) != null)
            {
                ((TimerView)dialog.findViewById(0x7f090232)).stop();
            }
            if ((TimerView)dialog.findViewById(0x7f09022f) != null)
            {
                ((TimerView)dialog.findViewById(0x7f09022f)).stop();
            }
            try
            {
                dialog.cancel();
                dialog.dismiss();
            }
            catch (Exception exception) { }
            if (callback != -1L)
            {
                NativeManager.Post(new Runnable() {

                    final MsgBox this$0;
                    private final long val$callback;
                    private final long val$context;
                    private final int val$retValue;

                    public void run()
                    {
                        ConfirmDialogCallbackNTV(retValue, callback, context);
                    }

            
            {
                this$0 = MsgBox.this;
                retValue = i;
                callback = l;
                context = l1;
                super();
            }
                });
                return;
            }
        }
    }

    public static MsgBox getInstance()
    {
        if (mInstance == null)
        {
            mInstance = new MsgBox();
        }
        return mInstance;
    }

    private void openChoiceDialog(String s, String s1, final boolean isCancellable, final int defaultOption, final int cancelValue, final long callback, 
            final long context, String s2, final int valueOne, String s3, final int valueTwo, int i)
    {
        if (ActivityBase.getRunningCount() < 1 || AppService.getActiveActivity() == null)
        {
            return;
        }
        NativeManager nativemanager = AppService.getNativeManager();
        final Dialog dialog = new Dialog(AppService.getActiveActivity(), 0x7f06000f);
        AppService.getActiveActivity().setDialog(dialog);
        dialog.setContentView(0x7f030040);
        ((TextView)dialog.findViewById(0x7f09022e)).setText(s3);
        if (i == -1)
        {
            ((TimerView)dialog.findViewById(0x7f090232)).stop();
            ((TimerView)dialog.findViewById(0x7f09022f)).stop();
        } else
        if (defaultOption == 0)
        {
            ((TimerView)dialog.findViewById(0x7f090232)).setTime(i);
            ((TimerView)dialog.findViewById(0x7f090232)).start();
            ((TimerView)dialog.findViewById(0x7f09022f)).stop();
        } else
        {
            ((TimerView)dialog.findViewById(0x7f09022f)).setTime(i);
            ((TimerView)dialog.findViewById(0x7f09022f)).start();
            ((TimerView)dialog.findViewById(0x7f090232)).stop();
        }
        ((TextView)dialog.findViewById(0x7f090231)).setText(s2);
        ((TextView)dialog.findViewById(0x7f09022b)).setText(s);
        ((TextView)dialog.findViewById(0x7f09022c)).setText(s1);
        if (nativemanager.getLanguageRtl())
        {
            ((TextView)dialog.findViewById(0x7f09022c)).setGravity(5);
        }
        dialog.setOnCancelListener(new android.content.DialogInterface.OnCancelListener() {

            final MsgBox this$0;
            private final long val$callback;
            private final int val$cancelValue;
            private final long val$context;
            private final int val$defaultOption;
            private final boolean val$isCancellable;
            private final int val$valueOne;
            private final int val$valueTwo;

            public void onCancel(DialogInterface dialoginterface)
            {
                if (isCancellable)
                {
                    confirnDialogNoHandler((Dialog)dialoginterface, callback, context, cancelValue);
                    return;
                }
                MsgBox msgbox = MsgBox.this;
                Dialog dialog1 = (Dialog)dialoginterface;
                long l = callback;
                long l1 = context;
                int j;
                if (defaultOption == 0)
                {
                    j = valueOne;
                } else
                {
                    j = valueTwo;
                }
                msgbox.confirnDialogNoHandler(dialog1, l, l1, j);
            }

            
            {
                this$0 = MsgBox.this;
                isCancellable = flag;
                callback = l;
                context = l1;
                cancelValue = i;
                defaultOption = j;
                valueOne = k;
                valueTwo = i1;
                super();
            }
        });
        dialog.findViewById(0x7f09022d).setOnClickListener(new android.view.View.OnClickListener() {

            final MsgBox this$0;
            private final long val$callback;
            private final long val$context;
            private final Dialog val$dialog;
            private final int val$valueTwo;

            public void onClick(View view)
            {
                dialog.setOnCancelListener(null);
                confirnDialogNoHandler(dialog, callback, context, valueTwo);
            }

            
            {
                this$0 = MsgBox.this;
                dialog = dialog1;
                callback = l;
                context = l1;
                valueTwo = i;
                super();
            }
        });
        dialog.findViewById(0x7f090230).setOnClickListener(new android.view.View.OnClickListener() {

            final MsgBox this$0;
            private final long val$callback;
            private final long val$context;
            private final Dialog val$dialog;
            private final int val$valueOne;

            public void onClick(View view)
            {
                ((TimerView)dialog.findViewById(0x7f090232)).stop();
                ((TimerView)dialog.findViewById(0x7f09022f)).stop();
                try
                {
                    dialog.dismiss();
                }
                catch (Exception exception) { }
                if (callback != -1L)
                {
                    NativeManager.Post(context. new Runnable() {

                        final _cls17 this$1;
                        private final long val$callback;
                        private final long val$context;
                        private final int val$valueOne;

                        public void run()
                        {
                            ConfirmDialogCallbackNTV(valueOne, callback, context);
                        }

            
            {
                this$1 = final__pcls17;
                valueOne = i;
                callback = l;
                context = J.this;
                super();
            }
                    });
                }
            }


            
            {
                this$0 = MsgBox.this;
                dialog = dialog1;
                callback = l;
                valueOne = i;
                context = l1;
                super();
            }
        });
        dialog.show();
    }

    private void openChooseNumberDialog(String s, String s1, String s2, final android.content.DialogInterface.OnClickListener callback)
    {
        if (ActivityBase.getRunningCount() < 1 || AppService.getActiveActivity() == null)
        {
            return;
        } else
        {
            final Dialog dialog = new Dialog(AppService.getActiveActivity(), 0x7f06000f);
            AppService.getActiveActivity().setDialog(dialog);
            dialog.setContentView(0x7f0300e2);
            ((TextView)dialog.findViewById(0x7f090601)).setText(s1);
            ((TextView)dialog.findViewById(0x7f090602)).setText(s2);
            ((TextView)dialog.findViewById(0x7f090600)).setText(s);
            dialog.findViewById(0x7f090603).setOnClickListener(new android.view.View.OnClickListener() {

                final MsgBox this$0;
                private final android.content.DialogInterface.OnClickListener val$callback;
                private final Dialog val$dialog;

                public void onClick(View view)
                {
                    try
                    {
                        dialog.cancel();
                        dialog.dismiss();
                    }
                    catch (Exception exception) { }
                    callback.onClick(dialog, 0);
                }

            
            {
                this$0 = MsgBox.this;
                dialog = dialog1;
                callback = onclicklistener;
                super();
            }
            });
            dialog.findViewById(0x7f090601).setOnClickListener(new android.view.View.OnClickListener() {

                final MsgBox this$0;
                private final android.content.DialogInterface.OnClickListener val$callback;
                private final Dialog val$dialog;

                public void onClick(View view)
                {
                    try
                    {
                        dialog.cancel();
                        dialog.dismiss();
                    }
                    catch (Exception exception) { }
                    callback.onClick(dialog, 1);
                }

            
            {
                this$0 = MsgBox.this;
                dialog = dialog1;
                callback = onclicklistener;
                super();
            }
            });
            dialog.findViewById(0x7f090602).setOnClickListener(new android.view.View.OnClickListener() {

                final MsgBox this$0;
                private final android.content.DialogInterface.OnClickListener val$callback;
                private final Dialog val$dialog;

                public void onClick(View view)
                {
                    try
                    {
                        dialog.cancel();
                        dialog.dismiss();
                    }
                    catch (Exception exception) { }
                    callback.onClick(dialog, 2);
                }

            
            {
                this$0 = MsgBox.this;
                dialog = dialog1;
                callback = onclicklistener;
                super();
            }
            });
            dialog.show();
            return;
        }
    }

    private void openConfirmDialog(String s, String s1, boolean flag, long l, long l1, 
            String s2, String s3, int i)
    {
        int j;
        byte byte0;
        if (flag)
        {
            j = 0;
        } else
        {
            j = 1;
        }
        if (flag)
        {
            byte0 = 3;
        } else
        {
            byte0 = 4;
        }
        openChoiceDialog(s, s1, false, j, byte0, l, l1, s2, 3, s3, 4, i);
    }

    private void openConfirmDialogJavaCallback(String s, String s1, boolean flag, final android.content.DialogInterface.OnClickListener callback, String s2, String s3, int i)
    {
        if (ActivityBase.getRunningCount() < 1 || AppService.getActiveActivity() == null)
        {
            return;
        }
        NativeManager nativemanager = AppService.getNativeManager();
        final Dialog dialog = new Dialog(AppService.getActiveActivity(), 0x7f06000f);
        AppService.getActiveActivity().setDialog(dialog);
        dialog.setContentView(0x7f030040);
        ((TextView)dialog.findViewById(0x7f09022e)).setText(s3);
        if (i == -1)
        {
            ((TimerView)dialog.findViewById(0x7f090232)).stop();
            ((TimerView)dialog.findViewById(0x7f09022f)).stop();
        } else
        if (flag)
        {
            ((TimerView)dialog.findViewById(0x7f090232)).setTime(i);
            ((TimerView)dialog.findViewById(0x7f090232)).start();
            ((TimerView)dialog.findViewById(0x7f09022f)).stop();
        } else
        {
            ((TimerView)dialog.findViewById(0x7f09022f)).setTime(i);
            ((TimerView)dialog.findViewById(0x7f09022f)).start();
            ((TimerView)dialog.findViewById(0x7f090232)).stop();
        }
        ((TextView)dialog.findViewById(0x7f090231)).setText(s2);
        ((TextView)dialog.findViewById(0x7f09022b)).setText(s);
        ((TextView)dialog.findViewById(0x7f09022c)).setText(s1);
        if (nativemanager.getLanguageRtl())
        {
            ((TextView)dialog.findViewById(0x7f09022c)).setGravity(5);
        }
        dialog.findViewById(0x7f09022d).setOnClickListener(new android.view.View.OnClickListener() {

            final MsgBox this$0;
            private final android.content.DialogInterface.OnClickListener val$callback;
            private final Dialog val$dialog;

            public void onClick(View view)
            {
                ((TimerView)dialog.findViewById(0x7f090232)).stop();
                ((TimerView)dialog.findViewById(0x7f09022f)).stop();
                try
                {
                    dialog.cancel();
                    dialog.dismiss();
                }
                catch (Exception exception) { }
                callback.onClick(dialog, 0);
            }

            
            {
                this$0 = MsgBox.this;
                dialog = dialog1;
                callback = onclicklistener;
                super();
            }
        });
        dialog.findViewById(0x7f090230).setOnClickListener(new android.view.View.OnClickListener() {

            final MsgBox this$0;
            private final android.content.DialogInterface.OnClickListener val$callback;
            private final Dialog val$dialog;

            public void onClick(View view)
            {
                ((TimerView)dialog.findViewById(0x7f090232)).stop();
                ((TimerView)dialog.findViewById(0x7f09022f)).stop();
                try
                {
                    dialog.cancel();
                    dialog.dismiss();
                }
                catch (Exception exception) { }
                callback.onClick(dialog, 1);
            }

            
            {
                this$0 = MsgBox.this;
                dialog = dialog1;
                callback = onclicklistener;
                super();
            }
        });
        dialog.show();
    }

    public static void openMessageBox(String s, String s1, boolean flag)
    {
        if (flag)
        {
            NativeManager nativemanager = AppService.getNativeManager();
            s = nativemanager.getLanguageString(s);
            s1 = nativemanager.getLanguageString(s1);
        }
        getInstance().OpenMessageBoxTimeoutCb(s, s1, -1, -1L);
    }

    public static void openMessageBoxFull(String s, String s1, String s2, int i, android.content.DialogInterface.OnClickListener onclicklistener)
    {
        getInstance().OpenMessageBoxTimeoutJavaCb(s, s1, s2, i, onclicklistener);
    }

    public static void openMessageBoxTimeout(String s, String s1, int i, android.content.DialogInterface.OnClickListener onclicklistener)
    {
        getInstance().OpenMessageBoxTimeoutJavaCb(s, s1, AppService.getNativeManager().getLanguageString(DisplayStrings.DS_OK), i, onclicklistener);
    }

    public static void openMessageBoxWithCallback(String s, String s1, boolean flag, android.content.DialogInterface.OnClickListener onclicklistener)
    {
        NativeManager nativemanager = AppService.getNativeManager();
        if (flag)
        {
            s = nativemanager.getLanguageString(s);
            s1 = nativemanager.getLanguageString(s1);
        }
        MsgBox msgbox = getInstance();
        String s2 = nativemanager.getLanguageString(DisplayStrings.DS_OK);
        msgbox.OpenMessageBoxTimeoutJavaCb(s, s1, s2, -1, onclicklistener);
    }

    private void openTripConfirmDialog(String s, int i, String s1, final long callback, final long context, 
            int j)
    {
        if (ActivityBase.getRunningCount() < 1 || AppService.getActiveActivity() == null)
        {
            return;
        }
        NativeManager nativemanager = AppService.getNativeManager();
        final Dialog dialog = new Dialog(AppService.getActiveActivity(), 0x7f06000f);
        AppService.getActiveActivity().setDialog(dialog);
        dialog.setContentView(0x7f03012a);
        ((TextView)dialog.findViewById(0x7f09022e)).setText(nativemanager.getLanguageString(DisplayStrings.DS_NO));
        int k;
        if (j == -1)
        {
            ((TimerView)dialog.findViewById(0x7f090232)).stop();
            ((TimerView)dialog.findViewById(0x7f09022f)).stop();
        } else
        {
            ((TimerView)dialog.findViewById(0x7f090232)).setTime(j);
            ((TimerView)dialog.findViewById(0x7f090232)).start();
            ((TimerView)dialog.findViewById(0x7f09022f)).stop();
        }
        ((TextView)dialog.findViewById(0x7f090231)).setText(nativemanager.getLanguageString(DisplayStrings.DS_YES));
        ((TextView)dialog.findViewById(0x7f090764)).setText(s);
        ((TextView)dialog.findViewById(0x7f090769)).setText(nativemanager.getLanguageString(DisplayStrings.DS_ARE_YOU_ON_YOUR_WAY_TO_Q));
        ((TextView)dialog.findViewById(0x7f09076a)).setText(nativemanager.getLanguageString(s1));
        mTripTypeStr = "UNKNOWN";
        mTripSuggestButtonPressed = false;
        if (i == 3)
        {
            mTripTypeStr = "FB";
            ((ImageView)dialog.findViewById(0x7f090768)).setImageResource(0x7f020150);
            dialog.findViewById(0x7f090765).setBackgroundResource(0x7f020048);
        } else
        if (i == 4)
        {
            mTripTypeStr = "PICKUP";
            ((ImageView)dialog.findViewById(0x7f090768)).setImageResource(0x7f020010);
        } else
        if (i == 10)
        {
            mTripTypeStr = "CAL";
            ((ImageView)dialog.findViewById(0x7f090768)).setImageResource(0x7f0200a1);
        } else
        if (s1.equals("Home"))
        {
            mTripTypeStr = "HOME";
            ((ImageView)dialog.findViewById(0x7f090768)).setImageResource(0x7f020196);
        } else
        if (s1.equals("Work"))
        {
            mTripTypeStr = "WORK";
            ((ImageView)dialog.findViewById(0x7f090768)).setImageResource(0x7f02046b);
        } else
        {
            mTripTypeStr = "FAV";
            ((ImageView)dialog.findViewById(0x7f090768)).setImageResource(0x7f02014f);
        }
        Analytics.log("TRIP_SUGGEST_SHOWN", "TYPE", mTripTypeStr);
        k = Calendar.getInstance().get(11);
        if (k > 4 && k < 16)
        {
            dialog.findViewById(0x7f090765).setBackgroundResource(0x7f02004a);
        } else
        {
            TextView textview = (TextView)dialog.findViewById(0x7f090769);
            TextView textview1 = (TextView)dialog.findViewById(0x7f09076a);
            textview.setTextColor(-1);
            textview1.setTextColor(-1);
            textview1.setTypeface(null, 1);
            dialog.findViewById(0x7f090765).setBackgroundResource(0x7f020047);
        }
        dialog.findViewById(0x7f090032).setOnClickListener(new android.view.View.OnClickListener() {

            final MsgBox this$0;
            private final long val$callback;
            private final long val$context;
            private final Dialog val$dialog;

            public void onClick(View view)
            {
                mTripSuggestButtonPressed = true;
                Analytics.log("TRIP_SUGGEST_SHOWN", "ACTION|TYPE", (new StringBuilder("X|")).append(mTripTypeStr).toString());
                confirnDialogNoHandler(dialog, callback, context, 4);
            }

            
            {
                this$0 = MsgBox.this;
                dialog = dialog1;
                callback = l;
                context = l1;
                super();
            }
        });
        dialog.findViewById(0x7f09022d).setOnClickListener(new android.view.View.OnClickListener() {

            final MsgBox this$0;
            private final long val$callback;
            private final long val$context;
            private final Dialog val$dialog;

            public void onClick(View view)
            {
                mTripSuggestButtonPressed = true;
                String s2;
                if (((TimerView)dialog.findViewById(0x7f09022f)).hasExpired())
                {
                    s2 = "TIMEOUT|";
                } else
                {
                    s2 = "NO|";
                }
                Analytics.log("TRIP_SUGGEST_SHOWN", "ACTION|TYPE", (new StringBuilder(String.valueOf(s2))).append(mTripTypeStr).toString());
                confirnDialogNoHandler(dialog, callback, context, 4);
            }

            
            {
                this$0 = MsgBox.this;
                dialog = dialog1;
                callback = l;
                context = l1;
                super();
            }
        });
        dialog.findViewById(0x7f090230).setOnClickListener(new android.view.View.OnClickListener() {

            final MsgBox this$0;
            private final long val$callback;
            private final long val$context;
            private final Dialog val$dialog;

            public void onClick(View view)
            {
                mTripSuggestButtonPressed = true;
                String s2;
                if (((TimerView)dialog.findViewById(0x7f090232)).hasExpired())
                {
                    s2 = "TIMEOUT|";
                } else
                {
                    s2 = "YES|";
                }
                Analytics.log("TRIP_SUGGEST_SHOWN", "ACTION|TYPE", (new StringBuilder(String.valueOf(s2))).append(mTripTypeStr).toString());
                ((TimerView)dialog.findViewById(0x7f090232)).stop();
                ((TimerView)dialog.findViewById(0x7f09022f)).stop();
                try
                {
                    dialog.dismiss();
                }
                catch (Exception exception) { }
                if (callback != -1L)
                {
                    NativeManager.Post(context. new Runnable() {

                        final _cls23 this$1;
                        private final long val$callback;
                        private final long val$context;

                        public void run()
                        {
                            ConfirmDialogCallbackNTV(3, callback, context);
                        }

            
            {
                this$1 = final__pcls23;
                callback = l;
                context = J.this;
                super();
            }
                    });
                }
            }


            
            {
                this$0 = MsgBox.this;
                dialog = dialog1;
                callback = l;
                context = l1;
                super();
            }
        });
        dialog.setOnCancelListener(new android.content.DialogInterface.OnCancelListener() {

            final MsgBox this$0;
            private final long val$callback;
            private final long val$context;

            public void onCancel(DialogInterface dialoginterface)
            {
                if (!mTripSuggestButtonPressed)
                {
                    mTripSuggestButtonPressed = true;
                    Analytics.log("TRIP_SUGGEST_SHOWN", "ACTION|TYPE", (new StringBuilder("X|")).append(mTripTypeStr).toString());
                    confirnDialogNoHandler((Dialog)dialoginterface, callback, context, 4);
                }
            }

            
            {
                this$0 = MsgBox.this;
                callback = l;
                context = l1;
                super();
            }
        });
        dialog.show();
    }

    public void CloseAsrPopup()
    {
        AppService.Post(new Runnable() {

            final MsgBox this$0;

            public void run()
            {
                if (AppService.getMainActivity() == null)
                {
                    return;
                } else
                {
                    AppService.getMainActivity().getLayoutMgr().closeVoicePopup();
                    return;
                }
            }

            
            {
                this$0 = MsgBox.this;
                super();
            }
        });
    }

    public void OpenAsrPopup()
    {
        AppService.Post(new Runnable() {

            final MsgBox this$0;

            public void run()
            {
                if (AppService.getMainActivity() == null)
                {
                    return;
                } else
                {
                    AppService.getMainActivity().getLayoutMgr().openVoicePopup();
                    return;
                }
            }

            
            {
                this$0 = MsgBox.this;
                super();
            }
        });
    }

    public void OpenChoiceDialogCustomTimeoutCb(final String title, final String text, final boolean isCancellable, final int defaultOption, final int cancelValue, final long callback, 
            final long context, final String textOne, final int valueOne, final String textTwo, final int valueTwo, final int seconds)
    {
        AppService.Post(new Runnable() {

            final MsgBox this$0;
            private final long val$callback;
            private final int val$cancelValue;
            private final long val$context;
            private final int val$defaultOption;
            private final boolean val$isCancellable;
            private final int val$seconds;
            private final String val$text;
            private final String val$textOne;
            private final String val$textTwo;
            private final String val$title;
            private final int val$valueOne;
            private final int val$valueTwo;

            public void run()
            {
                openChoiceDialog(title, text, isCancellable, defaultOption, cancelValue, callback, context, textOne, valueOne, textTwo, valueTwo, seconds);
            }

            
            {
                this$0 = MsgBox.this;
                title = s;
                text = s1;
                isCancellable = flag;
                defaultOption = i;
                cancelValue = j;
                callback = l;
                context = l1;
                textOne = s2;
                valueOne = k;
                textTwo = s3;
                valueTwo = i1;
                seconds = j1;
                super();
            }
        });
    }

    public void OpenChooseNumberDialog(final String title, final String FirstNumber, final String SecondNumber, final android.content.DialogInterface.OnClickListener callback)
    {
        AppService.Post(new Runnable() {

            final MsgBox this$0;
            private final String val$FirstNumber;
            private final String val$SecondNumber;
            private final android.content.DialogInterface.OnClickListener val$callback;
            private final String val$title;

            public void run()
            {
                openChooseNumberDialog(title, FirstNumber, SecondNumber, callback);
            }

            
            {
                this$0 = MsgBox.this;
                title = s;
                FirstNumber = s1;
                SecondNumber = s2;
                callback = onclicklistener;
                super();
            }
        });
    }

    public void OpenConfirmDialogCustomTimeoutCb(final String title, final String text, final boolean defaultYes, final long callback, final long context, 
            final String textYes, final String textNo, final int seconds)
    {
        AppService.Post(new Runnable() {

            final MsgBox this$0;
            private final long val$callback;
            private final long val$context;
            private final boolean val$defaultYes;
            private final int val$seconds;
            private final String val$text;
            private final String val$textNo;
            private final String val$textYes;
            private final String val$title;

            public void run()
            {
                openConfirmDialog(title, text, defaultYes, callback, context, textYes, textNo, seconds);
            }

            
            {
                this$0 = MsgBox.this;
                title = s;
                text = s1;
                defaultYes = flag;
                callback = l;
                context = l1;
                textYes = s2;
                textNo = s3;
                seconds = i;
                super();
            }
        });
    }

    public void OpenConfirmDialogCustomTimeoutCbJava(final String title, final String text, final boolean defaultYes, final android.content.DialogInterface.OnClickListener onClick, final String textYes, final String textNo, final int seconds)
    {
        AppService.Post(new Runnable() {

            final MsgBox this$0;
            private final boolean val$defaultYes;
            private final android.content.DialogInterface.OnClickListener val$onClick;
            private final int val$seconds;
            private final String val$text;
            private final String val$textNo;
            private final String val$textYes;
            private final String val$title;

            public void run()
            {
                openConfirmDialogJavaCallback(title, text, defaultYes, onClick, textYes, textNo, seconds);
            }

            
            {
                this$0 = MsgBox.this;
                title = s;
                text = s1;
                defaultYes = flag;
                onClick = onclicklistener;
                textYes = s2;
                textNo = s3;
                seconds = i;
                super();
            }
        });
    }

    public void OpenMessageBoxTimeoutCb(final String title, final String text, final int seconds, final long callback)
    {
        AppService.Post(new Runnable() {

            final MsgBox this$0;
            private final long val$callback;
            private final int val$seconds;
            private final String val$text;
            private final String val$title;

            public void run()
            {
                if (ActivityBase.getRunningCount() < 1 || AppService.getActiveActivity() == null)
                {
                    return;
                }
                NativeManager nativemanager = AppService.getNativeManager();
                final Dialog dialog = new Dialog(AppService.getActiveActivity(), 0x7f06000f);
                AppService.getActiveActivity().setDialog(dialog);
                dialog.setContentView(0x7f030040);
                if (seconds == -1)
                {
                    ((TimerView)dialog.findViewById(0x7f09022f)).stop();
                } else
                {
                    ((TimerView)dialog.findViewById(0x7f09022f)).setTime(seconds);
                    ((TimerView)dialog.findViewById(0x7f09022f)).start();
                }
                dialog.findViewById(0x7f090230).setVisibility(8);
                ((TextView)dialog.findViewById(0x7f09022e)).setText(nativemanager.getLanguageString(DisplayStrings.DS_OK));
                ((TextView)dialog.findViewById(0x7f09022b)).setText(title);
                ((TextView)dialog.findViewById(0x7f09022c)).setText(text);
                if (nativemanager.getLanguageRtl())
                {
                    ((TextView)dialog.findViewById(0x7f09022c)).setGravity(5);
                }
                dialog.findViewById(0x7f09022d).setOnClickListener(callback. new android.view.View.OnClickListener() {

                    final _cls6 this$1;
                    private final long val$callback;
                    private final Dialog val$dialog;

                    public void onClick(View view)
                    {
                        try
                        {
                            dialog.cancel();
                            dialog.dismiss();
                        }
                        catch (Exception exception) { }
                        if (callback != -1L)
                        {
                            NativeManager.Post(callback. new Runnable() {

                                final _cls1 this$2;
                                private final long val$callback;

                                public void run()
                                {
                                    MsgBoxCallbackNTV(callback);
                                }

            
            {
                this$2 = final__pcls1;
                callback = J.this;
                super();
            }
                            });
                        }
                    }


            
            {
                this$1 = final__pcls6;
                dialog = dialog1;
                callback = J.this;
                super();
            }
                });
                dialog.show();
            }


            
            {
                this$0 = MsgBox.this;
                seconds = i;
                title = s;
                text = s1;
                callback = l;
                super();
            }
        });
    }

    public void OpenMessageBoxTimeoutJavaCb(final String title, final String text, final String button, final int seconds, final android.content.DialogInterface.OnClickListener onClick)
    {
        AppService.Post(new Runnable() {

            final MsgBox this$0;
            private final String val$button;
            private final android.content.DialogInterface.OnClickListener val$onClick;
            private final int val$seconds;
            private final String val$text;
            private final String val$title;

            public void run()
            {
                if (ActivityBase.getRunningCount() < 1 || AppService.getActiveActivity() == null)
                {
                    return;
                }
                AppService.getNativeManager();
                final Dialog dialog = new Dialog(AppService.getActiveActivity(), 0x7f06000f);
                AppService.getActiveActivity().setDialog(dialog);
                dialog.setContentView(0x7f030040);
                if (seconds == -1)
                {
                    ((TimerView)dialog.findViewById(0x7f09022f)).stop();
                } else
                {
                    ((TimerView)dialog.findViewById(0x7f09022f)).setTime(seconds);
                    ((TimerView)dialog.findViewById(0x7f09022f)).start();
                }
                dialog.findViewById(0x7f090230).setVisibility(8);
                ((TextView)dialog.findViewById(0x7f09022e)).setText(button);
                ((TextView)dialog.findViewById(0x7f09022b)).setText(title);
                ((TextView)dialog.findViewById(0x7f09022c)).setText(text);
                dialog.findViewById(0x7f09022d).setOnClickListener(onClick. new android.view.View.OnClickListener() {

                    final _cls7 this$1;
                    private final Dialog val$dialog;
                    private final android.content.DialogInterface.OnClickListener val$onClick;

                    public void onClick(View view)
                    {
                        try
                        {
                            dialog.cancel();
                            dialog.dismiss();
                            if (onClick != null)
                            {
                                onClick.onClick(dialog, 0);
                            }
                            return;
                        }
                        catch (Exception exception)
                        {
                            return;
                        }
                    }

            
            {
                this$1 = final__pcls7;
                dialog = dialog1;
                onClick = android.content.DialogInterface.OnClickListener.this;
                super();
            }
                });
                dialog.show();
            }

            
            {
                this$0 = MsgBox.this;
                seconds = i;
                button = s;
                title = s1;
                text = s2;
                onClick = onclicklistener;
                super();
            }
        });
    }

    public void OpenTripDialog(final String title, final int type, final String text, final long callback, final long context, 
            final int seconds)
    {
        NativeManager nativemanager = AppService.getNativeManager();
        if (nativemanager.getIsAllowTripDialog())
        {
            AppService.Post(new Runnable() {

                final MsgBox this$0;
                private final long val$callback;
                private final long val$context;
                private final int val$seconds;
                private final String val$text;
                private final String val$title;
                private final int val$type;

                public void run()
                {
                    if (AppService.getActiveActivity() != null && (AppService.getActiveActivity() instanceof MainActivity))
                    {
                        openTripConfirmDialog(title, type, text, callback, context, seconds);
                    }
                }

            
            {
                this$0 = MsgBox.this;
                title = s;
                type = i;
                text = s1;
                callback = l;
                context = l1;
                seconds = j;
                super();
            }
            });
            return;
        } else
        {
            nativemanager.setIsAllowTripDialog(true);
            return;
        }
    }

    public void Show(final String aTitle, final String aMessage, final String aLabelOk, final String aLabelCancel, final android.content.DialogInterface.OnClickListener aOkCb, final android.content.DialogInterface.OnClickListener aCancelCb)
    {
        NativeManager nativemanager;
        MainActivity mainactivity;
        nativemanager = AppService.getNativeManager();
        mainactivity = AppService.getMainActivity();
        if (mainactivity != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if (nativemanager == null || !nativemanager.IsNativeThread())
        {
            break MISSING_BLOCK_LABEL_108;
        }
        mainactivity.runOnUiThread(new Runnable() {

            final MsgBox this$0;
            private final android.content.DialogInterface.OnClickListener val$aCancelCb;
            private final String val$aLabelCancel;
            private final String val$aLabelOk;
            private final String val$aMessage;
            private final android.content.DialogInterface.OnClickListener val$aOkCb;
            private final String val$aTitle;

            public void run()
            {
                ShowRun(aTitle, aMessage, aLabelOk, aLabelCancel, aOkCb, aCancelCb);
            }

            
            {
                this$0 = MsgBox.this;
                aTitle = s;
                aMessage = s1;
                aLabelOk = s2;
                aLabelCancel = s3;
                aOkCb = onclicklistener;
                aCancelCb = onclicklistener1;
                super();
            }
        });
        if (!mIsBlocking) goto _L1; else goto _L3
_L3:
        synchronized (mInstance)
        {
            mInstance.wait();
            mIsBlocking = false;
        }
        try
        {
            Log.w("WAZE", "Continue running the native thread");
            return;
        }
        catch (Exception exception)
        {
            Logger.w("Error waiting for the message to finish");
        }
        return;
        exception1;
        msgbox;
        JVM INSTR monitorexit ;
        throw exception1;
        ShowRun(aTitle, aMessage, aLabelOk, aLabelCancel, aOkCb, aCancelCb);
        return;
    }

    public void Show(final byte aTitle[], final byte aMessage[], final byte aLabelOk[], final byte aLabelCancel[], final long aCbContext)
    {
        NativeManager nativemanager;
        MainActivity mainactivity;
        nativemanager = AppService.getNativeManager();
        mainactivity = AppService.getMainActivity();
        if (mainactivity != null && nativemanager != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if (!nativemanager.IsNativeThread())
        {
            break MISSING_BLOCK_LABEL_106;
        }
        mainactivity.runOnUiThread(new Runnable() {

            final MsgBox this$0;
            private final long val$aCbContext;
            private final byte val$aLabelCancel[];
            private final byte val$aLabelOk[];
            private final byte val$aMessage[];
            private final byte val$aTitle[];

            public void run()
            {
                ShowRun(aTitle, aMessage, aLabelOk, aLabelCancel, aCbContext);
            }

            
            {
                this$0 = MsgBox.this;
                aTitle = abyte0;
                aMessage = abyte1;
                aLabelOk = abyte2;
                aLabelCancel = abyte3;
                aCbContext = l;
                super();
            }
        });
        if (!mIsBlocking) goto _L1; else goto _L3
_L3:
        synchronized (mInstance)
        {
            mInstance.wait();
            mIsBlocking = false;
        }
        try
        {
            Log.w("WAZE", "Continue running the native thread");
            return;
        }
        catch (Exception exception)
        {
            Logger.w("Error waiting for the message to finish");
        }
        return;
        exception1;
        msgbox;
        JVM INSTR monitorexit ;
        throw exception1;
        ShowRun(aTitle, aMessage, aLabelOk, aLabelCancel, aCbContext);
        return;
    }

    public void ShowAsrLabel(final int enabled)
    {
        AppService.Post(new Runnable() {

            final MsgBox this$0;
            private final int val$enabled;

            public void run()
            {
                if (AppService.getMainActivity() == null)
                {
                    return;
                }
                LayoutManager layoutmanager = AppService.getMainActivity().getLayoutMgr();
                boolean flag;
                if (enabled == 0)
                {
                    flag = false;
                } else
                {
                    flag = true;
                }
                layoutmanager.changeVoicePopupState(flag);
            }

            
            {
                this$0 = MsgBox.this;
                enabled = i;
                super();
            }
        });
    }

    public void ShowRun(String s, String s1, String s2, String s3, android.content.DialogInterface.OnClickListener onclicklistener, android.content.DialogInterface.OnClickListener onclicklistener1)
    {
        AlertDialog alertdialog = builder().create();
        alertdialog.setCancelable(false);
        if (s2 != null && onclicklistener != null)
        {
            alertdialog.setButton(new String(s2), onclicklistener);
        }
        if (s3 != null && onclicklistener1 != null)
        {
            alertdialog.setButton2(new String(s3), onclicklistener1);
        }
        alertdialog.setTitle(s);
        alertdialog.setMessage(s1);
        alertdialog.show();
        TextView textview = (TextView)alertdialog.findViewById(0x102000b);
        if (textview != null)
        {
            Linkify.addLinks(textview, 1);
        }
    }

    void setBlocking(boolean flag)
    {
        mInstance.mIsBlocking = flag;
    }
















}
