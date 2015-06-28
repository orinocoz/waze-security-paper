.class Lcom/waze/mywaze/MyWazeActivity$4;
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
    iput-object p1, p0, Lcom/waze/mywaze/MyWazeActivity$4;->this$0:Lcom/waze/mywaze/MyWazeActivity;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 116
    invoke-static {}, Lcom/waze/AppService;->isNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/waze/mywaze/MyWazeActivity$4;->this$0:Lcom/waze/mywaze/MyWazeActivity;

    #getter for: Lcom/waze/mywaze/MyWazeActivity;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v1}, Lcom/waze/mywaze/MyWazeActivity;->access$1(Lcom/waze/mywaze/MyWazeActivity;)Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_NO_NETWORK_CONNECTION:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/mywaze/MyWazeActivity$4;->this$0:Lcom/waze/mywaze/MyWazeActivity;

    #getter for: Lcom/waze/mywaze/MyWazeActivity;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v2}, Lcom/waze/mywaze/MyWazeActivity;->access$1(Lcom/waze/mywaze/MyWazeActivity;)Lcom/waze/NativeManager;

    move-result-object v2

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_SORRY__YOU_HAVE_NO_NETWORK_CONNECTION_RIGHT_NOW__PLEASE_TRY_LATER:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/waze/MsgBox;->openMessageBox(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 125
    :goto_0
    return-void

    .line 122
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeActivity$4;->this$0:Lcom/waze/mywaze/MyWazeActivity;

    const-class v2, Lcom/waze/mywaze/GroupsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 123
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/waze/mywaze/MyWazeActivity$4;->this$0:Lcom/waze/mywaze/MyWazeActivity;

    invoke-virtual {v1, v0, v4}, Lcom/waze/mywaze/MyWazeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
