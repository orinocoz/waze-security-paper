// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.authenticator;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.OperationCanceledException;
import android.app.Service;
import android.content.ContentProviderClient;
import android.content.ContentProviderOperation;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.SyncResult;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import com.waze.NativeManager;
import com.waze.autocomplete.Person;
import com.waze.phone.AddressBook;
import java.util.ArrayList;

// Referenced classes of package com.waze.authenticator:
//            SyncAdapter

public class SyncService extends Service
{
    private static final class DirtyQuery
    {

        public static final Uri CONTENT_URI;
        public static final String PROJECTION[] = {
            "_id", "version", "sourceid"
        };
        public static final String PROJECTION2[] = {
            "_id", "version", "deleted", "sourceid", "sync4"
        };
        public static final String PROJECTION3[] = {
            "_id", "data1", "display_name", "version", "photo_uri", "raw_contact_id"
        };
        public static final String PROJECTION4[] = {
            "_id", "data1", "display_name", "version", "raw_contact_id"
        };
        public static final String SELECTION = "dirty=1 AND account_type='com.waze' OR deleted=1 AND account_type='com.waze'";
        public static final String SELECTION2 = "data_sync1!=data1";

        static 
        {
            CONTENT_URI = android.provider.ContactsContract.RawContacts.CONTENT_URI.buildUpon().appendQueryParameter("caller_is_syncadapter", "true").build();
        }

        private DirtyQuery()
        {
        }
    }


    static int Index = 0;
    static int Index2 = 0;
    static boolean IsLowApi = false;
    static boolean bChanged = false;
    static ArrayList ops = new ArrayList();
    private static SyncAdapter sSyncAdapter = null;
    private static final Object sSyncAdapterLock = new Object();

    public SyncService()
    {
    }

    private static void AggargateAll(Context context)
    {
        Cursor cursor = context.getContentResolver().query(android.provider.ContactsContract.RawContacts.CONTENT_URI, DirtyQuery.PROJECTION2, "account_type='com.waze'", null, null);
_L6:
        boolean flag = cursor.moveToNext();
        if (flag) goto _L2; else goto _L1
_L1:
        if (cursor != null)
        {
            cursor.close();
        }
_L4:
        return;
_L2:
        try
        {
            long l = cursor.getLong(0);
            long l1 = cursor.getLong(4);
            ContentValues contentvalues = new ContentValues();
            contentvalues.put("type", Integer.valueOf(1));
            contentvalues.put("raw_contact_id1", Long.valueOf(l));
            contentvalues.put("raw_contact_id2", Long.valueOf(l1));
            context.getContentResolver().update(addCallerIsSyncAdapterParameter(android.provider.ContactsContract.AggregationExceptions.CONTENT_URI, true), contentvalues, null, null);
            continue; /* Loop/switch isn't completed */
        }
        catch (Exception exception1) { }
        finally
        {
            if (cursor != null)
            {
                cursor.close();
            }
            throw exception;
        }
        if (cursor == null) goto _L4; else goto _L3
_L3:
        cursor.close();
        return;
        if (true) goto _L6; else goto _L5
_L5:
    }

    private static void FinishAdd(Context context)
    {
label0:
        {
            ContentResolver contentresolver = context.getContentResolver();
            int i;
            try
            {
                if (ops.size() <= 0)
                {
                    break label0;
                }
                android.content.ContentProviderResult acontentproviderresult[] = contentresolver.applyBatch("com.android.contacts", ops);
                ops.clear();
                Index = 0;
                i = acontentproviderresult.length;
            }
            catch (Exception exception)
            {
                exception.printStackTrace();
                return;
            }
            if (i != 0);
        }
    }

    private static String GetCurrentContatcsVersions(Context context)
    {
        return "sb";
    }

    private static boolean IsFirstTimeUse()
    {
        boolean flag;
label0:
        {
            String s = NativeManager.getInstance().getContactsLastAccessTime();
            if (s != null)
            {
                boolean flag1 = s.equals("");
                flag = false;
                if (!flag1)
                {
                    break label0;
                }
            }
            flag = true;
        }
        return flag;
    }

