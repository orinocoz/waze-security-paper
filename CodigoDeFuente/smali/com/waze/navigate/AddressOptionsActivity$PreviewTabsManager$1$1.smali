.class Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$1$1;
.super Ljava/lang/Object;
.source "AddressOptionsActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$1;->onClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$1;


# direct methods
.method constructor <init>(Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$1$1;->this$2:Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$1;

    .line 711
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    .line 714
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$1$1;->this$2:Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$1;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$1;->this$1:Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;
    invoke-static {v2}, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$1;->access$0(Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$1;)Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;

    move-result-object v2

    #getter for: Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->mHolder:Lcom/waze/navigate/AddressOptionsActivity;
    invoke-static {v2}, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->access$1(Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;)Lcom/waze/navigate/AddressOptionsActivity;

    move-result-object v2

    #getter for: Lcom/waze/navigate/AddressOptionsActivity;->mapPlaceholder:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/waze/navigate/AddressOptionsActivity;->access$3(Lcom/waze/navigate/AddressOptionsActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$1$1;->this$2:Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$1;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$1;->this$1:Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;
    invoke-static {v3}, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$1;->access$0(Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$1;)Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;

    move-result-object v3

    #getter for: Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->mHolder:Lcom/waze/navigate/AddressOptionsActivity;
    invoke-static {v3}, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->access$1(Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;)Lcom/waze/navigate/AddressOptionsActivity;

    move-result-object v3

    #getter for: Lcom/waze/navigate/AddressOptionsActivity;->mapPlaceholder:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lcom/waze/navigate/AddressOptionsActivity;->access$3(Lcom/waze/navigate/AddressOptionsActivity;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 715
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$1$1;->this$2:Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$1;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$1;->this$1:Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;
    invoke-static {v2}, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$1;->access$0(Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$1;)Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;

    move-result-object v2

    #getter for: Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->mHolder:Lcom/waze/navigate/AddressOptionsActivity;
    invoke-static {v2}, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->access$1(Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;)Lcom/waze/navigate/AddressOptionsActivity;

    move-result-object v2

    #getter for: Lcom/waze/navigate/AddressOptionsActivity;->mapPlaceholder:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/waze/navigate/AddressOptionsActivity;->access$3(Lcom/waze/navigate/AddressOptionsActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 716
    iget-object v2, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$1$1;->this$2:Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$1;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$1;->this$1:Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;
    invoke-static {v2}, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$1;->access$0(Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$1;)Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;

    move-result-object v2

    #getter for: Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->mHolder:Lcom/waze/navigate/AddressOptionsActivity;
    invoke-static {v2}, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->access$1(Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;)Lcom/waze/navigate/AddressOptionsActivity;

    move-result-object v2

    #getter for: Lcom/waze/navigate/AddressOptionsActivity;->mapPlaceholder:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/waze/navigate/AddressOptionsActivity;->access$3(Lcom/waze/navigate/AddressOptionsActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 717
    iget-object v2, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$1$1;->this$2:Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$1;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$1;->this$1:Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;
    invoke-static {v2}, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$1;->access$0(Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$1;)Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;

    move-result-object v2

    #getter for: Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->mHolder:Lcom/waze/navigate/AddressOptionsActivity;
    invoke-static {v2}, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->access$1(Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;)Lcom/waze/navigate/AddressOptionsActivity;

    move-result-object v2

    #getter for: Lcom/waze/navigate/AddressOptionsActivity;->mapLayout:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/waze/navigate/AddressOptionsActivity;->access$4(Lcom/waze/navigate/AddressOptionsActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 718
    iget-object v2, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$1$1;->this$2:Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$1;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$1;->this$1:Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;
    invoke-static {v2}, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$1;->access$0(Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$1;)Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;

    move-result-object v2

    #getter for: Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->mHolder:Lcom/waze/navigate/AddressOptionsActivity;
    invoke-static {v2}, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->access$1(Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;)Lcom/waze/navigate/AddressOptionsActivity;

    move-result-object v2

    #getter for: Lcom/waze/navigate/AddressOptionsActivity;->mapPlaceholder:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/waze/navigate/AddressOptionsActivity;->access$3(Lcom/waze/navigate/AddressOptionsActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 719
    .local v1, obs:Landroid/view/ViewTreeObserver;
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 720
    return-void
.end method
