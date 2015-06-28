// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.profile;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.MainActivity;
import com.waze.MsgBox;
import com.waze.NativeManager;
import com.waze.mywaze.MyWazeData;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.phone.AddressBook;
import com.waze.phone.PhoneNumberSignInActivity;
import com.waze.social.facebook.FacebookWrapper;
import com.waze.strings.DisplayStrings;
import com.waze.utils.ImageRepository;
import java.io.File;

// Referenced classes of package com.waze.profile:
//            ImageTaker

public class AccountSignInDetails extends Dialog
{

    static final String PROFILE_IMAGE_FILE = "ProfileImage";
    private static boolean active = false;
    private static boolean bIsBackFromFBScreen = false;
    private static boolean bIsContinueClicked = false;
    private static boolean bIsFacebookClicked = false;
    private static boolean bIsNew = false;
    boolean bIsFacebookConnect;
    private TextView facebookButton;
    private TextView firstNameView;
    private TextView lastNameView;
    private Context mCtx;
    private Handler mHandler;
    private ImageTaker mImageTaker;
    private MyWazeNativeManager mywazeManager;
    private NativeManager nativeManager;
    private TextView signButton;

    public AccountSignInDetails(Context context)
    {
        super(context, 0x7f06000f);
        bIsFacebookConnect = false;
        mHandler = new Handler();
        nativeManager = AppService.getNativeManager();
        AddressBook.CreateAccount();
        mCtx = context;
    }

