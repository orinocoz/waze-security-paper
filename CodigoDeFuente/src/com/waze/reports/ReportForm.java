// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.text.Editable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.Animation;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.MainActivity;
import com.waze.MsgBox;
import com.waze.NativeManager;
import com.waze.ResManager;
import com.waze.mywaze.Group;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.strings.DisplayStrings;
import com.waze.utils.EditTextUtils;
import com.waze.utils.FileUtils;
import com.waze.view.timer.TimerView;

// Referenced classes of package com.waze.reports:
//            ReportMenu, ReportGroupsActivity

public abstract class ReportForm extends RelativeLayout
{

    private static final String IMAGE_FILE_NAME = "waze_pic.jpg";
    private static boolean m_IsLaneActive = true;
    public Animation animation;
    protected String audioFilename;
    private Uri capturedImageURI;
    protected Context context;
    protected String imageFilename;
    protected LayoutInflater inflater;
    CharSequence mTmpDescription;
    public boolean myLane;
    protected NativeManager nativeManager;
    protected boolean pendingTypingAllowed;
    protected ReportMenu reportMenu;
    private int reportResourcePortrait;

    protected ReportForm(Context context1, ReportMenu reportmenu, int i)
    {
        super(context1);
        myLane = true;
        pendingTypingAllowed = false;
        context = context1;
        reportMenu = reportmenu;
        reportResourcePortrait = i;
    }

    public static void SetIsLaneActive(boolean flag)
    {
        m_IsLaneActive = flag;
    }

    private void setGroupData(Group group)
    {
        TextView textview = (TextView)findViewById(0x7f09056e);
        ImageView imageview = (ImageView)findViewById(0x7f09056c);
        if (group.name == null || group.name.equals(""))
        {
            textview.setText(AppService.getNativeManager().getLanguageString(DisplayStrings.DS_NO_GROUP));
            imageview.setImageDrawable(null);
            return;
        }
        textview.setText(group.name);
        android.graphics.drawable.Drawable drawable = ResManager.GetSkinDrawable((new StringBuilder(String.valueOf(group.icon))).append(".bin").toString());
        if (drawable == null)
        {
            drawable = ResManager.GetSkinDrawable("groups_default_icons.bin");
        }
        imageview.setImageDrawable(drawable);
    }

    private void setMyLane()
    {
        TextView textview;
label0:
        {
label1:
            {
label2:
                {
                    textview = (TextView)findViewById(0x7f0901f6);
                    if (textview != null)
                    {
                        if (!m_IsLaneActive)
                        {
                            break label0;
                        }
                        if (!myLane)
                        {
                            break label1;
                        }
                        textview.setText(nativeManager.getLanguageString(DisplayStrings.DS_MY_LANE));
                        if (!nativeManager.getIsDriveOnLeft())
                        {
                            break label2;
                        }
                        ((ImageView)findViewById(0x7f0901f5)).setImageResource(0x7f020213);
                    }
                    return;
                }
                ((ImageView)findViewById(0x7f0901f5)).setImageResource(0x7f020212);
                return;
            }
            textview.setText(nativeManager.getLanguageString(DisplayStrings.DS_OTHER_LANE));
            if (nativeManager.getIsDriveOnLeft())
            {
                ((ImageView)findViewById(0x7f0901f5)).setImageResource(0x7f020216);
                return;
            } else
            {
                ((ImageView)findViewById(0x7f0901f5)).setImageResource(0x7f020215);
                return;
            }
        }
        textview.setText(nativeManager.getLanguageString(DisplayStrings.DS_DURATION));
    }

    public void afterOrientationChanged()
    {
        TextView textview = (TextView)findViewById(0x7f0903eb);
        if (textview != null)
        {
            textview.setText(mTmpDescription);
        }
        setMyLane();
        if (imageFilename != null)
        {
            ImageView imageview1 = (ImageView)findViewById(0x7f090569);
            if (imageview1 != null)
            {
                String s1;
                if (getContext().getResources().getConfiguration().orientation == 2)
                {
                    imageview1.setImageResource(0x7f020210);
                } else
                {
                    imageview1.setImageResource(0x7f02020f);
                }
                s1 = nativeManager.getLanguageString(DisplayStrings.DS_PICTURE_ADDED);
                ((TextView)findViewById(0x7f09056a)).setText(s1);
            }
        } else
        {
            ImageView imageview = (ImageView)findViewById(0x7f090569);
            if (imageview != null)
            {
                imageview.setImageResource(0x7f02021a);
                String s = nativeManager.getLanguageString(DisplayStrings.DS_TAKE_A_PIC);
                ((TextView)findViewById(0x7f09056a)).setText(s);
                return;
            }
        }
    }

