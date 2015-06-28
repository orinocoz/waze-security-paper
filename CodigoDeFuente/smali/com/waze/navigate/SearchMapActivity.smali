.class public Lcom/waze/navigate/SearchMapActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "SearchMapActivity.java"


# instance fields
.field private category:Ljava/lang/String;

.field private driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;

.field private final mNativeCanvasReadyEvent:Lcom/waze/ifs/async/RunnableExecutor;

.field private mapView:Lcom/waze/MapViewWrapper;

.field private provider:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 66
    new-instance v0, Lcom/waze/navigate/SearchMapActivity$1;

    invoke-direct {v0, p0}, Lcom/waze/navigate/SearchMapActivity$1;-><init>(Lcom/waze/navigate/SearchMapActivity;)V

    iput-object v0, p0, Lcom/waze/navigate/SearchMapActivity;->mNativeCanvasReadyEvent:Lcom/waze/ifs/async/RunnableExecutor;

    .line 15
    return-void
.end method

.method static synthetic access$0(Lcom/waze/navigate/SearchMapActivity;)Lcom/waze/navigate/DriveToNativeManager;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/waze/navigate/SearchMapActivity;->driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/navigate/SearchMapActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/waze/navigate/SearchMapActivity;->category:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/waze/navigate/SearchMapActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/waze/navigate/SearchMapActivity;->provider:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v0, -0x1

    .line 58
    if-ne p2, v0, :cond_0

    .line 60
    invoke-virtual {p0, v0}, Lcom/waze/navigate/SearchMapActivity;->setResult(I)V

    .line 61
    invoke-virtual {p0}, Lcom/waze/navigate/SearchMapActivity;->finish()V

    .line 63
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/waze/ifs/ui/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 64
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 54
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const v1, 0x7f0300de

    invoke-virtual {p0, v1}, Lcom/waze/navigate/SearchMapActivity;->setContentView(I)V

    .line 24
    invoke-virtual {p0}, Lcom/waze/navigate/SearchMapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "category"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/navigate/SearchMapActivity;->category:Ljava/lang/String;

    .line 25
    invoke-virtual {p0}, Lcom/waze/navigate/SearchMapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "provider"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/navigate/SearchMapActivity;->provider:Ljava/lang/String;

    .line 26
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/navigate/SearchMapActivity;->driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;

    .line 27
    const v1, 0x7f090202

    invoke-virtual {p0, v1}, Lcom/waze/navigate/SearchMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/MapViewWrapper;

    iput-object v1, p0, Lcom/waze/navigate/SearchMapActivity;->mapView:Lcom/waze/MapViewWrapper;

    .line 28
    iget-object v1, p0, Lcom/waze/navigate/SearchMapActivity;->mapView:Lcom/waze/MapViewWrapper;

    invoke-virtual {v1}, Lcom/waze/MapViewWrapper;->getMapView()Lcom/waze/MapView;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/navigate/SearchMapActivity;->mNativeCanvasReadyEvent:Lcom/waze/ifs/async/RunnableExecutor;

    invoke-virtual {v1, v2}, Lcom/waze/MapView;->setNativeCanvasReadyEvent(Lcom/waze/ifs/async/RunnableExecutor;)V

    .line 33
    const v1, 0x7f090058

    invoke-virtual {p0, v1}, Lcom/waze/navigate/SearchMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/title/TitleBar;

    .line 34
    .local v0, titleBar:Lcom/waze/view/title/TitleBar;
    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_SEARCH_RESULTS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, p0, v1}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;)V

    .line 35
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_LIST:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/view/title/TitleBar;->setCloseText(Ljava/lang/String;)V

    .line 36
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/waze/view/title/TitleBar;->setCloseResultCode(I)V

    .line 37
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onPause()V

    .line 42
    iget-object v0, p0, Lcom/waze/navigate/SearchMapActivity;->mapView:Lcom/waze/MapViewWrapper;

    invoke-virtual {v0}, Lcom/waze/MapViewWrapper;->onPause()V

    .line 43
    iget-object v0, p0, Lcom/waze/navigate/SearchMapActivity;->driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;

    invoke-virtual {v0}, Lcom/waze/navigate/DriveToNativeManager;->unsetSearchMapView()V

    .line 44
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onResume()V

    .line 49
    iget-object v0, p0, Lcom/waze/navigate/SearchMapActivity;->mapView:Lcom/waze/MapViewWrapper;

    invoke-virtual {v0}, Lcom/waze/MapViewWrapper;->onResume()V

    .line 50
    return-void
.end method
