// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

// Referenced classes of package com.google.android.gms.internal:
//            hi

public interface hj
    extends IInterface
{
    public static abstract class a extends Binder
        implements hj
    {

        public static hj L(IBinder ibinder)
        {
            if (ibinder == null)
            {
                return null;
            }
            IInterface iinterface = ibinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (iinterface != null && (iinterface instanceof hj))
            {
                return (hj)iinterface;
            } else
            {
                return new a(ibinder);
            }
        }

        public boolean onTransact(int i1, Parcel parcel, Parcel parcel1, int j1)
            throws RemoteException
        {
            switch (i1)
            {
            default:
                return super.onTransact(i1, parcel, parcel1, j1);

            case 1598968902: 
                parcel1.writeString("com.google.android.gms.common.internal.IGmsServiceBroker");
                return true;

            case 1: // '\001'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                hi hi20 = com.google.android.gms.internal.hi.a.K(parcel.readStrongBinder());
                int k10 = parcel.readInt();
                String s25 = parcel.readString();
                String s26 = parcel.readString();
                String as3[] = parcel.createStringArray();
                String s27 = parcel.readString();
                Bundle bundle20;
                if (parcel.readInt() != 0)
                {
                    bundle20 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                } else
                {
                    bundle20 = null;
                }
                a(hi20, k10, s25, s26, as3, s27, bundle20);
                parcel1.writeNoException();
                return true;

            case 2: // '\002'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                hi hi19 = com.google.android.gms.internal.hi.a.K(parcel.readStrongBinder());
                int i10 = parcel.readInt();
                String s24 = parcel.readString();
                int j10 = parcel.readInt();
                Bundle bundle19 = null;
                if (j10 != 0)
                {
                    bundle19 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                }
                a(hi19, i10, s24, bundle19);
                parcel1.writeNoException();
                return true;

            case 3: // '\003'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                a(com.google.android.gms.internal.hi.a.K(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                parcel1.writeNoException();
                return true;

            case 4: // '\004'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                a(com.google.android.gms.internal.hi.a.K(parcel.readStrongBinder()), parcel.readInt());
                parcel1.writeNoException();
                return true;

            case 5: // '\005'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                hi hi18 = com.google.android.gms.internal.hi.a.K(parcel.readStrongBinder());
                int k9 = parcel.readInt();
                String s23 = parcel.readString();
                int l9 = parcel.readInt();
                Bundle bundle18 = null;
                if (l9 != 0)
                {
                    bundle18 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                }
                b(hi18, k9, s23, bundle18);
                parcel1.writeNoException();
                return true;

            case 6: // '\006'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                hi hi17 = com.google.android.gms.internal.hi.a.K(parcel.readStrongBinder());
                int i9 = parcel.readInt();
                String s22 = parcel.readString();
                int j9 = parcel.readInt();
                Bundle bundle17 = null;
                if (j9 != 0)
                {
                    bundle17 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                }
                c(hi17, i9, s22, bundle17);
                parcel1.writeNoException();
                return true;

            case 7: // '\007'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                hi hi16 = com.google.android.gms.internal.hi.a.K(parcel.readStrongBinder());
                int k8 = parcel.readInt();
                String s21 = parcel.readString();
                int l8 = parcel.readInt();
                Bundle bundle16 = null;
                if (l8 != 0)
                {
                    bundle16 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                }
                d(hi16, k8, s21, bundle16);
                parcel1.writeNoException();
                return true;

            case 8: // '\b'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                hi hi15 = com.google.android.gms.internal.hi.a.K(parcel.readStrongBinder());
                int i8 = parcel.readInt();
                String s20 = parcel.readString();
                int j8 = parcel.readInt();
                Bundle bundle15 = null;
                if (j8 != 0)
                {
                    bundle15 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                }
                e(hi15, i8, s20, bundle15);
                parcel1.writeNoException();
                return true;

            case 9: // '\t'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                hi hi14 = com.google.android.gms.internal.hi.a.K(parcel.readStrongBinder());
                int l7 = parcel.readInt();
                String s16 = parcel.readString();
                String s17 = parcel.readString();
                String as2[] = parcel.createStringArray();
                String s18 = parcel.readString();
                IBinder ibinder1 = parcel.readStrongBinder();
                String s19 = parcel.readString();
                Bundle bundle14;
                if (parcel.readInt() != 0)
                {
                    bundle14 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                } else
                {
                    bundle14 = null;
                }
                a(hi14, l7, s16, s17, as2, s18, ibinder1, s19, bundle14);
                parcel1.writeNoException();
                return true;

            case 10: // '\n'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                a(com.google.android.gms.internal.hi.a.K(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.createStringArray());
                parcel1.writeNoException();
                return true;

            case 11: // '\013'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                hi hi13 = com.google.android.gms.internal.hi.a.K(parcel.readStrongBinder());
                int j7 = parcel.readInt();
                String s15 = parcel.readString();
                int k7 = parcel.readInt();
                Bundle bundle13 = null;
                if (k7 != 0)
                {
                    bundle13 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                }
                f(hi13, j7, s15, bundle13);
                parcel1.writeNoException();
                return true;

            case 12: // '\f'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                hi hi12 = com.google.android.gms.internal.hi.a.K(parcel.readStrongBinder());
                int l6 = parcel.readInt();
                String s14 = parcel.readString();
                int i7 = parcel.readInt();
                Bundle bundle12 = null;
                if (i7 != 0)
                {
                    bundle12 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                }
                g(hi12, l6, s14, bundle12);
                parcel1.writeNoException();
                return true;

            case 13: // '\r'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                hi hi11 = com.google.android.gms.internal.hi.a.K(parcel.readStrongBinder());
                int j6 = parcel.readInt();
                String s13 = parcel.readString();
                int k6 = parcel.readInt();
                Bundle bundle11 = null;
                if (k6 != 0)
                {
                    bundle11 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                }
                h(hi11, j6, s13, bundle11);
                parcel1.writeNoException();
                return true;

            case 14: // '\016'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                hi hi10 = com.google.android.gms.internal.hi.a.K(parcel.readStrongBinder());
                int l5 = parcel.readInt();
                String s12 = parcel.readString();
                int i6 = parcel.readInt();
                Bundle bundle10 = null;
                if (i6 != 0)
                {
                    bundle10 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                }
                i(hi10, l5, s12, bundle10);
                parcel1.writeNoException();
                return true;

            case 15: // '\017'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                hi hi9 = com.google.android.gms.internal.hi.a.K(parcel.readStrongBinder());
                int j5 = parcel.readInt();
                String s11 = parcel.readString();
                int k5 = parcel.readInt();
                Bundle bundle9 = null;
                if (k5 != 0)
                {
                    bundle9 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                }
                j(hi9, j5, s11, bundle9);
                parcel1.writeNoException();
                return true;

            case 16: // '\020'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                hi hi8 = com.google.android.gms.internal.hi.a.K(parcel.readStrongBinder());
                int l4 = parcel.readInt();
                String s10 = parcel.readString();
                int i5 = parcel.readInt();
                Bundle bundle8 = null;
                if (i5 != 0)
                {
                    bundle8 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                }
                k(hi8, l4, s10, bundle8);
                parcel1.writeNoException();
                return true;

            case 17: // '\021'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                hi hi7 = com.google.android.gms.internal.hi.a.K(parcel.readStrongBinder());
                int j4 = parcel.readInt();
                String s9 = parcel.readString();
                int k4 = parcel.readInt();
                Bundle bundle7 = null;
                if (k4 != 0)
                {
                    bundle7 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                }
                l(hi7, j4, s9, bundle7);
                parcel1.writeNoException();
                return true;

            case 18: // '\022'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                hi hi6 = com.google.android.gms.internal.hi.a.K(parcel.readStrongBinder());
                int l3 = parcel.readInt();
                String s8 = parcel.readString();
                int i4 = parcel.readInt();
                Bundle bundle6 = null;
                if (i4 != 0)
                {
                    bundle6 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                }
                m(hi6, l3, s8, bundle6);
                parcel1.writeNoException();
                return true;

            case 19: // '\023'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                hi hi5 = com.google.android.gms.internal.hi.a.K(parcel.readStrongBinder());
                int k3 = parcel.readInt();
                String s7 = parcel.readString();
                IBinder ibinder = parcel.readStrongBinder();
                Bundle bundle5;
                if (parcel.readInt() != 0)
                {
                    bundle5 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                } else
                {
                    bundle5 = null;
                }
                a(hi5, k3, s7, ibinder, bundle5);
                parcel1.writeNoException();
                return true;

            case 20: // '\024'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                hi hi4 = com.google.android.gms.internal.hi.a.K(parcel.readStrongBinder());
                int j3 = parcel.readInt();
                String s5 = parcel.readString();
                String as1[] = parcel.createStringArray();
                String s6 = parcel.readString();
                Bundle bundle4;
                if (parcel.readInt() != 0)
                {
                    bundle4 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                } else
                {
                    bundle4 = null;
                }
                a(hi4, j3, s5, as1, s6, bundle4);
                parcel1.writeNoException();
                return true;

            case 21: // '\025'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                b(com.google.android.gms.internal.hi.a.K(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                parcel1.writeNoException();
                return true;

            case 22: // '\026'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                c(com.google.android.gms.internal.hi.a.K(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                parcel1.writeNoException();
                return true;

            case 23: // '\027'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                hi hi3 = com.google.android.gms.internal.hi.a.K(parcel.readStrongBinder());
                int l2 = parcel.readInt();
                String s4 = parcel.readString();
                int i3 = parcel.readInt();
                Bundle bundle3 = null;
                if (i3 != 0)
                {
                    bundle3 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                }
                n(hi3, l2, s4, bundle3);
                parcel1.writeNoException();
                return true;

            case 24: // '\030'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                d(com.google.android.gms.internal.hi.a.K(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                parcel1.writeNoException();
                return true;

            case 25: // '\031'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                hi hi2 = com.google.android.gms.internal.hi.a.K(parcel.readStrongBinder());
                int j2 = parcel.readInt();
                String s3 = parcel.readString();
                int k2 = parcel.readInt();
                Bundle bundle2 = null;
                if (k2 != 0)
                {
                    bundle2 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                }
                o(hi2, j2, s3, bundle2);
                parcel1.writeNoException();
                return true;

            case 26: // '\032'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                e(com.google.android.gms.internal.hi.a.K(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                parcel1.writeNoException();
                return true;

            case 27: // '\033'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                hi hi1 = com.google.android.gms.internal.hi.a.K(parcel.readStrongBinder());
                int l1 = parcel.readInt();
                String s2 = parcel.readString();
                int i2 = parcel.readInt();
                Bundle bundle1 = null;
                if (i2 != 0)
                {
                    bundle1 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                }
                p(hi1, l1, s2, bundle1);
                parcel1.writeNoException();
                return true;

            case 28: // '\034'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                b(com.google.android.gms.internal.hi.a.K(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.createStringArray());
                parcel1.writeNoException();
                return true;

            case 30: // '\036'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                hi hi = com.google.android.gms.internal.hi.a.K(parcel.readStrongBinder());
                int k1 = parcel.readInt();
                String s = parcel.readString();
                String s1 = parcel.readString();
                String as[] = parcel.createStringArray();
                Bundle bundle;
                if (parcel.readInt() != 0)
                {
                    bundle = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                } else
                {
                    bundle = null;
                }
                a(hi, k1, s, s1, as, bundle);
                parcel1.writeNoException();
                return true;

            case 31: // '\037'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                f(com.google.android.gms.internal.hi.a.K(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                parcel1.writeNoException();
                return true;

            case 32: // ' '
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                g(com.google.android.gms.internal.hi.a.K(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                parcel1.writeNoException();
                return true;

            case 33: // '!'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                a(com.google.android.gms.internal.hi.a.K(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.createStringArray());
                parcel1.writeNoException();
                return true;

            case 34: // '"'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                a(com.google.android.gms.internal.hi.a.K(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readString());
                parcel1.writeNoException();
                return true;

            case 35: // '#'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                h(com.google.android.gms.internal.hi.a.K(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                parcel1.writeNoException();
                return true;

            case 36: // '$'
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                i(com.google.android.gms.internal.hi.a.K(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                parcel1.writeNoException();
                return true;
            }
        }
    }

    private static class a.a
        implements hj
    {

        private IBinder ko;

        public void a(hi hi1, int i1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (hi1 == null)
            {
                break MISSING_BLOCK_LABEL_68;
            }
            IBinder ibinder = hi1.asBinder();
_L1:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
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

        public void a(hi hi1, int i1, String s)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (hi1 == null)
            {
                break MISSING_BLOCK_LABEL_80;
            }
            IBinder ibinder = hi1.asBinder();
_L1:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
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

        public void a(hi hi1, int i1, String s, Bundle bundle)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (hi1 == null) goto _L2; else goto _L1
_L1:
            IBinder ibinder = hi1.asBinder();
_L5:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            ko.transact(2, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            ibinder = null;
              goto _L5
_L4:
            parcel.writeInt(0);
              goto _L6
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
              goto _L5
        }

        public void a(hi hi1, int i1, String s, IBinder ibinder, Bundle bundle)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (hi1 == null) goto _L2; else goto _L1
_L1:
            IBinder ibinder1 = hi1.asBinder();
_L5:
            parcel.writeStrongBinder(ibinder1);
            parcel.writeInt(i1);
            parcel.writeString(s);
            parcel.writeStrongBinder(ibinder);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            ko.transact(19, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            ibinder1 = null;
              goto _L5
_L4:
            parcel.writeInt(0);
              goto _L6
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
              goto _L5
        }

        public void a(hi hi1, int i1, String s, String s1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (hi1 == null)
            {
                break MISSING_BLOCK_LABEL_88;
            }
            IBinder ibinder = hi1.asBinder();
_L1:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s);
            parcel.writeString(s1);
            ko.transact(34, parcel, parcel1, 0);
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

        public void a(hi hi1, int i1, String s, String s1, String s2, String as[])
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (hi1 == null)
            {
                break MISSING_BLOCK_LABEL_102;
            }
            IBinder ibinder = hi1.asBinder();
_L1:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s);
            parcel.writeString(s1);
            parcel.writeString(s2);
            parcel.writeStringArray(as);
            ko.transact(33, parcel, parcel1, 0);
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

        public void a(hi hi1, int i1, String s, String s1, String as[])
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (hi1 == null)
            {
                break MISSING_BLOCK_LABEL_95;
            }
            IBinder ibinder = hi1.asBinder();
_L1:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s);
            parcel.writeString(s1);
            parcel.writeStringArray(as);
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

        public void a(hi hi1, int i1, String s, String s1, String as[], Bundle bundle)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (hi1 == null) goto _L2; else goto _L1
_L1:
            IBinder ibinder = hi1.asBinder();
_L5:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s);
            parcel.writeString(s1);
            parcel.writeStringArray(as);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            ko.transact(30, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            ibinder = null;
              goto _L5
_L4:
            parcel.writeInt(0);
              goto _L6
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
              goto _L5
        }

        public void a(hi hi1, int i1, String s, String s1, String as[], String s2, Bundle bundle)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (hi1 == null) goto _L2; else goto _L1
_L1:
            IBinder ibinder = hi1.asBinder();
_L5:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s);
            parcel.writeString(s1);
            parcel.writeStringArray(as);
            parcel.writeString(s2);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            ko.transact(1, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            ibinder = null;
              goto _L5
_L4:
            parcel.writeInt(0);
              goto _L6
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
              goto _L5
        }

        public void a(hi hi1, int i1, String s, String s1, String as[], String s2, IBinder ibinder, 
                String s3, Bundle bundle)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (hi1 == null) goto _L2; else goto _L1
_L1:
            IBinder ibinder1 = hi1.asBinder();
_L5:
            parcel.writeStrongBinder(ibinder1);
            parcel.writeInt(i1);
            parcel.writeString(s);
            parcel.writeString(s1);
            parcel.writeStringArray(as);
            parcel.writeString(s2);
            parcel.writeStrongBinder(ibinder);
            parcel.writeString(s3);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            ko.transact(9, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            ibinder1 = null;
              goto _L5
_L4:
            parcel.writeInt(0);
              goto _L6
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
              goto _L5
        }

        public void a(hi hi1, int i1, String s, String as[], String s1, Bundle bundle)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (hi1 == null) goto _L2; else goto _L1
_L1:
            IBinder ibinder = hi1.asBinder();
_L5:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s);
            parcel.writeStringArray(as);
            parcel.writeString(s1);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            ko.transact(20, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            ibinder = null;
              goto _L5
_L4:
            parcel.writeInt(0);
              goto _L6
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
              goto _L5
        }

        public IBinder asBinder()
        {
            return ko;
        }

        public void b(hi hi1, int i1, String s)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (hi1 == null)
            {
                break MISSING_BLOCK_LABEL_81;
            }
            IBinder ibinder = hi1.asBinder();
_L1:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s);
            ko.transact(21, parcel, parcel1, 0);
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

        public void b(hi hi1, int i1, String s, Bundle bundle)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (hi1 == null) goto _L2; else goto _L1
_L1:
            IBinder ibinder = hi1.asBinder();
_L5:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            ko.transact(5, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            ibinder = null;
              goto _L5
_L4:
            parcel.writeInt(0);
              goto _L6
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
              goto _L5
        }

        public void b(hi hi1, int i1, String s, String s1, String as[])
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (hi1 == null)
            {
                break MISSING_BLOCK_LABEL_95;
            }
            IBinder ibinder = hi1.asBinder();
_L1:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s);
            parcel.writeString(s1);
            parcel.writeStringArray(as);
            ko.transact(28, parcel, parcel1, 0);
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

        public void c(hi hi1, int i1, String s)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (hi1 == null)
            {
                break MISSING_BLOCK_LABEL_81;
            }
            IBinder ibinder = hi1.asBinder();
