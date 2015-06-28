.class public Lcom/waze/ifs/ui/EditBoxFadeBg;
.super Landroid/widget/FrameLayout;
.source "EditBoxFadeBg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/ifs/ui/EditBoxFadeBg$MyEditText;
    }
.end annotation


# static fields
.field private static final ALPHA_OFF:F = 0.35f

.field private static final ALPHA_ON:F = 1.0f

.field private static final BASIC_SWITCH_DURATION:I = 0xc8


# instance fields
.field private mBg:Landroid/view/View;

.field private mEdit:Lcom/waze/ifs/ui/EditBoxFadeBg$MyEditText;

.field private mHasFocus:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v3, 0x3eb33333

    const/4 v2, -0x1

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 35
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/waze/ifs/ui/EditBoxFadeBg;->mHasFocus:Z

    .line 39
    new-instance v1, Lcom/waze/ifs/ui/EditBoxFadeBg$MyEditText;

    invoke-direct {v1, p0, p1, p2}, Lcom/waze/ifs/ui/EditBoxFadeBg$MyEditText;-><init>(Lcom/waze/ifs/ui/EditBoxFadeBg;Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/waze/ifs/ui/EditBoxFadeBg;->mEdit:Lcom/waze/ifs/ui/EditBoxFadeBg$MyEditText;

    .line 40
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/waze/ifs/ui/EditBoxFadeBg;->mBg:Landroid/view/View;

    .line 42
    iget-object v1, p0, Lcom/waze/ifs/ui/EditBoxFadeBg;->mBg:Landroid/view/View;

    invoke-virtual {p0, v1, v2, v2}, Lcom/waze/ifs/ui/EditBoxFadeBg;->addView(Landroid/view/View;II)V

    .line 43
    iget-object v1, p0, Lcom/waze/ifs/ui/EditBoxFadeBg;->mEdit:Lcom/waze/ifs/ui/EditBoxFadeBg$MyEditText;

    invoke-virtual {p0, v1, v2, v2}, Lcom/waze/ifs/ui/EditBoxFadeBg;->addView(Landroid/view/View;II)V

    .line 45
    iget-object v1, p0, Lcom/waze/ifs/ui/EditBoxFadeBg;->mBg:Landroid/view/View;

    iget-object v2, p0, Lcom/waze/ifs/ui/EditBoxFadeBg;->mEdit:Lcom/waze/ifs/ui/EditBoxFadeBg$MyEditText;

    invoke-virtual {v2}, Lcom/waze/ifs/ui/EditBoxFadeBg$MyEditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    iget-object v1, p0, Lcom/waze/ifs/ui/EditBoxFadeBg;->mEdit:Lcom/waze/ifs/ui/EditBoxFadeBg$MyEditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/waze/ifs/ui/EditBoxFadeBg$MyEditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 47
    iget-object v1, p0, Lcom/waze/ifs/ui/EditBoxFadeBg;->mEdit:Lcom/waze/ifs/ui/EditBoxFadeBg$MyEditText;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Lcom/waze/ifs/ui/EditBoxFadeBg$MyEditText;->setGravity(I)V

    .line 49
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 50
    .local v0, alpha:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 51
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 52
    iget-object v1, p0, Lcom/waze/ifs/ui/EditBoxFadeBg;->mBg:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 53
    return-void
.end method

.method static synthetic access$0(Lcom/waze/ifs/ui/EditBoxFadeBg;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/waze/ifs/ui/EditBoxFadeBg;->mHasFocus:Z

    return-void
.end method

.method static synthetic access$1(Lcom/waze/ifs/ui/EditBoxFadeBg;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/waze/ifs/ui/EditBoxFadeBg;->animateSwitch()V

    return-void
.end method

.method private animateSwitch()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f80

    const v3, 0x3eb33333

    .line 61
    iget-object v1, p0, Lcom/waze/ifs/ui/EditBoxFadeBg;->mBg:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 64
    iget-boolean v1, p0, Lcom/waze/ifs/ui/EditBoxFadeBg;->mHasFocus:Z

    if-eqz v1, :cond_0

    .line 65
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 66
    .local v0, alpha:Landroid/view/animation/AlphaAnimation;
    iget-object v1, p0, Lcom/waze/ifs/ui/EditBoxFadeBg;->mEdit:Lcom/waze/ifs/ui/EditBoxFadeBg$MyEditText;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/waze/ifs/ui/EditBoxFadeBg$MyEditText;->setGravity(I)V

    .line 71
    :goto_0
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 72
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 73
    iget-object v1, p0, Lcom/waze/ifs/ui/EditBoxFadeBg;->mBg:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 74
    return-void

    .line 68
    .end local v0           #alpha:Landroid/view/animation/AlphaAnimation;
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 69
    .restart local v0       #alpha:Landroid/view/animation/AlphaAnimation;
    iget-object v1, p0, Lcom/waze/ifs/ui/EditBoxFadeBg;->mEdit:Lcom/waze/ifs/ui/EditBoxFadeBg$MyEditText;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Lcom/waze/ifs/ui/EditBoxFadeBg$MyEditText;->setGravity(I)V

    goto :goto_0
.end method


# virtual methods
.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/waze/ifs/ui/EditBoxFadeBg;->mEdit:Lcom/waze/ifs/ui/EditBoxFadeBg$MyEditText;

    invoke-virtual {v0, p1}, Lcom/waze/ifs/ui/EditBoxFadeBg$MyEditText;->setText(Ljava/lang/CharSequence;)V

    .line 57
    return-void
.end method
