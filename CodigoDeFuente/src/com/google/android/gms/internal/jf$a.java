// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.location.Location;
import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationRequestCreator;
import com.google.android.gms.location.b;
import com.google.android.gms.location.c;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.android.gms.maps.model.LatLngBoundsCreator;
import com.google.android.gms.maps.model.LatLngCreator;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            jf, ji, jn, jo, 
//            kb, kc, jx, jr, 
//            js, jl, jm, jv, 
//            jp, jq, je, jz

public static abstract class a.ko extends Binder
    implements jf
{
    private static class a
        implements jf
    {

        private IBinder ko;

        public void a(long l, boolean flag, PendingIntent pendingintent)
            throws RemoteException
        {
            int i;
            Parcel parcel;
            Parcel parcel1;
            i = 1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            parcel.writeLong(l);
            if (!flag)
            {
                i = 0;
            }
            parcel.writeInt(i);
            if (pendingintent == null)
            {
                break MISSING_BLOCK_LABEL_94;
            }
            parcel.writeInt(1);
            pendingintent.writeToParcel(parcel, 0);
_L1:
            ko.transact(5, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            parcel.writeInt(0);
              goto _L1
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void a(PendingIntent pendingintent)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (pendingintent == null)
            {
                break MISSING_BLOCK_LABEL_57;
            }
            parcel.writeInt(1);
            pendingintent.writeToParcel(parcel, 0);
_L1:
            ko.transact(11, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            parcel.writeInt(0);
              goto _L1
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void a(PendingIntent pendingintent, je je1, String s)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (pendingintent == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            pendingintent.writeToParcel(parcel, 0);
_L3:
            if (je1 == null)
            {
                break MISSING_BLOCK_LABEL_115;
            }
            IBinder ibinder = je1.asBinder();
_L4:
            parcel.writeStrongBinder(ibinder);
            parcel.writeString(s);
            ko.transact(2, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
            ibinder = null;
              goto _L4
        }

        public void a(Location location, int i)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (location == null)
            {
                break MISSING_BLOCK_LABEL_66;
            }
            parcel.writeInt(1);
            location.writeToParcel(parcel, 0);
_L1:
            parcel.writeInt(i);
            ko.transact(26, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            parcel.writeInt(0);
              goto _L1
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void a(je je1, String s)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (je1 == null)
            {
                break MISSING_BLOCK_LABEL_68;
            }
            IBinder ibinder = je1.asBinder();
_L1:
            parcel.writeStrongBinder(ibinder);
            parcel.writeString(s);
            ko.transact(4, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            ibinder = null;
              goto _L1
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void a(jl jl1, kb kb1, PendingIntent pendingintent)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (jl1 == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            jl1.writeToParcel(parcel, 0);
_L5:
            if (kb1 == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            kb1.writeToParcel(parcel, 0);
_L6:
            if (pendingintent == null)
            {
                break MISSING_BLOCK_LABEL_134;
            }
            parcel.writeInt(1);
            pendingintent.writeToParcel(parcel, 0);
_L7:
            ko.transact(48, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L5
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
_L4:
            parcel.writeInt(0);
              goto _L6
            parcel.writeInt(0);
              goto _L7
        }

        public void a(jn jn1, kb kb1, jz jz1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (jn1 == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            jn1.writeToParcel(parcel, 0);
_L5:
            if (kb1 == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            kb1.writeToParcel(parcel, 0);
_L6:
            if (jz1 == null)
            {
                break MISSING_BLOCK_LABEL_136;
            }
            IBinder ibinder = jz1.asBinder();
_L7:
            parcel.writeStrongBinder(ibinder);
            ko.transact(17, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L5
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
_L4:
            parcel.writeInt(0);
              goto _L6
            ibinder = null;
              goto _L7
        }

        public void a(jp jp1, kb kb1)
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (jp1 == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            jp1.writeToParcel(parcel, 0);
_L3:
            if (kb1 == null)
            {
                break MISSING_BLOCK_LABEL_77;
            }
            parcel.writeInt(1);
            kb1.writeToParcel(parcel, 0);
_L4:
            ko.transact(25, parcel, null, 1);
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
            parcel.writeInt(0);
              goto _L4
        }

        public void a(jr jr1, kb kb1, PendingIntent pendingintent)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (jr1 == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            jr1.writeToParcel(parcel, 0);
_L5:
            if (kb1 == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            kb1.writeToParcel(parcel, 0);
_L6:
            if (pendingintent == null)
            {
                break MISSING_BLOCK_LABEL_134;
            }
            parcel.writeInt(1);
            pendingintent.writeToParcel(parcel, 0);
_L7:
            ko.transact(18, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L5
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
_L4:
            parcel.writeInt(0);
              goto _L6
            parcel.writeInt(0);
              goto _L7
        }

        public void a(jv jv1, kb kb1, jz jz1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (jv1 == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            jv1.writeToParcel(parcel, 0);
_L5:
            if (kb1 == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            kb1.writeToParcel(parcel, 0);
_L6:
            if (jz1 == null)
            {
                break MISSING_BLOCK_LABEL_136;
            }
            IBinder ibinder = jz1.asBinder();
_L7:
            parcel.writeStrongBinder(ibinder);
            ko.transact(46, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L5
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
_L4:
            parcel.writeInt(0);
              goto _L6
            ibinder = null;
              goto _L7
        }

        public void a(kb kb1, PendingIntent pendingintent)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (kb1 == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            kb1.writeToParcel(parcel, 0);
_L3:
            if (pendingintent == null)
            {
                break MISSING_BLOCK_LABEL_98;
            }
            parcel.writeInt(1);
            pendingintent.writeToParcel(parcel, 0);
_L4:
            ko.transact(19, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
            parcel.writeInt(0);
              goto _L4
        }

        public void a(LocationRequest locationrequest, PendingIntent pendingintent)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (locationrequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            locationrequest.writeToParcel(parcel, 0);
_L3:
            if (pendingintent == null)
            {
                break MISSING_BLOCK_LABEL_98;
            }
            parcel.writeInt(1);
            pendingintent.writeToParcel(parcel, 0);
_L4:
            ko.transact(9, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
            parcel.writeInt(0);
              goto _L4
        }

        public void a(LocationRequest locationrequest, com.google.android.gms.location.a a1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (locationrequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            locationrequest.writeToParcel(parcel, 0);
_L3:
            if (a1 == null)
            {
                break MISSING_BLOCK_LABEL_101;
            }
            IBinder ibinder = a1.asBinder();
_L4:
            parcel.writeStrongBinder(ibinder);
            ko.transact(8, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
            ibinder = null;
              goto _L4
        }

        public void a(LocationRequest locationrequest, com.google.android.gms.location.a a1, String s)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (locationrequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            locationrequest.writeToParcel(parcel, 0);
_L3:
            if (a1 == null)
            {
                break MISSING_BLOCK_LABEL_116;
            }
            IBinder ibinder = a1.asBinder();
_L4:
            parcel.writeStrongBinder(ibinder);
            parcel.writeString(s);
            ko.transact(20, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
            ibinder = null;
              goto _L4
        }

        public void a(com.google.android.gms.location.a a1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (a1 == null)
            {
                break MISSING_BLOCK_LABEL_60;
            }
            IBinder ibinder = a1.asBinder();
_L1:
            parcel.writeStrongBinder(ibinder);
            ko.transact(10, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            ibinder = null;
              goto _L1
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void a(LatLng latlng, jn jn1, kb kb1, jz jz1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (latlng == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            latlng.writeToParcel(parcel, 0);
_L7:
            if (jn1 == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            jn1.writeToParcel(parcel, 0);
_L8:
            if (kb1 == null) goto _L6; else goto _L5
_L5:
            parcel.writeInt(1);
            kb1.writeToParcel(parcel, 0);
_L9:
            if (jz1 == null)
            {
                break MISSING_BLOCK_LABEL_164;
            }
            IBinder ibinder = jz1.asBinder();
_L10:
            parcel.writeStrongBinder(ibinder);
            ko.transact(16, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L7
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
_L4:
            parcel.writeInt(0);
              goto _L8
_L6:
            parcel.writeInt(0);
              goto _L9
            ibinder = null;
              goto _L10
        }

        public void a(LatLngBounds latlngbounds, int i, jn jn1, kb kb1, jz jz1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (latlngbounds == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            latlngbounds.writeToParcel(parcel, 0);
_L7:
            parcel.writeInt(i);
            if (jn1 == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            jn1.writeToParcel(parcel, 0);
_L8:
            if (kb1 == null) goto _L6; else goto _L5
_L5:
            parcel.writeInt(1);
            kb1.writeToParcel(parcel, 0);
_L9:
            if (jz1 == null)
            {
                break MISSING_BLOCK_LABEL_172;
            }
            IBinder ibinder = jz1.asBinder();
_L10:
            parcel.writeStrongBinder(ibinder);
            ko.transact(14, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L7
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
_L4:
            parcel.writeInt(0);
              goto _L8
_L6:
            parcel.writeInt(0);
              goto _L9
            ibinder = null;
              goto _L10
        }

        public void a(LatLngBounds latlngbounds, int i, String s, jn jn1, kb kb1, jz jz1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (latlngbounds == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            latlngbounds.writeToParcel(parcel, 0);
_L7:
            parcel.writeInt(i);
            parcel.writeString(s);
            if (jn1 == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            jn1.writeToParcel(parcel, 0);
_L8:
            if (kb1 == null) goto _L6; else goto _L5
_L5:
            parcel.writeInt(1);
            kb1.writeToParcel(parcel, 0);
_L9:
            if (jz1 == null)
            {
                break MISSING_BLOCK_LABEL_180;
            }
            IBinder ibinder = jz1.asBinder();
_L10:
            parcel.writeStrongBinder(ibinder);
            ko.transact(47, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L7
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
_L4:
            parcel.writeInt(0);
              goto _L8
_L6:
            parcel.writeInt(0);
              goto _L9
            ibinder = null;
              goto _L10
        }

        public void a(String s, kb kb1, jz jz1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            parcel.writeString(s);
            if (kb1 == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            kb1.writeToParcel(parcel, 0);
_L3:
            if (jz1 == null)
            {
                break MISSING_BLOCK_LABEL_116;
            }
            IBinder ibinder = jz1.asBinder();
_L4:
            parcel.writeStrongBinder(ibinder);
            ko.transact(15, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
            ibinder = null;
              goto _L4
        }

        public void a(String s, LatLngBounds latlngbounds, jn jn1, kb kb1, jz jz1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            parcel.writeString(s);
            if (latlngbounds == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            latlngbounds.writeToParcel(parcel, 0);
_L7:
            if (jn1 == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            jn1.writeToParcel(parcel, 0);
_L8:
            if (kb1 == null) goto _L6; else goto _L5
_L5:
            parcel.writeInt(1);
            kb1.writeToParcel(parcel, 0);
_L9:
            if (jz1 == null)
            {
                break MISSING_BLOCK_LABEL_172;
            }
            IBinder ibinder = jz1.asBinder();
_L10:
            parcel.writeStrongBinder(ibinder);
            ko.transact(45, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L7
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
_L4:
            parcel.writeInt(0);
              goto _L8
_L6:
            parcel.writeInt(0);
              goto _L9
            ibinder = null;
              goto _L10
        }

        public void a(String s, List list, List list1, kb kb1, jz jz1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            parcel.writeString(s);
            parcel.writeStringList(list);
            parcel.writeTypedList(list1);
            if (kb1 == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            kb1.writeToParcel(parcel, 0);
_L3:
            if (jz1 == null)
            {
                break MISSING_BLOCK_LABEL_132;
            }
            IBinder ibinder = jz1.asBinder();
_L4:
            parcel.writeStrongBinder(ibinder);
            ko.transact(50, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
            ibinder = null;
              goto _L4
        }

        public void a(List list, PendingIntent pendingintent, je je1, String s)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            parcel.writeTypedList(list);
            if (pendingintent == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            pendingintent.writeToParcel(parcel, 0);
_L3:
            if (je1 == null)
            {
                break MISSING_BLOCK_LABEL_122;
            }
            IBinder ibinder = je1.asBinder();
_L4:
            parcel.writeStrongBinder(ibinder);
            parcel.writeString(s);
            ko.transact(1, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
            ibinder = null;
              goto _L4
        }

        public void a(String as1[], je je1, String s)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            parcel.writeStringArray(as1);
            if (je1 == null)
            {
                break MISSING_BLOCK_LABEL_80;
            }
            IBinder ibinder = je1.asBinder();
_L1:
            parcel.writeStrongBinder(ibinder);
            parcel.writeString(s);
            ko.transact(3, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            ibinder = null;
              goto _L1
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public IBinder asBinder()
        {
            return ko;
        }

        public void b(kb kb1, PendingIntent pendingintent)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (kb1 == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            kb1.writeToParcel(parcel, 0);
_L3:
            if (pendingintent == null)
            {
                break MISSING_BLOCK_LABEL_98;
            }
            parcel.writeInt(1);
            pendingintent.writeToParcel(parcel, 0);
_L4:
            ko.transact(49, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
            parcel.writeInt(0);
              goto _L4
        }

        public void b(String s, kb kb1, jz jz1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            parcel.writeString(s);
            if (kb1 == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            kb1.writeToParcel(parcel, 0);
_L3:
            if (jz1 == null)
            {
                break MISSING_BLOCK_LABEL_116;
            }
            IBinder ibinder = jz1.asBinder();
_L4:
            parcel.writeStrongBinder(ibinder);
            ko.transact(42, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
            ibinder = null;
              goto _L4
        }

        public Location bo(String s)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            parcel.writeString(s);
            ko.transact(21, parcel, parcel1, 0);
            parcel1.readException();
            if (parcel1.readInt() == 0) goto _L2; else goto _L1
_L1:
            Location location = (Location)Location.CREATOR.createFromParcel(parcel1);
_L4:
            parcel1.recycle();
            parcel.recycle();
            return location;
_L2:
            location = null;
            if (true) goto _L4; else goto _L3
_L3:
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public b bp(String s)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            parcel.writeString(s);
            ko.transact(34, parcel, parcel1, 0);
            parcel1.readException();
            if (parcel1.readInt() == 0) goto _L2; else goto _L1
_L1:
            b b2 = b.CREATOR.bs(parcel1);
            b b1 = b2;
_L4:
            parcel1.recycle();
            parcel.recycle();
            return b1;
_L2:
            b1 = null;
            if (true) goto _L4; else goto _L3
_L3:
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public Location iR()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            ko.transact(7, parcel, parcel1, 0);
            parcel1.readException();
            if (parcel1.readInt() == 0) goto _L2; else goto _L1
_L1:
            Location location = (Location)Location.CREATOR.createFromParcel(parcel1);
_L4:
            parcel1.recycle();
            parcel.recycle();
            return location;
_L2:
            location = null;
            if (true) goto _L4; else goto _L3
_L3:
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public IBinder iS()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            IBinder ibinder;
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            ko.transact(51, parcel, parcel1, 0);
            parcel1.readException();
            ibinder = parcel1.readStrongBinder();
            parcel1.recycle();
            parcel.recycle();
            return ibinder;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void removeActivityUpdates(PendingIntent pendingintent)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (pendingintent == null)
            {
                break MISSING_BLOCK_LABEL_57;
            }
            parcel.writeInt(1);
            pendingintent.writeToParcel(parcel, 0);
_L1:
            ko.transact(6, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            parcel.writeInt(0);
              goto _L1
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void setMockLocation(Location location)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            if (location == null)
            {
                break MISSING_BLOCK_LABEL_57;
            }
            parcel.writeInt(1);
            location.writeToParcel(parcel, 0);
_L1:
            ko.transact(13, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            parcel.writeInt(0);
              goto _L1
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void setMockMode(boolean flag)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            int i;
            i = 0;
            if (flag)
            {
                i = 1;
            }
            parcel.writeInt(i);
            ko.transact(12, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        a(IBinder ibinder)
        {
            ko = ibinder;
        }
    }


    public static jf as(IBinder ibinder)
    {
        if (ibinder == null)
        {
            return null;
        }
        android.os.IInterface iinterface = ibinder.queryLocalInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        if (iinterface != null && (iinterface instanceof jf))
        {
            return (jf)iinterface;
        } else
        {
            return new a(ibinder);
        }
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int j)
        throws RemoteException
    {
        switch (i)
        {
        default:
            return super.onTransact(i, parcel, parcel1, j);

        case 1598968902: 
            parcel1.writeString("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            return true;

        case 1: // '\001'
            parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            java.util.ArrayList arraylist2 = parcel.createTypedArrayList(ji.CREATOR);
            PendingIntent pendingintent9;
            if (parcel.readInt() != 0)
            {
                pendingintent9 = (PendingIntent)PendingIntent.CREATOR.createFromParcel(parcel);
            } else
            {
                pendingintent9 = null;
            }
            a(arraylist2, pendingintent9, ar(parcel.readStrongBinder()), parcel.readString());
            parcel1.writeNoException();
            return true;

        case 2: // '\002'
            parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            PendingIntent pendingintent8;
            if (parcel.readInt() != 0)
            {
                pendingintent8 = (PendingIntent)PendingIntent.CREATOR.createFromParcel(parcel);
            } else
            {
                pendingintent8 = null;
            }
            a(pendingintent8, ar(parcel.readStrongBinder()), parcel.readString());
            parcel1.writeNoException();
            return true;

        case 3: // '\003'
            parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            a(parcel.createStringArray(), ar(parcel.readStrongBinder()), parcel.readString());
            parcel1.writeNoException();
            return true;

        case 4: // '\004'
            parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            a(ar(parcel.readStrongBinder()), parcel.readString());
            parcel1.writeNoException();
            return true;

        case 5: // '\005'
            parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            long l3 = parcel.readLong();
            boolean flag1;
            PendingIntent pendingintent7;
            if (parcel.readInt() != 0)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            if (parcel.readInt() != 0)
            {
                pendingintent7 = (PendingIntent)PendingIntent.CREATOR.createFromParcel(parcel);
            } else
            {
                pendingintent7 = null;
            }
            a(l3, flag1, pendingintent7);
            parcel1.writeNoException();
            return true;

        case 6: // '\006'
            parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            PendingIntent pendingintent6;
            if (parcel.readInt() != 0)
            {
                pendingintent6 = (PendingIntent)PendingIntent.CREATOR.createFromParcel(parcel);
            } else
            {
                pendingintent6 = null;
            }
            removeActivityUpdates(pendingintent6);
            parcel1.writeNoException();
            return true;

        case 7: // '\007'
            parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            Location location3 = iR();
            parcel1.writeNoException();
            if (location3 != null)
            {
                parcel1.writeInt(1);
                location3.writeToParcel(parcel1, 1);
                return true;
            } else
            {
                parcel1.writeInt(0);
                return true;
            }

        case 8: // '\b'
            parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            int j3 = parcel.readInt();
            LocationRequest locationrequest2 = null;
            if (j3 != 0)
            {
                locationrequest2 = LocationRequest.CREATOR.createFromParcel(parcel);
            }
            a(locationrequest2, com.google.android.gms.location.q(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 9: // '\t'
            parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            LocationRequest locationrequest1;
            PendingIntent pendingintent5;
            if (parcel.readInt() != 0)
            {
                locationrequest1 = LocationRequest.CREATOR.createFromParcel(parcel);
            } else
            {
                locationrequest1 = null;
            }
            if (parcel.readInt() != 0)
            {
                pendingintent5 = (PendingIntent)PendingIntent.CREATOR.createFromParcel(parcel);
            } else
            {
                pendingintent5 = null;
            }
            a(locationrequest1, pendingintent5);
            parcel1.writeNoException();
            return true;

        case 10: // '\n'
            parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            a(com.google.android.gms.location.q(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 11: // '\013'
            parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            PendingIntent pendingintent4;
            if (parcel.readInt() != 0)
            {
                pendingintent4 = (PendingIntent)PendingIntent.CREATOR.createFromParcel(parcel);
            } else
            {
                pendingintent4 = null;
            }
            a(pendingintent4);
            parcel1.writeNoException();
            return true;

        case 12: // '\f'
            parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            int i3 = parcel.readInt();
            boolean flag = false;
            if (i3 != 0)
            {
                flag = true;
            }
            setMockMode(flag);
            parcel1.writeNoException();
            return true;

        case 13: // '\r'
            parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            Location location2;
            if (parcel.readInt() != 0)
            {
                location2 = (Location)Location.CREATOR.createFromParcel(parcel);
            } else
            {
                location2 = null;
            }
            setMockLocation(location2);
            parcel1.writeNoException();
            return true;

        case 14: // '\016'
            parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            LatLngBounds latlngbounds2;
            int l2;
            jn jn5;
            kb kb14;
            if (parcel.readInt() != 0)
            {
                latlngbounds2 = LatLngBounds.CREATOR.createFromParcel(parcel);
            } else
            {
                latlngbounds2 = null;
            }
            l2 = parcel.readInt();
            if (parcel.readInt() != 0)
            {
                jn5 = jn.CREATOR.bv(parcel);
            } else
            {
                jn5 = null;
            }
            if (parcel.readInt() != 0)
            {
                kb14 = kb.CREATOR.bB(parcel);
            } else
            {
                kb14 = null;
            }
            a(latlngbounds2, l2, jn5, kb14, au(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 47: // '/'
            parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            LatLngBounds latlngbounds1;
            int j2;
            String s4;
            jn jn4;
            int k2;
            kb kb13;
            if (parcel.readInt() != 0)
            {
                latlngbounds1 = LatLngBounds.CREATOR.createFromParcel(parcel);
            } else
            {
                latlngbounds1 = null;
            }
            j2 = parcel.readInt();
            s4 = parcel.readString();
            if (parcel.readInt() != 0)
            {
                jn4 = jn.CREATOR.bv(parcel);
            } else
            {
                jn4 = null;
            }
            k2 = parcel.readInt();
            kb13 = null;
            if (k2 != 0)
            {
                kb13 = kb.CREATOR.bB(parcel);
            }
            a(latlngbounds1, j2, s4, jn4, kb13, au(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 15: // '\017'
            parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            String s3 = parcel.readString();
            int i2 = parcel.readInt();
            kb kb12 = null;
            if (i2 != 0)
            {
                kb12 = kb.CREATOR.bB(parcel);
            }
            a(s3, kb12, au(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 16: // '\020'
            parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            LatLng latlng;
            jn jn3;
            int l1;
            kb kb11;
            if (parcel.readInt() != 0)
            {
                latlng = LatLng.CREATOR.createFromParcel(parcel);
            } else
            {
                latlng = null;
            }
            if (parcel.readInt() != 0)
            {
                jn3 = jn.CREATOR.bv(parcel);
            } else
            {
                jn3 = null;
            }
            l1 = parcel.readInt();
            kb11 = null;
            if (l1 != 0)
            {
                kb11 = kb.CREATOR.bB(parcel);
            }
            a(latlng, jn3, kb11, au(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 17: // '\021'
            parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            jn jn2;
            int k1;
            kb kb10;
            if (parcel.readInt() != 0)
            {
                jn2 = jn.CREATOR.bv(parcel);
            } else
            {
                jn2 = null;
            }
            k1 = parcel.readInt();
            kb10 = null;
            if (k1 != 0)
            {
                kb10 = kb.CREATOR.bB(parcel);
            }
            a(jn2, kb10, au(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 42: // '*'
            parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            String s2 = parcel.readString();
            int j1 = parcel.readInt();
            kb kb9 = null;
            if (j1 != 0)
            {
                kb9 = kb.CREATOR.bB(parcel);
            }
            b(s2, kb9, au(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 50: // '2'
            parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            String s1 = parcel.readString();
            java.util.ArrayList arraylist = parcel.createStringArrayList();
            java.util.ArrayList arraylist1 = parcel.createTypedArrayList(jx.CREATOR);
            kb kb8;
            if (parcel.readInt() != 0)
            {
                kb8 = kb.CREATOR.bB(parcel);
            } else
            {
                kb8 = null;
            }
            a(s1, arraylist, arraylist1, kb8, au(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 18: // '\022'
            parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            jr jr1;
            kb kb7;
            PendingIntent pendingintent3;
            if (parcel.readInt() != 0)
            {
                jr1 = jr.CREATOR.bx(parcel);
            } else
            {
                jr1 = null;
            }
            if (parcel.readInt() != 0)
            {
                kb7 = kb.CREATOR.bB(parcel);
            } else
            {
                kb7 = null;
            }
            if (parcel.readInt() != 0)
            {
                pendingintent3 = (PendingIntent)PendingIntent.CREATOR.createFromParcel(parcel);
            } else
            {
                pendingintent3 = null;
            }
            a(jr1, kb7, pendingintent3);
            parcel1.writeNoException();
            return true;

        case 19: // '\023'
            parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            kb kb6;
            PendingIntent pendingintent2;
            if (parcel.readInt() != 0)
            {
                kb6 = kb.CREATOR.bB(parcel);
            } else
            {
                kb6 = null;
            }
            if (parcel.readInt() != 0)
            {
                pendingintent2 = (PendingIntent)PendingIntent.CREATOR.createFromParcel(parcel);
            } else
            {
                pendingintent2 = null;
            }
            a(kb6, pendingintent2);
            parcel1.writeNoException();
            return true;

        case 48: // '0'
            parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            jl jl1;
            kb kb5;
            PendingIntent pendingintent1;
            if (parcel.readInt() != 0)
            {
                jl1 = jl.CREATOR.bu(parcel);
            } else
            {
                jl1 = null;
            }
            if (parcel.readInt() != 0)
            {
                kb5 = kb.CREATOR.bB(parcel);
            } else
            {
                kb5 = null;
            }
            if (parcel.readInt() != 0)
            {
                pendingintent1 = (PendingIntent)PendingIntent.CREATOR.createFromParcel(parcel);
            } else
            {
                pendingintent1 = null;
            }
            a(jl1, kb5, pendingintent1);
            parcel1.writeNoException();
            return true;

        case 49: // '1'
            parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            kb kb4;
            PendingIntent pendingintent;
            if (parcel.readInt() != 0)
            {
                kb4 = kb.CREATOR.bB(parcel);
            } else
            {
                kb4 = null;
            }
            if (parcel.readInt() != 0)
            {
                pendingintent = (PendingIntent)PendingIntent.CREATOR.createFromParcel(parcel);
            } else
            {
                pendingintent = null;
            }
            b(kb4, pendingintent);
            parcel1.writeNoException();
            return true;

        case 45: // '-'
            parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            String s = parcel.readString();
            LatLngBounds latlngbounds;
            jn jn1;
            kb kb3;
            if (parcel.readInt() != 0)
            {
                latlngbounds = LatLngBounds.CREATOR.createFromParcel(parcel);
            } else
            {
                latlngbounds = null;
            }
            if (parcel.readInt() != 0)
            {
                jn1 = jn.CREATOR.bv(parcel);
            } else
            {
                jn1 = null;
            }
            if (parcel.readInt() != 0)
            {
                kb3 = kb.CREATOR.bB(parcel);
            } else
            {
                kb3 = null;
            }
            a(s, latlngbounds, jn1, kb3, au(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 46: // '.'
            parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            jv jv1;
            int i1;
            kb kb2;
            if (parcel.readInt() != 0)
            {
                jv1 = (jv)jv.CREATOR.createFromParcel(parcel);
            } else
            {
                jv1 = null;
            }
            i1 = parcel.readInt();
            kb2 = null;
            if (i1 != 0)
            {
                kb2 = kb.CREATOR.bB(parcel);
            }
            a(jv1, kb2, au(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 20: // '\024'
            parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            int l = parcel.readInt();
            LocationRequest locationrequest = null;
            if (l != 0)
            {
                locationrequest = LocationRequest.CREATOR.createFromParcel(parcel);
            }
            a(locationrequest, com.google.android.gms.location.q(parcel.readStrongBinder()), parcel.readString());
            parcel1.writeNoException();
            return true;

        case 21: // '\025'
            parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            Location location1 = bo(parcel.readString());
            parcel1.writeNoException();
            if (location1 != null)
            {
                parcel1.writeInt(1);
                location1.writeToParcel(parcel1, 1);
                return true;
            } else
            {
                parcel1.writeInt(0);
                return true;
            }

        case 25: // '\031'
            parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            jp jp1;
            int k;
            kb kb1;
            if (parcel.readInt() != 0)
            {
                jp1 = jp.CREATOR.bw(parcel);
            } else
            {
                jp1 = null;
            }
            k = parcel.readInt();
            kb1 = null;
            if (k != 0)
            {
                kb1 = kb.CREATOR.bB(parcel);
            }
            a(jp1, kb1);
            return true;

        case 26: // '\032'
            parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            Location location;
            if (parcel.readInt() != 0)
            {
                location = (Location)Location.CREATOR.createFromParcel(parcel);
            } else
            {
                location = null;
            }
            a(location, parcel.readInt());
            parcel1.writeNoException();
            return true;

        case 34: // '"'
            parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            b b1 = bp(parcel.readString());
            parcel1.writeNoException();
            if (b1 != null)
            {
                parcel1.writeInt(1);
                b1.writeToParcel(parcel1, 1);
                return true;
            } else
            {
                parcel1.writeInt(0);
                return true;
            }

        case 51: // '3'
            parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
            IBinder ibinder = iS();
            parcel1.writeNoException();
            parcel1.writeStrongBinder(ibinder);
            return true;
        }
    }
}