    public void beforeOrientationChanged()
    {
        mTmpDescription = null;
        TextView textview = (TextView)findViewById(0x7f0903eb);
        if (textview != null)
        {
            mTmpDescription = textview.getText();
        }
    }

    public abstract int getDelayedReportButtonResource();

    protected int getDuration()
    {
        return -1;
    }

    protected String getFilenameFromUri(Activity activity, Uri uri)
    {
        Cursor cursor = activity.managedQuery(uri, null, "", null, null);
        if (cursor.getCount() == 0)
        {
            return null;
        } else
        {
            cursor.moveToFirst();
            return cursor.getString(cursor.getColumnIndexOrThrow("_data"));
        }
    }

    protected abstract int getReportSubtype();

    protected abstract int getReportType();

    protected void initLayout()
    {
        nativeManager = AppService.getNativeManager();
        inflater = (LayoutInflater)context.getSystemService("layout_inflater");
        inflater.inflate(reportResourcePortrait, this);
        String s = nativeManager.getLanguageString(DisplayStrings.DS_SEND);
        TextView textview = (TextView)findViewById(0x7f090370);
        if (textview != null)
        {
            textview.setText(s);
        }
        String s1 = nativeManager.getLanguageString(DisplayStrings.DS_LATER_CAPITAL);
        TextView textview1 = (TextView)findViewById(0x7f090205);
        if (textview1 != null)
        {
            textview1.setText(s1);
        }
        String s2 = nativeManager.getLanguageString(DisplayStrings.DS_TAKE_A_PIC);
        TextView textview2 = (TextView)findViewById(0x7f09056a);
        if (textview2 != null)
        {
            textview2.setText(s2);
        }
        String s4;
        final EditText descriptionView;
        View view;
        View view1;
        final View groupsView;
        if (m_IsLaneActive)
        {
            String s5 = nativeManager.getLanguageString(DisplayStrings.DS_MY_LANE);
            TextView textview4 = (TextView)findViewById(0x7f0901f6);
            if (textview4 != null)
            {
                textview4.setText(s5);
            }
            setMyLane();
        } else
        {
            String s3 = nativeManager.getLanguageString(DisplayStrings.DS_DURATION);
            TextView textview3 = (TextView)findViewById(0x7f0901f6);
            if (textview3 != null)
            {
                textview3.setText(s3);
            }
        }
        s4 = nativeManager.getLanguageString(DisplayStrings.DS_SHARE_DETAILS_HERE___);
        descriptionView = (EditText)findViewById(0x7f0903eb);
        if (descriptionView != null)
        {
            descriptionView.setHint(s4);
            descriptionView.setOnTouchListener(EditTextUtils.getKeyboardLockOnTouchListener(context, descriptionView, new com.waze.utils.EditTextUtils.OnTouchListenerDoneListener() {

                final ReportForm this$0;

                public void onDone()
                {
                    stop();
                }

            
            {
                this$0 = ReportForm.this;
                super();
            }
            }));
        }
        findViewById(0x7f090033).setOnClickListener(new android.view.View.OnClickListener() {

            final ReportForm this$0;

            public void onClick(View view5)
            {
                stop();
                reportMenu.close();
            }

            
            {
                this$0 = ReportForm.this;
                super();
            }
        });
        view = findViewById(0x7f090204);
        if (view != null)
        {
            android.view.View.OnClickListener onclicklistener = new android.view.View.OnClickListener() {

                final ReportForm this$0;

                public void onClick(View view5)
                {
                    stop();
                    reportMenu.setDelayedReport();
                }

            
            {
                this$0 = ReportForm.this;
                super();
            }
            };
            view.setOnClickListener(onclicklistener);
        }
        view1 = findViewById(0x7f09036f);
        if (view1 != null)
        {
            android.view.View.OnClickListener onclicklistener1 = new android.view.View.OnClickListener() {

                final ReportForm this$0;
                private final EditText val$descriptionView;

                public void onClick(View view5)
                {
                    stop();
                    String s6 = imageFilename;
                    String s7 = null;
                    String s8 = null;
                    if (s6 != null)
                    {
                        s8 = FileUtils.getOnlyPath(imageFilename);
                        s7 = FileUtils.getFilenameOnly(imageFilename);
                    }
                    final String imageFilePath = s8;
                    final String imageFileNameOnly = s7;
                    String s9 = audioFilename;
                    String s10 = null;
                    String s11 = null;
                    if (s9 != null)
                    {
                        s11 = FileUtils.getOnlyPath(audioFilename);
                        s10 = FileUtils.getFilenameOnly(audioFilename);
                    }
                    final String audioFilePath = s11;
                    final String audioFileNameOnly = s10;
                    EditText edittext = descriptionView;
                    String s12 = null;
                    if (edittext != null)
                    {
                        s12 = descriptionView.getText().toString();
                    }
                    final String description = s12;
                    final int direction;
                    if (myLane)
                    {
                        direction = 1;
                    } else
                    {
                        direction = 2;
                    }
                    NativeManager.Post(getDuration(). new Runnable() {

                        final _cls4 this$1;
                        private final String val$audioFileNameOnly;
                        private final String val$audioFilePath;
                        private final String val$description;
                        private final int val$direction;
                        private final int val$duration;
                        private final String val$imageFileNameOnly;
                        private final String val$imageFilePath;
                        private final int val$reportSubtype;
                        private final int val$reportType;

                        public void run()
                        {
                            nativeManager.sendAlertRequest(imageFilePath, imageFileNameOnly, audioFilePath, audioFileNameOnly, description, direction, reportType, reportSubtype, duration);
                        }

            
            {
                this$1 = final__pcls4;
                imageFilePath = s;
                imageFileNameOnly = s1;
                audioFilePath = s2;
                audioFileNameOnly = s3;
                description = s4;
                direction = i;
                reportType = j;
                reportSubtype = k;
                duration = I.this;
                super();
            }
                    });
                    reportMenu.close();
                }


            
            {
                this$0 = ReportForm.this;
                descriptionView = edittext;
                super();
            }
            };
            view1.setOnClickListener(onclicklistener1);
        }
        if (nativeManager.ReportAllowVoiceRecordingsNTV())
        {
            if (findViewById(0x7f090582) != null)
            {
                if (NativeManager.getManufacturer() != null && NativeManager.getManufacturer().equals("samsung") && NativeManager.getModel() != null && NativeManager.getModel().equals("GT-I9100") && NativeManager.getDevice() != null && NativeManager.getDevice().equals("GT-I9100"))
                {
                    findViewById(0x7f090582).setVisibility(8);
                }
                findViewById(0x7f090582).setOnClickListener(new android.view.View.OnClickListener() {

                    final ReportForm this$0;

                    public void onClick(View view5)
                    {
                        stop();
                        recordAudio();
                    }

            
            {
                this$0 = ReportForm.this;
                super();
            }
                });
            }
        } else
        if (findViewById(0x7f090582) != null)
        {
            findViewById(0x7f090582).setVisibility(8);
        }
        if (nativeManager.ReportAllowImagesNTV())
        {
            View view4 = findViewById(0x7f0901f7);
            if (view4 != null)
            {
                android.view.View.OnClickListener onclicklistener4 = new android.view.View.OnClickListener() {

                    final ReportForm this$0;

                    public void onClick(View view5)
                    {
                        stop();
                        takePicture();
                    }

            
            {
                this$0 = ReportForm.this;
                super();
            }
                };
                view4.setOnClickListener(onclicklistener4);
            }
        } else
        {
            View view2 = findViewById(0x7f0901f7);
            if (view2 != null)
            {
                view2.setVisibility(8);
            }
        }
        if (m_IsLaneActive)
        {
            View view3 = findViewById(0x7f0901f4);
            if (view3 != null)
            {
                android.view.View.OnClickListener onclicklistener3 = new android.view.View.OnClickListener() {

                    final ReportForm this$0;

                    public void onClick(View view5)
                    {
                        stop();
                        if (myLane)
                        {
                            myLane = false;
                        } else
                        {
                            myLane = true;
                        }
                        setMyLane();
                    }

            
            {
                this$0 = ReportForm.this;
                super();
            }
                };
                view3.setOnClickListener(onclicklistener3);
            }
        }
        groupsView = findViewById(0x7f09056b);
        if (groupsView != null)
        {
            android.view.View.OnClickListener onclicklistener2 = new android.view.View.OnClickListener() {

                final ReportForm this$0;

                public void onClick(View view5)
                {
                    stop();
                    Intent intent = new Intent(AppService.getMainActivity(), com/waze/reports/ReportGroupsActivity);
                    AppService.getMainActivity().startActivityForResult(intent, 32776);
                }

            
            {
                this$0 = ReportForm.this;
                super();
            }
            };
            groupsView.setOnClickListener(onclicklistener2);
            MyWazeNativeManager mywazenativemanager = MyWazeNativeManager.getInstance();
            com.waze.mywaze.MyWazeNativeManager.ActiveGroupListener activegrouplistener = new com.waze.mywaze.MyWazeNativeManager.ActiveGroupListener() {

                final ReportForm this$0;
                private final View val$groupsView;

                public void onComplete(Group group)
                {
                    if (group == null)
                    {
                        groupsView.setVisibility(8);
                        return;
                    } else
                    {
                        groupsView.setVisibility(0);
                        String s6 = nativeManager.getLanguageString(DisplayStrings.DS_ALSO_SEND_THIS_REPORT_TOC);
                        ((TextView)findViewById(0x7f09056d)).setText(s6);
                        setGroupData(group);
                        MyWazeNativeManager.getInstance().setSelectedGroup(group);
                        return;
                    }
                }

            
            {
                this$0 = ReportForm.this;
                groupsView = view;
                super();
            }
            };
            mywazenativemanager.getActiveGroup(activegrouplistener);
        }
    }

