.class Lcom/waze/LayoutManager$1;
.super Ljava/lang/Object;
.source "LayoutManager.java"

# interfaces
.implements Lcom/waze/WzWebView$WebViewBackCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/LayoutManager;->CreateWebView(I)Lcom/waze/WzWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/LayoutManager;


# direct methods
.method constructor <init>(Lcom/waze/LayoutManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/LayoutManager$1;->this$0:Lcom/waze/LayoutManager;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "aEvent"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/waze/LayoutManager$1;->this$0:Lcom/waze/LayoutManager;

    #getter for: Lcom/waze/LayoutManager;->mAppView:Lcom/waze/MapViewWrapper;
    invoke-static {v0}, Lcom/waze/LayoutManager;->access$0(Lcom/waze/LayoutManager;)Lcom/waze/MapViewWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/MapViewWrapper;->getMapView()Lcom/waze/MapView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/waze/MapView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