_L1:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s);
            ko.transact(22, parcel, parcel1, 0);
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

        public void c(hi hi1, int i1, String s, Bundle bundle)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (hi1 == null) goto _L2; else goto _L1
_L1:
            IBinder ibinder = hi1.asBinder();
_L5:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            ko.transact(6, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            ibinder = null;
              goto _L5
_L4:
            parcel.writeInt(0);
              goto _L6
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
              goto _L5
        }

        public void d(hi hi1, int i1, String s)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (hi1 == null)
            {
                break MISSING_BLOCK_LABEL_81;
            }
            IBinder ibinder = hi1.asBinder();
_L1:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s);
            ko.transact(24, parcel, parcel1, 0);
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

        public void d(hi hi1, int i1, String s, Bundle bundle)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (hi1 == null) goto _L2; else goto _L1
_L1:
            IBinder ibinder = hi1.asBinder();
_L5:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            ko.transact(7, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            ibinder = null;
              goto _L5
_L4:
            parcel.writeInt(0);
              goto _L6
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
              goto _L5
        }

        public void e(hi hi1, int i1, String s)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (hi1 == null)
            {
                break MISSING_BLOCK_LABEL_81;
            }
            IBinder ibinder = hi1.asBinder();
_L1:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s);
            ko.transact(26, parcel, parcel1, 0);
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

        public void e(hi hi1, int i1, String s, Bundle bundle)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (hi1 == null) goto _L2; else goto _L1
