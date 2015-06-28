.class Lcom/waze/mywaze/MyWazeActivity$3;
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
    iput-object p1, p0, Lcom/waze/mywaze/MyWazeActivity$3;->this$0:Lcom/waze/mywaze/MyWazeActivity;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 104
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeActivity$3;->this$0:Lcom/waze/mywaze/MyWazeActivity;

    const-class v2, Lcom/waze/mywaze/moods/MoodsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 105
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/waze/mywaze/MyWazeActivity$3;->this$0:Lcom/waze/mywaze/MyWazeActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/waze/mywaze/MyWazeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 106
    return-void
.end method
