.class Lcom/waze/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/MainActivity;->onPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/MainActivity;


# direct methods
.method constructor <init>(Lcom/waze/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/MainActivity$3;->this$0:Lcom/waze/MainActivity;

    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 509
    invoke-static {}, Lcom/waze/AppService;->getMainView()Lcom/waze/MapViewWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 512
    invoke-static {}, Lcom/waze/AppService;->getMainView()Lcom/waze/MapViewWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/MapViewWrapper;->onPause()V

    .line 514
    :cond_0
    return-void
.end method