_L1:
            IBinder ibinder = hi1.asBinder();
_L5:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            ko.transact(8, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            ibinder = null;
              goto _L5
_L4:
            parcel.writeInt(0);
              goto _L6
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
              goto _L5
        }

        public void f(hi hi1, int i1, String s)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (hi1 == null)
            {
                break MISSING_BLOCK_LABEL_81;
            }
            IBinder ibinder = hi1.asBinder();
_L1:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s);
            ko.transact(31, parcel, parcel1, 0);
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

        public void f(hi hi1, int i1, String s, Bundle bundle)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (hi1 == null) goto _L2; else goto _L1
_L1:
            IBinder ibinder = hi1.asBinder();
_L5:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            ko.transact(11, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            ibinder = null;
              goto _L5
_L4:
            parcel.writeInt(0);
              goto _L6
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
              goto _L5
        }

        public void g(hi hi1, int i1, String s)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (hi1 == null)
            {
                break MISSING_BLOCK_LABEL_81;
            }
            IBinder ibinder = hi1.asBinder();
_L1:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s);
            ko.transact(32, parcel, parcel1, 0);
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

        public void g(hi hi1, int i1, String s, Bundle bundle)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (hi1 == null) goto _L2; else goto _L1
_L1:
            IBinder ibinder = hi1.asBinder();
