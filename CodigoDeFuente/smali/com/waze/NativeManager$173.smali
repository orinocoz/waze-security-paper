.class Lcom/waze/NativeManager$173;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->WarnGpsDisabled()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$173;->this$0:Lcom/waze/NativeManager;

    .line 4579
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4582
    iget-object v0, p0, Lcom/waze/NativeManager$173;->this$0:Lcom/waze/NativeManager;

    #getter for: Lcom/waze/NativeManager;->mLocationListner:Lcom/waze/NativeLocListener;
    invoke-static {v0}, Lcom/waze/NativeManager;->access$96(Lcom/waze/NativeManager;)Lcom/waze/NativeLocListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeLocListener;->gpsProviderEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4583
    invoke-static {}, Lcom/waze/pioneer/PioneerManager;->isExtLocationActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4585
    const-string v0, "GPS is disabled! Warning is shown to user"

    invoke-static {v0}, Lcom/waze/Logger;->ww(Ljava/lang/String;)V

    .line 4586
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 4587
    iget-object v0, p0, Lcom/waze/NativeManager$173;->this$0:Lcom/waze/NativeManager;

    const/4 v1, 0x1

    #calls: Lcom/waze/NativeManager;->ShowGpsDisabledWarningNTV(I)V
    invoke-static {v0, v1}, Lcom/waze/NativeManager;->access$97(Lcom/waze/NativeManager;I)V

    .line 4594
    :cond_0
    :goto_0
    return-void

    .line 4591
    :cond_1
    iget-object v0, p0, Lcom/waze/NativeManager$173;->this$0:Lcom/waze/NativeManager;

    const/4 v1, 0x0

    #calls: Lcom/waze/NativeManager;->ShowGpsDisabledWarningNTV(I)V
    invoke-static {v0, v1}, Lcom/waze/NativeManager;->access$97(Lcom/waze/NativeManager;I)V

    goto :goto_0
.end method
