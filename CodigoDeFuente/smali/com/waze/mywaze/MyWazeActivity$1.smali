.class Lcom/waze/mywaze/MyWazeActivity$1;
.super Ljava/lang/Object;
.source "MyWazeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/mywaze/MyWazeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/mywaze/MyWazeActivity;


# direct methods
.method constructor <init>(Lcom/waze/mywaze/MyWazeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/mywaze/MyWazeActivity$1;->this$0:Lcom/waze/mywaze/MyWazeActivity;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 60
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->isRandomUserNTV()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeActivity$1;->this$0:Lcom/waze/mywaze/MyWazeActivity;

    const-class v2, Lcom/waze/profile/TempUserProfileActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/waze/mywaze/MyWazeActivity$1;->this$0:Lcom/waze/mywaze/MyWazeActivity;

    invoke-virtual {v1, v0, v3}, Lcom/waze/mywaze/MyWazeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 70
    :goto_0
    return-void

    .line 67
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeActivity$1;->this$0:Lcom/waze/mywaze/MyWazeActivity;

    const-class v2, Lcom/waze/profile/MyProfileActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/waze/mywaze/MyWazeActivity$1;->this$0:Lcom/waze/mywaze/MyWazeActivity;

    invoke-virtual {v1, v0, v3}, Lcom/waze/mywaze/MyWazeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