_L5:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            ko.transact(12, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            ibinder = null;
              goto _L5
_L4:
            parcel.writeInt(0);
              goto _L6
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
              goto _L5
        }

        public void h(hi hi1, int i1, String s)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (hi1 == null)
            {
                break MISSING_BLOCK_LABEL_81;
            }
            IBinder ibinder = hi1.asBinder();
_L1:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s);
            ko.transact(35, parcel, parcel1, 0);
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

        public void h(hi hi1, int i1, String s, Bundle bundle)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (hi1 == null) goto _L2; else goto _L1
_L1:
            IBinder ibinder = hi1.asBinder();
_L5:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            ko.transact(13, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            ibinder = null;
              goto _L5
_L4:
            parcel.writeInt(0);
              goto _L6
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
              goto _L5
        }

        public void i(hi hi1, int i1, String s)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (hi1 == null)
            {
                break MISSING_BLOCK_LABEL_81;
            }
            IBinder ibinder = hi1.asBinder();
_L1:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s);
            ko.transact(36, parcel, parcel1, 0);
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

        public void i(hi hi1, int i1, String s, Bundle bundle)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (hi1 == null) goto _L2; else goto _L1
_L1:
            IBinder ibinder = hi1.asBinder();
_L5:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            ko.transact(14, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            ibinder = null;
              goto _L5
_L4:
            parcel.writeInt(0);
              goto _L6
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
              goto _L5
        }

        public void j(hi hi1, int i1, String s, Bundle bundle)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (hi1 == null) goto _L2; else goto _L1
