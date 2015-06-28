.class Lcom/waze/TestActivity$1;
.super Ljava/lang/Object;
.source "TestActivity.java"

# interfaces
.implements Lcom/waze/view/button/SwipeableButton$SwipeableButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/TestActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/TestActivity;


# direct methods
.method constructor <init>(Lcom/waze/TestActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/TestActivity$1;->this$0:Lcom/waze/TestActivity;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    .prologue
    .line 20
    const-string v0, "WAZE"

    const-string v1, "On click!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    return-void
.end method

.method public onSwipe()V
    .locals 3

    .prologue
    .line 24
    const-string v1, "WAZE"

    const-string v2, "On swipe!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 26
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/waze/TestActivity$1;->this$0:Lcom/waze/TestActivity;

    const v2, 0x8002

    invoke-virtual {v1, v0, v2}, Lcom/waze/TestActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 27
    return-void
.end method
