// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.app.Dialog;
import android.app.Fragment;
import android.app.TimePickerDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.Editable;
import android.util.DisplayMetrics;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.NumberPicker;
import android.widget.TimePicker;
import com.waze.NativeManager;
import com.waze.settings.SettingsNativeManager;
import com.waze.settings.SettingsSwitchView;
import com.waze.settings.SettingsTitleText;
import com.waze.settings.SwitchCheckedCallback;
import com.waze.strings.DisplayStrings;
import com.waze.view.text.WazeTextView;
import com.waze.view.title.TitleButtonBar;
import java.lang.reflect.Field;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

// Referenced classes of package com.waze.reports:
//            OpeningHours, EditPlaceFlowActivity

public class EditOpeningHoursFragment extends Fragment
{
    private class DurationTimePickDialog extends TimePickerDialog
    {

        final int increment;
        final android.app.TimePickerDialog.OnTimeSetListener mCallback;
        TimePicker mTimePicker;
        final EditOpeningHoursFragment this$0;

        public void onClick(DialogInterface dialoginterface, int i)
        {
            if (mCallback != null && mTimePicker != null)
            {
                mTimePicker.clearFocus();
                mCallback.onTimeSet(mTimePicker, mTimePicker.getCurrentHour().intValue(), mTimePicker.getCurrentMinute().intValue() * increment);
            }
        }

        protected void onCreate(Bundle bundle)
        {
            super.onCreate(bundle);
            NumberPicker numberpicker;
            ArrayList arraylist;
            Class class1 = Class.forName("com.android.internal.R$id");
            mTimePicker = (TimePicker)findViewById(class1.getField("timePicker").getInt(null));
            Field field = class1.getField("minute");
            numberpicker = (NumberPicker)mTimePicker.findViewById(field.getInt(null));
            numberpicker.setMinValue(0);
            numberpicker.setMaxValue(-1 + 60 / increment);
            arraylist = new ArrayList();
            int i = 0;
_L2:
            if (i >= 60)
            {
                Object aobj[];
                int j;
                try
                {
                    numberpicker.setDisplayedValues((String[])arraylist.toArray(new String[0]));
                    return;
                }
                catch (Exception exception)
                {
                    exception.printStackTrace();
                }
                break; /* Loop/switch isn't completed */
            }
            aobj = new Object[1];
            aobj[0] = Integer.valueOf(i);
            arraylist.add(String.format("%02d", aobj));
            j = increment;
            i += j;
            if (true) goto _L2; else goto _L1
_L1:
        }

        protected void onStop()
        {
        }

        public void onTimeChanged(TimePicker timepicker, int i, int j)
        {
        }

        public DurationTimePickDialog(Context context, android.app.TimePickerDialog.OnTimeSetListener ontimesetlistener, int i, int j, boolean flag, int k, 
                String s)
        {
            this$0 = EditOpeningHoursFragment.this;
            super(context, ontimesetlistener, i, j / k, flag);
            mCallback = ontimesetlistener;
            increment = k;
            setTitle(s);
        }
    }


    public static final String OPENING_HOURS = "opening_hours";
    private static final String TAG = com/waze/reports/EditOpeningHoursFragment.getName();
    private static String friday;
    private static String monday;
    private static String saturday;
    private static String sunday = null;
    private static String thursday;
    private static String tuesday;
    private static String wednesday;
    private LayoutInflater inflater;
    private Button mAddButton;
    private SettingsSwitchView mAllDayCheck;
    private ArrayList mArrOpeningHours;
    private int mDayButtonIds[] = {
        0x7f090272, 0x7f090273, 0x7f090274, 0x7f090275, 0x7f090276, 0x7f090277, 0x7f090278
    };
    private boolean mDayButtonPressed[];
    private String mDayLetter[];
    private EditText mEditTextFrom;
    private EditText mEditTextTo;
    private ViewGroup mLinesContainer;
    private NativeManager mNm;
    private SettingsTitleText mOpeningHours;
    private View r;

    public EditOpeningHoursFragment()
    {
        mDayButtonPressed = new boolean[7];
    }