    public void onActivityResult(Activity activity, int i, int j, Intent intent)
    {
        if (i != 32770) goto _L2; else goto _L1
_L1:
        if (j != -1) goto _L4; else goto _L3
_L3:
        imageFilename = getFilenameFromUri(activity, capturedImageURI);
        String s1;
        if (getContext().getResources().getConfiguration().orientation == 2)
        {
            ((ImageView)findViewById(0x7f090569)).setImageResource(0x7f020210);
        } else
        {
            ((ImageView)findViewById(0x7f090569)).setImageResource(0x7f02020f);
        }
        s1 = nativeManager.getLanguageString(DisplayStrings.DS_PICTURE_ADDED);
        ((TextView)findViewById(0x7f09056a)).setText(s1);
_L6:
        return;
_L4:
        if (j == 0)
        {
            imageFilename = null;
            ((ImageView)findViewById(0x7f090569)).setImageResource(0x7f02021a);
            String s = nativeManager.getLanguageString(DisplayStrings.DS_TAKE_A_PIC);
            ((TextView)findViewById(0x7f09056a)).setText(s);
            return;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if (i == 32776 && j == -1)
        {
            Group group = (Group)intent.getExtras().get("group");
            if (group != null)
            {
                setGroupData(group);
                return;
            }
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void onOpenCallback()
    {
    }

    public void onOrientationChanged(int i)
    {
    }

    protected void recordAudio()
    {
        MainActivity mainactivity = AppService.getMainActivity();
        Intent intent = new Intent("android.provider.MediaStore.RECORD_SOUND");
        intent.putExtra("android.provider.MediaStore.extra.MAX_BYTES", 10000L);
        try
        {
            mainactivity.startActivityForResult(intent, 32769);
            return;
        }
        catch (ActivityNotFoundException activitynotfoundexception)
        {
            MsgBox.getInstance().OpenMessageBoxTimeoutCb(nativeManager.getLanguageString(DisplayStrings.DS_UHHOHE), nativeManager.getLanguageString(DisplayStrings.DS_SOUND_RECORDER_NOT_FOUND), 5, -1L);
        }
    }

    public void start()
    {
        TimerView timerview = (TimerView)findViewById(0x7f090206);
        if (timerview != null)
        {
            timerview.start();
            timerview.setVisibility(0);
        }
    }

    public void stop()
    {
        TimerView timerview = (TimerView)findViewById(0x7f090206);
        if (timerview != null)
        {
            timerview.stop();
        }
    }

    protected void takePicture()
    {
        MainActivity mainactivity = AppService.getMainActivity();
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("title", "waze_pic.jpg");
        capturedImageURI = mainactivity.getContentResolver().insert(android.provider.MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentvalues);
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        intent.putExtra("output", capturedImageURI);
        mainactivity.startActivityForResult(intent, 32770);
    }

    protected void test()
    {
        inflater = (LayoutInflater)context.getSystemService("layout_inflater");
        inflater.inflate(reportResourcePortrait, this);
    }



}