    private void close()
    {
        MainActivity.bToOpenAccountPopup = false;
        NativeManager.getInstance().OpenProgressPopup(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_PLEASE_WAIT___));
        if (PhoneNumberSignInActivity.bIsUpgrade)
        {
            MyWazeNativeManager.getInstance().setContactsSignIn(true, PhoneNumberSignInActivity.bIsUpgrade, String.valueOf(firstNameView.getText()), String.valueOf(lastNameView.getText()));
            return;
        }
        if (!bIsFacebookConnect)
        {
            MyWazeNativeManager.getInstance().setContactsSignIn(true, PhoneNumberSignInActivity.bIsUpgrade, String.valueOf(firstNameView.getText()), String.valueOf(lastNameView.getText()));
            return;
        } else
        {
            NativeManager.getInstance().SuggestUserNameInit();
            NativeManager.getInstance().SuggestUserNameRequest(String.valueOf(firstNameView.getText()), String.valueOf(lastNameView.getText()), null);
            return;
        }
    }

    private void initLayout()
    {
        setContentView(0x7f030003);
        getWindow().setLayout(-1, -1);
        if (PhoneNumberSignInActivity.bIsUpgrade)
        {
            ((TextView)findViewById(0x7f09004f)).setText(nativeManager.getLanguageString(DisplayStrings.DS_ACCOUNT_DETAILS_CAPITAL_UPGRADE));
        } else
        {
            ((TextView)findViewById(0x7f09004f)).setText(nativeManager.getLanguageString(DisplayStrings.DS_ACCOUNT_DETAILS_CAPITAL));
        }
        ((TextView)findViewById(0x7f090050)).setText(nativeManager.getLanguageString(DisplayStrings.DS_VISIBLE_ONLY_TO_YOUR_WAZE));
        ((TextView)findViewById(0x7f090052)).setText(nativeManager.getLanguageString(DisplayStrings.DS_TAP_TO_ADD));
        firstNameView = (TextView)findViewById(0x7f090053);
        lastNameView = (TextView)findViewById(0x7f090054);
        AppService.getMainActivity().DisableOrientation();
        ((EditText)findViewById(0x7f090053)).setHint(nativeManager.getLanguageString(DisplayStrings.DS_FIRST_NAME));
        ((EditText)findViewById(0x7f090054)).setHint(nativeManager.getLanguageString(DisplayStrings.DS_LAST_NAME));
        signButton = (TextView)findViewById(0x7f090057);
        signButton.setText(nativeManager.getLanguageString(DisplayStrings.DS_NEXT));
        signButton.setOnClickListener(new android.view.View.OnClickListener() {

            final AccountSignInDetails this$0;

            public void onClick(View view)
            {
                onContinueClicked();
            }

            
            {
                this$0 = AccountSignInDetails.this;
                super();
            }
        });
        ((EditText)findViewById(0x7f090054)).setOnEditorActionListener(new android.widget.TextView.OnEditorActionListener() {

            final AccountSignInDetails this$0;

            public boolean onEditorAction(TextView textview, int i, KeyEvent keyevent)
            {
                if (i == 6)
                {
                    onContinueClicked();
                    return true;
                } else
                {
                    return false;
                }
            }

            
            {
                this$0 = AccountSignInDetails.this;
                super();
            }
        });
        findViewById(0x7f090051).setOnClickListener(new android.view.View.OnClickListener() {

            final AccountSignInDetails this$0;

            public void onClick(View view)
            {
                mImageTaker = new ImageTaker(AppService.getMainActivity(), "ProfileImage");
                mImageTaker.sendIntent();
            }

            
            {
                this$0 = AccountSignInDetails.this;
                super();
            }
        });
        facebookButton = (TextView)findViewById(0x7f090056);
        facebookButton.setText(nativeManager.getLanguageString(DisplayStrings.DS_IMPORT_FROM_FACEBOOK));
        facebookButton.setPaintFlags(8);
        MyWazeNativeManager.getInstance().getMyWazeData(AppService.getMainActivity());
        if (MyWazeNativeManager.getInstance().getFacebookLoggedInNTV())
        {
            facebookButton.setVisibility(8);
            findViewById(0x7f090055).setVisibility(8);
        } else
        {
            facebookButton.setVisibility(0);
            findViewById(0x7f090055).setVisibility(0);
        }
        facebookButton.setOnClickListener(new android.view.View.OnClickListener() {

            final AccountSignInDetails this$0;

            public void onClick(View view)
            {
                AccountSignInDetails.bIsFacebookClicked = true;
                NativeManager.getInstance().SignUplogAnalytics("IMPORT_FB", null, null, true);
                com.waze.social.facebook.FacebookWrapper.IOnAuthorizeCompletedListener ionauthorizecompletedlistener = new com.waze.social.facebook.FacebookWrapper.IOnAuthorizeCompletedListener() {

                    final _cls4 this$1;

                    public void onAuthorizeCompleted(boolean flag, int i)
                    {
                        if (i == 3)
                        {
                            AccountSignInDetails.bIsFacebookClicked = false;
                            NativeManager.getInstance().SignUplogAnalytics("IMPORT_FB_STATUS", "VAUE", "FAILURE", true);
                        }
                        if (i == 0)
                        {
                            NativeManager.getInstance().SignUplogAnalytics("IMPORT_FB_STATUS", "VAUE", "SUCCESS", true);
                            NativeManager nativemanager = NativeManager.getInstance();
                            NativeManager.getInstance().OpenProgressPopup(nativemanager.getLanguageString(DisplayStrings.DS_PLEASE_WAIT___));
                        }
                    }

            
            {
                this$1 = _cls4.this;
                super();
            }
                };
                if (PhoneNumberSignInActivity.bIsUpgrade)
                {
                    FacebookWrapper.getInstance().authorize(AppService.getMainActivity(), ionauthorizecompletedlistener, true);
                    return;
                } else
                {
                    FacebookWrapper.getInstance().SignIn(AppService.getMainActivity(), ionauthorizecompletedlistener, true);
                    return;
                }
            }

            
            {
                this$0 = AccountSignInDetails.this;
                super();
            }
        });
    }

    private void onContinueClicked()
    {
        NativeManager.getInstance().SignUplogAnalytics("ACCOUNT_DETAILS_CONTINUE", null, null, true);
        if (firstNameView.getText().toString() == null || firstNameView.getText().toString().trim().equals("") || lastNameView.getText().toString() == null || lastNameView.getText().toString().trim().equals(""))
        {
            MsgBox.openMessageBox(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_UHHOHE), NativeManager.getInstance().getLanguageString(DisplayStrings.DS_FILL_FIRST_AND_LAST_NAME), true);
            return;
        }
        if (mImageTaker != null && mImageTaker.hasImage())
        {
            File file = new File(mImageTaker.getImagePath());
            nativeManager.UploadProfileImage(file.getAbsolutePath());
        }
        bIsContinueClicked = true;
        close();
    }

    public void SetMyWazeData(MyWazeData mywazedata)
    {
        if (mywazedata.mFirstName == null || mywazedata.mFirstName.equals("")) goto _L2; else goto _L1
_L1:
        ((EditText)findViewById(0x7f090053)).setText(mywazedata.mFirstName);
_L8:
        final ImageView picture;
        String s;
        if (mywazedata.mLastName != null && !mywazedata.mLastName.equals(""))
        {
            ((EditText)findViewById(0x7f090054)).setText(mywazedata.mLastName);
        } else
        {
            String s1 = AddressBook.getLocalLastName();
            if (s1 != null)
            {
                ((EditText)findViewById(0x7f090054)).setText(s1);
            }
        }
        picture = (ImageView)findViewById(0x7f090051);
        if (!mywazedata.mFaceBookLoggedIn) goto _L4; else goto _L3
_L3:
        ImageRepository.instance.getImage(mywazedata.mImageUrl, new com.waze.utils.ImageRepository.ImageRepositoryListener() {

            final AccountSignInDetails this$0;
            private final ImageView val$picture;

            public void onImageRetrieved(Bitmap bitmap)
            {
                mHandler.post(bitmap. new Runnable() {

                    final _cls5 this$1;
                    private final Bitmap val$drawable;
                    private final ImageView val$picture;

                    public void run()
                    {
                        picture.setImageBitmap(drawable);
                    }

            
            {
                this$1 = final__pcls5;
                picture = imageview;
                drawable = Bitmap.this;
                super();
            }
                });
            }

            
            {
                this$0 = AccountSignInDetails.this;
                picture = imageview;
                super();
            }
        });
_L6:
        return;
_L2:
        s = AddressBook.getLocalFirstName();
        if (s != null)
        {
            ((EditText)findViewById(0x7f090053)).setText(s);
        }
        continue; /* Loop/switch isn't completed */
_L4:
        String s2 = AddressBook.getLocalImageURI();
        if (s2 == null || s2.equals("") || s2.equals("-1")) goto _L6; else goto _L5
_L5:
        ImageRepository.instance.getImage(s2, picture, AppService.getMainActivity());
        return;
        if (true) goto _L8; else goto _L7
_L7:
    }

    public void dismiss()
    {
        MainActivity.bToOpenAccountPopup = false;
        NativeManager.getInstance().CloseProgressPopup();
        super.dismiss();
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
        if ((i == 222 || i == 223) && mImageTaker != null)
        {
            mImageTaker.onActivityResult(i, j, intent);
            if (mImageTaker.hasImage())
            {
                ((ImageView)findViewById(0x7f090051)).setImageBitmap(mImageTaker.getImage());
                ((ImageView)findViewById(0x7f090051)).buildDrawingCache();
            }
        }
    }

    public void onBackPressed()
    {
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        initLayout();
        NativeManager.getInstance().SignUplogAnalytics("ACCOUNT_DETAILS_SHOWN", null, null, true);
    }

    public void onFacebookTokenSet()
    {
        if (bIsFacebookClicked)
        {
            NativeManager.getInstance().CloseProgressPopup();
            MyWazeNativeManager.getInstance().getMyWazeData(AppService.getMainActivity());
            bIsFacebookConnect = true;
            bIsFacebookClicked = false;
            facebookButton.setVisibility(8);
            findViewById(0x7f090055).setVisibility(8);
            NativeManager nativemanager = NativeManager.getInstance();
            if (nativemanager.GetSocialIsFirstTimeNTV() && !MyWazeNativeManager.getInstance().isJustJoinedNTV())
            {
                nativemanager.SetSocialIsFirstTime(false);
                nativemanager.SignUplogAnalytics("START", null, null, true);
            }
        } else
        if (bIsContinueClicked)
        {
            NativeManager.getInstance().SuggestUserNameInit();
            NativeManager.getInstance().SuggestUserNameRequest(String.valueOf(firstNameView.getText()), String.valueOf(lastNameView.getText()), null);
            return;
        }
    }






}