_L1:
            IBinder ibinder = hi1.asBinder();
_L5:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            ko.transact(15, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            ibinder = null;
              goto _L5
_L4:
            parcel.writeInt(0);
              goto _L6
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
              goto _L5
        }

        public void k(hi hi1, int i1, String s, Bundle bundle)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (hi1 == null) goto _L2; else goto _L1
_L1:
            IBinder ibinder = hi1.asBinder();
_L5:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            ko.transact(16, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            ibinder = null;
              goto _L5
_L4:
            parcel.writeInt(0);
              goto _L6
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
              goto _L5
        }

        public void l(hi hi1, int i1, String s, Bundle bundle)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (hi1 == null) goto _L2; else goto _L1
_L1:
            IBinder ibinder = hi1.asBinder();
_L5:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            ko.transact(17, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            ibinder = null;
              goto _L5
_L4:
            parcel.writeInt(0);
              goto _L6
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
              goto _L5
        }

        public void m(hi hi1, int i1, String s, Bundle bundle)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (hi1 == null) goto _L2; else goto _L1
_L1:
            IBinder ibinder = hi1.asBinder();
_L5:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            ko.transact(18, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            ibinder = null;
              goto _L5
_L4:
            parcel.writeInt(0);
              goto _L6
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
              goto _L5
        }

        public void n(hi hi1, int i1, String s, Bundle bundle)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (hi1 == null) goto _L2; else goto _L1
