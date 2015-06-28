// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.phone;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AccountManagerCallback;
import android.accounts.AccountManagerFuture;
import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.os.Bundle;
import android.os.Handler;
import android.telephony.TelephonyManager;
import android.util.SparseArray;
import android.util.SparseIntArray;
import com.google.i18n.phonenumbers.NumberParseException;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.waze.AppService;
import com.waze.NativeManager;
import com.waze.autocomplete.Person;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.navigate.DriveToNativeManager;
import com.waze.navigate.social.IdsMatchData;
import com.waze.navigate.social.OnCompleteTaskListener;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

public class AddressBook
{

    public static final String ACCOUNT = "Waze";
    public static final String PROJECTION2[] = {
        "raw_contact_id", "data1", "display_name"
    };
    public static final String PROJECTION3[] = {
        "sync1", "sync2", "sync3", "sourceid"
    };
    private static boolean bIsInitialized = false;
    private static boolean bIsLocalPersonInit = false;
    private static boolean bIsMappArrayInit = false;
    private static Account mAccount = null;
    private static String mCountryId = null;
    private static HashMap mHashPersonArray = new HashMap();
    private static SparseArray mIds = new SparseArray();
    private static Person mLocalPersonData = null;
    private static ArrayList mMappedPersonArray = new ArrayList();
    private static ContentObserver mObserver = new ContentObserver(new Handler()) {

        public void onChange(boolean flag)
        {
            super.onChange(flag);
            if (ContentResolver.getSyncAutomatically(AddressBook.mAccount, "com.android.contacts"))
            {
                Bundle bundle = new Bundle();
                bundle.putBoolean("expedited", true);
                bundle.putBoolean("force", true);
                bundle.putBoolean("force", true);
                ContentResolver.requestSync(AddressBook.mAccount, "com.android.contacts", bundle);
            }
        }

    };
    private static ArrayList mPersonArray = new ArrayList();
    private static ArrayList mPhonesHash = new ArrayList();

    public AddressBook()
    {
    }

    public static boolean AccountExist()
    {
        return ((AccountManager)AppService.getAppContext().getSystemService("account")).getAccountsByType("com.waze").length == 1;
    }

    public static void CancelSync()
    {
        if (MyWazeNativeManager.getInstance().getContactLoggedInNTV() && mAccount != null)
        {
            AppService.getAppContext().getContentResolver().unregisterContentObserver(mObserver);
            ContentResolver.cancelSync(mAccount, "com.android.contacts");
        }
    }

    public static void CreateAccount()
    {
        if (((AccountManager)AppService.getAppContext().getSystemService("account")).getAccountsByType("com.waze").length == 1)
        {
            NativeManager.bToCreateAcc = false;
            return;
        } else
        {
            NativeManager.bToCreateAcc = true;
            Account account = CreateSyncAccount(AppService.getAppContext());
            ContentResolver.setIsSyncable(account, "com.android.contacts", 1);
            ContentResolver.setSyncAutomatically(account, "com.android.contacts", true);
            RequestSync(true);
            return;
        }
    }

    public static Account CreateSyncAccount(Context context)
    {
        Account account = new Account("Waze", "com.waze");
        ((AccountManager)context.getSystemService("account")).addAccountExplicitly(account, null, null);
        return account;
    }

    public static void DeleteAccount()
    {
        AccountManager accountmanager = (AccountManager)AppService.getAppContext().getSystemService("account");
        Account aaccount[] = accountmanager.getAccountsByType("com.waze");
        if (aaccount.length == 1)
        {
            accountmanager.removeAccount(aaccount[0], null, null);
        }
    }

    public static String GetCountryZipCode()
    {
        if (mCountryId == null)
        {
            mCountryId = ((TelephonyManager)AppService.getAppContext().getSystemService("phone")).getSimCountryIso().toUpperCase();
            if (mCountryId == null || mCountryId.equals(""))
            {
                mCountryId = NativeManager.getInstance().GetDefaultRegion();
            }
        }
        return mCountryId;
    }

    public static String GetNameFromHash(int i)
    {
        if (!bIsInitialized)
        {
            InitMembers();
        }
        Person person = (Person)mIds.get(i);
        if (person == null)
        {
            return "";
        } else
        {
            return person.getName();
        }
    }

    public static ArrayList GetPersonArrayFromAddressBook()
    {
        if (!bIsInitialized)
        {
            InitMembers();
        }
        return mPersonArray;
    }

