.class Lcom/waze/pioneer/PioneerManager$6;
.super Ljava/lang/Object;
.source "PioneerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/pioneer/PioneerManager;->initNativeLayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/pioneer/PioneerManager;


# direct methods
.method constructor <init>(Lcom/waze/pioneer/PioneerManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/pioneer/PioneerManager$6;->this$0:Lcom/waze/pioneer/PioneerManager;

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 441
    invoke-static {}, Lcom/waze/pioneer/PioneerNativeManager;->create()Lcom/waze/pioneer/PioneerNativeManager;

    .line 442
    iget-object v0, p0, Lcom/waze/pioneer/PioneerManager$6;->this$0:Lcom/waze/pioneer/PioneerManager;

    #calls: Lcom/waze/pioneer/PioneerManager;->_notify()V
    invoke-static {v0}, Lcom/waze/pioneer/PioneerManager;->access$2(Lcom/waze/pioneer/PioneerManager;)V

    .line 443
    return-void
.end method
