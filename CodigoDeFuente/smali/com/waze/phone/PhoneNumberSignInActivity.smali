.class public Lcom/waze/phone/PhoneNumberSignInActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "PhoneNumberSignInActivity.java"


# static fields
.field private static final CHOOSE_COUNTRY:I = 0x3e8

.field public static final CONNECTED_RESULT_CODE:I = 0x4

.field public static final FON_SHON_REA_SON:Ljava/lang/String; = "fon_shon_rea_son"

.field protected static final HINT_SIZE:F = 14.0f

.field public static final REPORT_START:Ljava/lang/String; = "report_start"

.field protected static final TEXT_SIZE:F = 16.0f

.field public static bIsBackEnabled:Z

.field public static bIsInit:Z

.field public static bIsInviteRequestSent:Z

.field public static bIsNeedVerification:Z

.field public static bIsUpgrade:Z

.field static mHasTried:Z

.field static strCountryCodes:[Lcom/waze/settings/SettingsValue;


# instance fields
.field Index:I

.field IsAuthenticate:Z

.field IsTimerCallback:Z

.field PhoneBox:Landroid/widget/EditText;

.field public bIsChangedNumber:Z

.field public bIsInvite:Z

.field h:Landroid/os/Handler;

.field mHashNumber:Ljava/lang/String;

.field private mNm:Lcom/waze/NativeManager;

.field mRunnable:Ljava/lang/Runnable;

.field private mSendPhonBtn:Landroid/widget/TextView;

.field scountryCodes:[Ljava/lang/String;

.field strCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/phone/PhoneNumberSignInActivity;->strCountryCodes:[Lcom/waze/settings/SettingsValue;

    .line 55
    sput-boolean v1, Lcom/waze/phone/PhoneNumberSignInActivity;->bIsNeedVerification:Z

    .line 61
    sput-boolean v1, Lcom/waze/phone/PhoneNumberSignInActivity;->bIsUpgrade:Z

    .line 62
    sput-boolean v1, Lcom/waze/phone/PhoneNumberSignInActivity;->bIsInit:Z

    .line 63
    sput-boolean v1, Lcom/waze/phone/PhoneNumberSignInActivity;->bIsBackEnabled:Z

    .line 64
    sput-boolean v1, Lcom/waze/phone/PhoneNumberSignInActivity;->bIsInviteRequestSent:Z

    .line 68
    sput-boolean v1, Lcom/waze/phone/PhoneNumberSignInActivity;->mHasTried:Z

    .line 73
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 49
    iput-object v2, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->strCodes:Ljava/util/List;

    .line 50
    iput-object v2, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->scountryCodes:[Ljava/lang/String;

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->Index:I

    .line 56
    iput-object v2, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mHashNumber:Ljava/lang/String;

    .line 57
    iput-boolean v1, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->IsAuthenticate:Z

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->h:Landroid/os/Handler;

    .line 59
    iput-object v2, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mRunnable:Ljava/lang/Runnable;

    .line 60
    iput-boolean v1, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->bIsChangedNumber:Z

    .line 65
    iput-boolean v1, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->bIsInvite:Z

    .line 67
    iput-boolean v1, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->IsTimerCallback:Z

    .line 75
    return-void
.end method

.method private PhoneFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "number"
    .parameter "country"

    .prologue
    const/4 v1, 0x0

    .line 606
    const/4 v2, 0x0

    .line 608
    .local v2, isValid:Z
    :try_start_0
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v4

    .line 609
    .local v4, util:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;
    invoke-virtual {v4, p1, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v3

    .line 610
    .local v3, pn:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v4, v3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v2

    .line 611
    if-nez v2, :cond_1

    .line 627
    .end local v3           #pn:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .end local v4           #util:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;
    :cond_0
    :goto_0
    return-object v1

    .line 614
    .restart local v3       #pn:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .restart local v4       #util:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;
    :cond_1
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/waze/NativeManager;->ValidateMobileTypeNTV()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 615
    invoke-virtual {v4, v3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v5

    sget-object v6, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq v5, v6, :cond_2

    .line 616
    invoke-virtual {v4, v3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v5

    sget-object v6, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq v5, v6, :cond_2

    .line 617
    invoke-virtual {v4, v3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v5

    sget-object v6, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PERSONAL_NUMBER:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne v5, v6, :cond_0

    .line 622
    :cond_2
    sget-object v5, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v4, v3, v5}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, formatted:Ljava/lang/String;
    goto :goto_0

    .line 623
    .end local v1           #formatted:Ljava/lang/String;
    .end local v3           #pn:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .end local v4           #util:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;
    :catch_0
    move-exception v0

    .line 624
    .local v0, e:Lcom/google/i18n/phonenumbers/NumberParseException;
    goto :goto_0
.end method

.method private SetUpgradeMembers()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const v5, 0x7f090502

    const v9, 0x7f090501

    const v6, 0x7f090500

    const/16 v8, 0x8

    .line 362
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/waze/mywaze/MyWazeNativeManager;->isRandomUserNTV()Z

    move-result v4

    if-nez v4, :cond_0

    .line 363
    const v4, 0x7f09050b

    invoke-virtual {p0, v4}, Lcom/waze/phone/PhoneNumberSignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 364
    const v4, 0x7f09050c

    invoke-virtual {p0, v4}, Lcom/waze/phone/PhoneNumberSignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 365
    const v4, 0x7f09050a

    invoke-virtual {p0, v4}, Lcom/waze/phone/PhoneNumberSignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 367
    :cond_0
    sget-boolean v4, Lcom/waze/phone/PhoneNumberSignInActivity;->bIsBackEnabled:Z

    if-nez v4, :cond_1

    .line 369
    invoke-virtual {p0, v5}, Lcom/waze/phone/PhoneNumberSignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 370
    const v5, 0x7f02039b

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 371
    invoke-virtual {p0, v6}, Lcom/waze/phone/PhoneNumberSignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mNm:Lcom/waze/NativeManager;

    .line 372
    sget-object v7, Lcom/waze/strings/DisplayStrings;->DS_WELCOME_BACK:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v6, v7}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 373
    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 374
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/waze/mywaze/MyWazeNativeManager;->getWelcomeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 371
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    const v4, 0x7f09050a

    invoke-virtual {p0, v4}, Lcom/waze/phone/PhoneNumberSignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 376
    invoke-virtual {p0, v9}, Lcom/waze/phone/PhoneNumberSignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mNm:Lcom/waze/NativeManager;

    .line 377
    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_FROM_NOW_ON_MOST_FEATURES:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    .line 376
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mNm:Lcom/waze/NativeManager;

    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_WAZE_WILL_NEVER_SHARE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 380
    .local v2, str1:Ljava/lang/String;
    iget-object v4, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mNm:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_LEARN_MORE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 381
    .local v3, str2:Ljava/lang/String;
    new-instance v0, Landroid/text/SpannableString;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 382
    .local v0, content:Landroid/text/SpannableString;
    new-instance v4, Landroid/text/style/UnderlineSpan;

    invoke-direct {v4}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v0, v4, v5, v6, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 383
    const v4, 0x7f090508

    invoke-virtual {p0, v4}, Lcom/waze/phone/PhoneNumberSignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 384
    .local v1, learnMore:Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    const v4, 0x7f090509

    invoke-virtual {p0, v4}, Lcom/waze/phone/PhoneNumberSignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mSendPhonBtn:Landroid/widget/TextView;

    .line 387
    iget-object v4, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mSendPhonBtn:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mNm:Lcom/waze/NativeManager;

    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_NEXT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    :goto_0
    return-void

    .line 389
    .end local v0           #content:Landroid/text/SpannableString;
    .end local v1           #learnMore:Landroid/widget/TextView;
    .end local v2           #str1:Ljava/lang/String;
    .end local v3           #str2:Ljava/lang/String;
    :cond_1
    iget-boolean v4, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->bIsChangedNumber:Z

    if-eqz v4, :cond_2

    .line 390
    invoke-virtual {p0, v5}, Lcom/waze/phone/PhoneNumberSignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 391
    const v5, 0x7f02039b

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 392
    invoke-virtual {p0, v6}, Lcom/waze/phone/PhoneNumberSignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mNm:Lcom/waze/NativeManager;

    .line 393
    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_ENTER_NEW_NUMBER:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    .line 392
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    invoke-virtual {p0, v9}, Lcom/waze/phone/PhoneNumberSignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mNm:Lcom/waze/NativeManager;

    .line 395
    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_TYPE_A_NEW_PHONE_NUMBER_TO_UPDATE_YOUR_PROFILE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    .line 394
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mNm:Lcom/waze/NativeManager;

    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_CONFIRM_IDENTITY:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 406
    .restart local v2       #str1:Ljava/lang/String;
    iget-object v4, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mNm:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_LEARN_MORE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 407
    .restart local v3       #str2:Ljava/lang/String;
    new-instance v0, Landroid/text/SpannableString;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 408
    .restart local v0       #content:Landroid/text/SpannableString;
    new-instance v4, Landroid/text/style/UnderlineSpan;

    invoke-direct {v4}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v0, v4, v5, v6, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 409
    const v4, 0x7f090508

    invoke-virtual {p0, v4}, Lcom/waze/phone/PhoneNumberSignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 410
    .restart local v1       #learnMore:Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    const v4, 0x7f090509

    invoke-virtual {p0, v4}, Lcom/waze/phone/PhoneNumberSignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mSendPhonBtn:Landroid/widget/TextView;

    .line 413
    iget-object v4, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mSendPhonBtn:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mNm:Lcom/waze/NativeManager;

    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_VERIFY_MY_NUMBER:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 397
    .end local v0           #content:Landroid/text/SpannableString;
    .end local v1           #learnMore:Landroid/widget/TextView;
    .end local v2           #str1:Ljava/lang/String;
    .end local v3           #str2:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v5}, Lcom/waze/phone/PhoneNumberSignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 398
    const v5, 0x7f02038a

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 399
    invoke-virtual {p0, v6}, Lcom/waze/phone/PhoneNumberSignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mNm:Lcom/waze/NativeManager;

    .line 400
    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_DRIVE_SOCIALLY:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    .line 399
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    invoke-virtual {p0, v9}, Lcom/waze/phone/PhoneNumberSignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mNm:Lcom/waze/NativeManager;

    .line 402
    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_REGISTER_TO_USE_THIS_FEATURE_ENTER_YOUR_PHONE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    .line 401
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method static synthetic access$0(Lcom/waze/phone/PhoneNumberSignInActivity;)Lcom/waze/NativeManager;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mNm:Lcom/waze/NativeManager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/phone/PhoneNumberSignInActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 356
    invoke-direct {p0}, Lcom/waze/phone/PhoneNumberSignInActivity;->isValidPhoneFormat()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/waze/phone/PhoneNumberSignInActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mSendPhonBtn:Landroid/widget/TextView;

    return-object v0
.end method

.method public static getCountries()[Lcom/waze/settings/SettingsValue;
    .locals 1

    .prologue
    .line 653
    sget-object v0, Lcom/waze/phone/PhoneNumberSignInActivity;->strCountryCodes:[Lcom/waze/settings/SettingsValue;

    return-object v0
.end method

.method private isValidPhoneFormat()Z
    .locals 4

    .prologue
    .line 357
    iget-object v1, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->PhoneBox:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->scountryCodes:[Ljava/lang/String;

    iget v3, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->Index:I

    aget-object v2, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/waze/phone/PhoneNumberSignInActivity;->PhoneFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, formattedPhone:Ljava/lang/String;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public AuthenticateCallback(I)V
    .locals 8
    .parameter "nType"

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 445
    iput-boolean v5, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->IsAuthenticate:Z

    .line 447
    if-nez p1, :cond_2

    .line 448
    iget-object v0, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mNm:Lcom/waze/NativeManager;

    const-string v1, "PHONE_STATUS"

    .line 449
    const-string v2, "VAUE"

    const-string v3, "SUCCESS"

    .line 448
    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 451
    iget-object v0, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/waze/AppService;->Remove(Ljava/lang/Runnable;)V

    .line 453
    iput-object v4, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mRunnable:Ljava/lang/Runnable;

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->h:Landroid/os/Handler;

    new-instance v1, Lcom/waze/phone/PhoneNumberSignInActivity$8;

    invoke-direct {v1, p0}, Lcom/waze/phone/PhoneNumberSignInActivity$8;-><init>(Lcom/waze/phone/PhoneNumberSignInActivity;)V

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 465
    iget-object v0, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mNm:Lcom/waze/NativeManager;

    iget-object v1, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mNm:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_PHONE_VERIFIED:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 466
    const-string v2, "sign_up_big_v"

    .line 465
    invoke-virtual {v0, v1, v2}, Lcom/waze/NativeManager;->OpenProgressIconPopup(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    :cond_1
    :goto_0
    return-void

    .line 467
    :cond_2
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 468
    const/4 v0, 0x6

    if-ne p1, v0, :cond_3

    .line 469
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    sget-boolean v1, Lcom/waze/phone/PhoneNumberSignInActivity;->bIsUpgrade:Z

    invoke-virtual {v0, v3, v1, v4, v4}, Lcom/waze/mywaze/MyWazeNativeManager;->setContactsSignIn(ZZLjava/lang/String;Ljava/lang/String;)V

    .line 470
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneNumberSignInActivity;->setResult(I)V

    .line 471
    invoke-virtual {p0}, Lcom/waze/phone/PhoneNumberSignInActivity;->finish()V

    goto :goto_0

    .line 473
    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    .line 474
    iget-object v0, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mNm:Lcom/waze/NativeManager;

    const-string v1, "PHONE_STATUS"

    .line 475
    const-string v2, "VAUE"

    const-string v3, "SUCCESS"

    .line 474
    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 476
    iget-object v0, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mNm:Lcom/waze/NativeManager;

    const-string v1, "PHONE_EXISTED"

    invoke-virtual {v0, v1, v4, v4, v5}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 478
    iget-object v0, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    .line 479
    iget-object v0, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/waze/AppService;->Remove(Ljava/lang/Runnable;)V

    .line 480
    iput-object v4, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mRunnable:Ljava/lang/Runnable;

    .line 482
    :cond_4
    iget-object v0, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mNm:Lcom/waze/NativeManager;

    invoke-virtual {v0}, Lcom/waze/NativeManager;->CloseProgressPopup()V

    .line 484
    sget-boolean v0, Lcom/waze/phone/PhoneNumberSignInActivity;->bIsUpgrade:Z

    if-nez v0, :cond_5

    .line 485
    iget-object v0, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->h:Landroid/os/Handler;

    new-instance v1, Lcom/waze/phone/PhoneNumberSignInActivity$9;

    invoke-direct {v1, p0}, Lcom/waze/phone/PhoneNumberSignInActivity$9;-><init>(Lcom/waze/phone/PhoneNumberSignInActivity;)V

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 496
    iget-object v0, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mNm:Lcom/waze/NativeManager;

    iget-object v1, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mNm:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_PHONE_VERIFIED:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 497
    const-string v2, "sign_up_big_v"

    .line 496
    invoke-virtual {v0, v1, v2}, Lcom/waze/NativeManager;->OpenProgressIconPopup(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 499
    :cond_5
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    invoke-virtual {v0, v5, v5, v4, v4}, Lcom/waze/mywaze/MyWazeNativeManager;->setContactsSignIn(ZZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 502
    :cond_6
    const/4 v0, 0x5

    if-eq p1, v0, :cond_7

    .line 503
    iget-object v0, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mNm:Lcom/waze/NativeManager;

    const-string v1, "PHONE_SEND_FAILED"

    invoke-virtual {v0, v1, v4, v4, v5}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 506
    :cond_7
    iget-object v0, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_8

    .line 507
    iget-object v0, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/waze/AppService;->Remove(Ljava/lang/Runnable;)V

    .line 508
    iput-object v4, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mRunnable:Ljava/lang/Runnable;

    .line 510
    :cond_8
    iget-object v0, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mNm:Lcom/waze/NativeManager;

    invoke-virtual {v0}, Lcom/waze/NativeManager;->CloseProgressPopup()V

    .line 513
    iget-object v0, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mNm:Lcom/waze/NativeManager;

    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_UHHOHE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 514
    iget-object v1, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mNm:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_NETWORK_CONNECTION_PROBLEMS__PLEASE_TRY_AGAIN_LATER_:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 512
    invoke-static {v0, v1, v3}, Lcom/waze/MsgBox;->openMessageBox(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method GetCountryZipCode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 521
    const-string v0, ""

    .line 523
    .local v0, CountryID:Ljava/lang/String;
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/waze/phone/PhoneNumberSignInActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 525
    .local v1, manager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 527
    return-object v0
.end method

.method public InviteDataCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "FullName"
    .parameter "Phone"
    .parameter "Image"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 419
    iget-object v1, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mNm:Lcom/waze/NativeManager;

    const-string v2, "SIGNUP_FROM_INVITE"

    invoke-virtual {v1, v2, v3, v3, v5}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 421
    const v1, 0x7f090500

    invoke-virtual {p0, v1}, Lcom/waze/phone/PhoneNumberSignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 422
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 423
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v3

    .line 424
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_HAS_INVITED_YOU_TO_JOIN_WAZE:Lcom/waze/strings/DisplayStrings;

    .line 423
    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 421
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    const v1, 0x7f090502

    invoke-virtual {p0, v1}, Lcom/waze/phone/PhoneNumberSignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 427
    const v2, 0x7f020397

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 429
    const v1, 0x7f090503

    invoke-virtual {p0, v1}, Lcom/waze/phone/PhoneNumberSignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 431
    iput-boolean v5, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->bIsInvite:Z

    .line 433
    iget-object v1, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->PhoneBox:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 434
    iget-object v1, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mSendPhonBtn:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mNm:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_YES_THATS_MY_NUMBER:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    :cond_0
    if-eqz p3, :cond_1

    const-string v1, ""

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 439
    const v1, 0x7f090504

    invoke-virtual {p0, v1}, Lcom/waze/phone/PhoneNumberSignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 440
    .local v0, picture:Landroid/widget/ImageView;
    sget-object v1, Lcom/waze/utils/ImageRepository;->instance:Lcom/waze/utils/ImageRepository;

    invoke-virtual {v1, p3, v0, p0}, Lcom/waze/utils/ImageRepository;->getImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/waze/ifs/ui/ActivityBase;)V

    .line 442
    .end local v0           #picture:Landroid/widget/ImageView;
    :cond_1
    return-void
.end method

.method public SendPhone(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 531
    sput-boolean v4, Lcom/waze/phone/PhoneNumberSignInActivity;->mHasTried:Z

    .line 533
    iget-object v1, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->PhoneBox:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->scountryCodes:[Ljava/lang/String;

    iget v3, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->Index:I

    aget-object v2, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/waze/phone/PhoneNumberSignInActivity;->PhoneFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 534
    .local v0, formattedPhone:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 535
    iget-object v1, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mNm:Lcom/waze/NativeManager;

    const-string v2, "PHONE_SEND"

    invoke-virtual {v1, v2, v6, v6, v4}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 537
    iget-object v1, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->scountryCodes:[Ljava/lang/String;

    iget v2, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->Index:I

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/waze/phone/AddressBook;->SetCountryID(Ljava/lang/String;)V

    .line 538
    iget-object v1, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mNm:Lcom/waze/NativeManager;

    invoke-virtual {v1, v0}, Lcom/waze/NativeManager;->SHA256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mHashNumber:Ljava/lang/String;

    .line 539
    iget-object v1, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mNm:Lcom/waze/NativeManager;

    iget-object v2, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mHashNumber:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->scountryCodes:[Ljava/lang/String;

    iget v5, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->Index:I

    aget-object v4, v4, v5

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/waze/NativeManager;->AuthPhoneNumber(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 540
    iget-object v1, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mNm:Lcom/waze/NativeManager;

    iget-object v2, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mNm:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_WAITING_FOR_SMS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->OpenProgressPopup(Ljava/lang/String;)V

    .line 542
    iget-object v1, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 543
    iget-object v1, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lcom/waze/AppService;->Remove(Ljava/lang/Runnable;)V

    .line 544
    iput-object v6, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mRunnable:Ljava/lang/Runnable;

    .line 546
    :cond_0
    new-instance v1, Lcom/waze/phone/PhoneNumberSignInActivity$10;

    invoke-direct {v1, p0}, Lcom/waze/phone/PhoneNumberSignInActivity$10;-><init>(Lcom/waze/phone/PhoneNumberSignInActivity;)V

    iput-object v1, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mRunnable:Ljava/lang/Runnable;

    .line 556
    iget-object v1, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    invoke-static {v1, v2, v3}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;J)V

    .line 558
    :cond_1
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, -0x1

    .line 633
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    .line 634
    if-ne p2, v1, :cond_0

    .line 635
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "index"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->Index:I

    .line 636
    const v0, 0x7f090506

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneNumberSignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->strCodes:Ljava/util/List;

    iget v2, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->Index:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 649
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/waze/ifs/ui/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 650
    return-void

    .line 644
    :cond_1
    if-ne p2, v1, :cond_0

    .line 645
    invoke-virtual {p0, v1}, Lcom/waze/phone/PhoneNumberSignInActivity;->setResult(I)V

    .line 646
    invoke-virtual {p0}, Lcom/waze/phone/PhoneNumberSignInActivity;->finish()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 597
    sget-boolean v0, Lcom/waze/phone/PhoneNumberSignInActivity;->bIsBackEnabled:Z

    if-eqz v0, :cond_0

    .line 598
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneNumberSignInActivity;->setResult(I)V

    .line 599
    invoke-virtual {p0}, Lcom/waze/phone/PhoneNumberSignInActivity;->finish()V

    .line 601
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 28
    .parameter "savedInstanceState"

    .prologue
    .line 90
    invoke-super/range {p0 .. p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/waze/phone/PhoneNumberSignInActivity;->setRequestedOrientation(I)V

    .line 92
    const v23, 0x7f0300a6

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/waze/phone/PhoneNumberSignInActivity;->setContentView(I)V

    .line 94
    const/16 v23, 0x1

    sput-boolean v23, Lcom/waze/phone/PhoneNumberSignInActivity;->bIsInit:Z

    .line 95
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/waze/phone/PhoneNumberSignInActivity;->mNm:Lcom/waze/NativeManager;

    .line 97
    sget-boolean v23, Lcom/waze/phone/PhoneNumberSignInActivity;->bIsInviteRequestSent:Z

    if-nez v23, :cond_0

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/phone/PhoneNumberSignInActivity;->mNm:Lcom/waze/NativeManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/waze/NativeManager;->GetInviteData()V

    .line 99
    const/16 v23, 0x1

    sput-boolean v23, Lcom/waze/phone/PhoneNumberSignInActivity;->bIsInviteRequestSent:Z

    .line 102
    :cond_0
    const/16 v23, 0x0

    sput-boolean v23, Lcom/waze/phone/PhoneNumberSignInActivity;->bIsBackEnabled:Z

    .line 103
    const/16 v23, 0x0

    sput-boolean v23, Lcom/waze/phone/PhoneNumberSignInActivity;->bIsUpgrade:Z

    .line 104
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v23

    if-eqz v23, :cond_1

    .line 105
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/waze/LayoutManager;->isSplashVisible()Z

    move-result v23

    if-eqz v23, :cond_1

    .line 106
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/waze/LayoutManager;->cancelSplash()V

    .line 110
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/waze/phone/PhoneNumberSignInActivity;->getIntent()Landroid/content/Intent;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    const-string v24, "back"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 111
    .local v9, backEnabled:I
    if-lez v9, :cond_2

    .line 112
    const/16 v23, 0x1

    sput-boolean v23, Lcom/waze/phone/PhoneNumberSignInActivity;->bIsBackEnabled:Z

    .line 114
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/waze/phone/PhoneNumberSignInActivity;->getIntent()Landroid/content/Intent;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    const-string v24, "type"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 115
    .local v8, activityType:I
    if-lez v8, :cond_4

    .line 116
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v8, v0, :cond_c

    .line 117
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/waze/phone/PhoneNumberSignInActivity;->bIsChangedNumber:Z

    .line 121
    :cond_3
    :goto_0
    const/16 v23, 0x1

    sput-boolean v23, Lcom/waze/phone/PhoneNumberSignInActivity;->bIsUpgrade:Z

    .line 124
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/waze/phone/PhoneNumberSignInActivity;->getIntent()Landroid/content/Intent;

    move-result-object v23

    const-string v24, "report_start"

    const/16 v25, 0x1

    invoke-virtual/range {v23 .. v25}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    .line 125
    .local v18, reportStart:Z
    if-eqz v18, :cond_5

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/phone/PhoneNumberSignInActivity;->mNm:Lcom/waze/NativeManager;

    move-object/from16 v23, v0

    const-string v24, "START"

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x1

    invoke-virtual/range {v23 .. v27}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 128
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/waze/phone/PhoneNumberSignInActivity;->getIntent()Landroid/content/Intent;

    move-result-object v23

    const-string v24, "fon_shon_rea_son"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 129
    .local v17, reason:Ljava/lang/String;
    if-eqz v17, :cond_d

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/phone/PhoneNumberSignInActivity;->mNm:Lcom/waze/NativeManager;

    move-object/from16 v23, v0

    const-string v24, "PHONE_WIZARD_SHOWN"

    .line 131
    const-string v25, "VAUE"

    const/16 v26, 0x1

    .line 130
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v17

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 137
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/phone/PhoneNumberSignInActivity;->mNm:Lcom/waze/NativeManager;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/waze/NativeManager;->SetPhoneIsFirstTime(Z)V

    .line 139
    const/16 v16, 0x0

    .line 141
    .local v16, nIndexOfPhone:I
    invoke-virtual/range {p0 .. p0}, Lcom/waze/phone/PhoneNumberSignInActivity;->GetCountryZipCode()Ljava/lang/String;

    move-result-object v5

    .line 143
    .local v5, CountryCode:Ljava/lang/String;
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/waze/phone/SmsReceiver;->Register(Landroid/content/Context;)V

    .line 145
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getSupportedRegions()Ljava/util/Set;

    move-result-object v12

    .line 147
    .local v12, countryCodes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v23

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/waze/phone/PhoneNumberSignInActivity;->scountryCodes:[Ljava/lang/String;

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/phone/PhoneNumberSignInActivity;->scountryCodes:[Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v12, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 151
    new-instance v23, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/phone/PhoneNumberSignInActivity;->scountryCodes:[Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/waze/phone/PhoneNumberSignInActivity;->strCodes:Ljava/util/List;

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/phone/PhoneNumberSignInActivity;->strCodes:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    new-array v0, v0, [Lcom/waze/settings/SettingsValue;

    move-object/from16 v23, v0

    sput-object v23, Lcom/waze/phone/PhoneNumberSignInActivity;->strCountryCodes:[Lcom/waze/settings/SettingsValue;

    .line 156
    const/4 v13, 0x0

    .local v13, i:I
    :goto_2
    sget-object v23, Lcom/waze/phone/PhoneNumberSignInActivity;->strCountryCodes:[Lcom/waze/settings/SettingsValue;

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v13, v0, :cond_e

    .line 178
    if-eqz v5, :cond_6

    const-string v23, ""

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 179
    :cond_6
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/waze/phone/PhoneNumberSignInActivity;->Index:I

    .line 182
    :cond_7
    sget-object v23, Lcom/waze/phone/PhoneNumberSignInActivity;->strCountryCodes:[Lcom/waze/settings/SettingsValue;

    sget-object v24, Lcom/waze/settings/SettingsValue;->comparator:Ljava/util/Comparator;

    invoke-static/range {v23 .. v24}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 184
    sget-boolean v23, Lcom/waze/phone/PhoneNumberSignInActivity;->bIsUpgrade:Z

    if-eqz v23, :cond_12

    .line 185
    invoke-direct/range {p0 .. p0}, Lcom/waze/phone/PhoneNumberSignInActivity;->SetUpgradeMembers()V

    .line 206
    :goto_3
    const v23, 0x7f09050b

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/waze/phone/PhoneNumberSignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/phone/PhoneNumberSignInActivity;->mNm:Lcom/waze/NativeManager;

    move-object/from16 v24, v0

    .line 207
    sget-object v25, Lcom/waze/strings/DisplayStrings;->DS_ALREADY_A_WAZERQ:Lcom/waze/strings/DisplayStrings;

    invoke-virtual/range {v24 .. v25}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v24

    .line 206
    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    const v23, 0x7f09050b

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/waze/phone/PhoneNumberSignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 210
    new-instance v24, Lcom/waze/phone/PhoneNumberSignInActivity$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/waze/phone/PhoneNumberSignInActivity$1;-><init>(Lcom/waze/phone/PhoneNumberSignInActivity;)V

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/waze/mywaze/MyWazeNativeManager;->getContactLoggedInNTV()Z

    move-result v23

    if-eqz v23, :cond_8

    sget-boolean v23, Lcom/waze/phone/PhoneNumberSignInActivity;->bIsUpgrade:Z

    if-nez v23, :cond_9

    :cond_8
    sget-boolean v23, Lcom/waze/phone/PhoneNumberSignInActivity;->bIsBackEnabled:Z

    if-eqz v23, :cond_13

    .line 225
    :cond_9
    const v23, 0x7f0904e6

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/waze/phone/PhoneNumberSignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    const v23, 0x7f09050d

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/waze/phone/PhoneNumberSignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    .line 231
    :goto_4
    const v23, 0x7f0904e6

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/waze/phone/PhoneNumberSignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/phone/PhoneNumberSignInActivity;->mNm:Lcom/waze/NativeManager;

    move-object/from16 v24, v0

    sget-object v25, Lcom/waze/strings/DisplayStrings;->DS_SKIP:Lcom/waze/strings/DisplayStrings;

    invoke-virtual/range {v24 .. v25}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    const v23, 0x7f0904e6

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/waze/phone/PhoneNumberSignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    new-instance v24, Lcom/waze/phone/PhoneNumberSignInActivity$2;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/waze/phone/PhoneNumberSignInActivity$2;-><init>(Lcom/waze/phone/PhoneNumberSignInActivity;)V

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    const v23, 0x7f090508

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/waze/phone/PhoneNumberSignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 259
    .local v15, learnMore:Landroid/widget/TextView;
    new-instance v23, Lcom/waze/phone/PhoneNumberSignInActivity$3;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/waze/phone/PhoneNumberSignInActivity$3;-><init>(Lcom/waze/phone/PhoneNumberSignInActivity;)V

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    const v23, 0x7f090506

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/waze/phone/PhoneNumberSignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/phone/PhoneNumberSignInActivity;->strCodes:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/CharSequence;

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    const v23, 0x7f090505

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/waze/phone/PhoneNumberSignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    new-instance v24, Lcom/waze/phone/PhoneNumberSignInActivity$4;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/waze/phone/PhoneNumberSignInActivity$4;-><init>(Lcom/waze/phone/PhoneNumberSignInActivity;)V

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    const v23, 0x7f090509

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/waze/phone/PhoneNumberSignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    new-instance v24, Lcom/waze/phone/PhoneNumberSignInActivity$5;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/waze/phone/PhoneNumberSignInActivity$5;-><init>(Lcom/waze/phone/PhoneNumberSignInActivity;)V

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    const v23, 0x7f090507

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/waze/phone/PhoneNumberSignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/EditText;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/waze/phone/PhoneNumberSignInActivity;->PhoneBox:Landroid/widget/EditText;

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/phone/PhoneNumberSignInActivity;->PhoneBox:Landroid/widget/EditText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/phone/PhoneNumberSignInActivity;->PhoneBox:Landroid/widget/EditText;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/waze/utils/EditTextUtils;->getKeyboardLockOnTouchListener(Landroid/content/Context;Landroid/widget/EditText;Lcom/waze/utils/EditTextUtils$OnTouchListenerDoneListener;)Landroid/view/View$OnTouchListener;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/phone/PhoneNumberSignInActivity;->PhoneBox:Landroid/widget/EditText;

    move-object/from16 v23, v0

    new-instance v24, Lcom/waze/phone/PhoneNumberSignInActivity$6;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/waze/phone/PhoneNumberSignInActivity$6;-><init>(Lcom/waze/phone/PhoneNumberSignInActivity;)V

    invoke-virtual/range {v23 .. v24}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/phone/PhoneNumberSignInActivity;->PhoneBox:Landroid/widget/EditText;

    move-object/from16 v23, v0

    new-instance v24, Lcom/waze/phone/PhoneNumberSignInActivity$7;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/waze/phone/PhoneNumberSignInActivity$7;-><init>(Lcom/waze/phone/PhoneNumberSignInActivity;)V

    invoke-virtual/range {v23 .. v24}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 340
    const-string v23, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/waze/phone/PhoneNumberSignInActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    .line 339
    check-cast v22, Landroid/telephony/TelephonyManager;

    .line 342
    .local v22, tMgr:Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v22 .. v22}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v7

    .line 344
    .local v7, MyPhoneNumber:Ljava/lang/String;
    if-eqz v7, :cond_a

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v23

    if-eqz v23, :cond_b

    .line 345
    :cond_a
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/waze/mywaze/MyWazeNativeManager;->socialContactsGetLastPhoneUsed()Ljava/lang/String;

    move-result-object v7

    .line 348
    :cond_b
    if-eqz v7, :cond_14

    const-string v23, ""

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_14

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/phone/PhoneNumberSignInActivity;->PhoneBox:Landroid/widget/EditText;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 354
    :goto_5
    return-void

    .line 118
    .end local v5           #CountryCode:Ljava/lang/String;
    .end local v7           #MyPhoneNumber:Ljava/lang/String;
    .end local v12           #countryCodes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v13           #i:I
    .end local v15           #learnMore:Landroid/widget/TextView;
    .end local v16           #nIndexOfPhone:I
    .end local v17           #reason:Ljava/lang/String;
    .end local v18           #reportStart:Z
    .end local v22           #tMgr:Landroid/telephony/TelephonyManager;
    :cond_c
    const/16 v23, 0x2

    move/from16 v0, v23

    if-ne v8, v0, :cond_3

    .line 119
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/waze/phone/PhoneNumberSignInActivity;->bIsChangedNumber:Z

    goto/16 :goto_0

    .line 133
    .restart local v17       #reason:Ljava/lang/String;
    .restart local v18       #reportStart:Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/phone/PhoneNumberSignInActivity;->mNm:Lcom/waze/NativeManager;

    move-object/from16 v23, v0

    const-string v24, "PHONE_WIZARD_SHOWN"

    const/16 v25, 0x0

    .line 134
    const/16 v26, 0x0

    const/16 v27, 0x1

    .line 133
    invoke-virtual/range {v23 .. v27}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 157
    .restart local v5       #CountryCode:Ljava/lang/String;
    .restart local v12       #countryCodes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v13       #i:I
    .restart local v16       #nIndexOfPhone:I
    :cond_e
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/phone/PhoneNumberSignInActivity;->strCodes:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result v6

    .line 159
    .local v6, CountryNumber:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/phone/PhoneNumberSignInActivity;->strCodes:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_f

    .line 160
    move/from16 v16, v13

    .line 161
    move-object/from16 v0, p0

    iput v13, v0, Lcom/waze/phone/PhoneNumberSignInActivity;->Index:I

    .line 164
    :cond_f
    new-instance v14, Ljava/util/Locale;

    const-string v24, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/phone/PhoneNumberSignInActivity;->strCodes:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-direct {v14, v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .local v14, l:Ljava/util/Locale;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/phone/PhoneNumberSignInActivity;->strCodes:Ljava/util/List;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/phone/PhoneNumberSignInActivity;->strCodes:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, " (+"

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v25, ")"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-interface {v0, v13, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-virtual {v14}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v11

    .line 168
    .local v11, country:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/phone/PhoneNumberSignInActivity;->Index:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_11

    .line 170
    new-instance v19, Lcom/waze/settings/SettingsValue;

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v25, " (+"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v25, ")"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 171
    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/phone/PhoneNumberSignInActivity;->Index:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ne v13, v0, :cond_10

    const/16 v23, 0x1

    .line 170
    :goto_6
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/waze/settings/SettingsValue;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 175
    .local v19, s:Lcom/waze/settings/SettingsValue;
    :goto_7
    sget-object v23, Lcom/waze/phone/PhoneNumberSignInActivity;->strCountryCodes:[Lcom/waze/settings/SettingsValue;

    aput-object v19, v23, v13

    .line 156
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 171
    .end local v19           #s:Lcom/waze/settings/SettingsValue;
    :cond_10
    const/16 v23, 0x0

    goto :goto_6

    .line 173
    :cond_11
    new-instance v19, Lcom/waze/settings/SettingsValue;

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v25, " (+"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ")"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/waze/settings/SettingsValue;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .restart local v19       #s:Lcom/waze/settings/SettingsValue;
    goto :goto_7

    .line 187
    .end local v6           #CountryNumber:I
    .end local v11           #country:Ljava/lang/String;
    .end local v14           #l:Ljava/util/Locale;
    .end local v19           #s:Lcom/waze/settings/SettingsValue;
    :cond_12
    const v23, 0x7f090500

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/waze/phone/PhoneNumberSignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/phone/PhoneNumberSignInActivity;->mNm:Lcom/waze/NativeManager;

    move-object/from16 v24, v0

    .line 188
    sget-object v25, Lcom/waze/strings/DisplayStrings;->DS_BECOME_A_TRUE_WAZER:Lcom/waze/strings/DisplayStrings;

    invoke-virtual/range {v24 .. v25}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v24

    .line 187
    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    const v23, 0x7f090501

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/waze/phone/PhoneNumberSignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/phone/PhoneNumberSignInActivity;->mNm:Lcom/waze/NativeManager;

    move-object/from16 v24, v0

    .line 191
    sget-object v25, Lcom/waze/strings/DisplayStrings;->DS_ENTER_YOUR_PHONE_NUMBER_TO:Lcom/waze/strings/DisplayStrings;

    invoke-virtual/range {v24 .. v25}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v24

    .line 190
    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    const v23, 0x7f09050b

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/waze/phone/PhoneNumberSignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    const v23, 0x7f09050c

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/waze/phone/PhoneNumberSignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    .line 195
    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/phone/PhoneNumberSignInActivity;->mNm:Lcom/waze/NativeManager;

    move-object/from16 v24, v0

    sget-object v25, Lcom/waze/strings/DisplayStrings;->DS_WAZE_WILL_NEVER_SHARE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual/range {v24 .. v25}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v24, 0xa

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 196
    .local v20, str1:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/phone/PhoneNumberSignInActivity;->mNm:Lcom/waze/NativeManager;

    move-object/from16 v23, v0

    sget-object v24, Lcom/waze/strings/DisplayStrings;->DS_LEARN_MORE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual/range {v23 .. v24}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v21

    .line 197
    .local v21, str2:Ljava/lang/String;
    new-instance v10, Landroid/text/SpannableString;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v10, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 198
    .local v10, content:Landroid/text/SpannableString;
    new-instance v23, Landroid/text/style/UnderlineSpan;

    invoke-direct/range {v23 .. v23}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v24

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v25

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v26

    add-int v25, v25, v26

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 199
    const v23, 0x7f090508

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/waze/phone/PhoneNumberSignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 200
    .restart local v15       #learnMore:Landroid/widget/TextView;
    invoke-virtual {v15, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    const v23, 0x7f090509

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/waze/phone/PhoneNumberSignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/waze/phone/PhoneNumberSignInActivity;->mSendPhonBtn:Landroid/widget/TextView;

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/phone/PhoneNumberSignInActivity;->mSendPhonBtn:Landroid/widget/TextView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/phone/PhoneNumberSignInActivity;->mNm:Lcom/waze/NativeManager;

    move-object/from16 v24, v0

    sget-object v25, Lcom/waze/strings/DisplayStrings;->DS_NEXT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual/range {v24 .. v25}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 228
    .end local v10           #content:Landroid/text/SpannableString;
    .end local v15           #learnMore:Landroid/widget/TextView;
    .end local v20           #str1:Ljava/lang/String;
    .end local v21           #str2:Ljava/lang/String;
    :cond_13
    const v23, 0x7f0904e6

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/waze/phone/PhoneNumberSignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    .line 229
    const v23, 0x7f09050d

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/waze/phone/PhoneNumberSignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 351
    .restart local v7       #MyPhoneNumber:Ljava/lang/String;
    .restart local v15       #learnMore:Landroid/widget/TextView;
    .restart local v22       #tMgr:Landroid/telephony/TelephonyManager;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/phone/PhoneNumberSignInActivity;->mSendPhonBtn:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v23

    const/16 v24, 0x7d

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/phone/PhoneNumberSignInActivity;->mSendPhonBtn:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const-string v24, "#77000000"

    invoke-static/range {v24 .. v24}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/waze/AppService;->Remove(Ljava/lang/Runnable;)V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mRunnable:Ljava/lang/Runnable;

    .line 84
    :cond_0
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/waze/phone/SmsReceiver;->UnRegister(Landroid/content/Context;)V

    .line 85
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onDestroy()V

    .line 86
    return-void
.end method

.method public onPinTokenSet()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 561
    iget-object v1, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 562
    iget-object v1, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lcom/waze/AppService;->Remove(Ljava/lang/Runnable;)V

    .line 563
    iput-object v4, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mRunnable:Ljava/lang/Runnable;

    .line 565
    :cond_0
    iget-object v1, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mNm:Lcom/waze/NativeManager;

    invoke-virtual {v1}, Lcom/waze/NativeManager;->CloseProgressPopup()V

    .line 568
    iget-boolean v1, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->IsTimerCallback:Z

    if-eqz v1, :cond_1

    .line 569
    iget-object v1, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mNm:Lcom/waze/NativeManager;

    const-string v2, "FAIL_READ_SMS"

    .line 570
    const/4 v3, 0x1

    .line 569
    invoke-virtual {v1, v2, v4, v4, v3}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 572
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->IsTimerCallback:Z

    .line 573
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/waze/phone/SmsReceiver;->UnRegister(Landroid/content/Context;)V

    .line 574
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/phone/PhoneVerifyYourNumbersActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 575
    .local v0, i:Landroid/content/Intent;
    const-string v1, "Hash"

    iget-object v2, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mHashNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 576
    const/16 v1, 0x457

    invoke-virtual {p0, v0, v1}, Lcom/waze/phone/PhoneNumberSignInActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 593
    .end local v0           #i:Landroid/content/Intent;
    :goto_0
    return-void

    .line 578
    :cond_1
    iget-object v1, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->h:Landroid/os/Handler;

    new-instance v2, Lcom/waze/phone/PhoneNumberSignInActivity$11;

    invoke-direct {v2, p0}, Lcom/waze/phone/PhoneNumberSignInActivity$11;-><init>(Lcom/waze/phone/PhoneNumberSignInActivity;)V

    .line 587
    const-wide/16 v3, 0x3e8

    .line 578
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 588
    iget-object v1, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mNm:Lcom/waze/NativeManager;

    iget-object v2, p0, Lcom/waze/phone/PhoneNumberSignInActivity;->mNm:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_PHONE_VERIFIED:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 589
    const-string v3, "sign_up_big_v"

    .line 588
    invoke-virtual {v1, v2, v3}, Lcom/waze/NativeManager;->OpenProgressIconPopup(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
