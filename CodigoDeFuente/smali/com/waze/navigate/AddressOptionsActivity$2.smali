.class Lcom/waze/navigate/AddressOptionsActivity$2;
.super Ljava/lang/Object;
.source "AddressOptionsActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/AddressOptionsActivity;->setUpActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/AddressOptionsActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/AddressOptionsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/AddressOptionsActivity$2;->this$0:Lcom/waze/navigate/AddressOptionsActivity;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 160
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/waze/navigate/AddressOptionsActivity$2;->this$0:Lcom/waze/navigate/AddressOptionsActivity;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity;->mapPlaceholder:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/waze/navigate/AddressOptionsActivity;->access$3(Lcom/waze/navigate/AddressOptionsActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/waze/navigate/AddressOptionsActivity$2;->this$0:Lcom/waze/navigate/AddressOptionsActivity;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity;->mapPlaceholder:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lcom/waze/navigate/AddressOptionsActivity;->access$3(Lcom/waze/navigate/AddressOptionsActivity;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 161
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/waze/navigate/AddressOptionsActivity$2;->this$0:Lcom/waze/navigate/AddressOptionsActivity;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity;->mapPlaceholder:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/waze/navigate/AddressOptionsActivity;->access$3(Lcom/waze/navigate/AddressOptionsActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 162
    iget-object v2, p0, Lcom/waze/navigate/AddressOptionsActivity$2;->this$0:Lcom/waze/navigate/AddressOptionsActivity;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity;->mapPlaceholder:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/waze/navigate/AddressOptionsActivity;->access$3(Lcom/waze/navigate/AddressOptionsActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 163
    iget-object v2, p0, Lcom/waze/navigate/AddressOptionsActivity$2;->this$0:Lcom/waze/navigate/AddressOptionsActivity;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity;->mapLayout:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/waze/navigate/AddressOptionsActivity;->access$4(Lcom/waze/navigate/AddressOptionsActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    iget-object v2, p0, Lcom/waze/navigate/AddressOptionsActivity$2;->this$0:Lcom/waze/navigate/AddressOptionsActivity;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity;->leftCorner:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/waze/navigate/AddressOptionsActivity;->access$7(Lcom/waze/navigate/AddressOptionsActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 165
    .restart local v0       #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/waze/navigate/AddressOptionsActivity$2;->this$0:Lcom/waze/navigate/AddressOptionsActivity;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity;->mapPlaceholder:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/waze/navigate/AddressOptionsActivity;->access$3(Lcom/waze/navigate/AddressOptionsActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/waze/navigate/AddressOptionsActivity$2;->this$0:Lcom/waze/navigate/AddressOptionsActivity;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity;->mapPlaceholder:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lcom/waze/navigate/AddressOptionsActivity;->access$3(Lcom/waze/navigate/AddressOptionsActivity;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x10

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 166
    iget-object v2, p0, Lcom/waze/navigate/AddressOptionsActivity$2;->this$0:Lcom/waze/navigate/AddressOptionsActivity;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity;->mapPlaceholder:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/waze/navigate/AddressOptionsActivity;->access$3(Lcom/waze/navigate/AddressOptionsActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 167
    iget-object v2, p0, Lcom/waze/navigate/AddressOptionsActivity$2;->this$0:Lcom/waze/navigate/AddressOptionsActivity;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity;->leftCorner:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/waze/navigate/AddressOptionsActivity;->access$7(Lcom/waze/navigate/AddressOptionsActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v0           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 169
    .restart local v0       #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/waze/navigate/AddressOptionsActivity$2;->this$0:Lcom/waze/navigate/AddressOptionsActivity;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity;->mapPlaceholder:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/waze/navigate/AddressOptionsActivity;->access$3(Lcom/waze/navigate/AddressOptionsActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/waze/navigate/AddressOptionsActivity$2;->this$0:Lcom/waze/navigate/AddressOptionsActivity;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity;->mapPlaceholder:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lcom/waze/navigate/AddressOptionsActivity;->access$3(Lcom/waze/navigate/AddressOptionsActivity;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x10

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 170
    iget-object v2, p0, Lcom/waze/navigate/AddressOptionsActivity$2;->this$0:Lcom/waze/navigate/AddressOptionsActivity;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity;->mapPlaceholder:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/waze/navigate/AddressOptionsActivity;->access$3(Lcom/waze/navigate/AddressOptionsActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/waze/navigate/AddressOptionsActivity$2;->this$0:Lcom/waze/navigate/AddressOptionsActivity;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity;->mapPlaceholder:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lcom/waze/navigate/AddressOptionsActivity;->access$3(Lcom/waze/navigate/AddressOptionsActivity;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0xe

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 171
    iget-object v2, p0, Lcom/waze/navigate/AddressOptionsActivity$2;->this$0:Lcom/waze/navigate/AddressOptionsActivity;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity;->rightCorner:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/waze/navigate/AddressOptionsActivity;->access$8(Lcom/waze/navigate/AddressOptionsActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    iget-object v2, p0, Lcom/waze/navigate/AddressOptionsActivity$2;->this$0:Lcom/waze/navigate/AddressOptionsActivity;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity;->mapPlaceholder:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/waze/navigate/AddressOptionsActivity;->access$3(Lcom/waze/navigate/AddressOptionsActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 173
    .local v1, obs:Landroid/view/ViewTreeObserver;
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 174
    return-void
.end method
