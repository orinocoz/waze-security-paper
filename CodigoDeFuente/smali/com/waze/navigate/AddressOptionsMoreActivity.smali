.class public Lcom/waze/navigate/AddressOptionsMoreActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "AddressOptionsMoreActivity.java"


# instance fields
.field private addressItem:Lcom/waze/navigate/AddressItem;

.field private driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;

.field private isAddStopPoint:Z

.field private isAdditionalAddToFavorites:Z

.field private isAdditionalRemoveFromHistory:Z

.field private nativeManager:Lcom/waze/NativeManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/navigate/AddressOptionsMoreActivity;->isAddStopPoint:Z

    .line 28
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/navigate/AddressOptionsMoreActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 29
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/navigate/AddressOptionsMoreActivity;->driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;

    .line 30
    return-void
.end method

.method static synthetic access$0(Lcom/waze/navigate/AddressOptionsMoreActivity;)Lcom/waze/navigate/AddressItem;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsMoreActivity;->addressItem:Lcom/waze/navigate/AddressItem;

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/navigate/AddressOptionsMoreActivity;)Lcom/waze/navigate/DriveToNativeManager;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsMoreActivity;->driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;

    return-object v0
.end method

.method static synthetic access$2(Lcom/waze/navigate/AddressOptionsMoreActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/waze/navigate/AddressOptionsMoreActivity;->isAdditionalAddToFavorites:Z

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 34
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v4, 0x7f030010

    invoke-virtual {p0, v4}, Lcom/waze/navigate/AddressOptionsMoreActivity;->setContentView(I)V

    .line 36
    invoke-virtual {p0}, Lcom/waze/navigate/AddressOptionsMoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "AddressItem"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/waze/navigate/AddressItem;

    iput-object v4, p0, Lcom/waze/navigate/AddressOptionsMoreActivity;->addressItem:Lcom/waze/navigate/AddressItem;

    .line 37
    invoke-virtual {p0}, Lcom/waze/navigate/AddressOptionsMoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "AdditionalButton"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/waze/navigate/AddressOptionsMoreActivity;->isAdditionalAddToFavorites:Z

    .line 38
    invoke-virtual {p0}, Lcom/waze/navigate/AddressOptionsMoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "RemoveFromHistoryButton"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/waze/navigate/AddressOptionsMoreActivity;->isAdditionalRemoveFromHistory:Z

    .line 40
    const v4, 0x7f090058

    invoke-virtual {p0, v4}, Lcom/waze/navigate/AddressOptionsMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/waze/view/title/TitleBar;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_MORE_OPTIONS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, p0, v5}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;)V

    .line 41
    const v4, 0x7f0900fb

    invoke-virtual {p0, v4}, Lcom/waze/navigate/AddressOptionsMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/settings/DrillDownSettingView;

    .line 42
    .local v0, addStopView:Lcom/waze/settings/DrillDownSettingView;
    const v4, 0x7f0900fc

    invoke-virtual {p0, v4}, Lcom/waze/navigate/AddressOptionsMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/settings/DrillDownSettingView;

    .line 43
    .local v2, setStartView:Lcom/waze/settings/DrillDownSettingView;
    const v4, 0x7f0900fd

    invoke-virtual {p0, v4}, Lcom/waze/navigate/AddressOptionsMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/waze/settings/DrillDownSettingView;

    .line 44
    .local v3, showOnMapView:Lcom/waze/settings/DrillDownSettingView;
    const v4, 0x7f0900fe

    invoke-virtual {p0, v4}, Lcom/waze/navigate/AddressOptionsMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/settings/DrillDownSettingView;

    .line 45
    .local v1, addToFavsView:Lcom/waze/settings/DrillDownSettingView;
    iget-object v4, p0, Lcom/waze/navigate/AddressOptionsMoreActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_ADD_A_STOP_ON_THE_WAY:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/waze/settings/DrillDownSettingView;->setText(Ljava/lang/String;)V

    .line 46
    iget-object v4, p0, Lcom/waze/navigate/AddressOptionsMoreActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_SET_AS_START_POINT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/waze/settings/DrillDownSettingView;->setText(Ljava/lang/String;)V

    .line 47
    iget-object v4, p0, Lcom/waze/navigate/AddressOptionsMoreActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_SHOW_ON_MAP:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/waze/settings/DrillDownSettingView;->setText(Ljava/lang/String;)V

    .line 48
    iget-boolean v4, p0, Lcom/waze/navigate/AddressOptionsMoreActivity;->isAdditionalAddToFavorites:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/waze/navigate/AddressOptionsMoreActivity;->isAdditionalRemoveFromHistory:Z

    if-eqz v4, :cond_0

    .line 50
    iget-object v4, p0, Lcom/waze/navigate/AddressOptionsMoreActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_REMOVE_FROM_HISTORY:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/waze/settings/DrillDownSettingView;->setText(Ljava/lang/String;)V

    .line 56
    :goto_0
    invoke-virtual {v0, v6}, Lcom/waze/settings/DrillDownSettingView;->displayMore(Z)V

    .line 57
    invoke-virtual {v2, v6}, Lcom/waze/settings/DrillDownSettingView;->displayMore(Z)V

    .line 58
    invoke-virtual {v3, v6}, Lcom/waze/settings/DrillDownSettingView;->displayMore(Z)V

    .line 59
    invoke-virtual {v1, v6}, Lcom/waze/settings/DrillDownSettingView;->displayMore(Z)V

    .line 71
    iget-boolean v4, p0, Lcom/waze/navigate/AddressOptionsMoreActivity;->isAdditionalAddToFavorites:Z

    if-eqz v4, :cond_1

    .line 72
    invoke-virtual {v1, v6}, Lcom/waze/settings/DrillDownSettingView;->setVisibility(I)V

    .line 84
    :goto_1
    new-instance v4, Lcom/waze/navigate/AddressOptionsMoreActivity$1;

    invoke-direct {v4, p0}, Lcom/waze/navigate/AddressOptionsMoreActivity$1;-><init>(Lcom/waze/navigate/AddressOptionsMoreActivity;)V

    invoke-virtual {v0, v4}, Lcom/waze/settings/DrillDownSettingView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    new-instance v4, Lcom/waze/navigate/AddressOptionsMoreActivity$2;

    invoke-direct {v4, p0}, Lcom/waze/navigate/AddressOptionsMoreActivity$2;-><init>(Lcom/waze/navigate/AddressOptionsMoreActivity;)V

    invoke-virtual {v2, v4}, Lcom/waze/settings/DrillDownSettingView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    new-instance v4, Lcom/waze/navigate/AddressOptionsMoreActivity$3;

    invoke-direct {v4, p0}, Lcom/waze/navigate/AddressOptionsMoreActivity$3;-><init>(Lcom/waze/navigate/AddressOptionsMoreActivity;)V

    invoke-virtual {v3, v4}, Lcom/waze/settings/DrillDownSettingView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    new-instance v4, Lcom/waze/navigate/AddressOptionsMoreActivity$4;

    invoke-direct {v4, p0}, Lcom/waze/navigate/AddressOptionsMoreActivity$4;-><init>(Lcom/waze/navigate/AddressOptionsMoreActivity;)V

    invoke-virtual {v1, v4}, Lcom/waze/settings/DrillDownSettingView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    return-void

    .line 54
    :cond_0
    iget-object v4, p0, Lcom/waze/navigate/AddressOptionsMoreActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_ADD_TO_FAVORITES:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/waze/settings/DrillDownSettingView;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_1
    iget-boolean v4, p0, Lcom/waze/navigate/AddressOptionsMoreActivity;->isAdditionalRemoveFromHistory:Z

    if-eqz v4, :cond_2

    .line 76
    invoke-virtual {v1, v6}, Lcom/waze/settings/DrillDownSettingView;->setVisibility(I)V

    goto :goto_1

    .line 80
    :cond_2
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lcom/waze/settings/DrillDownSettingView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 133
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onResume()V

    .line 134
    return-void
.end method
