// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.ui;

import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.Intent;
import android.os.Bundle;
import com.waze.reports.SimpleChoiceFragment;
import com.waze.strings.DisplayStrings;

// Referenced classes of package com.waze.ifs.ui:
//            ActivityBase

public class SimpleChoiceActivity extends ActivityBase
    implements com.waze.reports.SimpleChoiceFragment.ISimplyChoose
{

    public static final String ARG_ALLOW_COMMENT = (new StringBuilder(String.valueOf(TAG))).append(".arg.allow_comment").toString();
    public static final String ARG_CHOICES = (new StringBuilder(String.valueOf(TAG))).append(".arg.choices").toString();
    public static final String ARG_FWD_INTENT = (new StringBuilder(String.valueOf(TAG))).append(".arg.fwd_intent").toString();
    public static final String ARG_HINT_DS = (new StringBuilder(String.valueOf(TAG))).append(".arg.hint").toString();
    public static final String ARG_INPUT_TYPE = (new StringBuilder(String.valueOf(TAG))).append(".arg.input_type").toString();
    public static final String ARG_SINGLE_LINE = (new StringBuilder(String.valueOf(TAG))).append(".arg.single_line").toString();
    public static final String ARG_SUBTITLE_DS = (new StringBuilder(String.valueOf(TAG))).append(".arg.subtitle").toString();
    public static final String ARG_TITLE_DS = (new StringBuilder(String.valueOf(TAG))).append(".arg.title").toString();
    public static final String RET_CHOICE = (new StringBuilder(String.valueOf(TAG))).append(".ret.choice").toString();
    public static final String RET_COMMENT = (new StringBuilder(String.valueOf(TAG))).append(".ret.comment").toString();
    private static final String TAG = com/waze/ifs/ui/SimpleChoiceActivity.getName();
    private Intent mFwdIntent;

    public SimpleChoiceActivity()
    {
    }

    public void choiceMade(com.waze.reports.SimpleChoiceFragment.SimpleChoice simplechoice, String s)
    {
        Intent intent;
        if (mFwdIntent == null)
        {
            intent = new Intent();
        } else
        {
            intent = mFwdIntent;
        }
        intent.setExtrasClassLoader(com/waze/ifs/ui/SimpleChoiceActivity.getClassLoader());
        intent.putExtra(RET_CHOICE, simplechoice);
        intent.putExtra(RET_COMMENT, s);
        if (mFwdIntent == null)
        {
            setResult(-1, intent);
            finish();
            return;
        } else
        {
            setResult(-1);
            startActivityForResult(mFwdIntent, 0);
            return;
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f03005a);
        SimpleChoiceFragment simplechoicefragment = new SimpleChoiceFragment();
        Intent intent = getIntent();
        int i = intent.getIntExtra(ARG_TITLE_DS, 0);
        simplechoicefragment.setTitle(DisplayStrings.values()[i]);
        int j = intent.getIntExtra(ARG_SUBTITLE_DS, 0);
        simplechoicefragment.setSubtitle(DisplayStrings.values()[j]);
        int k = intent.getIntExtra(ARG_HINT_DS, 0);
        simplechoicefragment.setHint(DisplayStrings.values()[k]);
        simplechoicefragment.setSingleLine(intent.getBooleanExtra(ARG_SINGLE_LINE, false));
        simplechoicefragment.setAllowComment(intent.getBooleanExtra(ARG_ALLOW_COMMENT, false));
        simplechoicefragment.setInputType(intent.getIntExtra(ARG_INPUT_TYPE, 0));
        Object aobj[] = (Object[])intent.getSerializableExtra(ARG_CHOICES);
        com.waze.reports.SimpleChoiceFragment.SimpleChoice asimplechoice[] = new com.waze.reports.SimpleChoiceFragment.SimpleChoice[aobj.length];
        int l = 0;
        do
        {
            if (l >= asimplechoice.length)
            {
                simplechoicefragment.setChoices(asimplechoice);
                mFwdIntent = (Intent)intent.getParcelableExtra(ARG_FWD_INTENT);
                getFragmentManager().beginTransaction().add(0x7f0902cc, simplechoicefragment).commit();
                return;
            }
            asimplechoice[l] = (com.waze.reports.SimpleChoiceFragment.SimpleChoice)aobj[l];
            l++;
        } while (true);
    }

}
