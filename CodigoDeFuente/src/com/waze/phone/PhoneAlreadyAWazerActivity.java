// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.phone;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.waze.MainActivity;
import com.waze.MoodManager;
import com.waze.MsgBox;
import com.waze.NativeManager;
import com.waze.ifs.ui.ActivityBase;
import com.waze.mywaze.MyWazeData;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.navigate.AddressItem;
import com.waze.navigate.DriveToNativeManager;
import com.waze.strings.DisplayStrings;
import java.util.EnumSet;

// Referenced classes of package com.waze.phone:
//            PhoneNumberSignInActivity, PhoneVerifyYourAccountFailureActivity, PhoneVerifyYourAccountActivity, PhoneVerifyYourAccountSuccessActivity

public class PhoneAlreadyAWazerActivity extends ActivityBase
    implements com.waze.navigate.DriveToNativeManager.DriveToGetAddressItemArrayCallback
{
    public static final class HomeWorkFavorites extends Enum
    {

        private static final HomeWorkFavorites ENUM$VALUES[];
        public static final HomeWorkFavorites HOME;
        public static final HomeWorkFavorites WORK;
        private int numVal;

        public static HomeWorkFavorites valueOf(String s)
        {
            return (HomeWorkFavorites)Enum.valueOf(com/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites, s);
        }

        public static HomeWorkFavorites[] values()
        {
            HomeWorkFavorites ahomeworkfavorites[] = ENUM$VALUES;
            int i = ahomeworkfavorites.length;
            HomeWorkFavorites ahomeworkfavorites1[] = new HomeWorkFavorites[i];
            System.arraycopy(ahomeworkfavorites, 0, ahomeworkfavorites1, 0, i);
            return ahomeworkfavorites1;
        }

        public int getNumVal()
        {
            return numVal;
        }

        static 
        {
            HOME = new HomeWorkFavorites("HOME", 0, 0);
            WORK = new HomeWorkFavorites("WORK", 1, 1);
            HomeWorkFavorites ahomeworkfavorites[] = new HomeWorkFavorites[2];
            ahomeworkfavorites[0] = HOME;
            ahomeworkfavorites[1] = WORK;
            ENUM$VALUES = ahomeworkfavorites;
        }

        private HomeWorkFavorites(String s, int i, int j)
        {
            super(s, i);
            numVal = j;
        }
    }


    private boolean bIsVerifyClicked;
    private DriveToNativeManager driveToNativeManager;
    private TextView mAlreadyAWazerBodyText;
    private TextView mAlreadyAWazerHeaderText;
    private TextView mCreateANewAccountText;
    private EnumSet mHomeWorkFlags;
    private TextView mJoinedDate;
    private TextView mNotYourAccountText;
    private TextView mUserNameText;
    private LinearLayout mVerifyMyAccountButton;
    private TextView mVerifyMyAccountText;
    private TextView mYourRankText;
    private TextView mYourScoreText;
    private NativeManager nativeManager;

    public PhoneAlreadyAWazerActivity()
    {
        bIsVerifyClicked = false;
        mHomeWorkFlags = EnumSet.noneOf(com/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites);
    }

    private void SetMood(MyWazeData mywazedata)
    {
        ((ImageView)findViewById(0x7f0904da)).setImageResource(MoodManager.getInstance().getMenuMoodDrawableByName(this, mywazedata.mMood));
    }

    private void fillFavoritesFlags()
    {
        driveToNativeManager.getTopTenFavorites(this);
    }

    private void initFieldsTexts()
    {
        mAlreadyAWazerHeaderText.setText(nativeManager.getLanguageString(DisplayStrings.DS_YOU_LOOK_FAMILIAR).toUpperCase());
        mAlreadyAWazerBodyText.setText(nativeManager.getLanguageString(DisplayStrings.DS_YOUR_PHONE_NUMBER_IS_ALREADY_ASSOCIATED_WITH_AN_EXISTING_ACCOUNT));
        mVerifyMyAccountText.setText(nativeManager.getLanguageString(DisplayStrings.DS_YES_ITS_ME));
        mNotYourAccountText.setVisibility(8);
        mCreateANewAccountText.setText(nativeManager.getLanguageString(DisplayStrings.DS_CREATE_A_NEW_ACCOUNT));
    }

    private void initMembers()
    {
        mAlreadyAWazerHeaderText = (TextView)findViewById(0x7f0904d4);
        mAlreadyAWazerBodyText = (TextView)findViewById(0x7f0904d5);
        mUserNameText = (TextView)findViewById(0x7f0904d6);
        mYourScoreText = (TextView)findViewById(0x7f0904d7);
        mYourRankText = (TextView)findViewById(0x7f0904d8);
        mJoinedDate = (TextView)findViewById(0x7f0904d9);
        mVerifyMyAccountButton = (LinearLayout)findViewById(0x7f0904db);
        mVerifyMyAccountText = (TextView)findViewById(0x7f0904dc);
        mNotYourAccountText = (TextView)findViewById(0x7f0904dd);
        mCreateANewAccountText = (TextView)findViewById(0x7f0904de);
        nativeManager = NativeManager.getInstance();
        driveToNativeManager = DriveToNativeManager.getInstance();
    }

    private void initMyWazeData()
    {
        MyWazeNativeManager.getInstance().getMyWazeDataForVerification(this);
    }

    private void setJoinedString(MyWazeData mywazedata)
    {
        if (mywazedata.mJoinedStr != null && !mywazedata.mJoinedStr.equals(""))
        {
            mJoinedDate.setVisibility(0);
            String s = nativeManager.getLanguageString(DisplayStrings.DS_LAST_CONNECTED_PD);
            Object aobj[] = new Object[1];
            aobj[0] = mywazedata.mJoinedStr;
            String s1 = String.format(s, aobj);
            mJoinedDate.setText(s1);
            return;
        } else
        {
            mJoinedDate.setVisibility(8);
            return;
        }
    }

    private void setOnClickListeners()
    {
        mVerifyMyAccountButton.setOnClickListener(new android.view.View.OnClickListener() {

            final PhoneAlreadyAWazerActivity this$0;

            public void onClick(View view)
            {
                NativeManager.getInstance().SignUplogAnalytics("VERIFY_MY_ACCOUNT", null, null, true);
                nativeManager.OpenProgressPopup(nativeManager.getLanguageString(DisplayStrings.DS_PLEASE_WAIT___));
                nativeManager.AuthContacts();
                bIsVerifyClicked = true;
            }

            
            {
                this$0 = PhoneAlreadyAWazerActivity.this;
                super();
            }
        });
        mCreateANewAccountText.setOnClickListener(new android.view.View.OnClickListener() {

            final PhoneAlreadyAWazerActivity this$0;

            public void onClick(View view)
            {
                NativeManager.getInstance().SignUplogAnalytics("CREATE_NEW_ACCOUNT", null, null, true);
                bIsVerifyClicked = false;
                MainActivity.bToOpenAccountPopup = true;
                setResult(-1);
                finish();
            }

            
            {
                this$0 = PhoneAlreadyAWazerActivity.this;
                super();
            }
        });
    }

    private void setRank(MyWazeData mywazedata)
    {
        String s;
        if (mywazedata.mRank > 0)
        {
            String s1 = nativeManager.getLanguageString(DisplayStrings.DS_YOUR_RANKC_PD);
            Object aobj1[] = new Object[1];
            aobj1[0] = Integer.valueOf(mywazedata.mRank);
            s = String.format(s1, aobj1);
        } else
        {
            Object aobj[] = new Object[2];
            aobj[0] = nativeManager.getLanguageString(DisplayStrings.DS_YOUR_RANKC);
            aobj[1] = nativeManager.getLanguageString(DisplayStrings.DS_NSA);
            s = String.format("%s %s", aobj);
        }
        mYourRankText.setText(s);
    }

    private void setScore(MyWazeData mywazedata)
    {
        String s;
        if (mywazedata.mRank > -1)
        {
            String s1 = nativeManager.getLanguageString(DisplayStrings.DS_YOUR_SCOREC_PD_POINTS);
            Object aobj1[] = new Object[1];
            aobj1[0] = Integer.valueOf(mywazedata.mPts);
            s = String.format(s1, aobj1);
        } else
        {
            Object aobj[] = new Object[2];
            aobj[0] = nativeManager.getLanguageString(DisplayStrings.DS_YOUR_SCOREC);
            aobj[1] = nativeManager.getLanguageString(DisplayStrings.DS_NSA);
            s = String.format("%s %s", aobj);
        }
        mYourScoreText.setText(s);
    }

    public void AuthenticateCallback(int i)
    {
        NativeManager nativemanager = NativeManager.getInstance();
        String s;
        if (i == 0)
        {
            s = "SUCCESS";
        } else
        {
            s = "FAILURE";
        }
        nativemanager.SignUplogAnalytics("CONTACTS_RESPONSE", "VAUE", s, true);
        if (i == 0)
        {
            MyWazeNativeManager.getInstance().setContactsSignIn(false, PhoneNumberSignInActivity.bIsUpgrade, null, null);
            return;
        }
        if (i == 5)
        {
            startActivityForResult(new Intent(this, com/waze/phone/PhoneVerifyYourAccountFailureActivity), 1);
            return;
        } else
        {
            NativeManager.getInstance().CloseProgressPopup();
            MsgBox.openMessageBox(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_UHHOHE), NativeManager.getInstance().getLanguageString(DisplayStrings.DS_NETWORK_CONNECTION_PROBLEMS__PLEASE_TRY_AGAIN_LATER_), false);
            return;
        }
    }

    public void SetMyWazeData(MyWazeData mywazedata)
    {
        mUserNameText.setText(mywazedata.mUserName);
        setScore(mywazedata);
        setRank(mywazedata);
        setJoinedString(mywazedata);
        SetMood(mywazedata);
    }

    public void getAddressItemArrayCallback(AddressItem aaddressitem[])
    {
        int i = 0;
_L2:
        if (i >= aaddressitem.length)
        {
            nativeManager.CloseProgressPopup();
            if (!mHomeWorkFlags.isEmpty())
            {
                Intent intent = new Intent(this, com/waze/phone/PhoneVerifyYourAccountActivity);
                intent.putExtra("homeWorkFlags", mHomeWorkFlags);
                startActivityForResult(intent, 1);
            }
            return;
        }
        switch (aaddressitem[i].getType().intValue())
        {
        case 2: // '\002'
        default:
            break;

        case 1: // '\001'
            break; /* Loop/switch isn't completed */

        case 3: // '\003'
            break;
        }
        break MISSING_BLOCK_LABEL_116;
_L3:
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        mHomeWorkFlags.add(HomeWorkFavorites.HOME);
          goto _L3
        mHomeWorkFlags.add(HomeWorkFavorites.WORK);
          goto _L3
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        if (j == -1)
        {
            setResult(-1);
            finish();
        }
        super.onActivityResult(i, j, intent);
    }

    public void onBackPressed()
    {
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f0300a0);
        initMembers();
        setOnClickListeners();
        initFieldsTexts();
        initMyWazeData();
        NativeManager.getInstance().SignUplogAnalytics("ALREADY_WAZER_SHOWN", null, null, true);
        mCreateANewAccountText.setPaintFlags(8 | mCreateANewAccountText.getPaintFlags());
    }

    protected void onDestroy()
    {
        super.onDestroy();
    }

    public void onPinTokenSet()
    {
        NativeManager.getInstance().CloseProgressPopup();
        if (bIsVerifyClicked)
        {
            startActivityForResult(new Intent(this, com/waze/phone/PhoneVerifyYourAccountSuccessActivity), 1000);
            return;
        } else
        {
            MainActivity.bToOpenAccountPopup = true;
            setResult(-1);
            finish();
            return;
        }
    }


}
