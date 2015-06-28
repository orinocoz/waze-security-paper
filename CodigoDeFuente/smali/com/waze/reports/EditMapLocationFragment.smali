.class public Lcom/waze/reports/EditMapLocationFragment;
.super Landroid/app/Fragment;
.source "EditMapLocationFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/reports/EditMapLocationFragment$IEditMap;,
        Lcom/waze/reports/EditMapLocationFragment$Position;
    }
.end annotation


# instance fields
.field private mAvoiderPin:Z

.field private mDoneEnabled:Z

.field private mDriveTo:Lcom/waze/navigate/DriveToNativeManager;

.field mHandler:Landroid/os/Handler;

.field private mInstruction:Lcom/waze/strings/DisplayStrings;

.field private mLat:I

.field private mLon:I

.field private mMapView:Lcom/waze/MapView;

.field private final mNativeCanvasReadyEvent:Lcom/waze/ifs/async/RunnableExecutor;

.field private mNm:Lcom/waze/NativeManager;

.field private mShouldUnsetAddressOptionsView:Z

.field private mTitle:Lcom/waze/strings/DisplayStrings;

.field private mTitleButtonBar:Lcom/waze/view/title/TitleButtonBar;

.field private r:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 39
    iput-boolean v1, p0, Lcom/waze/reports/EditMapLocationFragment;->mAvoiderPin:Z

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/reports/EditMapLocationFragment;->mDoneEnabled:Z

    .line 42
    iput-boolean v1, p0, Lcom/waze/reports/EditMapLocationFragment;->mShouldUnsetAddressOptionsView:Z

    .line 44
    new-instance v0, Lcom/waze/reports/EditMapLocationFragment$1;

    invoke-direct {v0, p0}, Lcom/waze/reports/EditMapLocationFragment$1;-><init>(Lcom/waze/reports/EditMapLocationFragment;)V

    iput-object v0, p0, Lcom/waze/reports/EditMapLocationFragment;->mNativeCanvasReadyEvent:Lcom/waze/ifs/async/RunnableExecutor;

    .line 54
    sget-object v0, Lcom/waze/strings/DisplayStrings;->DS_LOCATION:Lcom/waze/strings/DisplayStrings;

    iput-object v0, p0, Lcom/waze/reports/EditMapLocationFragment;->mTitle:Lcom/waze/strings/DisplayStrings;

    .line 55
    sget-object v0, Lcom/waze/strings/DisplayStrings;->DS_MOVE_THE_MAP_TO_ADJUST_PIN_LOCATION:Lcom/waze/strings/DisplayStrings;

    iput-object v0, p0, Lcom/waze/reports/EditMapLocationFragment;->mInstruction:Lcom/waze/strings/DisplayStrings;

    .line 166
    new-instance v0, Lcom/waze/reports/EditMapLocationFragment$2;

    invoke-direct {v0, p0}, Lcom/waze/reports/EditMapLocationFragment$2;-><init>(Lcom/waze/reports/EditMapLocationFragment;)V

    iput-object v0, p0, Lcom/waze/reports/EditMapLocationFragment;->mHandler:Landroid/os/Handler;

    .line 23
    return-void
.end method

