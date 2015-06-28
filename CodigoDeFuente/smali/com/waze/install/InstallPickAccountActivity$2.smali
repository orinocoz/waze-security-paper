.class Lcom/waze/install/InstallPickAccountActivity$2;
.super Ljava/lang/Object;
.source "InstallPickAccountActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/install/InstallPickAccountActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/install/InstallPickAccountActivity;


# direct methods
.method constructor <init>(Lcom/waze/install/InstallPickAccountActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/install/InstallPickAccountActivity$2;->this$0:Lcom/waze/install/InstallPickAccountActivity;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "paramView"

    .prologue
    .line 50
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/mywaze/MyWazeNativeManager;->facebookResolveConflict()V

    .line 51
    iget-object v0, p0, Lcom/waze/install/InstallPickAccountActivity$2;->this$0:Lcom/waze/install/InstallPickAccountActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/waze/install/InstallPickAccountActivity;->setResult(I)V

    .line 52
    iget-object v0, p0, Lcom/waze/install/InstallPickAccountActivity$2;->this$0:Lcom/waze/install/InstallPickAccountActivity;

    invoke-virtual {v0}, Lcom/waze/install/InstallPickAccountActivity;->finish()V

    .line 53
    return-void
.end method