    public static void RefreshContactUpdates(Context context, Account account)
    {
        String as[];
        String s;
        Account aaccount[];
        String s1;
        int i;
        as = (new String[] {
            "1"
        });
        s = "in_visible_group= ? ";
        aaccount = ((AccountManager)context.getSystemService("account")).getAccounts();
        s1 = "";
        i = 0;
_L4:
        int j = aaccount.length;
        if (i < j) goto _L2; else goto _L1
_L1:
        Cursor cursor;
        if (!s1.equals(""))
        {
            s = (new StringBuilder(String.valueOf(s1))).append(" AND ").append("in_visible_group").append("= ? ").toString();
        }
        boolean flag;
        if (IsLowApi)
        {
            cursor = context.getContentResolver().query(android.provider.ContactsContract.CommonDataKinds.Phone.CONTENT_URI, DirtyQuery.PROJECTION4, s, as, null);
        } else
        {
            cursor = context.getContentResolver().query(android.provider.ContactsContract.CommonDataKinds.Phone.CONTENT_URI, DirtyQuery.PROJECTION3, s, as, null);
        }
_L7:
        flag = cursor.moveToNext();
        if (!flag)
        {
            FinishAdd(context);
            if (cursor != null)
            {
                cursor.close();
            }
            return;
        }
          goto _L3
_L2:
        if (!aaccount[i].type.equals("com.google"))
        {
            if (s1.length() != 0)
            {
                s1 = (new StringBuilder(String.valueOf(s1))).append(" AND ").toString();
            }
            s1 = (new StringBuilder(String.valueOf(s1))).append("account_type").append(" != '").append(aaccount[i].type).append("'").toString();
        }
        i++;
          goto _L4
_L3:
        long l;
        int k;
        String s2;
        String s3;
        l = cursor.getLong(0);
        k = cursor.getInt(3);
        s2 = cursor.getString(1);
        s3 = cursor.getString(2);
        if (IsLowApi) goto _L6; else goto _L5
_L5:
        long l1;
        String s4;
        s4 = cursor.getString(4);
        l1 = cursor.getLong(5);
_L8:
        Cursor cursor1 = context.getContentResolver().query(android.provider.ContactsContract.RawContacts.CONTENT_URI, DirtyQuery.PROJECTION, (new StringBuilder("sourceid=")).append(l).append(" AND ").append("account_type").append("=").append("'com.waze'").toString(), null, null);
        if (cursor1 == null)
        {
            break MISSING_BLOCK_LABEL_598;
        }
        int i1;
        int j1;
        if (!cursor1.moveToFirst())
        {
            break MISSING_BLOCK_LABEL_598;
        }
        i1 = cursor1.getInt(1);
        j1 = cursor1.getInt(0);
        if (k <= i1)
        {
            break MISSING_BLOCK_LABEL_551;
        }
        String s7;
        NativeManager.getInstance().RemoveContactFromDB(l);
        bChanged = true;
        ContentResolver contentresolver = context.getContentResolver();
        Uri uri = android.provider.ContactsContract.RawContacts.CONTENT_URI.buildUpon().appendQueryParameter("caller_is_syncadapter", "true").build();
        String as1[] = new String[1];
        as1[0] = Long.toString(j1);
        contentresolver.delete(uri, "_id = ?", as1);
        s7 = AddressBook.PhoneFormat(s2, AddressBook.GetCountryZipCode());
        if (s7 == null)
        {
            break MISSING_BLOCK_LABEL_551;
        }
        String s8 = NativeManager.getInstance().SHA256(s7);
        Person person1 = new Person(s3, s7, s4);
        NativeManager.getInstance().AddContactToDB(s8, l, k);
        addContact(context, person1, k, l, l1);
        cursor1.close();
          goto _L7
        Exception exception;
        exception;
        FinishAdd(context);
        if (cursor != null)
        {
            cursor.close();
        }
        throw exception;
_L6:
        l1 = cursor.getLong(4);
        s4 = null;
          goto _L8
        if (cursor1 == null)
        {
            break MISSING_BLOCK_LABEL_610;
        }
        cursor1.close();
        String s5 = AddressBook.PhoneFormat(s2, AddressBook.GetCountryZipCode());
        if (s5 == null) goto _L7; else goto _L9
_L9:
        Person person = new Person(s3, s5, s4);
        String s6 = NativeManager.getInstance().SHA256(s5);
        NativeManager.getInstance().AddContactToDB(s6, l, k);
        bChanged = true;
        addContact(context, person, k, l, l1);
          goto _L7
    }

