.class Lcom/waze/NativeManager$202;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->openSendDrive()V
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
    iput-object p1, p0, Lcom/waze/NativeManager$202;->this$0:Lcom/waze/NativeManager;

    .line 5750
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 5753
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    .line 5754
    .local v1, mainActivity:Lcom/waze/MainActivity;
    iget-object v2, p0, Lcom/waze/NativeManager$202;->this$0:Lcom/waze/NativeManager;

    invoke-virtual {v2}, Lcom/waze/NativeManager;->isNavigatingNTV()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5755
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/waze/navigate/social/ShareHelpActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5756
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Lcom/waze/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 5760
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 5759
    :cond_0
    const/16 v2, 0x10

    invoke-static {v1, v2}, Lcom/waze/share/ShareUtility;->shareLocationOrDrive(Lcom/waze/ifs/ui/ActivityBase;I)V

    goto :goto_0
.end method
