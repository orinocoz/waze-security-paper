.class Lcom/waze/AppService$3;
.super Ljava/lang/Object;
.source "AppService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/AppService;->setMainLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 505
    invoke-static {}, Lcom/waze/AppService;->access$11()Lcom/waze/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v0

    .line 506
    .local v0, layoutMgr:Lcom/waze/LayoutManager;
    invoke-static {}, Lcom/waze/AppService;->access$11()Lcom/waze/MainActivity;

    move-result-object v1

    invoke-virtual {v0}, Lcom/waze/LayoutManager;->getMainLayout()Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/waze/MainActivity;->setContentView(Landroid/view/View;)V

    .line 507
    return-void
.end method