    public static void RefreshDeletedContacts(Context context, Account account)
    {
        Cursor cursor = context.getContentResolver().query(android.provider.ContactsContract.RawContacts.CONTENT_URI, DirtyQuery.PROJECTION2, "dirty=1 AND account_type='com.waze' OR deleted=1 AND account_type='com.waze'", null, null);
_L2:
        if (cursor == null)
        {
            break MISSING_BLOCK_LABEL_36;
        }
        boolean flag = cursor.moveToNext();
        if (flag)
        {
            break MISSING_BLOCK_LABEL_47;
        }
        if (cursor != null)
        {
            cursor.close();
        }
        return;
        long l = cursor.getLong(0);
        long l1 = cursor.getLong(3);
        if ("1".equals(cursor.getString(2)))
        {
            bChanged = true;
            NativeManager.getInstance().RemoveContactFromDB(l1);
            ContentResolver contentresolver = context.getContentResolver();
            Uri uri = android.provider.ContactsContract.RawContacts.CONTENT_URI.buildUpon().appendQueryParameter("caller_is_syncadapter", "true").build();
            String as[] = new String[1];
            as[0] = Long.toString(l);
            contentresolver.delete(uri, "_id = ?", as);
        }
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        if (cursor != null)
        {
            cursor.close();
        }
        throw exception;
    }

    private static Uri addCallerIsSyncAdapterParameter(Uri uri, boolean flag)
    {
        if (flag)
        {
            uri = uri.buildUpon().appendQueryParameter("caller_is_syncadapter", "true").build();
        }
        return uri;
    }

    public static void addContact(Context context, Person person, int i, long l, long l1)
    {
        if (ops.size() > 490)
        {
            FinishAdd(context);
        }
        int j = i - 1;
        int k = ops.size();
        ops.add(ContentProviderOperation.newInsert(addCallerIsSyncAdapterParameter(android.provider.ContactsContract.RawContacts.CONTENT_URI, true)).withValue("account_name", "Waze").withValue("account_type", "com.waze").withValue("sync1", person.getPhone()).withValue("sync2", person.getName()).withValue("sync3", person.getImage()).withValue("aggregation_mode", Integer.valueOf(0)).withValue("sourceid", Long.valueOf(l)).withValue("sync4", Long.valueOf(l1)).withValue("version", Integer.valueOf(j)).build());
        ops.add(ContentProviderOperation.newInsert(addCallerIsSyncAdapterParameter(android.provider.ContactsContract.Data.CONTENT_URI, true)).withValueBackReference("raw_contact_id", k).withValue("mimetype", "vnd.android.cursor.item/name").withValue("data2", person.getName()).build());
    }