.method static synthetic access$0(Lcom/waze/reports/EditMapLocationFragment;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/waze/reports/EditMapLocationFragment;->mShouldUnsetAddressOptionsView:Z

    return-void
.end method

.method static synthetic access$1(Lcom/waze/reports/EditMapLocationFragment;)Lcom/waze/navigate/DriveToNativeManager;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/waze/reports/EditMapLocationFragment;->mDriveTo:Lcom/waze/navigate/DriveToNativeManager;

    return-object v0
.end method

.method static synthetic access$2(Lcom/waze/reports/EditMapLocationFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 38
    iget v0, p0, Lcom/waze/reports/EditMapLocationFragment;->mLon:I

    return v0
.end method

.method static synthetic access$3(Lcom/waze/reports/EditMapLocationFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 37
    iget v0, p0, Lcom/waze/reports/EditMapLocationFragment;->mLat:I

    return v0
.end method

.method static synthetic access$4(Lcom/waze/reports/EditMapLocationFragment;)Lcom/waze/NativeManager;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/waze/reports/EditMapLocationFragment;->mNm:Lcom/waze/NativeManager;

    return-object v0
.end method

.method static synthetic access$5(Lcom/waze/reports/EditMapLocationFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/waze/reports/EditMapLocationFragment;->mAvoiderPin:Z

    return v0
.end method

.method static synthetic access$6(Lcom/waze/reports/EditMapLocationFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/waze/reports/EditMapLocationFragment;->mDoneEnabled:Z

    return v0
.end method

.method static synthetic access$7(Lcom/waze/reports/EditMapLocationFragment;)Lcom/waze/view/title/TitleButtonBar;
    .locals 1
    .parameter

    .prologue
    .line 191
    iget-object v0, p0, Lcom/waze/reports/EditMapLocationFragment;->mTitleButtonBar:Lcom/waze/view/title/TitleButtonBar;

    return-object v0
.end method

.method static synthetic access$8(Lcom/waze/reports/EditMapLocationFragment;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/waze/reports/EditMapLocationFragment;->mDoneEnabled:Z

    return-void
.end method

.method private setUpFragment()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 123
    iget-object v1, p0, Lcom/waze/reports/EditMapLocationFragment;->r:Landroid/view/View;

    const v3, 0x7f090058

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/title/TitleButtonBar;

    iput-object v1, p0, Lcom/waze/reports/EditMapLocationFragment;->mTitleButtonBar:Lcom/waze/view/title/TitleButtonBar;

    .line 124
    iget-object v1, p0, Lcom/waze/reports/EditMapLocationFragment;->mTitleButtonBar:Lcom/waze/view/title/TitleButtonBar;

    invoke-virtual {p0}, Lcom/waze/reports/EditMapLocationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/waze/reports/EditMapLocationFragment;->mNm:Lcom/waze/NativeManager;

    iget-object v5, p0, Lcom/waze/reports/EditMapLocationFragment;->mTitle:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    .line 125
    const v5, 0x7f02010b

    .line 124
    invoke-virtual {v1, v3, v4, v2, v5}, Lcom/waze/view/title/TitleButtonBar;->init(Landroid/app/Activity;Ljava/lang/String;II)V

    .line 126
    iget-object v1, p0, Lcom/waze/reports/EditMapLocationFragment;->mTitleButtonBar:Lcom/waze/view/title/TitleButtonBar;

    new-instance v3, Lcom/waze/reports/EditMapLocationFragment$3;

    invoke-direct {v3, p0}, Lcom/waze/reports/EditMapLocationFragment$3;-><init>(Lcom/waze/reports/EditMapLocationFragment;)V

    invoke-virtual {v1, v3}, Lcom/waze/view/title/TitleButtonBar;->setButtonTwoListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v1, p0, Lcom/waze/reports/EditMapLocationFragment;->r:Landroid/view/View;

    const v3, 0x7f09026e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/text/WazeTextView;

    .line 137
    .local v0, wtv:Lcom/waze/view/text/WazeTextView;
    iget-object v1, p0, Lcom/waze/reports/EditMapLocationFragment;->mNm:Lcom/waze/NativeManager;

    iget-object v3, p0, Lcom/waze/reports/EditMapLocationFragment;->mInstruction:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v1, p0, Lcom/waze/reports/EditMapLocationFragment;->r:Landroid/view/View;

    const v3, 0x7f09026b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/MapView;

    iput-object v1, p0, Lcom/waze/reports/EditMapLocationFragment;->mMapView:Lcom/waze/MapView;

    .line 140
    iget-object v1, p0, Lcom/waze/reports/EditMapLocationFragment;->mMapView:Lcom/waze/MapView;

    iget-object v3, p0, Lcom/waze/reports/EditMapLocationFragment;->mNativeCanvasReadyEvent:Lcom/waze/ifs/async/RunnableExecutor;

    invoke-virtual {v1, v3}, Lcom/waze/MapView;->setNativeCanvasReadyEvent(Lcom/waze/ifs/async/RunnableExecutor;)V

    .line 142
    iget-object v1, p0, Lcom/waze/reports/EditMapLocationFragment;->r:Landroid/view/View;

    const v3, 0x7f09026d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-boolean v1, p0, Lcom/waze/reports/EditMapLocationFragment;->mAvoiderPin:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 143
    return-void

    :cond_0
    move v1, v2

    .line 142
    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 147
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 148
    iget-object v0, p0, Lcom/waze/reports/EditMapLocationFragment;->mMapView:Lcom/waze/MapView;

    invoke-virtual {v0}, Lcom/waze/MapView;->onPause()V

    .line 149
    invoke-direct {p0}, Lcom/waze/reports/EditMapLocationFragment;->setUpFragment()V

    .line 150
    iget-object v0, p0, Lcom/waze/reports/EditMapLocationFragment;->mMapView:Lcom/waze/MapView;

    invoke-virtual {v0}, Lcom/waze/MapView;->onResume()V

    .line 151
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 101
    if-eqz p1, :cond_0

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    const-class v2, Lcom/waze/reports/EditMapLocationFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".mLon"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/waze/reports/EditMapLocationFragment;->mLon:I

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    const-class v2, Lcom/waze/reports/EditMapLocationFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".mLat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/waze/reports/EditMapLocationFragment;->mLat:I

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    const-class v2, Lcom/waze/reports/EditMapLocationFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".mTitle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 105
    .local v0, ord:I
    invoke-static {}, Lcom/waze/strings/DisplayStrings;->values()[Lcom/waze/strings/DisplayStrings;

    move-result-object v1

    aget-object v1, v1, v0

    iput-object v1, p0, Lcom/waze/reports/EditMapLocationFragment;->mTitle:Lcom/waze/strings/DisplayStrings;

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    const-class v2, Lcom/waze/reports/EditMapLocationFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".mInstruction"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 107
    invoke-static {}, Lcom/waze/strings/DisplayStrings;->values()[Lcom/waze/strings/DisplayStrings;

    move-result-object v1

    aget-object v1, v1, v0

    iput-object v1, p0, Lcom/waze/reports/EditMapLocationFragment;->mInstruction:Lcom/waze/strings/DisplayStrings;

    .line 109
    .end local v0           #ord:I
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 76
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 77
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/reports/EditMapLocationFragment;->mNm:Lcom/waze/NativeManager;

    .line 78
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/reports/EditMapLocationFragment;->mDriveTo:Lcom/waze/navigate/DriveToNativeManager;

    .line 80
    const v0, 0x7f030047

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/reports/EditMapLocationFragment;->r:Landroid/view/View;

    .line 81
    invoke-direct {p0}, Lcom/waze/reports/EditMapLocationFragment;->setUpFragment()V

    .line 83
    iget-object v0, p0, Lcom/waze/reports/EditMapLocationFragment;->mNm:Lcom/waze/NativeManager;

    sget v1, Lcom/waze/NativeManager;->UH_LOCATION_PICKER_STATE:I

    iget-object v2, p0, Lcom/waze/reports/EditMapLocationFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/waze/NativeManager;->setUpdateHandler(ILandroid/os/Handler;)V

    .line 84
    iget-object v0, p0, Lcom/waze/reports/EditMapLocationFragment;->r:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/waze/reports/EditMapLocationFragment;->mNm:Lcom/waze/NativeManager;

    sget v1, Lcom/waze/NativeManager;->UH_LOCATION_PICKER_STATE:I

    iget-object v2, p0, Lcom/waze/reports/EditMapLocationFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/waze/NativeManager;->unsetUpdateHandler(ILandroid/os/Handler;)V

    .line 114
    iget-boolean v0, p0, Lcom/waze/reports/EditMapLocationFragment;->mShouldUnsetAddressOptionsView:Z

    if-eqz v0, :cond_0

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/reports/EditMapLocationFragment;->mShouldUnsetAddressOptionsView:Z

    .line 116
    iget-object v0, p0, Lcom/waze/reports/EditMapLocationFragment;->mNm:Lcom/waze/NativeManager;

    iget-boolean v1, p0, Lcom/waze/reports/EditMapLocationFragment;->mAvoiderPin:Z

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->unsetLimitCenter(Z)V

    .line 117
    iget-object v0, p0, Lcom/waze/reports/EditMapLocationFragment;->mDriveTo:Lcom/waze/navigate/DriveToNativeManager;

    invoke-virtual {v0}, Lcom/waze/navigate/DriveToNativeManager;->unsetAddressOptionsView()V

    .line 119
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 120
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/waze/reports/EditMapLocationFragment;->mMapView:Lcom/waze/MapView;

    invoke-virtual {v0}, Lcom/waze/MapView;->onPause()V

    .line 157
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 158
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/waze/reports/EditMapLocationFragment;->mMapView:Lcom/waze/MapView;

    invoke-virtual {v0}, Lcom/waze/MapView;->onResume()V

    .line 163
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 164
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Lcom/waze/reports/EditMapLocationFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mLon"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/waze/reports/EditMapLocationFragment;->mLon:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Lcom/waze/reports/EditMapLocationFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mLat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/waze/reports/EditMapLocationFragment;->mLat:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Lcom/waze/reports/EditMapLocationFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mTitle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/reports/EditMapLocationFragment;->mTitle:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1}, Lcom/waze/strings/DisplayStrings;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Lcom/waze/reports/EditMapLocationFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mInstruction"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/waze/reports/EditMapLocationFragment;->mInstruction:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1}, Lcom/waze/strings/DisplayStrings;->ordinal()I

    move-result v1

    .line 93
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 95
    return-void
.end method

.method public setAvoiderPin(Z)V
    .locals 0
    .parameter "on"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/waze/reports/EditMapLocationFragment;->mAvoiderPin:Z

    .line 72
    return-void
.end method

.method public setInstruction(Lcom/waze/strings/DisplayStrings;)V
    .locals 0
    .parameter "ds"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/waze/reports/EditMapLocationFragment;->mInstruction:Lcom/waze/strings/DisplayStrings;

    .line 68
    return-void
.end method

.method public setLonLat(II)V
    .locals 0
    .parameter "lon"
    .parameter "lat"

    .prologue
    .line 58
    iput p1, p0, Lcom/waze/reports/EditMapLocationFragment;->mLon:I

    .line 59
    iput p2, p0, Lcom/waze/reports/EditMapLocationFragment;->mLat:I

    .line 60
    return-void
.end method

.method public setTitle(Lcom/waze/strings/DisplayStrings;)V
    .locals 0
    .parameter "ds"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/waze/reports/EditMapLocationFragment;->mTitle:Lcom/waze/strings/DisplayStrings;

    .line 64
    return-void
.end method
