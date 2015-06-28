.class public final Lcom/waze/MapViewWrapper;
.super Landroid/widget/RelativeLayout;
.source "MapViewWrapper.java"


# instance fields
.field private mapView:Lcom/waze/MapView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 35
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f030081

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 36
    const v3, 0x7f0903f4

    invoke-virtual {p0, v3}, Lcom/waze/MapViewWrapper;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/waze/MapView;

    iput-object v3, p0, Lcom/waze/MapViewWrapper;->mapView:Lcom/waze/MapView;

    .line 37
    sget-object v3, Lcom/waze/R$styleable;->MainView:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 38
    .local v0, attrArray:Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 39
    .local v1, handleKeys:Z
    iget-object v3, p0, Lcom/waze/MapViewWrapper;->mapView:Lcom/waze/MapView;

    invoke-virtual {v3, v1}, Lcom/waze/MapView;->setHandleKeys(Z)V

    .line 40
    return-void
.end method


# virtual methods
.method public closeDetailsPopup()V
    .locals 2

    .prologue
    .line 68
    invoke-static {}, Lcom/waze/view/popups/DetailsPopUp;->hasInstance()Z

    move-result v1

    if-nez v1, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    invoke-virtual {p0}, Lcom/waze/MapViewWrapper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/waze/view/popups/DetailsPopUp;->getInstance(Landroid/content/Context;)Lcom/waze/view/popups/DetailsPopUp;

    move-result-object v0

    .line 71
    .local v0, popup:Lcom/waze/view/popups/DetailsPopUp;
    invoke-virtual {v0}, Lcom/waze/view/popups/DetailsPopUp;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {v0}, Lcom/waze/view/popups/DetailsPopUp;->closeNow()V

    goto :goto_0
.end method

.method public getMapView()Lcom/waze/MapView;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/waze/MapViewWrapper;->mapView:Lcom/waze/MapView;

    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "aKeyCode"
    .parameter "aEvent"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/waze/MapViewWrapper;->mapView:Lcom/waze/MapView;

    invoke-virtual {v0, p1, p2}, Lcom/waze/MapView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/waze/MapViewWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/waze/view/popups/DetailsPopUp;->getInstance(Landroid/content/Context;)Lcom/waze/view/popups/DetailsPopUp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/view/popups/DetailsPopUp;->hide()V

    .line 44
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/waze/AppService;->setActiveMapViewWrapper(Lcom/waze/MapViewWrapper;)V

    .line 45
    iget-object v0, p0, Lcom/waze/MapViewWrapper;->mapView:Lcom/waze/MapView;

    invoke-virtual {v0}, Lcom/waze/MapView;->onPause()V

    .line 46
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 48
    invoke-static {p0}, Lcom/waze/AppService;->setActiveMapViewWrapper(Lcom/waze/MapViewWrapper;)V

    .line 49
    iget-object v0, p0, Lcom/waze/MapViewWrapper;->mapView:Lcom/waze/MapView;

    invoke-virtual {v0}, Lcom/waze/MapView;->onResume()V

    .line 50
    return-void
.end method

.method public showDetailsPopup(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 8
    .parameter "x"
    .parameter "y"
    .parameter "title"
    .parameter "msg"
    .parameter "iconName"
    .parameter "moreActionEnabled"
    .parameter "special"

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/waze/MapViewWrapper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/waze/view/popups/DetailsPopUp;->getInstance(Landroid/content/Context;)Lcom/waze/view/popups/DetailsPopUp;

    move-result-object v0

    .local v0, popup:Lcom/waze/view/popups/DetailsPopUp;
    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    .line 56
    invoke-virtual/range {v0 .. v7}, Lcom/waze/view/popups/DetailsPopUp;->show(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 57
    return-void
.end method

.method public updateDetailsPopup(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 60
    invoke-static {}, Lcom/waze/view/popups/DetailsPopUp;->hasInstance()Z

    move-result v1

    if-nez v1, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    invoke-virtual {p0}, Lcom/waze/MapViewWrapper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/waze/view/popups/DetailsPopUp;->getInstance(Landroid/content/Context;)Lcom/waze/view/popups/DetailsPopUp;

    move-result-object v0

    .line 63
    .local v0, popup:Lcom/waze/view/popups/DetailsPopUp;
    invoke-virtual {v0}, Lcom/waze/view/popups/DetailsPopUp;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {v0, p1, p2}, Lcom/waze/view/popups/DetailsPopUp;->update(II)V

    goto :goto_0
.end method
