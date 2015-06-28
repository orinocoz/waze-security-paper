.class Lcom/waze/navigate/social/ShareDriveActivity$9;
.super Ljava/lang/Object;
.source "ShareDriveActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/ShareDriveActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/social/ShareDriveActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/ShareDriveActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/ShareDriveActivity$9;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 324
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 325
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity$9;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    #getter for: Lcom/waze/navigate/social/ShareDriveActivity;->mDontScroll:Z
    invoke-static {v0}, Lcom/waze/navigate/social/ShareDriveActivity;->access$14(Lcom/waze/navigate/social/ShareDriveActivity;)Z

    move-result v0

    .line 331
    :cond_0
    :goto_0
    return v0

    .line 327
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 328
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 329
    :cond_2
    iget-object v1, p0, Lcom/waze/navigate/social/ShareDriveActivity$9;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    #setter for: Lcom/waze/navigate/social/ShareDriveActivity;->mDontScroll:Z
    invoke-static {v1, v0}, Lcom/waze/navigate/social/ShareDriveActivity;->access$15(Lcom/waze/navigate/social/ShareDriveActivity;Z)V

    goto :goto_0
.end method
