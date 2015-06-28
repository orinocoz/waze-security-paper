// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.mywaze;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.LayoutManager;
import com.waze.MainActivity;
import com.waze.MoodManager;
import com.waze.MsgBox;
import com.waze.NativeManager;
import com.waze.ifs.ui.ActivityBase;
import com.waze.menus.MainMenu;
import com.waze.mywaze.moods.MoodsActivity;
import com.waze.navigate.social.MyFriendsActivity;
import com.waze.profile.MyProfileActivity;
import com.waze.profile.TempUserProfileActivity;
import com.waze.settings.SettingsMainActivity;
import com.waze.settings.SettingsSwitchView;
import com.waze.settings.SwitchCheckedCallback;
import com.waze.strings.DisplayStrings;
import com.waze.utils.ImageRepository;
import com.waze.view.title.TitleBar;

// Referenced classes of package com.waze.mywaze:
//            MyWazeNativeManager, MyWazeData, GroupsActivity, ScoreboardActivity

public class MyWazeActivity extends ActivityBase
    implements MyWazeNativeManager.ISetUserUpdateResult
{

    private SettingsSwitchView invisiblity;
    private Handler mHandler;
    private String mImageUrl;
    private NativeManager nativeManager;

    public MyWazeActivity()
    {
        mHandler = new Handler();
        mImageUrl = null;
        nativeManager = AppService.getNativeManager();
    }

    private void onOptionInvisible(boolean flag)
    {
        if (!flag) goto _L2; else goto _L1
_L1:
        MyWazeNativeManager.getInstance().setInvisible(flag);
        findViewById(0x7f090340).setVisibility(8);
        findViewById(0x7f090338).setVisibility(0);
        if (AppService.getMainActivity() != null)
        {
            AppService.getMainActivity().getLayoutMgr().setMenuButtonType(1, -1);
        }
_L4:
        if (AppService.getMainActivity() != null && AppService.getMainActivity().getLayoutMgr().getMainMenu() != null)
        {
            AppService.getMainActivity().getLayoutMgr().getMainMenu().refresh();
        }
        return;
_L2:
        findViewById(0x7f090340).setVisibility(0);
        findViewById(0x7f090338).setVisibility(8);
        MyWazeNativeManager.getInstance().setInvisible(flag);
        if (AppService.getMainActivity() != null)
        {
            AppService.getMainActivity().getLayoutMgr().setMenuButtonType(0, -1);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void updateImage()
    {
        ImageView imageview = (ImageView)findViewById(0x7f090343);
        imageview.setImageResource(0x7f0203a3);
        if (mImageUrl != null && mImageUrl.length() > 0)
        {
            ImageRepository.instance.getImage(mImageUrl, imageview, this);
        }
    }

    public void SetMoodInView()
    {
        ((ImageView)findViewById(0x7f090347)).setImageResource(MoodManager.getInstance().getBigMoodDrawble());
        int i = MoodManager.getInstance().getBigAddonDrawble(this);
        if (i == 0)
        {
            ((ImageView)findViewById(0x7f09043c)).setImageDrawable(null);
            return;
        } else
        {
            ((ImageView)findViewById(0x7f09043c)).setImageResource(i);
            return;
        }
    }

    public void SetMyWazeData(MyWazeData mywazedata)
    {
        ((TextView)findViewById(0x7f0901bc)).setText(mywazedata.mUserName);
        ((TextView)findViewById(0x7f090042)).setText(mywazedata.mJoinedStr);
        if (mywazedata.mFaceBookLoggedIn || mywazedata.mContactsLoggedIn)
        {
            if (mywazedata.mFaceBookLoggedIn)
            {
                ((TextView)findViewById(0x7f090345)).setText(mywazedata.mFaceBookNickName);
            } else
            {
                ((TextView)findViewById(0x7f090345)).setVisibility(8);
            }
            mImageUrl = mywazedata.mImageUrl;
            updateImage();
            return;
        } else
        {
            ((ImageView)findViewById(0x7f090343)).setImageResource(0x7f0203a3);
            ((TextView)findViewById(0x7f090345)).setVisibility(8);
            return;
        }
    }

    public void SetUserUpdateResult(boolean flag)
    {
        MyWazeNativeManager.getInstance().getMyWazeData(this);
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        if (j == -1)
        {
            setResult(-1);
            finish();
            return;
        }
        if (j == 4)
        {
            MyWazeNativeManager.getInstance().getMyWazeData(this);
            SetMoodInView();
            return;
        } else
        {
            super.onActivityResult(i, j, intent);
            return;
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f03008f);
        MyWazeNativeManager.getInstance().getMyWazeData(this);
        SetMoodInView();
        invisiblity = (SettingsSwitchView)findViewById(0x7f09043d);
        boolean flag = MyWazeNativeManager.getInstance().GetInvisible();
        invisiblity.setValue(flag);
        if (flag)
        {
            findViewById(0x7f090340).setVisibility(8);
            findViewById(0x7f090338).setVisibility(0);
        } else
        {
            findViewById(0x7f090340).setVisibility(0);
            findViewById(0x7f090338).setVisibility(8);
            findViewById(0x7f090341).setOnClickListener(new android.view.View.OnClickListener() {

                final MyWazeActivity this$0;

                public void onClick(View view)
                {
                    if (MyWazeNativeManager.getInstance().isRandomUserNTV())
                    {
                        Intent intent = new Intent(MyWazeActivity.this, com/waze/profile/TempUserProfileActivity);
                        startActivityForResult(intent, 0);
                        return;
                    } else
                    {
                        Intent intent1 = new Intent(MyWazeActivity.this, com/waze/profile/MyProfileActivity);
                        startActivityForResult(intent1, 0);
                        return;
                    }
                }

            
            {
                this$0 = MyWazeActivity.this;
                super();
            }
            });
        }
        invisiblity.setText(nativeManager.getLanguageString(DisplayStrings.DS_BECOME_INVISIBLE));
        invisiblity.setOnChecked(new SwitchCheckedCallback() {

            final MyWazeActivity this$0;

            public void OnCallback(boolean flag1)
            {
                onOptionInvisible(flag1);
            }

            
            {
                this$0 = MyWazeActivity.this;
                super();
            }
        });
        ((TextView)findViewById(0x7f09033a)).setText(nativeManager.getLanguageString(DisplayStrings.DS_INVISIBLE_FOR_THE_RIDE));
        ((TextView)findViewById(0x7f09033b)).setText(nativeManager.getLanguageString(DisplayStrings.DS_YOU_ARE_SHOWN_AS_OFFLINE));
        ((TextView)findViewById(0x7f09044c)).setText(nativeManager.getLanguageString(DisplayStrings.DS_GO_TO_SETTINGS_EXPLANATION_TXT));
        ((TextView)findViewById(0x7f090447)).setText(nativeManager.getLanguageString(DisplayStrings.DS_WAZE_GROUPS));
        ((TitleBar)findViewById(0x7f090337)).init(this, nativeManager.getLanguageString(DisplayStrings.DS_MY_WAZE));
        ((TextView)findViewById(0x7f090443)).setText(nativeManager.getLanguageString(DisplayStrings.DS_MY_MOOD));
        ((TextView)findViewById(0x7f090447)).setText(nativeManager.getLanguageString(DisplayStrings.DS_WAZE_GROUPS));
        ((TextView)findViewById(0x7f090445)).setText(nativeManager.getLanguageString(DisplayStrings.DS_MY_SCOREBOARD));
        ((TextView)findViewById(0x7f090449)).setText(nativeManager.getLanguageString(DisplayStrings.DS_MY_FRIENDS));
        ((TextView)findViewById(0x7f09044b)).setText(nativeManager.getLanguageString(DisplayStrings.DS_VIEW_SETTINGS));
        findViewById(0x7f090442).setOnClickListener(new android.view.View.OnClickListener() {

            final MyWazeActivity this$0;

            public void onClick(View view)
            {
                Intent intent = new Intent(MyWazeActivity.this, com/waze/mywaze/moods/MoodsActivity);
                startActivityForResult(intent, 0);
            }

            
            {
                this$0 = MyWazeActivity.this;
                super();
            }
        });
        if (!MyWazeNativeManager.getInstance().GroupsEnabledNTV())
        {
            findViewById(0x7f090446).setVisibility(8);
        } else
        {
            findViewById(0x7f090446).setOnClickListener(new android.view.View.OnClickListener() {

                final MyWazeActivity this$0;

                public void onClick(View view)
                {
                    if (!AppService.isNetworkAvailable())
                    {
                        MsgBox.openMessageBox(nativeManager.getLanguageString(DisplayStrings.DS_NO_NETWORK_CONNECTION), nativeManager.getLanguageString(DisplayStrings.DS_SORRY__YOU_HAVE_NO_NETWORK_CONNECTION_RIGHT_NOW__PLEASE_TRY_LATER), false);
                        return;
                    } else
                    {
                        Intent intent = new Intent(MyWazeActivity.this, com/waze/mywaze/GroupsActivity);
                        startActivityForResult(intent, 0);
                        return;
                    }
                }

            
            {
                this$0 = MyWazeActivity.this;
                super();
            }
            });
        }
        findViewById(0x7f090444).setOnClickListener(new android.view.View.OnClickListener() {

            final MyWazeActivity this$0;

            public void onClick(View view)
            {
                if (!AppService.isNetworkAvailable())
                {
                    MsgBox.openMessageBox(nativeManager.getLanguageString(DisplayStrings.DS_NO_NETWORK_CONNECTION), nativeManager.getLanguageString(DisplayStrings.DS_SORRY__YOU_HAVE_NO_NETWORK_CONNECTION_RIGHT_NOW__PLEASE_TRY_LATER), false);
                    return;
                } else
                {
                    Intent intent = new Intent(MyWazeActivity.this, com/waze/mywaze/ScoreboardActivity);
                    startActivityForResult(intent, 0);
                    return;
                }
            }

            
            {
                this$0 = MyWazeActivity.this;
                super();
            }
        });
        if (!MyWazeNativeManager.getInstance().FacebookEnabledNTV())
        {
            findViewById(0x7f090448).setVisibility(8);
        } else
        {
            findViewById(0x7f090448).setVisibility(0);
            findViewById(0x7f090448).setOnClickListener(new android.view.View.OnClickListener() {

                final MyWazeActivity this$0;

                public void onClick(View view)
                {
                    Intent intent = new Intent(MyWazeActivity.this, com/waze/navigate/social/MyFriendsActivity);
                    intent.putExtra("type", 0);
                    startActivityForResult(intent, 0);
                }

            
            {
                this$0 = MyWazeActivity.this;
                super();
            }
            });
        }
        findViewById(0x7f09044a).setOnClickListener(new android.view.View.OnClickListener() {

            final MyWazeActivity this$0;

            public void onClick(View view)
            {
                Intent intent = new Intent(MyWazeActivity.this, com/waze/settings/SettingsMainActivity);
                startActivityForResult(intent, 0);
            }

            
            {
                this$0 = MyWazeActivity.this;
                super();
            }
        });
    }

    protected void onDestroy()
    {
        super.onDestroy();
    }

    public void onResume()
    {
        super.onResume();
        updateImage();
    }


}
