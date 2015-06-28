.class Lcom/waze/pioneer/PioneerManager$4;
.super Ljava/lang/Object;
.source "PioneerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/pioneer/PioneerManager;->onPioneerConnected()V
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
    iput-object p1, p0, Lcom/waze/pioneer/PioneerManager$4;->this$0:Lcom/waze/pioneer/PioneerManager;

    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 415
    invoke-static {}, Lcom/waze/pioneer/PioneerNativeManager;->onPioneerConnected()V

    .line 416
    return-void
.end method
