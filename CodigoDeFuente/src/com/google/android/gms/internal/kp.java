// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import java.util.HashSet;
import java.util.Set;

// Referenced classes of package com.google.android.gms.internal:
//            ko

public class kp
    implements android.os.Parcelable.Creator
{

    public kp()
    {
    }

    static void a(ko ko1, Parcel parcel, int i)
    {
        int j = b.C(parcel);
        Set set = ko1.kf();
        if (set.contains(Integer.valueOf(1)))
        {
            b.c(parcel, 1, ko1.getVersionCode());
        }
        if (set.contains(Integer.valueOf(2)))
        {
            b.a(parcel, 2, ko1.kg(), i, true);
        }
        if (set.contains(Integer.valueOf(3)))
        {
            b.a(parcel, 3, ko1.getAdditionalName(), true);
        }
        if (set.contains(Integer.valueOf(4)))
        {
            b.a(parcel, 4, ko1.kh(), i, true);
        }
        if (set.contains(Integer.valueOf(5)))
        {
            b.a(parcel, 5, ko1.getAddressCountry(), true);
        }
        if (set.contains(Integer.valueOf(6)))
        {
            b.a(parcel, 6, ko1.getAddressLocality(), true);
        }
        if (set.contains(Integer.valueOf(7)))
        {
            b.a(parcel, 7, ko1.getAddressRegion(), true);
        }
        if (set.contains(Integer.valueOf(8)))
        {
            b.b(parcel, 8, ko1.ki(), true);
        }
        if (set.contains(Integer.valueOf(9)))
        {
            b.c(parcel, 9, ko1.getAttendeeCount());
        }
        if (set.contains(Integer.valueOf(10)))
        {
            b.b(parcel, 10, ko1.kj(), true);
        }
        if (set.contains(Integer.valueOf(11)))
        {
            b.a(parcel, 11, ko1.kk(), i, true);
        }
        if (set.contains(Integer.valueOf(12)))
        {
            b.b(parcel, 12, ko1.kl(), true);
        }
        if (set.contains(Integer.valueOf(13)))
        {
            b.a(parcel, 13, ko1.getBestRating(), true);
        }
        if (set.contains(Integer.valueOf(14)))
        {
            b.a(parcel, 14, ko1.getBirthDate(), true);
        }
        if (set.contains(Integer.valueOf(15)))
        {
            b.a(parcel, 15, ko1.km(), i, true);
        }
        if (set.contains(Integer.valueOf(17)))
        {
            b.a(parcel, 17, ko1.getContentSize(), true);
        }
        if (set.contains(Integer.valueOf(16)))
        {
            b.a(parcel, 16, ko1.getCaption(), true);
        }
        if (set.contains(Integer.valueOf(19)))
        {
            b.b(parcel, 19, ko1.kn(), true);
        }
        if (set.contains(Integer.valueOf(18)))
        {
            b.a(parcel, 18, ko1.getContentUrl(), true);
        }
        if (set.contains(Integer.valueOf(21)))
        {
            b.a(parcel, 21, ko1.getDateModified(), true);
        }
        if (set.contains(Integer.valueOf(20)))
        {
            b.a(parcel, 20, ko1.getDateCreated(), true);
        }
        if (set.contains(Integer.valueOf(23)))
        {
            b.a(parcel, 23, ko1.getDescription(), true);
        }
        if (set.contains(Integer.valueOf(22)))
        {
            b.a(parcel, 22, ko1.getDatePublished(), true);
        }
        if (set.contains(Integer.valueOf(25)))
        {
            b.a(parcel, 25, ko1.getEmbedUrl(), true);
        }
        if (set.contains(Integer.valueOf(24)))
        {
            b.a(parcel, 24, ko1.getDuration(), true);
        }
        if (set.contains(Integer.valueOf(27)))
        {
            b.a(parcel, 27, ko1.getFamilyName(), true);
        }
        if (set.contains(Integer.valueOf(26)))
        {
            b.a(parcel, 26, ko1.getEndDate(), true);
        }
        if (set.contains(Integer.valueOf(29)))
        {
            b.a(parcel, 29, ko1.ko(), i, true);
        }
        if (set.contains(Integer.valueOf(28)))
        {
            b.a(parcel, 28, ko1.getGender(), true);
        }
        if (set.contains(Integer.valueOf(31)))
        {
            b.a(parcel, 31, ko1.getHeight(), true);
        }
        if (set.contains(Integer.valueOf(30)))
        {
            b.a(parcel, 30, ko1.getGivenName(), true);
        }
        if (set.contains(Integer.valueOf(34)))
        {
            b.a(parcel, 34, ko1.kp(), i, true);
        }
        if (set.contains(Integer.valueOf(32)))
        {
            b.a(parcel, 32, ko1.getId(), true);
        }
        if (set.contains(Integer.valueOf(33)))
        {
            b.a(parcel, 33, ko1.getImage(), true);
        }
        if (set.contains(Integer.valueOf(38)))
        {
            b.a(parcel, 38, ko1.getLongitude());
        }
        if (set.contains(Integer.valueOf(39)))
        {
            b.a(parcel, 39, ko1.getName(), true);
        }
        if (set.contains(Integer.valueOf(36)))
        {
            b.a(parcel, 36, ko1.getLatitude());
        }
        if (set.contains(Integer.valueOf(37)))
        {
            b.a(parcel, 37, ko1.kq(), i, true);
        }
        if (set.contains(Integer.valueOf(42)))
        {
            b.a(parcel, 42, ko1.getPlayerType(), true);
        }
        if (set.contains(Integer.valueOf(43)))
        {
            b.a(parcel, 43, ko1.getPostOfficeBoxNumber(), true);
        }
        if (set.contains(Integer.valueOf(40)))
        {
            b.a(parcel, 40, ko1.kr(), i, true);
        }
        if (set.contains(Integer.valueOf(41)))
        {
            b.b(parcel, 41, ko1.ks(), true);
        }
        if (set.contains(Integer.valueOf(46)))
        {
            b.a(parcel, 46, ko1.kt(), i, true);
        }
        if (set.contains(Integer.valueOf(47)))
        {
            b.a(parcel, 47, ko1.getStartDate(), true);
        }
        if (set.contains(Integer.valueOf(44)))
        {
            b.a(parcel, 44, ko1.getPostalCode(), true);
        }
        if (set.contains(Integer.valueOf(45)))
        {
            b.a(parcel, 45, ko1.getRatingValue(), true);
        }
        if (set.contains(Integer.valueOf(51)))
        {
            b.a(parcel, 51, ko1.getThumbnailUrl(), true);
        }
        if (set.contains(Integer.valueOf(50)))
        {
            b.a(parcel, 50, ko1.ku(), i, true);
        }
        if (set.contains(Integer.valueOf(49)))
        {
            b.a(parcel, 49, ko1.getText(), true);
        }
        if (set.contains(Integer.valueOf(48)))
        {
            b.a(parcel, 48, ko1.getStreetAddress(), true);
        }
        if (set.contains(Integer.valueOf(55)))
        {
            b.a(parcel, 55, ko1.getWidth(), true);
        }
        if (set.contains(Integer.valueOf(54)))
        {
            b.a(parcel, 54, ko1.getUrl(), true);
        }
        if (set.contains(Integer.valueOf(53)))
        {
            b.a(parcel, 53, ko1.getType(), true);
        }
        if (set.contains(Integer.valueOf(52)))
        {
            b.a(parcel, 52, ko1.getTickerSymbol(), true);
        }
        if (set.contains(Integer.valueOf(56)))
        {
            b.a(parcel, 56, ko1.getWorstRating(), true);
        }
        b.G(parcel, j);
    }

    public ko bE(Parcel parcel)
    {
        int i = com.google.android.gms.common.internal.safeparcel.a.B(parcel);
        HashSet hashset = new HashSet();
        int j = 0;
        ko ko1 = null;
        java.util.ArrayList arraylist = null;
        ko ko2 = null;
        String s = null;
        String s1 = null;
        String s2 = null;
        java.util.ArrayList arraylist1 = null;
        int k = 0;
        java.util.ArrayList arraylist2 = null;
        ko ko3 = null;
        java.util.ArrayList arraylist3 = null;
        String s3 = null;
        String s4 = null;
        ko ko4 = null;
        String s5 = null;
        String s6 = null;
        String s7 = null;
        java.util.ArrayList arraylist4 = null;
        String s8 = null;
        String s9 = null;
        String s10 = null;
        String s11 = null;
        String s12 = null;
        String s13 = null;
        String s14 = null;
        String s15 = null;
        String s16 = null;
        ko ko5 = null;
        String s17 = null;
        String s18 = null;
        String s19 = null;
        String s20 = null;
        ko ko6 = null;
        double d = 0.0D;
        ko ko7 = null;
        double d1 = 0.0D;
        String s21 = null;
        ko ko8 = null;
        java.util.ArrayList arraylist5 = null;
        String s22 = null;
        String s23 = null;
        String s24 = null;
        String s25 = null;
        ko ko9 = null;
        String s26 = null;
        String s27 = null;
        String s28 = null;
        ko ko10 = null;
        String s29 = null;
        String s30 = null;
        String s31 = null;
        String s32 = null;
        String s33 = null;
        String s34 = null;
        do
        {
            if (parcel.dataPosition() < i)
            {
                int l = com.google.android.gms.common.internal.safeparcel.a.A(parcel);
                switch (com.google.android.gms.common.internal.safeparcel.a.ar(l))
                {
                case 35: // '#'
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, l);
                    break;

                case 1: // '\001'
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    hashset.add(Integer.valueOf(1));
                    break;

                case 2: // '\002'
                    ko ko20 = (ko)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, ko.CREATOR);
                    hashset.add(Integer.valueOf(2));
                    ko1 = ko20;
                    break;

                case 3: // '\003'
                    arraylist = com.google.android.gms.common.internal.safeparcel.a.B(parcel, l);
                    hashset.add(Integer.valueOf(3));
                    break;

                case 4: // '\004'
                    ko ko19 = (ko)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, ko.CREATOR);
                    hashset.add(Integer.valueOf(4));
                    ko2 = ko19;
                    break;

                case 5: // '\005'
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(5));
                    break;

                case 6: // '\006'
                    s1 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(6));
                    break;

                case 7: // '\007'
                    s2 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(7));
                    break;

                case 8: // '\b'
                    arraylist1 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, l, ko.CREATOR);
                    hashset.add(Integer.valueOf(8));
                    break;

                case 9: // '\t'
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    hashset.add(Integer.valueOf(9));
                    break;

                case 10: // '\n'
                    arraylist2 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, l, ko.CREATOR);
                    hashset.add(Integer.valueOf(10));
                    break;

                case 11: // '\013'
                    ko ko18 = (ko)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, ko.CREATOR);
                    hashset.add(Integer.valueOf(11));
                    ko3 = ko18;
                    break;

                case 12: // '\f'
                    arraylist3 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, l, ko.CREATOR);
                    hashset.add(Integer.valueOf(12));
                    break;

                case 13: // '\r'
                    s3 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(13));
                    break;

                case 14: // '\016'
                    s4 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(14));
                    break;

                case 15: // '\017'
                    ko ko17 = (ko)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, ko.CREATOR);
                    hashset.add(Integer.valueOf(15));
                    ko4 = ko17;
                    break;

                case 17: // '\021'
                    s6 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(17));
                    break;

                case 16: // '\020'
                    s5 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(16));
                    break;

                case 19: // '\023'
                    arraylist4 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, l, ko.CREATOR);
                    hashset.add(Integer.valueOf(19));
                    break;

                case 18: // '\022'
                    s7 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(18));
                    break;

                case 21: // '\025'
                    s9 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(21));
                    break;

                case 20: // '\024'
                    s8 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(20));
                    break;

                case 23: // '\027'
                    s11 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(23));
                    break;

                case 22: // '\026'
                    s10 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(22));
                    break;

                case 25: // '\031'
                    s13 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(25));
                    break;

                case 24: // '\030'
                    s12 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(24));
                    break;

                case 27: // '\033'
                    s15 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(27));
                    break;

                case 26: // '\032'
                    s14 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(26));
                    break;

                case 29: // '\035'
                    ko ko16 = (ko)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, ko.CREATOR);
                    hashset.add(Integer.valueOf(29));
                    ko5 = ko16;
                    break;

                case 28: // '\034'
                    s16 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(28));
                    break;

                case 31: // '\037'
                    s18 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(31));
                    break;

                case 30: // '\036'
                    s17 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(30));
                    break;

                case 34: // '"'
                    ko ko15 = (ko)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, ko.CREATOR);
                    hashset.add(Integer.valueOf(34));
                    ko6 = ko15;
                    break;

                case 32: // ' '
                    s19 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(32));
                    break;

                case 33: // '!'
                    s20 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(33));
                    break;

                case 38: // '&'
                    d1 = com.google.android.gms.common.internal.safeparcel.a.m(parcel, l);
                    hashset.add(Integer.valueOf(38));
                    break;

                case 39: // '\''
                    s21 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(39));
                    break;

                case 36: // '$'
                    d = com.google.android.gms.common.internal.safeparcel.a.m(parcel, l);
                    hashset.add(Integer.valueOf(36));
                    break;

                case 37: // '%'
                    ko ko14 = (ko)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, ko.CREATOR);
                    hashset.add(Integer.valueOf(37));
                    ko7 = ko14;
                    break;

                case 42: // '*'
                    s22 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(42));
                    break;

                case 43: // '+'
                    s23 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(43));
                    break;

                case 40: // '('
                    ko ko13 = (ko)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, ko.CREATOR);
                    hashset.add(Integer.valueOf(40));
                    ko8 = ko13;
                    break;

                case 41: // ')'
                    arraylist5 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, l, ko.CREATOR);
                    hashset.add(Integer.valueOf(41));
                    break;

                case 46: // '.'
                    ko ko12 = (ko)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, ko.CREATOR);
                    hashset.add(Integer.valueOf(46));
                    ko9 = ko12;
                    break;

                case 47: // '/'
                    s26 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(47));
                    break;

                case 44: // ','
                    s24 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(44));
                    break;

                case 45: // '-'
                    s25 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(45));
                    break;

                case 51: // '3'
                    s29 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(51));
                    break;

                case 50: // '2'
                    ko ko11 = (ko)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, ko.CREATOR);
                    hashset.add(Integer.valueOf(50));
                    ko10 = ko11;
                    break;

                case 49: // '1'
                    s28 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(49));
                    break;

                case 48: // '0'
                    s27 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(48));
                    break;

                case 55: // '7'
                    s33 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(55));
                    break;

                case 54: // '6'
                    s32 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(54));
                    break;

                case 53: // '5'
                    s31 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(53));
                    break;

                case 52: // '4'
                    s30 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(52));
                    break;

                case 56: // '8'
                    s34 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    hashset.add(Integer.valueOf(56));
                    break;
                }
            } else
            {
                if (parcel.dataPosition() != i)
                {
                    throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(i).toString(), parcel);
                }
                return new ko(hashset, j, ko1, arraylist, ko2, s, s1, s2, arraylist1, k, arraylist2, ko3, arraylist3, s3, s4, ko4, s5, s6, s7, arraylist4, s8, s9, s10, s11, s12, s13, s14, s15, s16, ko5, s17, s18, s19, s20, ko6, d, ko7, d1, s21, ko8, arraylist5, s22, s23, s24, s25, ko9, s26, s27, s28, ko10, s29, s30, s31, s32, s33, s34);
            }
        } while (true);
    }

    public Object createFromParcel(Parcel parcel)
    {
        return bE(parcel);
    }

    public ko[] db(int i)
    {
        return new ko[i];
    }

    public Object[] newArray(int i)
    {
        return db(i);
    }
}
