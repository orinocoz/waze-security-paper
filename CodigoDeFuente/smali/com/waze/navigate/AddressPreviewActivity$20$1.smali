.class Lcom/waze/navigate/AddressPreviewActivity$20$1;
.super Ljava/lang/Object;
.source "AddressPreviewActivity.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/AddressPreviewActivity$20;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/navigate/AddressPreviewActivity$20;

.field private final synthetic val$aboutText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/waze/navigate/AddressPreviewActivity$20;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/AddressPreviewActivity$20$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$20;

    iput-object p2, p0, Lcom/waze/navigate/AddressPreviewActivity$20$1;->val$aboutText:Landroid/widget/TextView;

    .line 1174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .parameter "valueAnimator"

    .prologue
    .line 1177
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1178
    .local v1, val:I
    iget-object v2, p0, Lcom/waze/navigate/AddressPreviewActivity$20$1;->val$aboutText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1179
    .local v0, p:Landroid/view/ViewGroup$LayoutParams;
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1180
    iget-object v2, p0, Lcom/waze/navigate/AddressPreviewActivity$20$1;->val$aboutText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1181
    return-void
.end method
