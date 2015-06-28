.class Lcom/waze/GeoFencingService$1;
.super Ljava/lang/Object;
.source "GeoFencingService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/GeoFencingService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/GeoFencingService;


# direct methods
.method constructor <init>(Lcom/waze/GeoFencingService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/GeoFencingService$1;->this$0:Lcom/waze/GeoFencingService;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lcom/waze/GeoFencingService;->access$0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/waze/GeoFencingService;->stop(Z)V

    .line 57
    :cond_0
    return-void
.end method