    private void setUpFragment()
    {
        TitleButtonBar titlebuttonbar = (TitleButtonBar)r.findViewById(0x7f090058);
        titlebuttonbar.init(getActivity(), mNm.getLanguageString(DisplayStrings.DS_EDIT_PLACE), 0, 0x7f02010b);
        titlebuttonbar.setButtonTwoListener(new android.view.View.OnClickListener() {

            final EditOpeningHoursFragment this$0;

            public void onClick(View view)
            {
                ((EditPlaceFlowActivity)getActivity()).doneOpeningHours(mArrOpeningHours);
            }

            
            {
                this$0 = EditOpeningHoursFragment.this;
                super();
            }
        });
        mOpeningHours = (SettingsTitleText)r.findViewById(0x7f09026f);
        mOpeningHours.setText(mNm.getLanguageString(DisplayStrings.DS_OPENING_HOURS));
        ((SettingsTitleText)r.findViewById(0x7f090271)).setText(mNm.getLanguageString(DisplayStrings.DS_ADD_HOURS));
        android.view.View.OnTouchListener ontouchlistener = new android.view.View.OnTouchListener() {

            final EditOpeningHoursFragment this$0;

            public boolean onTouch(View view, MotionEvent motionevent)
            {
                if (motionevent.getAction() == 1)
                {
                    Button button1 = (Button)view;
                    int k = ((Integer)view.getTag()).intValue();
                    boolean aflag[] = mDayButtonPressed;
                    boolean flag;
                    if (mDayButtonPressed[k])
                    {
                        flag = false;
                    } else
                    {
                        flag = true;
                    }
                    aflag[k] = flag;
                    button1.setPressed(mDayButtonPressed[k]);
                    setAddButtonEnabledState();
                }
                return true;
            }

            
            {
                this$0 = EditOpeningHoursFragment.this;
                super();
            }
        };
        int i = 0;
        do
        {
            if (i >= 7)
            {
                android.view.View.OnClickListener onclicklistener = new android.view.View.OnClickListener() {

                    final EditOpeningHoursFragment this$0;

                    public void onClick(View view)
                    {
                        EditText edittext = (EditText)view;
                        String s = edittext.getText().toString();
                        int k = Integer.parseInt(s.substring(0, s.indexOf(':')));
                        int l = Integer.parseInt(s.substring(1 + s.indexOf(':')));
                        ContextThemeWrapper contextthemewrapper;
                        String s1;
                        DurationTimePickDialog durationtimepickdialog;
                        if (android.os.Build.VERSION.SDK_INT < 11)
                        {
                            contextthemewrapper = new ContextThemeWrapper(getActivity(), 0x103000b);
                        } else
                        {
                            contextthemewrapper = new ContextThemeWrapper(getActivity(), 0x103006f);
                        }
                        if (view.getId() == 0x7f090279)
                        {
                            s1 = mNm.getLanguageString(DisplayStrings.DS_OPENING_TIME);
                        } else
                        if (view.getId() == 0x7f09027b)
                        {
                            s1 = mNm.getLanguageString(DisplayStrings.DS_CLOSING_TIME);
                        } else
                        {
                            s1 = mNm.getLanguageString(DisplayStrings.DS_TIME);
                        }
                        durationtimepickdialog = new DurationTimePickDialog(contextthemewrapper, edittext. new android.app.TimePickerDialog.OnTimeSetListener() {

                            final _cls3 this$1;
                            private final EditText val$toSet;

                            public void onTimeSet(TimePicker timepicker, int i, int j)
                            {
                                EditText edittext = toSet;
                                Object aobj[] = new Object[2];
                                aobj[0] = Integer.valueOf(i);
                                aobj[1] = Integer.valueOf(j);
                                edittext.setText(String.format("%02d:%02d", aobj));
                            }

            
            {
                this$1 = final__pcls3;
                toSet = EditText.this;
                super();
            }
                        }, k, l, true, 5, s1);
                        durationtimepickdialog.show();
                        durationtimepickdialog.setOnDismissListener(new android.content.DialogInterface.OnDismissListener() {

                            final _cls3 this$1;

                            public void onDismiss(DialogInterface dialoginterface)
                            {
                                refreashPressedState();
                            }

            
            {
                this$1 = _cls3.this;
                super();
            }
                        });
                    }


            
            {
                this$0 = EditOpeningHoursFragment.this;
                super();
            }
                };
                mEditTextFrom = (EditText)r.findViewById(0x7f090279);
                mEditTextFrom.setOnClickListener(onclicklistener);
                mEditTextFrom.setText("10:00");
                mEditTextTo = (EditText)r.findViewById(0x7f09027b);
                mEditTextTo.setOnClickListener(onclicklistener);
                mEditTextTo.setText("19:00");
                ((WazeTextView)r.findViewById(0x7f09027a)).setText((new StringBuilder(" ")).append(mNm.getLanguageString(DisplayStrings.DS_TO)).append(" ").toString());
                mAllDayCheck = (SettingsSwitchView)r.findViewById(0x7f09027c);
                mAllDayCheck.setText(mNm.getLanguageString(DisplayStrings.DS_OPEN_24_HOURS));
                mAllDayCheck.setValue(false);
                mAllDayCheck.setOnChecked(new SwitchCheckedCallback() {

                    final EditOpeningHoursFragment this$0;

                    public void OnCallback(boolean flag)
                    {
                        float f = 0.5F;
                        EditText edittext = mEditTextTo;
                        boolean flag1;
                        EditText edittext1;
                        float f1;
                        EditText edittext2;
                        String s;
                        EditText edittext3;
                        boolean flag2;
                        EditText edittext4;
                        EditText edittext5;
                        String s1;
                        if (flag)
                        {
                            flag1 = false;
                        } else
                        {
                            flag1 = true;
                        }
                        edittext.setEnabled(flag1);
                        edittext1 = mEditTextTo;
                        if (flag)
                        {
                            f1 = f;
                        } else
                        {
                            f1 = 1.0F;
                        }
                        edittext1.setAlpha(f1);
                        edittext2 = mEditTextTo;
                        if (flag)
                        {
                            s = "00:00";
                        } else
                        {
                            s = "19:00";
                        }
                        edittext2.setText(s);
                        edittext3 = mEditTextFrom;
                        flag2 = false;
                        if (!flag)
                        {
                            flag2 = true;
                        }
                        edittext3.setEnabled(flag2);
                        edittext4 = mEditTextFrom;
                        if (!flag)
                        {
                            f = 1.0F;
                        }
                        edittext4.setAlpha(f);
                        edittext5 = mEditTextFrom;
                        if (flag)
                        {
                            s1 = "00:00";
                        } else
                        {
                            s1 = "10:00";
                        }
                        edittext5.setText(s1);
                    }

            
            {
                this$0 = EditOpeningHoursFragment.this;
                super();
            }
                });
                mAddButton = (Button)r.findViewById(0x7f09027d);
                mAddButton.setText(mNm.getLanguageString(DisplayStrings.DS_ADD));
                mAddButton.setOnClickListener(new android.view.View.OnClickListener() {

                    final EditOpeningHoursFragment this$0;

                    public void onClick(View view)
                    {
                        int k = 1;
                        if (!mDayButtonPressed[0] && !mDayButtonPressed[k] && !mDayButtonPressed[2] && !mDayButtonPressed[3] && !mDayButtonPressed[4] && !mDayButtonPressed[5] && !mDayButtonPressed[6])
                        {
                            return;
                        }
                        OpeningHours openinghours = new OpeningHours();
                        if (OpeningHours.FIRST_DAY_IS_SUNDAY)
                        {
                            int ai7[] = openinghours.days;
                            int j2;
                            int ai8[];
                            int k2;
                            int ai9[];
                            int l2;
                            int ai10[];
                            int i3;
                            int ai11[];
                            int j3;
                            int ai12[];
                            int k3;
                            int ai13[];
                            if (mDayButtonPressed[0])
                            {
                                j2 = k;
                            } else
                            {
                                j2 = 0;
                            }
                            ai7[0] = j2;
                            ai8 = openinghours.days;
                            if (mDayButtonPressed[k])
                            {
                                k2 = k;
                            } else
                            {
                                k2 = 0;
                            }
                            ai8[k] = k2;
                            ai9 = openinghours.days;
                            if (mDayButtonPressed[2])
                            {
                                l2 = k;
                            } else
                            {
                                l2 = 0;
                            }
                            ai9[2] = l2;
                            ai10 = openinghours.days;
                            if (mDayButtonPressed[3])
                            {
                                i3 = k;
                            } else
                            {
                                i3 = 0;
                            }
                            ai10[3] = i3;
                            ai11 = openinghours.days;
                            if (mDayButtonPressed[4])
                            {
                                j3 = k;
                            } else
                            {
                                j3 = 0;
                            }
                            ai11[4] = j3;
                            ai12 = openinghours.days;
                            if (mDayButtonPressed[5])
                            {
                                k3 = k;
                            } else
                            {
                                k3 = 0;
                            }
                            ai12[5] = k3;
                            ai13 = openinghours.days;
                            if (!mDayButtonPressed[6])
                            {
                                k = 0;
                            }
                            ai13[6] = k;
                        } else
                        {
                            int ai[] = openinghours.days;
                            int l;
                            int ai1[];
                            int i1;
                            int ai2[];
                            int j1;
                            int ai3[];
                            int k1;
                            int ai4[];
                            int l1;
                            int ai5[];
                            int i2;
                            int ai6[];
                            if (mDayButtonPressed[0])
                            {
                                l = k;
                            } else
                            {
                                l = 0;
                            }
                            ai[k] = l;
                            ai1 = openinghours.days;
                            if (mDayButtonPressed[k])
                            {
                                i1 = k;
                            } else
                            {
                                i1 = 0;
                            }
                            ai1[2] = i1;
                            ai2 = openinghours.days;
                            if (mDayButtonPressed[2])
                            {
                                j1 = k;
                            } else
                            {
                                j1 = 0;
                            }
                            ai2[3] = j1;
                            ai3 = openinghours.days;
                            if (mDayButtonPressed[3])
                            {
                                k1 = k;
                            } else
                            {
                                k1 = 0;
                            }
                            ai3[4] = k1;
                            ai4 = openinghours.days;
                            if (mDayButtonPressed[4])
                            {
                                l1 = k;
                            } else
                            {
                                l1 = 0;
                            }
                            ai4[5] = l1;
                            ai5 = openinghours.days;
                            if (mDayButtonPressed[5])
                            {
                                i2 = k;
                            } else
                            {
                                i2 = 0;
                            }
                            ai5[6] = i2;
                            ai6 = openinghours.days;
                            if (!mDayButtonPressed[6])
                            {
                                k = 0;
                            }
                            ai6[0] = k;
                        }
                        openinghours.from = mEditTextFrom.getText().toString();
                        openinghours.to = mEditTextTo.getText().toString();
                        mArrOpeningHours.add(openinghours);
                        addLine(openinghours);
                    }

            
            {
                this$0 = EditOpeningHoursFragment.this;
                super();
            }
                });
                mLinesContainer = (ViewGroup)r.findViewById(0x7f090270);
                setAddButtonEnabledState();
                return;
            }
            int j = mDayButtonIds[i];
            Button button = (Button)r.findViewById(j);
            button.setText(mDayLetter[i]);
            button.setTag(Integer.valueOf(i));
            button.setOnTouchListener(ontouchlistener);
            i++;
        } while (true);
    }