    public static void GetPersonArrayWithMapping(final com.waze.navigate.DriveToNativeManager.PersonMappingListener pml)
    {
        if (!bIsInitialized || !bIsMappArrayInit)
        {
            if (!bIsInitialized)
            {
                InitMembers();
                bIsInitialized = true;
            }
            bIsMappArrayInit = true;
            mMappedPersonArray.clear();
            final SparseIntArray PersonIdMatch = new SparseIntArray();
            DriveToNativeManager.getInstance().getIdsMatchData(new com.waze.navigate.DriveToNativeManager.IdsMatchListener() {

                private final SparseIntArray val$PersonIdMatch;
                private final com.waze.navigate.DriveToNativeManager.PersonMappingListener val$pml;

                public void onComplete(IdsMatchData idsmatchdata)
                {
                    if (idsmatchdata == null) goto _L2; else goto _L1
_L1:
                    int j = 0;
_L6:
                    if (j < idsmatchdata.UIDs.length) goto _L3; else goto _L2
_L2:
                    if (AddressBook.mPersonArray.isEmpty()) goto _L5; else goto _L4
_L4:
                    Iterator iterator = AddressBook.mPersonArray.iterator();
_L7:
                    if (iterator.hasNext())
                    {
                        break MISSING_BLOCK_LABEL_82;
                    }
_L5:
                    pml.onComplete(AddressBook.mMappedPersonArray);
                    return;
_L3:
                    PersonIdMatch.put(idsmatchdata.ContactIds[j], idsmatchdata.UIDs[j]);
                    j++;
                      goto _L6
                    Person person = (Person)iterator.next();
                    Person person1 = new Person(person);
                    int i = PersonIdMatch.get(person.getID());
                    if (i != 0)
                    {
                        person1.setIsOnWaze(true);
                        person1.setID(i);
                    }
                    AddressBook.mMappedPersonArray.add(person1);
                      goto _L7
                }

            
            {
                PersonIdMatch = sparseintarray;
                pml = personmappinglistener;
                super();
            }
            });
            return;
        } else
        {
            pml.onComplete(mMappedPersonArray);
            return;
        }
    }

    public static Person GetPersonFromID(int i)
    {
        if (!bIsInitialized)
        {
            InitMembers();
        }
        Person person = (Person)mIds.get(i);
        if (person == null)
        {
            person = null;
        }
        return person;
    }

    public static ArrayList GetPhonesHash()
    {
        String as[] = {
            "1"
        };
        Cursor cursor = AppService.getAppContext().getContentResolver().query(android.provider.ContactsContract.CommonDataKinds.Phone.CONTENT_URI, PROJECTION2, "in_visible_group= ? ", as, null);
        do
        {
            String s;
            do
            {
                if (!cursor.moveToNext())
                {
                    cursor.close();
                    return mPhonesHash;
                }
                s = PhoneFormat(cursor.getString(1), GetCountryZipCode());
            } while (s == null);
            String s1 = NativeManager.getInstance().SHA256(s);
            mPhonesHash.add(s1);
        } while (true);
    }

    private static void InitMembers()
    {
        bIsInitialized = true;
        mPersonArray.clear();
        mIds.clear();
        mHashPersonArray.clear();
        Cursor cursor = AppService.getAppContext().getContentResolver().query(android.provider.ContactsContract.RawContacts.CONTENT_URI, PROJECTION3, "account_type='com.waze'", null, null);
        do
        {
            String s;
            int i;
            Person person;
            do
            {
                if (!cursor.moveToNext())
                {
                    if (mHashPersonArray.size() > 0)
                    {
                        mPersonArray.addAll(mHashPersonArray.values());
                    }
                    return;
                }
                s = cursor.getString(0);
                String s1 = cursor.getString(1);
                String s2 = cursor.getString(2);
                i = cursor.getInt(3);
                person = new Person(s1, s, s2, i);
            } while (mHashPersonArray.containsKey(s));
            mIds.put(i, person);
            mHashPersonArray.put(s, person);
        } while (true);
    }

    public static String PhoneFormat(String s, String s1)
    {
        PhoneNumberUtil phonenumberutil;
        com.google.i18n.phonenumbers.Phonenumber.PhoneNumber phonenumber;
        phonenumberutil = PhoneNumberUtil.getInstance();
        phonenumber = phonenumberutil.parse(s, s1);
        if (!isValid(s))
        {
            return null;
        }
        String s2;
        try
        {
            s2 = phonenumberutil.format(phonenumber, com.google.i18n.phonenumbers.PhoneNumberUtil.PhoneNumberFormat.E164);
        }
        catch (NumberParseException numberparseexception)
        {
            return null;
        }
        return s2;
    }

    public static void RequestSync(boolean flag)
    {
        if (MyWazeNativeManager.getInstance().getContactLoggedInNTV() || flag)
        {
            Account aaccount[] = ((AccountManager)AppService.getAppContext().getSystemService("account")).getAccountsByType("com.waze");
            if (aaccount.length == 1 && ContentResolver.getSyncAutomatically(aaccount[0], "com.android.contacts"))
            {
                Account account = aaccount[0];
                Bundle bundle = new Bundle();
                bundle.putBoolean("expedited", true);
                bundle.putBoolean("force", true);
                bundle.putBoolean("force", true);
                ContentResolver.requestSync(account, "com.android.contacts", bundle);
            }
        }
    }

