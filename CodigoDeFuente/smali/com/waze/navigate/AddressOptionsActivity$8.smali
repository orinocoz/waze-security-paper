.class Lcom/waze/navigate/AddressOptionsActivity$8;
.super Ljava/lang/Object;
.source "AddressOptionsActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/AddressOptionsActivity;->setMapLayoutListener(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/AddressOptionsActivity;

.field private final synthetic val$mapLayoutRoot:Landroid/view/View;

.field private final synthetic val$vto:Landroid/view/ViewTreeObserver;


# direct methods
.method constructor <init>(Lcom/waze/navigate/AddressOptionsActivity;Landroid/view/View;Landroid/view/ViewTreeObserver;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/AddressOptionsActivity$8;->this$0:Lcom/waze/navigate/AddressOptionsActivity;

    iput-object p2, p0, Lcom/waze/navigate/AddressOptionsActivity$8;->val$mapLayoutRoot:Landroid/view/View;

    iput-object p3, p0, Lcom/waze/navigate/AddressOptionsActivity$8;->val$vto:Landroid/view/ViewTreeObserver;

    .line 614
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    .line 618
    iget-object v3, p0, Lcom/waze/navigate/AddressOptionsActivity$8;->val$mapLayoutRoot:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 619
    .local v2, layoutWidth:I
    iget-object v3, p0, Lcom/waze/navigate/AddressOptionsActivity$8;->val$mapLayoutRoot:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 620
    .local v0, layoutHeight:I
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 621
    .local v1, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/waze/navigate/AddressOptionsActivity$8;->val$mapLayoutRoot:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 622
    iget-object v3, p0, Lcom/waze/navigate/AddressOptionsActivity$8;->val$mapLayoutRoot:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 623
    iget-object v3, p0, Lcom/waze/navigate/AddressOptionsActivity$8;->this$0:Lcom/waze/navigate/AddressOptionsActivity;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity;->mapLayout:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lcom/waze/navigate/AddressOptionsActivity;->access$4(Lcom/waze/navigate/AddressOptionsActivity;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 624
    iget-object v3, p0, Lcom/waze/navigate/AddressOptionsActivity$8;->val$vto:Landroid/view/ViewTreeObserver;

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 625
    return-void
.end method
