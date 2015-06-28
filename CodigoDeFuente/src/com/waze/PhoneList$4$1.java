// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.content.ContentResolver;
import android.content.DialogInterface;
import android.database.Cursor;
import android.view.View;
import android.widget.AdapterView;
import com.waze.strings.DisplayStrings;
import java.util.ArrayList;

// Referenced classes of package com.waze:
//            PhoneList, MsgBox, NativeManager

class 
    implements android.content.e.OnClickListener
{

    final nterface this$1;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        if (i == 1);
    }

    ()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/waze/PhoneList$4

/* anonymous class */
    class PhoneList._cls4
        implements android.widget.AdapterView.OnItemClickListener
    {

        final PhoneList this$0;

        public void onItemClick(AdapterView adapterview, View view, int i, long l)
        {
            Cursor cursor1;
            String as[];
            int j;
            String s;
            ContentResolver contentresolver;
            Cursor cursor;
            String s1;
            PhoneList._cls4._cls1 _lcls1;
            if (PhoneList.access$0(PhoneList.this))
            {
                s = (String)PhoneList.access$1(PhoneList.this).get(i);
            } else
            {
                s = PhoneList.access$2(PhoneList.this)[i];
            }
            contentresolver = getContentResolver();
            cursor = contentresolver.query(android.provider.ContactsContract.Contacts.CONTENT_URI, null, (new StringBuilder("DISPLAY_NAME = '")).append(s).append("'").toString(), null, null);
            if (!cursor.moveToFirst()) goto _L2; else goto _L1
_L1:
            s1 = cursor.getString(cursor.getColumnIndex("_id"));
            cursor1 = contentresolver.query(android.provider.ContactsContract.CommonDataKinds.Phone.CONTENT_URI, null, (new StringBuilder("contact_id = ")).append(s1).toString(), null, null);
            as = new String[4];
            j = 0;
_L6:
            if (cursor1.moveToNext()) goto _L4; else goto _L3
_L3:
            _lcls1 = new PhoneList._cls4._cls1();
            if (j > 1)
            {
                MsgBox.getInstance().OpenChooseNumberDialog(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_CHOOSE_A_NUMBER), as[0], as[1], _lcls1);
            }
            cursor1.close();
_L2:
            cursor.close();
            return;
_L4:
            as[j] = cursor1.getString(cursor1.getColumnIndex("data1"));
            switch (cursor1.getInt(cursor1.getColumnIndex("data2")))
            {
            case 1: // '\001'
            case 2: // '\002'
            case 3: // '\003'
            default:
                j++;
                break;
            }
            if (true) goto _L6; else goto _L5
_L5:
        }

            
            {
                this$0 = PhoneList.this;
                super();
            }
    }

}