    protected void addLine(final OpeningHours oh)
    {
        final View newLine = inflater.inflate(0x7f03009d, mLinesContainer, false);
        ((WazeTextView)newLine.findViewById(0x7f0904cd)).setText(oh.getDaysString());
        ((WazeTextView)newLine.findViewById(0x7f0904ce)).setText(oh.getHoursString());
        newLine.findViewById(0x7f0904cf).setOnClickListener(new android.view.View.OnClickListener() {

            final EditOpeningHoursFragment this$0;
            private final View val$newLine;
            private final OpeningHours val$oh;

            public void onClick(View view)
            {
                mLinesContainer.removeView(newLine);
                mArrOpeningHours.remove(oh);
                SettingsTitleText settingstitletext = mOpeningHours;
                byte byte0;
                if (mArrOpeningHours.isEmpty())
                {
                    byte0 = 8;
                } else
                {
                    byte0 = 0;
                }
                settingstitletext.setVisibility(byte0);
            }

            
            {
                this$0 = EditOpeningHoursFragment.this;
                newLine = view;
                oh = openinghours;
                super();
            }
        });
        newLine.setTag(oh);
        mLinesContainer.addView(newLine);
        newLine.getLayoutParams().height = (int)(64F * getResources().getDisplayMetrics().density);
        mOpeningHours.setVisibility(0);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        super.onCreateView(layoutinflater, viewgroup, bundle);
        mNm = NativeManager.getInstance();
        if (bundle == null) goto _L2; else goto _L1
_L1:
        int j = 0;
_L10:
        if (j < 7) goto _L4; else goto _L3
_L3:
        mArrOpeningHours = bundle.getParcelableArrayList((new StringBuilder(String.valueOf(TAG))).append(".mArrOpeningHours").toString());
_L2:
        Iterator iterator;
        int i;
        if (sunday == null)
        {
            SimpleDateFormat simpledateformat = new SimpleDateFormat("EEEEE", new Locale((new SettingsNativeManager()).getLanguagesLocaleNTV()));
            Calendar calendar = Calendar.getInstance();
            calendar.set(7, 1);
            sunday = simpledateformat.format(calendar.getTime());
            calendar.set(7, 2);
            monday = simpledateformat.format(calendar.getTime());
            calendar.set(7, 3);
            tuesday = simpledateformat.format(calendar.getTime());
            calendar.set(7, 4);
            wednesday = simpledateformat.format(calendar.getTime());
            calendar.set(7, 5);
            thursday = simpledateformat.format(calendar.getTime());
            calendar.set(7, 6);
            friday = simpledateformat.format(calendar.getTime());
            calendar.set(7, 7);
            saturday = simpledateformat.format(calendar.getTime());
        }
        if (OpeningHours.FIRST_DAY_IS_SUNDAY)
        {
            String as1[] = new String[7];
            as1[0] = sunday;
            as1[1] = monday;
            as1[2] = tuesday;
            as1[3] = wednesday;
            as1[4] = thursday;
            as1[5] = friday;
            as1[6] = saturday;
            mDayLetter = as1;
        } else
        {
            String as[] = new String[7];
            as[0] = monday;
            as[1] = tuesday;
            as[2] = wednesday;
            as[3] = thursday;
            as[4] = friday;
            as[5] = saturday;
            as[6] = sunday;
            mDayLetter = as;
        }
        inflater = layoutinflater;
        r = layoutinflater.inflate(0x7f030048, viewgroup, false);
        setUpFragment();
        if (mArrOpeningHours == null)
        {
            mArrOpeningHours = new ArrayList();
        }
        iterator = mArrOpeningHours.iterator();
_L11:
        if (iterator.hasNext()) goto _L6; else goto _L5
_L5:
        if (!mArrOpeningHours.isEmpty()) goto _L8; else goto _L7
_L7:
        mOpeningHours.setVisibility(8);
        if (bundle != null) goto _L8; else goto _L9
_L9:
        i = 0;
_L12:
        if (i < 5)
        {
            break MISSING_BLOCK_LABEL_549;
        }
_L8:
        refreashPressedState();
        setAddButtonEnabledState();
        return r;
_L4:
        mDayButtonPressed[j] = bundle.getBoolean((new StringBuilder(String.valueOf(TAG))).append(".mDayButtonPressed.").append(j).toString(), false);
        j++;
          goto _L10
_L6:
        addLine((OpeningHours)iterator.next());
          goto _L11
        mDayButtonPressed[i] = true;
        i++;
          goto _L12
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        int i = 0;
        do
        {
            if (i >= 7)
            {
                bundle.putParcelableArrayList((new StringBuilder(String.valueOf(TAG))).append(".mArrOpeningHours").toString(), mArrOpeningHours);
                return;
            }
            bundle.putBoolean((new StringBuilder(String.valueOf(TAG))).append(".mDayButtonPressed.").append(i).toString(), mDayButtonPressed[i]);
            i++;
        } while (true);
    }

    public void refreashPressedState()
    {
        int i = 0;
        do
        {
            if (i >= 7)
            {
                return;
            }
            int j = mDayButtonIds[i];
            ((Button)r.findViewById(j)).setPressed(mDayButtonPressed[i]);
            i++;
        } while (true);
    }

    void setAddButtonEnabledState()
    {
        Button button = mAddButton;
        if (mDayButtonPressed[0] || mDayButtonPressed[1] || mDayButtonPressed[2] || mDayButtonPressed[3] || mDayButtonPressed[4] || mDayButtonPressed[5]) goto _L2; else goto _L1
_L1:
        boolean flag;
        boolean flag1;
        flag1 = mDayButtonPressed[6];
        flag = false;
        if (flag1) goto _L2; else goto _L3
_L3:
        button.setEnabled(flag);
        return;
_L2:
        flag = true;
        if (true) goto _L3; else goto _L4
_L4:
    }

    public void setOpeningHours(ArrayList arraylist)
    {
        mArrOpeningHours = arraylist;
    }








}