    private static void addContactsToAccount(Context context)
    {
        boolean flag;
        String s;
        String as[];
        Account aaccount[];
        String s1;
        int i;
        flag = false;
        s = "in_visible_group= ? ";
        as = (new String[] {
            "1"
        });
        aaccount = ((AccountManager)context.getSystemService("account")).getAccounts();
        s1 = "";
        i = 0;
_L3:
        int j = aaccount.length;
        if (i < j) goto _L2; else goto _L1
_L1:
        Cursor cursor;
        if (!s1.equals(""))
        {
            s = (new StringBuilder(String.valueOf(s1))).append(" AND ").append("in_visible_group").append("= ? ").toString();
        }
        if (IsLowApi)
        {
            cursor = context.getContentResolver().query(android.provider.ContactsContract.CommonDataKinds.Phone.CONTENT_URI, DirtyQuery.PROJECTION4, s, as, null);
        } else
        {
            cursor = context.getContentResolver().query(android.provider.ContactsContract.CommonDataKinds.Phone.CONTENT_URI, DirtyQuery.PROJECTION3, s, as, null);
            flag = false;
        }
_L4:
        if (!cursor.moveToNext())
        {
            if (flag && NativeManager.getInstance().IsAccessToContactsEnableNTV())
            {
                NativeManager.getInstance().ContactUpload();
            }
            FinishAdd(context);
            cursor.close();
            return;
        }
        break MISSING_BLOCK_LABEL_272;
_L2:
        if (!aaccount[i].type.equals("com.google"))
        {
            if (s1.length() != 0)
            {
                s1 = (new StringBuilder(String.valueOf(s1))).append(" AND ").toString();
            }
            s1 = (new StringBuilder(String.valueOf(s1))).append("account_type").append(" != '").append(aaccount[i].type).append("'").toString();
        }
        i++;
          goto _L3
        long l = cursor.getLong(0);
        String s2 = cursor.getString(1);
        String s3 = cursor.getString(2);
        long l1;
        String s4;
        String s5;
        if (!IsLowApi)
        {
            s4 = cursor.getString(4);
            l1 = cursor.getLong(5);
        } else
        {
            l1 = cursor.getLong(4);
            s4 = null;
        }
        s5 = AddressBook.PhoneFormat(s2, AddressBook.GetCountryZipCode());
        if (s5 != null)
        {
            flag = true;
            Person person = new Person(s3, s5, s4);
            String s6 = NativeManager.getInstance().SHA256(s5);
            Index2 = 1 + Index2;
            NativeManager.getInstance().AddContactToDB(s6, l, cursor.getInt(3));
            addContact(context, person, cursor.getInt(3), l, l1);
        }
          goto _L4
    }

    public static void performSync(Context context, Account account, Bundle bundle, String s, ContentProviderClient contentproviderclient, SyncResult syncresult)
        throws OperationCanceledException
    {
        if (android.os.Build.VERSION.SDK_INT < 11)
        {
            IsLowApi = true;
        }
        if (!NativeManager.IsSyncValid()) goto _L2; else goto _L1
_L1:
        ops.clear();
        bChanged = false;
        if (NativeManager.bToUploadContacts)
        {
            NativeManager.bToUploadContacts = false;
            NativeManager.getInstance().ContactUpload();
        }
        if (!IsFirstTimeUse()) goto _L4; else goto _L3
_L3:
        Log.d("Sync Status", "First time Syncing");
        addContactsToAccount(context);
        AddressBook.SetFlagToInit();
        AggargateAll(context);
        NativeManager.getInstance().setContactsLastAccessTime(null);
_L6:
        String s1 = NativeManager.getInstance().GetIsAggaragteFinished();
        if (s1 == null || s1.equals(""))
        {
            AggargateAll(context);
            NativeManager.getInstance().setContactsLastAccessTime(null);
        }
_L2:
        return;
_L4:
        RefreshDeletedContacts(context, account);
        RefreshContactUpdates(context, account);
        if (bChanged && (NativeManager.getInstance().IsAccessToContactsEnableNTV() || NativeManager.bToUploadContacts))
        {
            NativeManager.getInstance().ContactUpload();
            AddressBook.SetFlagToInit();
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public IBinder onBind(Intent intent)
    {
        return sSyncAdapter.getSyncAdapterBinder();
    }

    public void onCreate()
    {
        synchronized (sSyncAdapterLock)
        {
            if (sSyncAdapter == null)
            {
                sSyncAdapter = new SyncAdapter(getApplicationContext(), true);
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

}
