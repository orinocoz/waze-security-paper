.class Lcom/waze/navigate/social/MyShareDriveActivity$2;
.super Ljava/lang/Object;
.source "MyShareDriveActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/MyShareDriveActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/social/MyShareDriveActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/MyShareDriveActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/MyShareDriveActivity$2;->this$0:Lcom/waze/navigate/social/MyShareDriveActivity;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    .line 115
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/waze/navigate/social/MyShareDriveActivity$2;->this$0:Lcom/waze/navigate/social/MyShareDriveActivity;

    #getter for: Lcom/waze/navigate/social/MyShareDriveActivity;->mapPlaceholder:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/waze/navigate/social/MyShareDriveActivity;->access$3(Lcom/waze/navigate/social/MyShareDriveActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/waze/navigate/social/MyShareDriveActivity$2;->this$0:Lcom/waze/navigate/social/MyShareDriveActivity;

    #getter for: Lcom/waze/navigate/social/MyShareDriveActivity;->mapPlaceholder:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lcom/waze/navigate/social/MyShareDriveActivity;->access$3(Lcom/waze/navigate/social/MyShareDriveActivity;)Landroid/widget/RelativeLayout;

    move-result-object v3

    .line 116
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v3

    .line 115
    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 117
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/waze/navigate/social/MyShareDriveActivity$2;->this$0:Lcom/waze/navigate/social/MyShareDriveActivity;

    #getter for: Lcom/waze/navigate/social/MyShareDriveActivity;->mapPlaceholder:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/waze/navigate/social/MyShareDriveActivity;->access$3(Lcom/waze/navigate/social/MyShareDriveActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 118
    iget-object v2, p0, Lcom/waze/navigate/social/MyShareDriveActivity$2;->this$0:Lcom/waze/navigate/social/MyShareDriveActivity;

    #getter for: Lcom/waze/navigate/social/MyShareDriveActivity;->mapPlaceholder:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/waze/navigate/social/MyShareDriveActivity;->access$3(Lcom/waze/navigate/social/MyShareDriveActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 119
    iget-object v2, p0, Lcom/waze/navigate/social/MyShareDriveActivity$2;->this$0:Lcom/waze/navigate/social/MyShareDriveActivity;

    #getter for: Lcom/waze/navigate/social/MyShareDriveActivity;->mapLayout:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/waze/navigate/social/MyShareDriveActivity;->access$4(Lcom/waze/navigate/social/MyShareDriveActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    iget-object v2, p0, Lcom/waze/navigate/social/MyShareDriveActivity$2;->this$0:Lcom/waze/navigate/social/MyShareDriveActivity;

    #getter for: Lcom/waze/navigate/social/MyShareDriveActivity;->mapPlaceholder:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/waze/navigate/social/MyShareDriveActivity;->access$3(Lcom/waze/navigate/social/MyShareDriveActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 121
    .local v1, obs:Landroid/view/ViewTreeObserver;
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 122
    return-void
.end method
