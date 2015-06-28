.class Lcom/waze/rtalerts/RTAlertsNativeManager$12;
.super Ljava/lang/Object;
.source "RTAlertsNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/rtalerts/RTAlertsNativeManager;->reportBadRoute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/rtalerts/RTAlertsNativeManager;


# direct methods
.method constructor <init>(Lcom/waze/rtalerts/RTAlertsNativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$12;->this$0:Lcom/waze/rtalerts/RTAlertsNativeManager;

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/waze/rtalerts/RTAlertsNativeManager$12;->this$0:Lcom/waze/rtalerts/RTAlertsNativeManager;

    #calls: Lcom/waze/rtalerts/RTAlertsNativeManager;->reportBadRouteNTV()V
    invoke-static {v0}, Lcom/waze/rtalerts/RTAlertsNativeManager;->access$10(Lcom/waze/rtalerts/RTAlertsNativeManager;)V

    .line 315
    return-void
.end method
