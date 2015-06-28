// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.i18n.phonenumbers;


// Referenced classes of package com.google.i18n.phonenumbers:
//            PhoneNumberUtil, PhoneNumberMatcher

public static abstract class <init> extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES EXACT_GROUPING;
    public static final .VALUES POSSIBLE;
    public static final .VALUES STRICT_GROUPING;
    public static final .VALUES VALID;

    public static <init> valueOf(String s)
    {
        return (<init>)Enum.valueOf(com/google/i18n/phonenumbers/PhoneNumberUtil$Leniency, s);
    }

    public static <init>[] values()
    {
        return (<init>[])$VALUES.clone();
    }

    abstract boolean verify(y_3B_.clone clone, String s, PhoneNumberUtil phonenumberutil);

    static 
    {
        POSSIBLE = new PhoneNumberUtil.Leniency("POSSIBLE", 0) {

            boolean verify(Phonenumber.PhoneNumber phonenumber, String s, PhoneNumberUtil phonenumberutil)
            {
                return phonenumberutil.isPossibleNumber(phonenumber);
            }

        };
        VALID = new PhoneNumberUtil.Leniency("VALID", 1) {

            boolean verify(Phonenumber.PhoneNumber phonenumber, String s, PhoneNumberUtil phonenumberutil)
            {
                if (!phonenumberutil.isValidNumber(phonenumber) || !PhoneNumberMatcher.containsOnlyValidXChars(phonenumber, s, phonenumberutil))
                {
                    return false;
                } else
                {
                    return PhoneNumberMatcher.isNationalPrefixPresentIfRequired(phonenumber, phonenumberutil);
                }
            }

        };
        STRICT_GROUPING = new PhoneNumberUtil.Leniency("STRICT_GROUPING", 2) {

            boolean verify(Phonenumber.PhoneNumber phonenumber, String s, PhoneNumberUtil phonenumberutil)
            {
                if (!phonenumberutil.isValidNumber(phonenumber) || !PhoneNumberMatcher.containsOnlyValidXChars(phonenumber, s, phonenumberutil) || PhoneNumberMatcher.containsMoreThanOneSlashInNationalNumber(phonenumber, s) || !PhoneNumberMatcher.isNationalPrefixPresentIfRequired(phonenumber, phonenumberutil))
                {
                    return false;
                } else
                {
                    return PhoneNumberMatcher.checkNumberGroupingIsValid(phonenumber, s, phonenumberutil, new PhoneNumberMatcher.NumberGroupingChecker() {

                        final _cls3 this$0;

                        public boolean checkGroups(PhoneNumberUtil phonenumberutil, Phonenumber.PhoneNumber phonenumber, StringBuilder stringbuilder, String as[])
                        {
                            return PhoneNumberMatcher.allNumberGroupsRemainGrouped(phonenumberutil, phonenumber, stringbuilder, as);
                        }

            
            {
                this$0 = _cls3.this;
                super();
            }
                    });
                }
            }

        };
        EXACT_GROUPING = new PhoneNumberUtil.Leniency("EXACT_GROUPING", 3) {

            boolean verify(Phonenumber.PhoneNumber phonenumber, String s, PhoneNumberUtil phonenumberutil)
            {
                if (!phonenumberutil.isValidNumber(phonenumber) || !PhoneNumberMatcher.containsOnlyValidXChars(phonenumber, s, phonenumberutil) || PhoneNumberMatcher.containsMoreThanOneSlashInNationalNumber(phonenumber, s) || !PhoneNumberMatcher.isNationalPrefixPresentIfRequired(phonenumber, phonenumberutil))
                {
                    return false;
                } else
                {
                    return PhoneNumberMatcher.checkNumberGroupingIsValid(phonenumber, s, phonenumberutil, new PhoneNumberMatcher.NumberGroupingChecker() {

                        final _cls4 this$0;

                        public boolean checkGroups(PhoneNumberUtil phonenumberutil, Phonenumber.PhoneNumber phonenumber, StringBuilder stringbuilder, String as[])
                        {
                            return PhoneNumberMatcher.allNumberGroupsAreExactlyPresent(phonenumberutil, phonenumber, stringbuilder, as);
                        }

            
            {
                this$0 = _cls4.this;
                super();
            }
                    });
                }
            }

        };
        y_3B_.clone aclone[] = new _cls4[4];
        aclone[0] = POSSIBLE;
        aclone[1] = VALID;
        aclone[2] = STRICT_GROUPING;
        aclone[3] = EXACT_GROUPING;
        $VALUES = aclone;
    }

    private _cls4(String s, int i)
    {
        super(s, i);
    }

    _cls4(String s, int i, _cls4 _pcls4)
    {
        this(s, i);
    }
}
