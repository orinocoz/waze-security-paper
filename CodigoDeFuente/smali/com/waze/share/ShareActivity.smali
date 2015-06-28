.class public Lcom/waze/share/ShareActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "ShareActivity.java"


# static fields
.field protected static final HINT_SIZE:F = 14.0f

.field private static final RQ_CODE_SET_HOME:I = 0x3e9

.field private static final RQ_CODE_SET_WORK:I = 0x3ea

.field protected static final TEXT_SIZE:F = 16.0f


# instance fields
.field private bIsFollow:Z

.field private isNavigating:Z

.field private nativeManager:Lcom/waze/NativeManager;

.field private searchBox:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 47
    iput-boolean v0, p0, Lcom/waze/share/ShareActivity;->isNavigating:Z

    .line 48
    iput-boolean v0, p0, Lcom/waze/share/ShareActivity;->bIsFollow:Z

    .line 55
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/share/ShareActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 56
    return-void
.end method

.method static synthetic access$0(Lcom/waze/share/ShareActivity;)Lcom/waze/NativeManager;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/waze/share/ShareActivity;->nativeManager:Lcom/waze/NativeManager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/share/ShareActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/waze/share/ShareActivity;->isNavigating:Z

    return v0
.end method

.method static synthetic access$2(Lcom/waze/share/ShareActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/waze/share/ShareActivity;->searchBox:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, -0x1

    .line 320
    const/16 v2, 0x4d2

    if-ne p1, v2, :cond_1

    .line 321
    if-ne p2, v3, :cond_0

    .line 322
    const-string v2, "android.speech.extra.RESULTS"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 323
    .local v0, matches:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 324
    const-string v2, "VOICE_SEARCH_RECOGNIZED"

    invoke-static {v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;)V

    .line 325
    iget-object v3, p0, Lcom/waze/share/ShareActivity;->searchBox:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 326
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/waze/share/ShareActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 327
    .local v1, mgr:Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/waze/share/ShareActivity;->searchBox:Landroid/widget/EditText;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 362
    .end local v0           #matches:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v1           #mgr:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    const/16 v2, 0x3ea

    if-ne p1, v2, :cond_2

    .line 334
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v2

    .line 335
    new-instance v3, Lcom/waze/share/ShareActivity$11;

    invoke-direct {v3, p0}, Lcom/waze/share/ShareActivity$11;-><init>(Lcom/waze/share/ShareActivity;)V

    .line 334
    invoke-virtual {v2, v3}, Lcom/waze/navigate/DriveToNativeManager;->getWork(Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;)V

    goto :goto_0

    .line 344
    :cond_2
    const/16 v2, 0x3e9

    if-ne p1, v2, :cond_3

    .line 347
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v2

    .line 348
    new-instance v3, Lcom/waze/share/ShareActivity$12;

    invoke-direct {v3, p0}, Lcom/waze/share/ShareActivity$12;-><init>(Lcom/waze/share/ShareActivity;)V

    .line 347
    invoke-virtual {v2, v3}, Lcom/waze/navigate/DriveToNativeManager;->getHome(Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;)V

    goto :goto_0

    .line 357
    :cond_3
    if-ne p2, v3, :cond_0

    .line 359
    invoke-virtual {p0, v3}, Lcom/waze/share/ShareActivity;->setResult(I)V

    .line 360
    invoke-virtual {p0}, Lcom/waze/share/ShareActivity;->finish()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 60
    sget-boolean v0, Lcom/waze/navigate/social/ShareDriveActivity;->bIsFollow:Z

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/waze/share/ShareActivity;->nativeManager:Lcom/waze/NativeManager;

    invoke-virtual {v0}, Lcom/waze/NativeManager;->StopFollow()V

    .line 64
    :cond_0
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onBackPressed()V

    .line 65
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const v11, 0x7f090605

    const v10, 0x7f090604

    const/16 v9, 0x8

    const/high16 v8, 0x3f00

    const/4 v7, 0x0

    .line 69
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v4, 0x7f0300e3

    invoke-virtual {p0, v4}, Lcom/waze/share/ShareActivity;->setContentView(I)V

    .line 72
    invoke-virtual {p0, v10}, Lcom/waze/share/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/waze/view/title/TitleBar;

    .line 73
    iget-object v5, p0, Lcom/waze/share/ShareActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_SEND_TITLE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    .line 72
    invoke-virtual {v4, p0, v5}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0, v10}, Lcom/waze/share/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/waze/view/title/TitleBar;

    new-instance v5, Lcom/waze/share/ShareActivity$1;

    invoke-direct {v5, p0}, Lcom/waze/share/ShareActivity$1;-><init>(Lcom/waze/share/ShareActivity;)V

    invoke-virtual {v4, v5}, Lcom/waze/view/title/TitleBar;->setOnClickCloseListener(Landroid/view/View$OnClickListener;)V

    .line 90
    const v4, 0x7f090607

    invoke-virtual {p0, v4}, Lcom/waze/share/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/waze/share/ShareActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 91
    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_SEND_BUTTON_MY_DRIVE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    .line 90
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    const v4, 0x7f090608

    invoke-virtual {p0, v4}, Lcom/waze/share/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    const v4, 0x7f09060b

    invoke-virtual {p0, v4}, Lcom/waze/share/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/waze/share/ShareActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 95
    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_SEND_BUTTON_CURRENT_LOCATION:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    .line 94
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    const v4, 0x7f09060e

    invoke-virtual {p0, v4}, Lcom/waze/share/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/waze/share/ShareActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 97
    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_SEND_BUTTON_DESTINATION:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    .line 96
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    const v4, 0x7f090611

    invoke-virtual {p0, v4}, Lcom/waze/share/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/waze/share/ShareActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 99
    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_MY_HOME:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    .line 98
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    const v4, 0x7f090614

    invoke-virtual {p0, v4}, Lcom/waze/share/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/waze/share/ShareActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 101
    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_MY_WORK:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    .line 100
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    const v4, 0x7f090615

    invoke-virtual {p0, v4}, Lcom/waze/share/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/waze/settings/SettingsTitleText;

    iget-object v5, p0, Lcom/waze/share/ShareActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 104
    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_MORE_OPTIONS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    .line 103
    invoke-virtual {v4, v5}, Lcom/waze/settings/SettingsTitleText;->setText(Ljava/lang/String;)V

    .line 106
    const v4, 0x7f090617

    invoke-virtual {p0, v4}, Lcom/waze/share/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/waze/share/ShareActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 107
    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_FROM_HISTORY:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    .line 106
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    const v4, 0x7f090619

    invoke-virtual {p0, v4}, Lcom/waze/share/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/waze/share/ShareActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 109
    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_FROM_FAVORITES:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    .line 108
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    const v4, 0x7f09060f

    invoke-virtual {p0, v4}, Lcom/waze/share/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/waze/share/ShareActivity$2;

    invoke-direct {v5, p0}, Lcom/waze/share/ShareActivity$2;-><init>(Lcom/waze/share/ShareActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    const v4, 0x7f090612

    invoke-virtual {p0, v4}, Lcom/waze/share/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/waze/share/ShareActivity$3;

    invoke-direct {v5, p0}, Lcom/waze/share/ShareActivity$3;-><init>(Lcom/waze/share/ShareActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    invoke-virtual {p0, v11}, Lcom/waze/share/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/waze/share/ShareActivity$4;

    invoke-direct {v5, p0}, Lcom/waze/share/ShareActivity$4;-><init>(Lcom/waze/share/ShareActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    const v4, 0x7f090062

    invoke-virtual {p0, v4}, Lcom/waze/share/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 165
    .local v3, speakButton:Landroid/widget/ImageButton;
    invoke-virtual {p0}, Lcom/waze/share/ShareActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 166
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v4, v5, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 167
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 168
    invoke-virtual {v3, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 171
    :cond_0
    iget-object v4, p0, Lcom/waze/share/ShareActivity;->nativeManager:Lcom/waze/NativeManager;

    invoke-virtual {v4}, Lcom/waze/NativeManager;->isNavigatingNTV()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 172
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/waze/share/ShareActivity;->isNavigating:Z

    .line 183
    :goto_0
    const v4, 0x7f09060c

    invoke-virtual {p0, v4}, Lcom/waze/share/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/waze/share/ShareActivity$5;

    invoke-direct {v5, p0}, Lcom/waze/share/ShareActivity$5;-><init>(Lcom/waze/share/ShareActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    const v4, 0x7f090609

    invoke-virtual {p0, v4}, Lcom/waze/share/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/waze/share/ShareActivity$6;

    invoke-direct {v5, p0}, Lcom/waze/share/ShareActivity$6;-><init>(Lcom/waze/share/ShareActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    const v4, 0x7f090616

    invoke-virtual {p0, v4}, Lcom/waze/share/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/waze/share/ShareActivity$7;

    invoke-direct {v5, p0}, Lcom/waze/share/ShareActivity$7;-><init>(Lcom/waze/share/ShareActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    const v4, 0x7f090618

    invoke-virtual {p0, v4}, Lcom/waze/share/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/waze/share/ShareActivity$8;

    invoke-direct {v5, p0}, Lcom/waze/share/ShareActivity$8;-><init>(Lcom/waze/share/ShareActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    const v4, 0x7f090061

    invoke-virtual {p0, v4}, Lcom/waze/share/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/waze/share/ShareActivity;->searchBox:Landroid/widget/EditText;

    .line 219
    iget-object v4, p0, Lcom/waze/share/ShareActivity;->searchBox:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/waze/share/ShareActivity;->searchBox:Landroid/widget/EditText;

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Lcom/waze/utils/EditTextUtils;->getKeyboardLockOnTouchListener(Landroid/content/Context;Landroid/widget/EditText;Lcom/waze/utils/EditTextUtils$OnTouchListenerDoneListener;)Landroid/view/View$OnTouchListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 220
    iget-object v4, p0, Lcom/waze/share/ShareActivity;->searchBox:Landroid/widget/EditText;

    new-instance v5, Lcom/waze/share/ShareActivity$9;

    invoke-direct {v5, p0}, Lcom/waze/share/ShareActivity$9;-><init>(Lcom/waze/share/ShareActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 233
    iget-object v4, p0, Lcom/waze/share/ShareActivity;->searchBox:Landroid/widget/EditText;

    new-instance v5, Lcom/waze/share/ShareActivity$10;

    invoke-direct {v5, p0}, Lcom/waze/share/ShareActivity$10;-><init>(Lcom/waze/share/ShareActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 251
    iget-object v4, p0, Lcom/waze/share/ShareActivity;->searchBox:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/waze/share/ShareActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_SEARCH_ADDRESS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 252
    return-void

    .line 174
    :cond_1
    const v4, 0x7f09060c

    invoke-virtual {p0, v4}, Lcom/waze/share/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 175
    .local v1, destination:Landroid/view/View;
    invoke-virtual {v1, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 176
    invoke-virtual {v1, v8}, Landroid/view/View;->setAlpha(F)V

    .line 178
    invoke-virtual {p0, v11}, Lcom/waze/share/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 179
    .local v2, eta:Landroid/view/View;
    invoke-virtual {v2, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 180
    invoke-virtual {v2, v8}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 281
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onPause()V

    .line 282
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/waze/share/ShareActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 283
    .local v0, mgr:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/waze/share/ShareActivity;->searchBox:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 284
    return-void
.end method

.method protected onShareMyCurrentLocation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 301
    const-string v0, "SHARE_LOCATION_OF"

    const-string v1, "VAUE"

    const-string v2, "CURRENT_LOCATION"

    invoke-static {v0, v1, v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    sget-object v0, Lcom/waze/share/ShareUtility$ShareType;->ShareType_ShareLocation:Lcom/waze/share/ShareUtility$ShareType;

    invoke-static {v0, v3, v3, v3}, Lcom/waze/share/ShareUtility;->OpenShareActivity(Lcom/waze/share/ShareUtility$ShareType;Ljava/lang/String;Lcom/waze/navigate/AddressItem;[Lcom/waze/user/PersonBase;)V

    .line 307
    return-void
.end method

.method protected onShareMyDestination()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 310
    const-string v0, "SHARE_LOCATION_OF"

    const-string v1, "VAUE"

    const-string v2, "DESTINATION"

    invoke-static {v0, v1, v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    sget-object v0, Lcom/waze/share/ShareUtility$ShareType;->ShareType_ShareDestination:Lcom/waze/share/ShareUtility$ShareType;

    invoke-static {v0, v3, v3, v3}, Lcom/waze/share/ShareUtility;->OpenShareActivity(Lcom/waze/share/ShareUtility$ShareType;Ljava/lang/String;Lcom/waze/navigate/AddressItem;[Lcom/waze/user/PersonBase;)V

    .line 316
    return-void
.end method

.method protected onShareMySavedLocation()V
    .locals 4

    .prologue
    .line 295
    const-string v1, "SHARE_LOCATION_OF"

    const-string v2, "VAUE"

    const-string v3, "FAVORITE"

    invoke-static {v1, v2, v3}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/share/MySavedLocationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 297
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/waze/share/ShareActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 298
    return-void
.end method

.method protected onShareRecentSearchLocation()V
    .locals 4

    .prologue
    .line 288
    const-string v1, "SHARE_LOCATION_OF"

    const-string v2, "VAUE"

    const-string v3, "HISTORY"

    invoke-static {v1, v2, v3}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/share/ShareRecentSearch;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 291
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/waze/share/ShareActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 292
    return-void
.end method

.method public searchClicked()V
    .locals 4

    .prologue
    .line 264
    const-string v1, "WAZE"

    const-string v2, "Search from share activity pressed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v1, p0, Lcom/waze/share/ShareActivity;->searchBox:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-gtz v1, :cond_0

    .line 277
    :goto_0
    return-void

    .line 271
    :cond_0
    const-string v1, "SHARE_LOCATION_OF"

    const-string v2, "VAUE"

    const-string v3, "SEARCH"

    invoke-static {v1, v2, v3}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/navigate/SearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 273
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "SearchStr"

    iget-object v2, p0, Lcom/waze/share/ShareActivity;->searchBox:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    const-string v1, "SearchMode"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 275
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/waze/share/ShareActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public speechRecognitionClicked(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 255
    const-string v1, "WAZE"

    const-string v2, "SR pressed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const-string v1, "VOICE_SEARCH"

    invoke-static {v1}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;)V

    .line 257
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 258
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    .line 259
    const-string v2, "free_form"

    .line 258
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    const/16 v1, 0x4d2

    invoke-virtual {p0, v0, v1}, Lcom/waze/share/ShareActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 261
    return-void
.end method
