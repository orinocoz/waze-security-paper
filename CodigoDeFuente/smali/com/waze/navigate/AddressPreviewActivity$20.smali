.class Lcom/waze/navigate/AddressPreviewActivity$20;
.super Ljava/lang/Object;
.source "AddressPreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/AddressPreviewActivity;->refreshView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/AddressPreviewActivity;

.field private final synthetic val$aboutText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/waze/navigate/AddressPreviewActivity;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/AddressPreviewActivity$20;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    iput-object p2, p0, Lcom/waze/navigate/AddressPreviewActivity$20;->val$aboutText:Landroid/widget/TextView;

    .line 1153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .parameter "v"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1157
    iget-object v8, p0, Lcom/waze/navigate/AddressPreviewActivity$20;->val$aboutText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    .line 1159
    .local v5, start:I
    iget-object v8, p0, Lcom/waze/navigate/AddressPreviewActivity$20;->val$aboutText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 1160
    .local v4, p:Landroid/view/ViewGroup$LayoutParams;
    const/4 v8, -0x2

    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1161
    iget-object v8, p0, Lcom/waze/navigate/AddressPreviewActivity$20;->val$aboutText:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1164
    iget-object v8, p0, Lcom/waze/navigate/AddressPreviewActivity$20;->val$aboutText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getWidth()I

    move-result v8

    const/high16 v9, 0x4000

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 1165
    .local v7, widthMeasureSpec:I
    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1167
    .local v3, heightMeasureSpec:I
    iget-object v8, p0, Lcom/waze/navigate/AddressPreviewActivity$20;->val$aboutText:Landroid/widget/TextView;

    invoke-virtual {v8, v7, v3}, Landroid/widget/TextView;->measure(II)V

    .line 1168
    iget-object v8, p0, Lcom/waze/navigate/AddressPreviewActivity$20;->val$aboutText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    .line 1170
    .local v6, target:I
    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1171
    iget-object v8, p0, Lcom/waze/navigate/AddressPreviewActivity$20;->val$aboutText:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1173
    const/4 v8, 0x2

    new-array v8, v8, [I

    aput v5, v8, v10

    aput v6, v8, v11

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 1174
    .local v1, anim:Landroid/animation/ValueAnimator;
    new-instance v8, Lcom/waze/navigate/AddressPreviewActivity$20$1;

    iget-object v9, p0, Lcom/waze/navigate/AddressPreviewActivity$20;->val$aboutText:Landroid/widget/TextView;

    invoke-direct {v8, p0, v9}, Lcom/waze/navigate/AddressPreviewActivity$20$1;-><init>(Lcom/waze/navigate/AddressPreviewActivity$20;Landroid/widget/TextView;)V

    invoke-virtual {v1, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1183
    const-wide/16 v8, 0x12c

    invoke-virtual {v1, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1184
    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1185
    new-instance v8, Lcom/waze/navigate/AddressPreviewActivity$20$2;

    iget-object v9, p0, Lcom/waze/navigate/AddressPreviewActivity$20;->val$aboutText:Landroid/widget/TextView;

    invoke-direct {v8, p0, v9}, Lcom/waze/navigate/AddressPreviewActivity$20$2;-><init>(Lcom/waze/navigate/AddressPreviewActivity$20;Landroid/widget/TextView;)V

    invoke-virtual {v1, v8}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1203
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 1205
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v8, 0x3f80

    const/4 v9, 0x0

    invoke-direct {v0, v8, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1206
    .local v0, alpha:Landroid/view/animation/Animation;
    const-wide/16 v8, 0x64

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1207
    const-wide/16 v8, 0xc8

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 1208
    invoke-virtual {v0, v11}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1209
    iget-object v8, p0, Lcom/waze/navigate/AddressPreviewActivity$20;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    const v9, 0x7f090150

    invoke-virtual {v8, v9}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1210
    .local v2, cover:Landroid/view/View;
    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1211
    return-void
.end method
