.class public Lcom/waze/mywaze/social/FacebookEventActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "FacebookEventActivity.java"


# static fields
.field protected static final HINT_SIZE:F = 14.0f

.field protected static final TEXT_SIZE:F = 16.0f


# instance fields
.field private isNavigating:Z

.field protected locationData:Lcom/waze/main/navigate/LocationData;

.field private mAddressItem:Lcom/waze/navigate/AddressItem;

.field private mBody:Ljava/lang/String;

.field private mSubject:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private nativeManager:Lcom/waze/NativeManager;

.field searchBox:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/mywaze/social/FacebookEventActivity;->isNavigating:Z

    .line 44
    iput-object v1, p0, Lcom/waze/mywaze/social/FacebookEventActivity;->mSubject:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/waze/mywaze/social/FacebookEventActivity;->mBody:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/waze/mywaze/social/FacebookEventActivity;->mUrl:Ljava/lang/String;

    .line 54
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/mywaze/social/FacebookEventActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 55
    return-void
.end method

.method static synthetic access$0(Lcom/waze/mywaze/social/FacebookEventActivity;)Lcom/waze/navigate/AddressItem;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/waze/mywaze/social/FacebookEventActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/mywaze/social/FacebookEventActivity;)Lcom/waze/NativeManager;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/waze/mywaze/social/FacebookEventActivity;->nativeManager:Lcom/waze/NativeManager;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 175
    if-eqz p2, :cond_0

    .line 177
    invoke-virtual {p0, p2, p3}, Lcom/waze/mywaze/social/FacebookEventActivity;->setResult(ILandroid/content/Intent;)V

    .line 178
    invoke-virtual {p0}, Lcom/waze/mywaze/social/FacebookEventActivity;->finish()V

    .line 181
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/waze/ifs/ui/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 182
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const v4, 0x7f0902aa

    const v3, 0x7f0902ac

    .line 59
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v0, 0x7f030052

    invoke-virtual {p0, v0}, Lcom/waze/mywaze/social/FacebookEventActivity;->setContentView(I)V

    .line 61
    const v0, 0x7f090073

    invoke-virtual {p0, v0}, Lcom/waze/mywaze/social/FacebookEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/title/TitleBar;

    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_FACEBOOK_EVENT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, p0, v1}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;)V

    .line 63
    invoke-virtual {p0}, Lcom/waze/mywaze/social/FacebookEventActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "AddressItem"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/waze/navigate/AddressItem;

    iput-object v0, p0, Lcom/waze/mywaze/social/FacebookEventActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    .line 65
    const-string v0, "VERIF_EVENT_SCREEN"

    invoke-static {v0}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;)V

    .line 67
    const v0, 0x7f0902a6

    invoke-virtual {p0, v0}, Lcom/waze/mywaze/social/FacebookEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/mywaze/social/FacebookEventActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v1}, Lcom/waze/navigate/AddressItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    const v0, 0x7f0902a7

    invoke-virtual {p0, v0}, Lcom/waze/mywaze/social/FacebookEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/mywaze/social/FacebookEventActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v1}, Lcom/waze/navigate/AddressItem;->getStartTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    const v0, 0x7f0902a8

    invoke-virtual {p0, v0}, Lcom/waze/mywaze/social/FacebookEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/mywaze/social/FacebookEventActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_THIS_LOCATION_ADDRESS_HAS_NOT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-virtual {p0, v3}, Lcom/waze/mywaze/social/FacebookEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/mywaze/social/FacebookEventActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_THIS_EVENT_HAS_NO_LOCATION:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {p0, v3}, Lcom/waze/mywaze/social/FacebookEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 73
    invoke-virtual {p0, v3}, Lcom/waze/mywaze/social/FacebookEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/waze/mywaze/social/FacebookEventActivity$1;

    invoke-direct {v1, p0}, Lcom/waze/mywaze/social/FacebookEventActivity$1;-><init>(Lcom/waze/mywaze/social/FacebookEventActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    invoke-virtual {p0, v4}, Lcom/waze/mywaze/social/FacebookEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/waze/mywaze/social/FacebookEventActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_USE_THIS_ADDRESS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 101
    invoke-virtual {p0, v4}, Lcom/waze/mywaze/social/FacebookEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/waze/mywaze/social/FacebookEventActivity$2;

    invoke-direct {v1, p0}, Lcom/waze/mywaze/social/FacebookEventActivity$2;-><init>(Lcom/waze/mywaze/social/FacebookEventActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    const v0, 0x7f0902a9

    invoke-virtual {p0, v0}, Lcom/waze/mywaze/social/FacebookEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/waze/mywaze/social/FacebookEventActivity;->searchBox:Landroid/widget/EditText;

    .line 112
    iget-object v0, p0, Lcom/waze/mywaze/social/FacebookEventActivity;->searchBox:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/waze/mywaze/social/FacebookEventActivity;->searchBox:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/waze/utils/EditTextUtils;->getKeyboardLockOnTouchListener(Landroid/content/Context;Landroid/widget/EditText;Lcom/waze/utils/EditTextUtils$OnTouchListenerDoneListener;)Landroid/view/View$OnTouchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 113
    iget-object v0, p0, Lcom/waze/mywaze/social/FacebookEventActivity;->searchBox:Landroid/widget/EditText;

    new-instance v1, Lcom/waze/mywaze/social/FacebookEventActivity$3;

    invoke-direct {v1, p0}, Lcom/waze/mywaze/social/FacebookEventActivity$3;-><init>(Lcom/waze/mywaze/social/FacebookEventActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 126
    iget-object v0, p0, Lcom/waze/mywaze/social/FacebookEventActivity;->searchBox:Landroid/widget/EditText;

    new-instance v1, Lcom/waze/mywaze/social/FacebookEventActivity$4;

    invoke-direct {v1, p0}, Lcom/waze/mywaze/social/FacebookEventActivity$4;-><init>(Lcom/waze/mywaze/social/FacebookEventActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 144
    iget-object v0, p0, Lcom/waze/mywaze/social/FacebookEventActivity;->searchBox:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/waze/mywaze/social/FacebookEventActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v1}, Lcom/waze/navigate/AddressItem;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 145
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 166
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onPause()V

    .line 167
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/waze/mywaze/social/FacebookEventActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 168
    .local v0, mgr:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/waze/mywaze/social/FacebookEventActivity;->searchBox:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 169
    return-void
.end method

.method public searchClicked()V
    .locals 3

    .prologue
    .line 148
    const-string v1, "WAZE"

    const-string v2, "Search from facebook event pressed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/navigate/SearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/waze/mywaze/social/FacebookEventActivity;->searchBox:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 152
    const-string v1, "SearchStr"

    iget-object v2, p0, Lcom/waze/mywaze/social/FacebookEventActivity;->searchBox:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const-string v1, "AddressItem"

    iget-object v2, p0, Lcom/waze/mywaze/social/FacebookEventActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 159
    const-string v1, "SearchMode"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 160
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/waze/mywaze/social/FacebookEventActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 162
    :cond_0
    return-void
.end method