_L1:
            IBinder ibinder = hi1.asBinder();
_L5:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            ko.transact(23, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            ibinder = null;
              goto _L5
_L4:
            parcel.writeInt(0);
              goto _L6
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
              goto _L5
        }

        public void o(hi hi1, int i1, String s, Bundle bundle)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (hi1 == null) goto _L2; else goto _L1
_L1:
            IBinder ibinder = hi1.asBinder();
_L5:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            ko.transact(25, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            ibinder = null;
              goto _L5
_L4:
            parcel.writeInt(0);
              goto _L6
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
              goto _L5
        }

        public void p(hi hi1, int i1, String s, Bundle bundle)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (hi1 == null) goto _L2; else goto _L1
_L1:
            IBinder ibinder = hi1.asBinder();
_L5:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i1);
            parcel.writeString(s);
            if (bundle == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L6:
            ko.transact(27, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            ibinder = null;
              goto _L5
_L4:
            parcel.writeInt(0);
              goto _L6
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
              goto _L5
        }

        a.a(IBinder ibinder)
        {
            ko = ibinder;
        }
    }


    public abstract void a(hi hi, int i1)
        throws RemoteException;

    public abstract void a(hi hi, int i1, String s)
        throws RemoteException;

    public abstract void a(hi hi, int i1, String s, Bundle bundle)
        throws RemoteException;

    public abstract void a(hi hi, int i1, String s, IBinder ibinder, Bundle bundle)
        throws RemoteException;

    public abstract void a(hi hi, int i1, String s, String s1)
        throws RemoteException;

    public abstract void a(hi hi, int i1, String s, String s1, String s2, String as[])
        throws RemoteException;

    public abstract void a(hi hi, int i1, String s, String s1, String as[])
        throws RemoteException;

    public abstract void a(hi hi, int i1, String s, String s1, String as[], Bundle bundle)
        throws RemoteException;

    public abstract void a(hi hi, int i1, String s, String s1, String as[], String s2, Bundle bundle)
        throws RemoteException;

    public abstract void a(hi hi, int i1, String s, String s1, String as[], String s2, IBinder ibinder, 
            String s3, Bundle bundle)
        throws RemoteException;

    public abstract void a(hi hi, int i1, String s, String as[], String s1, Bundle bundle)
        throws RemoteException;

    public abstract void b(hi hi, int i1, String s)
        throws RemoteException;

    public abstract void b(hi hi, int i1, String s, Bundle bundle)
        throws RemoteException;

    public abstract void b(hi hi, int i1, String s, String s1, String as[])
        throws RemoteException;

    public abstract void c(hi hi, int i1, String s)
        throws RemoteException;

    public abstract void c(hi hi, int i1, String s, Bundle bundle)
        throws RemoteException;

    public abstract void d(hi hi, int i1, String s)
        throws RemoteException;

    public abstract void d(hi hi, int i1, String s, Bundle bundle)
        throws RemoteException;

    public abstract void e(hi hi, int i1, String s)
        throws RemoteException;

    public abstract void e(hi hi, int i1, String s, Bundle bundle)
        throws RemoteException;

    public abstract void f(hi hi, int i1, String s)
        throws RemoteException;

    public abstract void f(hi hi, int i1, String s, Bundle bundle)
        throws RemoteException;

    public abstract void g(hi hi, int i1, String s)
        throws RemoteException;

    public abstract void g(hi hi, int i1, String s, Bundle bundle)
        throws RemoteException;

    public abstract void h(hi hi, int i1, String s)
        throws RemoteException;

    public abstract void h(hi hi, int i1, String s, Bundle bundle)
        throws RemoteException;

    public abstract void i(hi hi, int i1, String s)
        throws RemoteException;

    public abstract void i(hi hi, int i1, String s, Bundle bundle)
        throws RemoteException;

    public abstract void j(hi hi, int i1, String s, Bundle bundle)
        throws RemoteException;

    public abstract void k(hi hi, int i1, String s, Bundle bundle)
        throws RemoteException;

    public abstract void l(hi hi, int i1, String s, Bundle bundle)
        throws RemoteException;

    public abstract void m(hi hi, int i1, String s, Bundle bundle)
        throws RemoteException;

    public abstract void n(hi hi, int i1, String s, Bundle bundle)
        throws RemoteException;

    public abstract void o(hi hi, int i1, String s, Bundle bundle)
        throws RemoteException;

    public abstract void p(hi hi, int i1, String s, Bundle bundle)
        throws RemoteException;
}
