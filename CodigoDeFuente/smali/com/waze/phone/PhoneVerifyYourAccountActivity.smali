.class public Lcom/waze/phone/PhoneVerifyYourAccountActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "PhoneVerifyYourAccountActivity.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$waze$phone$PhoneAlreadyAWazerActivity$HomeWorkFavorites:[I = null

.field private static final AFTER_SEARCH_ADDRESS_RETURNED:I = 0x1

.field protected static final HINT_SIZE:F = 14.0f

.field protected static final TEXT_SIZE:F = 16.0f


# instance fields
.field private driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;

.field private mAddressesToVerify:[Lcom/waze/navigate/AddressItem;

.field private mHomeWorkAvailableFlags:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;",
            ">;"
        }
    .end annotation
.end field

.field private mHomeWorkCurrentFlag:Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;

.field private mNextButton:Landroid/widget/LinearLayout;

.field private mNextText:Landroid/widget/TextView;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSearchBox:Landroid/widget/EditText;

.field private mVerifyBodyText:Landroid/widget/TextView;

.field private mVerifyHeaderText:Landroid/widget/TextView;

.field private nativeManager:Lcom/waze/NativeManager;


# direct methods
.method static synthetic $SWITCH_TABLE$com$waze$phone$PhoneAlreadyAWazerActivity$HomeWorkFavorites()[I
    .locals 3

    .prologue
    .line 30
    sget-object v0, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->$SWITCH_TABLE$com$waze$phone$PhoneAlreadyAWazerActivity$HomeWorkFavorites:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;->values()[Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;->HOME:Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;

    invoke-virtual {v1}, Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;->WORK:Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;

    invoke-virtual {v1}, Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->$SWITCH_TABLE$com$waze$phone$PhoneAlreadyAWazerActivity$HomeWorkFavorites:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->mAddressesToVerify:[Lcom/waze/navigate/AddressItem;

    .line 30
    return-void
.end method

.method static synthetic access$1(Lcom/waze/phone/PhoneVerifyYourAccountActivity;)Landroid/widget/ScrollView;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->mScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method private handleSearchResult(Landroid/content/Intent;)V
    .locals 3
    .parameter "data"

    .prologue
    .line 248
    if-eqz p1, :cond_0

    .line 249
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 250
    const-string v2, "AddressItem"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 249
    check-cast v0, Lcom/waze/navigate/AddressItem;

    .line 252
    .local v0, ai:Lcom/waze/navigate/AddressItem;
    invoke-static {}, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->$SWITCH_TABLE$com$waze$phone$PhoneAlreadyAWazerActivity$HomeWorkFavorites()[I

    move-result-object v1

    iget-object v2, p0, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->mHomeWorkCurrentFlag:Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;

    invoke-virtual {v2}, Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 288
    .end local v0           #ai:Lcom/waze/navigate/AddressItem;
    :cond_0
    :goto_0
    return-void

    .line 254
    .restart local v0       #ai:Lcom/waze/navigate/AddressItem;
    :pswitch_0
    iget-object v1, p0, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->mHomeWorkAvailableFlags:Ljava/util/EnumSet;

    sget-object v2, Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;->HOME:Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 258
    iget-object v1, p0, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->mAddressesToVerify:[Lcom/waze/navigate/AddressItem;

    sget-object v2, Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;->HOME:Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;

    invoke-virtual {v2}, Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;->getNumVal()I

    move-result v2

    aput-object v0, v1, v2

    .line 261
    iget-object v1, p0, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->mHomeWorkAvailableFlags:Ljava/util/EnumSet;

    .line 262
    sget-object v2, Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;->WORK:Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    sget-object v1, Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;->WORK:Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;

    invoke-direct {p0, v1}, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->setCurrentHomeWorkFlag(Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;)V

    goto :goto_0

    .line 274
    :pswitch_1
    iget-object v1, p0, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->mHomeWorkAvailableFlags:Ljava/util/EnumSet;

    sget-object v2, Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;->WORK:Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 278
    iget-object v1, p0, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->mAddressesToVerify:[Lcom/waze/navigate/AddressItem;

    sget-object v2, Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;->WORK:Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;

    invoke-virtual {v2}, Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;->getNumVal()I

    move-result v2

    aput-object v0, v1, v2

    goto :goto_0

    .line 252
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initFieldsTexts()V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->setTextContent()V

    .line 158
    invoke-direct {p0}, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->setFonts()V

    .line 159
    return-void
.end method

.method private initLayout()V
    .locals 1

    .prologue
    .line 186
    const v0, 0x7f0300a9

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->setContentView(I)V

    .line 187
    const v0, 0x7f0904e3

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->mNextButton:Landroid/widget/LinearLayout;

    .line 188
    const v0, 0x7f0904e4

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->mNextText:Landroid/widget/TextView;

    .line 189
    const v0, 0x7f090061

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->mSearchBox:Landroid/widget/EditText;

    .line 190
    const v0, 0x7f090515

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->mVerifyHeaderText:Landroid/widget/TextView;

    .line 191
    const v0, 0x7f090516

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->mVerifyBodyText:Landroid/widget/TextView;

    .line 192
    const v0, 0x7f0904df

    invoke-virtual {p0, v0}, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->mScrollView:Landroid/widget/ScrollView;

    .line 193
    return-void
.end method

.method private initMembers()V
    .locals 2

    .prologue
    .line 176
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;

    .line 177
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 178
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->OpenSearchIntent()V

    .line 179
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->OpenRoutingIntent()V

    .line 180
    iget-object v0, p0, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/waze/navigate/DriveToNativeManager;->setSearchMode(Z)V

    .line 181
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/waze/navigate/AddressItem;

    iput-object v0, p0, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->mAddressesToVerify:[Lcom/waze/navigate/AddressItem;

    .line 182
    return-void
.end method

.method private setCurrentHomeWorkFlag(Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;)V
    .locals 3
    .parameter "flag"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->mHomeWorkCurrentFlag:Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;

    .line 76
    invoke-static {}, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->$SWITCH_TABLE$com$waze$phone$PhoneAlreadyAWazerActivity$HomeWorkFavorites()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 97
    :goto_0
    return-void

    .line 78
    :pswitch_0
    iget-object v0, p0, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->mVerifyBodyText:Landroid/widget/TextView;

    .line 80
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 82
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_ENTER_THE_HOME_ADDRESS_STOREDNIN_YOUR_WAZE_FAVORITES_:Lcom/waze/strings/DisplayStrings;

    .line 81
    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 86
    :pswitch_1
    iget-object v0, p0, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->mVerifyBodyText:Landroid/widget/TextView;

    .line 88
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 90
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_ENTER_THE_WORK_ADDRESS_STOREDNIN_YOUR_WAZE_FAVORITES_:Lcom/waze/strings/DisplayStrings;

    .line 89
    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setFonts()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->mSearchBox:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/waze/ResManager;->getRobotoLight(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 173
    return-void
.end method

.method private setKeyboardVisibilityListener()V
    .locals 3

    .prologue
    .line 132
    const v1, 0x7f0904d2

    invoke-virtual {p0, v1}, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 135
    .local v0, root:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 136
    new-instance v2, Lcom/waze/phone/PhoneVerifyYourAccountActivity$4;

    invoke-direct {v2, p0, v0}, Lcom/waze/phone/PhoneVerifyYourAccountActivity$4;-><init>(Lcom/waze/phone/PhoneVerifyYourAccountActivity;Landroid/view/View;)V

    .line 135
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 154
    return-void
.end method

.method private setListeners()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->setKeyboardVisibilityListener()V

    .line 101
    invoke-direct {p0}, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->setOnClickListeners()V

    .line 102
    return-void
.end method

.method private setOnClickListeners()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->mSearchBox:Landroid/widget/EditText;

    new-instance v1, Lcom/waze/phone/PhoneVerifyYourAccountActivity$1;

    invoke-direct {v1, p0}, Lcom/waze/phone/PhoneVerifyYourAccountActivity$1;-><init>(Lcom/waze/phone/PhoneVerifyYourAccountActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->mNextButton:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/waze/phone/PhoneVerifyYourAccountActivity$2;

    invoke-direct {v1, p0}, Lcom/waze/phone/PhoneVerifyYourAccountActivity$2;-><init>(Lcom/waze/phone/PhoneVerifyYourAccountActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->mSearchBox:Landroid/widget/EditText;

    new-instance v1, Lcom/waze/phone/PhoneVerifyYourAccountActivity$3;

    invoke-direct {v1, p0}, Lcom/waze/phone/PhoneVerifyYourAccountActivity$3;-><init>(Lcom/waze/phone/PhoneVerifyYourAccountActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 129
    return-void
.end method

.method private setTextContent()V
    .locals 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->mVerifyHeaderText:Landroid/widget/TextView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 163
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_VERIFY_YOUR_ACCOUNT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 162
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v0, p0, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->mSearchBox:Landroid/widget/EditText;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 166
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_SEARCH_ADDRESS:Lcom/waze/strings/DisplayStrings;

    .line 165
    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, p0, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->mNextText:Landroid/widget/TextView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 168
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_NEXT:Lcom/waze/strings/DisplayStrings;

    .line 167
    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, -0x1

    .line 221
    const-string v1, "WAZE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "phoneVerifyYourAccount onActRes requestCode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " resultCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 221
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    if-ne p2, v4, :cond_0

    .line 226
    packed-switch p1, :pswitch_data_0

    .line 239
    invoke-virtual {p0, v4}, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->setResult(I)V

    .line 240
    invoke-virtual {p0}, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->finish()V

    .line 244
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/waze/ifs/ui/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 245
    return-void

    .line 230
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/phone/PhoneVerifyYourAccountFailureActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 232
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 226
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-direct {p0}, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->initLayout()V

    .line 52
    invoke-direct {p0}, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->initMembers()V

    .line 53
    invoke-direct {p0}, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->initFieldsTexts()V

    .line 54
    invoke-direct {p0}, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->setListeners()V

    .line 56
    invoke-virtual {p0}, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 58
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 60
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "homeWorkFlags"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/EnumSet;

    .line 59
    iput-object v1, p0, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->mHomeWorkAvailableFlags:Ljava/util/EnumSet;

    .line 62
    iget-object v1, p0, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->mHomeWorkAvailableFlags:Ljava/util/EnumSet;

    sget-object v2, Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;->HOME:Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    sget-object v1, Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;->HOME:Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;

    invoke-direct {p0, v1}, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->setCurrentHomeWorkFlag(Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;)V

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    sget-object v1, Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;->WORK:Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;

    invoke-direct {p0, v1}, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->setCurrentHomeWorkFlag(Lcom/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 292
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onPause()V

    .line 293
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 294
    .local v0, mgr:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->mSearchBox:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 295
    return-void
.end method

.method public searchClicked(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 197
    iget-object v2, p0, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->mSearchBox:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 199
    const-string v2, "WAZE"

    const-string v3, "Search pressed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/waze/navigate/SearchActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 201
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->nativeManager:Lcom/waze/NativeManager;

    iget-object v3, p0, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->mSearchBox:Landroid/widget/EditText;

    .line 202
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 201
    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->isCategorySearchNTV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, sCategory:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 205
    :cond_0
    const-string v2, "SearchStr"

    iget-object v3, p0, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->mSearchBox:Landroid/widget/EditText;

    .line 206
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 205
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    :goto_0
    const-string v2, "SearchMode"

    .line 211
    const/4 v3, 0x7

    .line 210
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 213
    iget-object v2, p0, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->mSearchBox:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 215
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/waze/phone/PhoneVerifyYourAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 217
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #sCategory:Ljava/lang/String;
    :cond_1
    return-void

    .line 208
    .restart local v0       #intent:Landroid/content/Intent;
    .restart local v1       #sCategory:Ljava/lang/String;
    :cond_2
    const-string v2, "SearchCategory"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