    public static void RestartAccount()
    {
        AccountManager accountmanager = (AccountManager)AppService.getAppContext().getSystemService("account");
        Account aaccount[] = accountmanager.getAccountsByType("com.waze");
        if (aaccount.length == 1)
        {
            accountmanager.removeAccount(aaccount[0], new AccountManagerCallback() {

                public void run(AccountManagerFuture accountmanagerfuture)
                {
                    NativeManager.getInstance().DeleteContactsFromDataBase();
                    if (NativeManager.getInstance().getInitializedStatus())
                    {
                        AddressBook.CreateAccount();
                        return;
                    } else
                    {
                        NativeManager.bToCreateAcc = true;
                        return;
                    }
                }

            }, null);
        }
    }

    public static void SetCountryID(String s)
    {
        mCountryId = s;
    }

    public static void SetFlagToInit()
    {
        bIsInitialized = false;
    }

    public static void fillMapBetweenContactIdToUid(final SparseIntArray personIdMatch, final OnCompleteTaskListener onCompleteTaskListener)
    {
        DriveToNativeManager.getInstance().getIdsMatchData(new com.waze.navigate.DriveToNativeManager.IdsMatchListener() {

            private final OnCompleteTaskListener val$onCompleteTaskListener;
            private final SparseIntArray val$personIdMatch;

            public void onComplete(IdsMatchData idsmatchdata)
            {
                if (idsmatchdata == null) goto _L2; else goto _L1
_L1:
                int i = 0;
_L5:
                if (i < idsmatchdata.UIDs.length) goto _L3; else goto _L2
_L2:
                if (onCompleteTaskListener != null)
                {
                    onCompleteTaskListener.onCompleted();
                }
                return;
_L3:
                personIdMatch.put(idsmatchdata.ContactIds[i], idsmatchdata.UIDs[i]);
                i++;
                if (true) goto _L5; else goto _L4
_L4:
            }

            
            {
                personIdMatch = sparseintarray;
                onCompleteTaskListener = oncompletetasklistener;
                super();
            }
        });
    }

    public static String getLocalFirstName()
    {
        if (!bIsLocalPersonInit)
        {
            getLocalProfileData();
        }
        String s;
        if (mLocalPersonData == null)
        {
            s = null;
        } else
        {
            s = mLocalPersonData.getName();
            if (s == null)
            {
                return null;
            }
            String as[] = s.split(" ");
            String s1 = new String();
            if (as.length != 0)
            {
                int i = 0;
                do
                {
                    if (i >= -1 + as.length)
                    {
                        return s1;
                    }
                    s1 = (new StringBuilder(String.valueOf(s1))).append(as[i]).toString();
                    i++;
                } while (true);
            }
        }
        return s;
    }

    public static String getLocalImageURI()
    {
        if (!bIsLocalPersonInit)
        {
            getLocalProfileData();
        }
        if (mLocalPersonData == null)
        {
            return null;
        } else
        {
            return mLocalPersonData.getImage();
        }
    }

    public static String getLocalLastName()
    {
        if (!bIsLocalPersonInit)
        {
            getLocalProfileData();
        }
        String s;
        if (mLocalPersonData == null)
        {
            s = null;
        } else
        {
            s = mLocalPersonData.getName();
            if (s == null)
            {
                return null;
            }
            String as[] = s.split(" ");
            String s1 = new String();
            int i = as.length;
            if (i != 0)
            {
                return (new StringBuilder(String.valueOf(s1))).append(as[i - 1]).toString();
            }
        }
        return s;
    }

    public static void getLocalProfileData()
    {
        String as[] = {
            "display_name", "photo_uri"
        };
        Cursor cursor = AppService.getAppContext().getContentResolver().query(android.provider.ContactsContract.Profile.CONTENT_URI, as, null, null, null);
        int i = cursor.getCount();
        boolean flag = cursor.moveToFirst();
        bIsLocalPersonInit = true;
        if (flag)
        {
            int j = cursor.getPosition();
            if (i == 1 && j == 0)
            {
                mLocalPersonData = new Person(cursor.getString(0), cursor.getString(1), "-1");
            }
        }
        if (cursor != null)
        {
            cursor.close();
        }
    }

    public static boolean isValid(String s)
    {
        PhoneNumberUtil phonenumberutil = PhoneNumberUtil.getInstance();
        com.google.i18n.phonenumbers.Phonenumber.PhoneNumber phonenumber;
        try
        {
            phonenumber = phonenumberutil.parse(s, GetCountryZipCode());
        }
        catch (NumberParseException numberparseexception)
        {
            return false;
        }
        if (NativeManager.getInstance().ValidateMobileTypeNTV() && phonenumberutil.getNumberType(phonenumber) != com.google.i18n.phonenumbers.PhoneNumberUtil.PhoneNumberType.FIXED_LINE_OR_MOBILE && phonenumberutil.getNumberType(phonenumber) != com.google.i18n.phonenumbers.PhoneNumberUtil.PhoneNumberType.MOBILE && phonenumberutil.getNumberType(phonenumber) != com.google.i18n.phonenumbers.PhoneNumberUtil.PhoneNumberType.PERSONAL_NUMBER)
        {
            return false;
        } else
        {
            return phonenumberutil.isValidNumber(phonenumber);
        }
    }




}
