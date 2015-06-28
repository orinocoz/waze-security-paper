.class Lcom/waze/navigate/social/ShareDriveActivity$10;
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
    iput-object p1, p0, Lcom/waze/navigate/social/ShareDriveActivity$10;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 338
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity$10;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    #setter for: Lcom/waze/navigate/social/ShareDriveActivity;->mDontScroll:Z
    invoke-static {v0, v1}, Lcom/waze/navigate/social/ShareDriveActivity;->access$15(Lcom/waze/navigate/social/ShareDriveActivity;Z)V

    .line 341
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 342
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity$10;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    #setter for: Lcom/waze/navigate/social/ShareDriveActivity;->mDontScroll:Z
    invoke-static {v0, v2}, Lcom/waze/navigate/social/ShareDriveActivity;->access$15(Lcom/waze/navigate/social/ShareDriveActivity;Z)V

    .line 345
    :cond_2
    return v2
.end method
