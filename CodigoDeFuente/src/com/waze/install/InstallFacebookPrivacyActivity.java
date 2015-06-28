// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.install;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.MoodManager;
import com.waze.NativeManager;
import com.waze.ifs.ui.ActivityBase;
import com.waze.mywaze.MyWazeData;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.profile.WelcomeActivity;
import com.waze.profile.WelcomeDoneActivity;
import com.waze.social.facebook.FacebookWrapper;
import com.waze.strings.DisplayStrings;
import com.waze.utils.ImageRepository;
import com.waze.view.title.TitleBar;

// Referenced classes of package com.waze.install:
//            InstallNativeManager

public class InstallFacebookPrivacyActivity extends ActivityBase
{

    private boolean bIsFof;
    private boolean isNew;
    private NativeManager nativeManager;

    public InstallFacebookPrivacyActivity()
    {
        bIsFof = true;
        nativeManager = AppService.getNativeManager();
    }

    public void SetMoodInView()
    {
        ((ImageView)findViewById(0x7f090347)).setImageDrawable(MoodManager.getInstance().getMoodDrawable(this));
    }

    public void SetMyWazeData(MyWazeData mywazedata)
    {
        ((TextView)findViewById(0x7f0901bc)).setText(mywazedata.mUserName);
        ((TextView)findViewById(0x7f090042)).setText(mywazedata.mJoinedStr);
        ((TextView)findViewById(0x7f090345)).setText(mywazedata.mFaceBookNickName);
        ImageView imageview = (ImageView)findViewById(0x7f090343);
        ImageRepository.instance.getImage(mywazedata.mImageUrl, imageview, this);
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
    }

    public void onBackPressed()
    {
        FacebookWrapper.getInstance().logout(this, null);
        MyWazeNativeManager.getInstance().facebookDisconnectNow();
        super.onBackPressed();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(0x7f03006c);
        isNew = getIntent().getBooleanExtra("isNew", false);
        android.view.View.OnClickListener onclicklistener;
        String s;
        int i;
        if (InstallNativeManager.IsMinimalInstallation())
        {
            if (isNew)
            {
                NativeManager.getInstance().SignUplogAnalytics("THIS_IS_YOU_NEW", null, null, false);
            } else
            {
                NativeManager.getInstance().SignUplogAnalytics("THIS_IS_YOU_EXISTING", null, null, false);
            }
        } else
        if (isNew)
        {
            NativeManager.getInstance().SignUplogAnalytics("THIS_IS_YOU_NEW", null, null, false);
        } else
        {
            NativeManager.getInstance().SignUplogAnalytics("THIS_IS_YOU_EXISTING", null, null, false);
        }
        ((ImageView)findViewById(0x7f090347)).setImageDrawable(MoodManager.getInstance().getMoodDrawable(this));
        ((TextView)findViewById(0x7f09033e)).setText(nativeManager.getLanguageString(DisplayStrings.DS_FRIENDS_SEE_YOUR_FULL_NAME));
        ((TextView)findViewById(0x7f09033f)).setText(nativeManager.getLanguageString(DisplayStrings.DS_OTHERS_SEE_YOUR_NICKNAME));
        ((TitleBar)findViewById(0x7f090337)).init(this, nativeManager.getLanguageString(DisplayStrings.DS_THIS_IS_YOU), nativeManager.getLanguageString(DisplayStrings.DS_NEXT));
        ((TitleBar)findViewById(0x7f090337)).setUpButtonDisabled();
        onclicklistener = new android.view.View.OnClickListener() {

            final InstallFacebookPrivacyActivity this$0;

            public void onClick(View view)
            {
                if (isNew)
                {
                    Intent intent = new Intent(InstallFacebookPrivacyActivity.this, com/waze/profile/WelcomeActivity);
                    startActivityForResult(intent, 0);
                } else
                {
                    Intent intent1 = new Intent(InstallFacebookPrivacyActivity.this, com/waze/profile/WelcomeDoneActivity);
                    startActivityForResult(intent1, 0);
                }
                if (InstallNativeManager.IsCleanInstallation() || InstallNativeManager.IsMinimalInstallation())
                {
                    NativeManager.getInstance().SignUplogAnalytics("YOUR_WAZER_NEXT", null, null, true);
                } else
                {
                    NativeManager.getInstance().SignUplogAnalytics("SOCIAL_UPGRADE_YOUR_WAZER_NEXT", null, null, true);
                }
                setResult(-1);
                finish();
            }

            
            {
                this$0 = InstallFacebookPrivacyActivity.this;
                super();
            }
        };
        ((TitleBar)findViewById(0x7f090337)).setOnClickCloseListener(onclicklistener);
        ((TextView)findViewById(0x7f090348)).setText(nativeManager.getLanguageString(DisplayStrings.DS_SEE_MORE_FAMILIAR_FACES));
        ((TextView)findViewById(0x7f090349)).setText(nativeManager.getLanguageString(DisplayStrings.DS_MAKE_IT_MORE_FUN_TO_DRIVE));
        s = AppService.getNativeManager().getLanguageString(DisplayStrings.DS_YOU_HAVE_FRIENDS_CONNECTED);
        i = MyWazeNativeManager.getInstance().getNumberOfFriends();
        if (i > 0)
        {
            ((TextView)findViewById(0x7f09033d)).setVisibility(0);
            ((TextView)findViewById(0x7f09033d)).setText((new StringBuilder()).append(i).append(" ").append(s).toString());
        } else
        {
            ((TextView)findViewById(0x7f09033d)).setVisibility(8);
        }
        MyWazeNativeManager.getInstance().getMyWazeData(this);
    }

}
