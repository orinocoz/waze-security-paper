.class public Lcom/waze/reports/SearchPlaceNameActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "SearchPlaceNameActivity.java"


# static fields
.field public static final RET_SELECTED_PLACE:Ljava/lang/String; = "selected_place"


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private mEditTextSearch:Landroid/widget/EditText;

.field private mNm:Lcom/waze/NativeManager;

.field private mResultsList:Landroid/widget/ListView;

.field private mSelectedPlace:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/reports/SearchPlaceNameActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/waze/reports/SearchPlaceNameActivity;->mSelectedPlace:Ljava/lang/String;

    return-object v0
.end method

.method private setUpActivity()V
    .locals 4

    .prologue
    .line 48
    const v1, 0x7f0300df

    invoke-virtual {p0, v1}, Lcom/waze/reports/SearchPlaceNameActivity;->setContentView(I)V

    .line 49
    const v1, 0x7f090058

    invoke-virtual {p0, v1}, Lcom/waze/reports/SearchPlaceNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/title/TitleButtonBar;

    .line 51
    .local v0, titleButtonBar:Lcom/waze/view/title/TitleButtonBar;
    iget-object v1, p0, Lcom/waze/reports/SearchPlaceNameActivity;->mNm:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_EDIT_PLACE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f02010b

    .line 50
    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/waze/view/title/TitleButtonBar;->init(Landroid/app/Activity;Ljava/lang/String;II)V

    .line 52
    new-instance v1, Lcom/waze/reports/SearchPlaceNameActivity$1;

    invoke-direct {v1, p0}, Lcom/waze/reports/SearchPlaceNameActivity$1;-><init>(Lcom/waze/reports/SearchPlaceNameActivity;)V

    invoke-virtual {v0, v1}, Lcom/waze/view/title/TitleButtonBar;->setButtonTwoListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const v1, 0x7f0905f6

    invoke-virtual {p0, v1}, Lcom/waze/reports/SearchPlaceNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/waze/reports/SearchPlaceNameActivity;->mEditTextSearch:Landroid/widget/EditText;

    .line 63
    iget-object v1, p0, Lcom/waze/reports/SearchPlaceNameActivity;->mEditTextSearch:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/waze/reports/SearchPlaceNameActivity;->mNm:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_SEARCH:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 65
    const v1, 0x7f0905f7

    invoke-virtual {p0, v1}, Lcom/waze/reports/SearchPlaceNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/waze/reports/SearchPlaceNameActivity;->mResultsList:Landroid/widget/ListView;

    .line 66
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v0, -0x1

    .line 27
    if-ne p2, v0, :cond_0

    .line 28
    invoke-virtual {p0, v0}, Lcom/waze/reports/SearchPlaceNameActivity;->setResult(I)V

    .line 29
    invoke-virtual {p0}, Lcom/waze/reports/SearchPlaceNameActivity;->finish()V

    .line 31
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/waze/ifs/ui/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 32
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/reports/SearchPlaceNameActivity;->mNm:Lcom/waze/NativeManager;

    .line 38
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/reports/SearchPlaceNameActivity;->inflater:Landroid/view/LayoutInflater;

    .line 40
    invoke-direct {p0}, Lcom/waze/reports/SearchPlaceNameActivity;->setUpActivity()V

    .line 42
    invoke-virtual {p0}, Lcom/waze/reports/SearchPlaceNameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 44
    .local v0, inIntent:Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/waze/reports/SearchPlaceNameActivity;->setResult(I)V

    .line 45
    return-void
.end method
