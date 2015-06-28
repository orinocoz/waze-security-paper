.class public Lcom/waze/test/TestMapViewActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "TestMapViewActivity.java"


# instance fields
.field private mMapView:Lcom/waze/MapView;

.field private final mNativeCanvasReadyEvent:Lcom/waze/ifs/async/RunnableExecutor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 41
    new-instance v0, Lcom/waze/test/TestMapViewActivity$1;

    invoke-direct {v0, p0}, Lcom/waze/test/TestMapViewActivity$1;-><init>(Lcom/waze/test/TestMapViewActivity;)V

    iput-object v0, p0, Lcom/waze/test/TestMapViewActivity;->mNativeCanvasReadyEvent:Lcom/waze/ifs/async/RunnableExecutor;

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/test/TestMapViewActivity;->mMapView:Lcom/waze/MapView;

    .line 12
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const v0, 0x7f03011a

    invoke-virtual {p0, v0}, Lcom/waze/test/TestMapViewActivity;->setContentView(I)V

    .line 20
    const v0, 0x7f090283

    invoke-virtual {p0, v0}, Lcom/waze/test/TestMapViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/title/TitleBar;

    const-string v1, "Test MapView"

    invoke-virtual {v0, p0, v1}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Ljava/lang/String;)V

    .line 22
    const v0, 0x7f090722

    invoke-virtual {p0, v0}, Lcom/waze/test/TestMapViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/MapView;

    iput-object v0, p0, Lcom/waze/test/TestMapViewActivity;->mMapView:Lcom/waze/MapView;

    .line 23
    iget-object v0, p0, Lcom/waze/test/TestMapViewActivity;->mMapView:Lcom/waze/MapView;

    iget-object v1, p0, Lcom/waze/test/TestMapViewActivity;->mNativeCanvasReadyEvent:Lcom/waze/ifs/async/RunnableExecutor;

    invoke-virtual {v0, v1}, Lcom/waze/MapView;->setNativeCanvasReadyEvent(Lcom/waze/ifs/async/RunnableExecutor;)V

    .line 24
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 36
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onPause()V

    .line 37
    iget-object v0, p0, Lcom/waze/test/TestMapViewActivity;->mMapView:Lcom/waze/MapView;

    invoke-virtual {v0}, Lcom/waze/MapView;->onPause()V

    .line 38
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onResume()V

    .line 30
    iget-object v0, p0, Lcom/waze/test/TestMapViewActivity;->mMapView:Lcom/waze/MapView;

    invoke-virtual {v0}, Lcom/waze/MapView;->onResume()V

    .line 31
    return-void
.end method
