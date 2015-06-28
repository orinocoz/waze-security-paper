.class Lcom/waze/StandbyManager$1;
.super Ljava/lang/Object;
.source "StandbyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/StandbyManager;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/StandbyManager;

.field private final synthetic val$screenOn:Z


# direct methods
.method constructor <init>(Lcom/waze/StandbyManager;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/StandbyManager$1;->this$0:Lcom/waze/StandbyManager;

    iput-boolean p2, p0, Lcom/waze/StandbyManager$1;->val$screenOn:Z

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/waze/StandbyManager$1;->val$screenOn:Z

    invoke-static {v0}, Lcom/waze/ifs/ui/ActivityBase;->setScreenState(Z)V

    .line 42
    return-void
.end method
