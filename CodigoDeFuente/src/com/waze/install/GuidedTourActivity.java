// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.install;

import android.content.Intent;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.Button;
import android.widget.MediaController;
import android.widget.TextView;
import android.widget.VideoView;
import com.waze.AppService;
import com.waze.LayoutManager;
import com.waze.MainActivity;
import com.waze.NativeManager;
import com.waze.ifs.ui.ActivityBase;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.profile.MinimalSignInActivity;
import com.waze.profile.SignInActivity;
import com.waze.profile.WelcomeDoneActivity;
import com.waze.social.facebook.FacebookWrapper;
import com.waze.strings.DisplayStrings;

// Referenced classes of package com.waze.install:
//            InstallNativeManager, InstallFacebookPrivacyActivity

public class GuidedTourActivity extends ActivityBase
{

    private static boolean bIsBackFromFBScreen = false;
    private static boolean bIsFacebookClicked = false;
    private static boolean bIsMovieClicked = false;
    private static boolean bIsNew = false;

    public GuidedTourActivity()
    {
    }

    public static boolean IsAlreadyCreactedUser()
    {
        return bIsBackFromFBScreen;
    }

    public static boolean IsNewUser()
    {
        return bIsNew;
    }

    public void GoogleTest()
    {
    }

    public VideoView SetVideoUri()
    {
        final VideoView video = (VideoView)findViewById(0x7f090352);
        video.getViewTreeObserver().addOnGlobalLayoutListener(new android.view.ViewTreeObserver.OnGlobalLayoutListener() {

            final GuidedTourActivity this$0;
            private final VideoView val$video;

            public void onGlobalLayout()
            {
                InstallNativeManager installnativemanager = new InstallNativeManager();
                boolean flag;
                if (InstallNativeManager.IsCleanInstallation())
                {
                    flag = false;
                } else
                {
                    flag = true;
                }
                installnativemanager.getVideoUrl(flag, video.getWidth(), video.getHeight(), video. new InstallNativeManager.VideoUrlListener() {

                    final _cls6 this$1;
                    private final VideoView val$video;

                    public void onComplete(String s)
                    {
                        Uri uri = Uri.parse(s);
                        video.setVideoURI(uri);
                    }

            
            {
                this$1 = final__pcls6;
                video = VideoView.this;
                super();
            }
                });
                video.getViewTreeObserver().removeGlobalOnLayoutListener(this);
            }

            
            {
                this$0 = GuidedTourActivity.this;
                video = videoview;
                super();
            }
        });
        return video;
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        bIsFacebookClicked = false;
        if (!InstallNativeManager.IsMinimalInstallation()) goto _L2; else goto _L1
_L1:
        if (i != 5000) goto _L4; else goto _L3
_L3:
        if (j != -1) goto _L6; else goto _L5
_L5:
        setResult(-1);
        finish();
_L4:
        super.onActivityResult(i, j, intent);
        return;
_L6:
        if (j == 0)
        {
            NativeManager.getInstance().SignUplogAnalytics("LOGIN_BACK", null, null, true);
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if (j == 0)
        {
            NativeManager.getInstance().CloseProgressPopup();
        }
        if (i == 3000)
        {
            if (j == 0)
            {
                if (InstallNativeManager.IsCleanInstallation())
                {
                    NativeManager.getInstance().SignUplogAnalytics("FACEBOOK_CONNECT_BACK", null, null, true);
                } else
                {
                    NativeManager.getInstance().SignUplogAnalytics("FACEBOOK_CONNECT_BACK", null, null, true);
                }
                bIsBackFromFBScreen = true;
            } else
            {
                setResult(-1);
                finish();
            }
        }
        if (i == 5000)
        {
            if (j == 0)
            {
                NativeManager.getInstance().SignUplogAnalytics("NEW_EXISTING_BACK", null, null, true);
            } else
            {
                setResult(-1);
                finish();
            }
        }
        if (true) goto _L4; else goto _L7
_L7:
    }

    public void onBackPressed()
    {
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(0x7f03006d);
        if (AppService.getMainActivity() != null && AppService.getMainActivity().getLayoutMgr().isSplashVisible())
        {
            AppService.getMainActivity().getLayoutMgr().cancelSplash();
        }
        VideoView videoview;
        MediaController mediacontroller;
        if (InstallNativeManager.IsMinimalInstallation())
        {
            NativeManager.getInstance().SignUplogAnalytics("START", null, null, true);
            ((TextView)findViewById(0x7f09034d)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_NEW_USERS_START_DRIVING));
            ((TextView)findViewById(0x7f09034e)).setVisibility(8);
            findViewById(0x7f09034c).setBackgroundResource(0x7f020279);
            findViewById(0x7f09034c).setPadding(0, 0, 0, 0);
        } else
        if (InstallNativeManager.IsCleanInstallation())
        {
            NativeManager.getInstance().SignUplogAnalytics("START", null, null, true);
            ((TextView)findViewById(0x7f09034d)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_SIGN_UP_WITH_FACEBOOK));
            ((TextView)findViewById(0x7f09034e)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_DONT_WORRY_YOU_CONTROL));
            ((TextView)findViewById(0x7f09034e)).setVisibility(8);
        } else
        {
            NativeManager.getInstance().SignUplogAnalytics("SOCIAL_UPGRADE", null, null, false);
            ((TextView)findViewById(0x7f09034d)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_CONNECT_TO_FACEBOOK));
            ((TextView)findViewById(0x7f09034e)).setVisibility(8);
        }
        findViewById(0x7f09034c).setOnClickListener(new android.view.View.OnClickListener() {

            final GuidedTourActivity this$0;

            public void onClick(View view)
            {
                if (InstallNativeManager.IsMinimalInstallation())
                {
                    MyWazeNativeManager.getInstance().skipSignup();
                    return;
                }
                GuidedTourActivity.bIsFacebookClicked = true;
                VideoView videoview1 = (VideoView)findViewById(0x7f090352);
                if (videoview1.isPlaying())
                {
                    videoview1.stopPlayback();
                }
                NativeManager.getInstance().SignUplogAnalytics("START_FBCONNECT", null, null, true);
                if (GuidedTourActivity.bIsBackFromFBScreen)
                {
                    FacebookWrapper.getInstance().authorize(GuidedTourActivity.this, null, false);
                    return;
                }
                if (InstallNativeManager.IsCleanInstallation())
                {
                    com.waze.social.facebook.FacebookWrapper.IOnAuthorizeCompletedListener ionauthorizecompletedlistener = new com.waze.social.facebook.FacebookWrapper.IOnAuthorizeCompletedListener() {

                        final _cls1 this$1;

                        public void onAuthorizeCompleted(boolean flag, int i)
                        {
                            if (i == 3)
                            {
                                NativeManager.getInstance().SignUplogAnalytics("FACEBOOK_DECLINE", null, null, true);
                            }
                            if (i == 0)
                            {
                                NativeManager nativemanager = NativeManager.getInstance();
                                NativeManager.getInstance().OpenProgressPopup(nativemanager.getLanguageString(DisplayStrings.DS_PLEASE_WAIT___));
                            }
                        }

            
            {
                this$1 = _cls1.this;
                super();
            }
                    };
                    FacebookWrapper.getInstance().SignIn(GuidedTourActivity.this, ionauthorizecompletedlistener, true);
                    return;
                } else
                {
                    com.waze.social.facebook.FacebookWrapper.IOnAuthorizeCompletedListener ionauthorizecompletedlistener1 = new com.waze.social.facebook.FacebookWrapper.IOnAuthorizeCompletedListener() {

                        final _cls1 this$1;

                        public void onAuthorizeCompleted(boolean flag, int i)
                        {
                            if (i == 3)
                            {
                                NativeManager.getInstance().SignUplogAnalytics("SOCIAL_UPGRADE_FACEBOOK_DECLINE", null, null, true);
                            }
                        }

            
            {
                this$1 = _cls1.this;
                super();
            }
                    };
                    FacebookWrapper.getInstance().authorize(GuidedTourActivity.this, ionauthorizecompletedlistener1, true);
                    return;
                }
            }

            
            {
                this$0 = GuidedTourActivity.this;
                super();
            }
        });
        if (InstallNativeManager.IsMinimalInstallation())
        {
            ((Button)findViewById(0x7f09034b)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_LOGIN));
        } else
        if (InstallNativeManager.IsCleanInstallation())
        {
            ((Button)findViewById(0x7f09034b)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_CREATE_ACCOUNT));
        } else
        {
            ((Button)findViewById(0x7f09034b)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_GO_SOLO));
        }
        findViewById(0x7f09034b).setOnClickListener(new android.view.View.OnClickListener() {

            final GuidedTourActivity this$0;

            public void onClick(View view)
            {
                if (InstallNativeManager.IsMinimalInstallation())
                {
                    VideoView videoview2 = (VideoView)findViewById(0x7f090352);
                    if (videoview2.isPlaying())
                    {
                        videoview2.stopPlayback();
                    }
                    NativeManager.getInstance().SignUplogAnalytics("LOGIN", null, null, true);
                    Intent intent3 = new Intent(GuidedTourActivity.this, com/waze/profile/MinimalSignInActivity);
                    startActivityForResult(intent3, 5000);
                } else
                if (!GuidedTourActivity.bIsFacebookClicked)
                {
                    VideoView videoview1 = (VideoView)findViewById(0x7f090352);
                    if (videoview1.isPlaying())
                    {
                        videoview1.stopPlayback();
                    }
                    if (InstallNativeManager.IsCleanInstallation())
                    {
                        NativeManager.getInstance().SignUplogAnalytics("START_OTHER", null, null, true);
                        if (GuidedTourActivity.bIsBackFromFBScreen)
                        {
                            if (MyWazeNativeManager.getInstance().isRandomUserNTV())
                            {
                                Intent intent1 = new Intent(GuidedTourActivity.this, com/waze/profile/SignInActivity);
                                startActivityForResult(intent1, 5000);
                                return;
                            } else
                            {
                                Intent intent2 = new Intent(GuidedTourActivity.this, com/waze/profile/WelcomeDoneActivity);
                                startActivityForResult(intent2, 5000);
                                return;
                            }
                        } else
                        {
                            Intent intent = new Intent(GuidedTourActivity.this, com/waze/profile/SignInActivity);
                            startActivityForResult(intent, 5000);
                            return;
                        }
                    } else
                    {
                        NativeManager.getInstance().SignUplogAnalytics("SOCIAL_UPGRADE_SKIP", null, null, false);
                        MyWazeNativeManager.getInstance().facebookDisconnectNow();
                        FacebookWrapper.getInstance().logout(GuidedTourActivity.this, null);
                        setResult(-1);
                        finish();
                        return;
                    }
                }
            }

            
            {
                this$0 = GuidedTourActivity.this;
                super();
            }
        });
        videoview = SetVideoUri();
        mediacontroller = new MediaController(this);
        mediacontroller.setMediaPlayer(videoview);
        videoview.setMediaController(mediacontroller);
        if (InstallNativeManager.IsMinimalInstallation())
        {
            ((TextView)findViewById(0x7f090350)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_WELCOME_TO_WAZE_INSTALL));
            ((TextView)findViewById(0x7f090351)).setVisibility(8);
        } else
        if (InstallNativeManager.IsCleanInstallation())
        {
            ((TextView)findViewById(0x7f090350)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_WELCOME_SIGN_IN_TO_GET_STARTED));
            ((TextView)findViewById(0x7f090351)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_WE_WILL_NEVER_POST_WITHOUT_APPROVAL));
        } else
        {
            ((TextView)findViewById(0x7f090350)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_A_WHOLE_NEW_WAZE_AWAITS));
            ((TextView)findViewById(0x7f090351)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_PLEASE_RECONNECT_EVEN_IF_YOU_DID));
        }
        videoview.setOnPreparedListener(new android.media.MediaPlayer.OnPreparedListener() {

            final GuidedTourActivity this$0;

            public void onPrepared(MediaPlayer mediaplayer)
            {
                findViewById(0x7f090350).setVisibility(8);
                findViewById(0x7f090351).setVisibility(8);
                findViewById(0x7f090353).setVisibility(8);
                findViewById(0x7f09034f).setVisibility(8);
                ((VideoView)findViewById(0x7f090352)).setVisibility(0);
            }

            
            {
                this$0 = GuidedTourActivity.this;
                super();
            }
        });
        videoview.setOnCompletionListener(new android.media.MediaPlayer.OnCompletionListener() {

            final GuidedTourActivity this$0;

            public void onCompletion(MediaPlayer mediaplayer)
            {
                findViewById(0x7f090350).setVisibility(0);
                findViewById(0x7f090351).setVisibility(0);
                findViewById(0x7f09034f).setVisibility(0);
                ((VideoView)findViewById(0x7f090352)).setVisibility(8);
            }

            
            {
                this$0 = GuidedTourActivity.this;
                super();
            }
        });
        findViewById(0x7f09034f).setOnClickListener(new android.view.View.OnClickListener() {

            final GuidedTourActivity this$0;

            public void onClick(View view)
            {
                if (!GuidedTourActivity.bIsMovieClicked)
                {
                    GuidedTourActivity.bIsMovieClicked = true;
                    NativeManager.getInstance().SignUplogAnalytics("START_MOVIE", null, null, true);
                }
                findViewById(0x7f090353).setVisibility(0);
                VideoView videoview1 = (VideoView)findViewById(0x7f090352);
                videoview1.setVisibility(0);
                videoview1.start();
                videoview1.setBackgroundDrawable(null);
            }

            
            {
                this$0 = GuidedTourActivity.this;
                super();
            }
        });
        NativeManager.getInstance().SetPhoneIsFirstTime(false);
        GoogleTest();
    }

    public void onFacebookTokenSet()
    {
        NativeManager.getInstance().CloseProgressPopup();
        if (InstallNativeManager.IsCleanInstallation())
        {
            if (MyWazeNativeManager.getInstance().getUserTypeNTV() == 1)
            {
                Intent intent1 = new Intent(this, com/waze/install/InstallFacebookPrivacyActivity);
                intent1.putExtra("isNew", false);
                bIsNew = false;
                startActivityForResult(intent1, 3000);
                return;
            } else
            {
                Intent intent2 = new Intent(this, com/waze/install/InstallFacebookPrivacyActivity);
                intent2.putExtra("isNew", true);
                bIsNew = true;
                startActivityForResult(intent2, 3000);
                return;
            }
        } else
        {
            Intent intent = new Intent(this, com/waze/install/InstallFacebookPrivacyActivity);
            intent.putExtra("isNew", false);
            bIsNew = false;
            startActivityForResult(intent, 3000);
            return;
        }
    }






}
