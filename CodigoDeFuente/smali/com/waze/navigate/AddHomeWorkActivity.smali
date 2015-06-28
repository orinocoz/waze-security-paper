.class public final Lcom/waze/navigate/AddHomeWorkActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "AddHomeWorkActivity.java"


# static fields
.field private static final RQ_ADD:I = 0x3e9


# instance fields
.field private mDtnMgr:Lcom/waze/navigate/DriveToNativeManager;

.field private mHome:Lcom/waze/settings/DrillDownSettingView;

.field private mNatMgr:Lcom/waze/NativeManager;

.field mType:I

.field private mWork:Lcom/waze/settings/DrillDownSettingView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/navigate/AddHomeWorkActivity;)Lcom/waze/settings/DrillDownSettingView;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/waze/navigate/AddHomeWorkActivity;->mHome:Lcom/waze/settings/DrillDownSettingView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/navigate/AddHomeWorkActivity;)Lcom/waze/NativeManager;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/waze/navigate/AddHomeWorkActivity;->mNatMgr:Lcom/waze/NativeManager;

    return-object v0
.end method

.method static synthetic access$2(Lcom/waze/navigate/AddHomeWorkActivity;)Lcom/waze/settings/DrillDownSettingView;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/waze/navigate/AddHomeWorkActivity;->mWork:Lcom/waze/settings/DrillDownSettingView;

    return-object v0
.end method

.method private getHomeAndWork()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/waze/navigate/AddHomeWorkActivity;->mDtnMgr:Lcom/waze/navigate/DriveToNativeManager;

    new-instance v1, Lcom/waze/navigate/AddHomeWorkActivity$3;

    invoke-direct {v1, p0}, Lcom/waze/navigate/AddHomeWorkActivity$3;-><init>(Lcom/waze/navigate/AddHomeWorkActivity;)V

    invoke-virtual {v0, v1}, Lcom/waze/navigate/DriveToNativeManager;->getHome(Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;)V

    .line 94
    iget-object v0, p0, Lcom/waze/navigate/AddHomeWorkActivity;->mDtnMgr:Lcom/waze/navigate/DriveToNativeManager;

    new-instance v1, Lcom/waze/navigate/AddHomeWorkActivity$4;

    invoke-direct {v1, p0}, Lcom/waze/navigate/AddHomeWorkActivity$4;-><init>(Lcom/waze/navigate/AddHomeWorkActivity;)V

    invoke-virtual {v0, v1}, Lcom/waze/navigate/DriveToNativeManager;->getWork(Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;)V

    .line 114
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 124
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/waze/navigate/AddHomeWorkActivity;->getHomeAndWork()V

    .line 126
    const v0, 0x800f

    invoke-virtual {p0, v0}, Lcom/waze/navigate/AddHomeWorkActivity;->setResult(I)V

    .line 130
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/waze/ifs/ui/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/waze/navigate/AddHomeWorkActivity;->requestWindowFeature(I)Z

    .line 37
    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/waze/navigate/AddHomeWorkActivity;->setContentView(I)V

    .line 39
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/navigate/AddHomeWorkActivity;->mNatMgr:Lcom/waze/NativeManager;

    .line 40
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/navigate/AddHomeWorkActivity;->mDtnMgr:Lcom/waze/navigate/DriveToNativeManager;

    .line 42
    invoke-virtual {p0}, Lcom/waze/navigate/AddHomeWorkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "AddressType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/waze/navigate/AddHomeWorkActivity;->mType:I

    .line 44
    invoke-direct {p0}, Lcom/waze/navigate/AddHomeWorkActivity;->getHomeAndWork()V

    .line 46
    const v0, 0x7f090058

    invoke-virtual {p0, v0}, Lcom/waze/navigate/AddHomeWorkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/title/TitleBar;

    .line 47
    iget-object v1, p0, Lcom/waze/navigate/AddHomeWorkActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_HOME_WORK_WIZ_TITLE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-virtual {v0, p0, v1}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Ljava/lang/String;)V

    .line 49
    const v0, 0x7f0900a2

    invoke-virtual {p0, v0}, Lcom/waze/navigate/AddHomeWorkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/DrillDownSettingView;

    iput-object v0, p0, Lcom/waze/navigate/AddHomeWorkActivity;->mHome:Lcom/waze/settings/DrillDownSettingView;

    .line 50
    iget-object v0, p0, Lcom/waze/navigate/AddHomeWorkActivity;->mHome:Lcom/waze/settings/DrillDownSettingView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/waze/settings/DrillDownSettingView;->setText(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/waze/navigate/AddHomeWorkActivity;->mHome:Lcom/waze/settings/DrillDownSettingView;

    new-instance v1, Lcom/waze/navigate/AddHomeWorkActivity$1;

    invoke-direct {v1, p0}, Lcom/waze/navigate/AddHomeWorkActivity$1;-><init>(Lcom/waze/navigate/AddHomeWorkActivity;)V

    invoke-virtual {v0, v1}, Lcom/waze/settings/DrillDownSettingView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const v0, 0x7f0900a4

    invoke-virtual {p0, v0}, Lcom/waze/navigate/AddHomeWorkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/DrillDownSettingView;

    iput-object v0, p0, Lcom/waze/navigate/AddHomeWorkActivity;->mWork:Lcom/waze/settings/DrillDownSettingView;

    .line 59
    iget-object v0, p0, Lcom/waze/navigate/AddHomeWorkActivity;->mWork:Lcom/waze/settings/DrillDownSettingView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/waze/settings/DrillDownSettingView;->setText(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/waze/navigate/AddHomeWorkActivity;->mWork:Lcom/waze/settings/DrillDownSettingView;

    new-instance v1, Lcom/waze/navigate/AddHomeWorkActivity$2;

    invoke-direct {v1, p0}, Lcom/waze/navigate/AddHomeWorkActivity$2;-><init>(Lcom/waze/navigate/AddHomeWorkActivity;)V

    invoke-virtual {v0, v1}, Lcom/waze/settings/DrillDownSettingView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    const v0, 0x7f0900a1

    invoke-virtual {p0, v0}, Lcom/waze/navigate/AddHomeWorkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/SettingsTitleText;

    iget-object v1, p0, Lcom/waze/navigate/AddHomeWorkActivity;->mNatMgr:Lcom/waze/NativeManager;

    .line 69
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_HOME:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Lcom/waze/settings/SettingsTitleText;->setText(Ljava/lang/String;)V

    .line 70
    const v0, 0x7f0900a3

    invoke-virtual {p0, v0}, Lcom/waze/navigate/AddHomeWorkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/SettingsTitleText;

    iget-object v1, p0, Lcom/waze/navigate/AddHomeWorkActivity;->mNatMgr:Lcom/waze/NativeManager;

    .line 71
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_WORK:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Lcom/waze/settings/SettingsTitleText;->setText(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public searchClicked(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 117
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/navigate/AutocompleteSearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "SearchMode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 119
    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1}, Lcom/waze/navigate/AddHomeWorkActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 120
    return-void
.end method
