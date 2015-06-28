.class Lcom/waze/mywaze/MyWazeActivity$6;
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
    iput-object p1, p0, Lcom/waze/mywaze/MyWazeActivity$6;->this$0:Lcom/waze/mywaze/MyWazeActivity;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 152
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeActivity$6;->this$0:Lcom/waze/mywaze/MyWazeActivity;

    const-class v2, Lcom/waze/navigate/social/MyFriendsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 153
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 154
    iget-object v1, p0, Lcom/waze/mywaze/MyWazeActivity$6;->this$0:Lcom/waze/mywaze/MyWazeActivity;

    invoke-virtual {v1, v0, v3}, Lcom/waze/mywaze/MyWazeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 155
    return-void
.end method
