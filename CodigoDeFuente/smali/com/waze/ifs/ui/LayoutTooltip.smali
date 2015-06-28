.class public Lcom/waze/ifs/ui/LayoutTooltip;
.super Ljava/lang/Object;
.source "LayoutTooltip.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mDX:I

.field private mDY:I

.field protected mDensity:F

.field private mOnLeft:Z

.field private mOnTop:Z

.field protected mPreferLeft:Z

.field protected mPreferTop:Z

.field private mTipBg:Landroid/view/View;

.field protected mView:Landroid/view/View;

.field protected mWindow:Landroid/widget/PopupWindow;

.field private mXPos:I

.field private mYPos:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "layout"

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean v1, p0, Lcom/waze/ifs/ui/LayoutTooltip;->mPreferLeft:Z

    .line 29
    iput-boolean v1, p0, Lcom/waze/ifs/ui/LayoutTooltip;->mPreferTop:Z

    .line 32
    iput v3, p0, Lcom/waze/ifs/ui/LayoutTooltip;->mDX:I

    .line 33
    iput v3, p0, Lcom/waze/ifs/ui/LayoutTooltip;->mDY:I

    .line 41
    iput-object p1, p0, Lcom/waze/ifs/ui/LayoutTooltip;->mContext:Landroid/content/Context;

    .line 42
    iget-object v1, p0, Lcom/waze/ifs/ui/LayoutTooltip;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/waze/ifs/ui/LayoutTooltip;->mDensity:F

    .line 45
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 47
    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    invoke-virtual {v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/ifs/ui/LayoutTooltip;->mView:Landroid/view/View;

    .line 49
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/waze/ifs/ui/LayoutTooltip;->mWindow:Landroid/widget/PopupWindow;

    .line 50
    iget-object v1, p0, Lcom/waze/ifs/ui/LayoutTooltip;->mWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/waze/ifs/ui/LayoutTooltip;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 51
    iget-object v1, p0, Lcom/waze/ifs/ui/LayoutTooltip;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 52
    iget-object v1, p0, Lcom/waze/ifs/ui/LayoutTooltip;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 53
    iget-object v1, p0, Lcom/waze/ifs/ui/LayoutTooltip;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 54
    iget-object v1, p0, Lcom/waze/ifs/ui/LayoutTooltip;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 55
    iget-object v1, p0, Lcom/waze/ifs/ui/LayoutTooltip;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 56
    iget-object v1, p0, Lcom/waze/ifs/ui/LayoutTooltip;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 58
    iget-object v1, p0, Lcom/waze/ifs/ui/LayoutTooltip;->mWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/waze/ifs/ui/LayoutTooltip;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 59
    return-void
.end method

.method private setUpWindow(Landroid/view/View;)V
    .locals 23
    .parameter "anchor"

    .prologue
    .line 66
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v8, v0, [I

    .line 67
    .local v8, location:[I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/View;->getLocationInWindow([I)V

    .line 70
    const/16 v17, 0x1

    aget v15, v8, v17

    .line 71
    .local v15, top:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v17

    add-int v5, v15, v17

    .line 72
    .local v5, bottom:I
    const/16 v17, 0x0

    aget v17, v8, v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    add-int v9, v17, v18

    .line 74
    .local v9, middle:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/LayoutTooltip;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, -0x2

    const/16 v19, -0x2

    invoke-virtual/range {v17 .. v19}, Landroid/view/View;->measure(II)V

    .line 76
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/LayoutTooltip;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    .line 77
    .local v11, rootHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/LayoutTooltip;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    .line 79
    .local v12, rootWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/LayoutTooltip;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v17

    move-object/from16 v0, v17

    iget v14, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 80
    .local v14, screenWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/LayoutTooltip;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v17

    move-object/from16 v0, v17

    iget v13, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 82
    .local v13, screenHeight:I
    sub-int v17, v15, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/LayoutTooltip;->mDensity:F

    move/from16 v18, v0

    const/high16 v19, 0x40a0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/LayoutTooltip;->mDY:I

    move/from16 v18, v0

    add-int v16, v17, v18

    .line 83
    .local v16, topPos:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/LayoutTooltip;->mDensity:F

    move/from16 v17, v0

    const/high16 v18, 0x40a0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    sub-int v17, v5, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/LayoutTooltip;->mDY:I

    move/from16 v18, v0

    add-int v6, v17, v18

    .line 85
    .local v6, bottomPos:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/waze/ifs/ui/LayoutTooltip;->mPreferTop:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 86
    if-lez v16, :cond_0

    const/16 v17, 0x1

    :goto_0
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/waze/ifs/ui/LayoutTooltip;->mOnTop:Z

    .line 91
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/waze/ifs/ui/LayoutTooltip;->mOnTop:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 92
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/waze/ifs/ui/LayoutTooltip;->mYPos:I

    .line 97
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/LayoutTooltip;->mDensity:F

    move/from16 v17, v0

    const/high16 v18, 0x41f0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    sub-int v17, v9, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/LayoutTooltip;->mDX:I

    move/from16 v18, v0

    add-int v10, v17, v18

    .line 98
    .local v10, rightPos:I
    sub-int v17, v9, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/LayoutTooltip;->mDensity:F

    move/from16 v18, v0

    const/high16 v19, 0x41f0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/LayoutTooltip;->mDX:I

    move/from16 v18, v0

    add-int v7, v17, v18

    .line 100
    .local v7, leftPos:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/waze/ifs/ui/LayoutTooltip;->mPreferLeft:Z

    move/from16 v17, v0

    if-eqz v17, :cond_5

    .line 101
    if-lez v7, :cond_4

    const/16 v17, 0x1

    :goto_3
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/waze/ifs/ui/LayoutTooltip;->mOnLeft:Z

    .line 106
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/waze/ifs/ui/LayoutTooltip;->mOnLeft:Z

    move/from16 v17, v0

    if-eqz v17, :cond_7

    .line 107
    move-object/from16 v0, p0

    iput v7, v0, Lcom/waze/ifs/ui/LayoutTooltip;->mXPos:I

    .line 112
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/LayoutTooltip;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    check-cast v17, Landroid/view/ViewGroup;

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/waze/ifs/ui/LayoutTooltip;->mTipBg:Landroid/view/View;

    .line 114
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/waze/ifs/ui/LayoutTooltip;->mOnTop:Z

    move/from16 v17, v0

    if-eqz v17, :cond_9

    .line 115
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/waze/ifs/ui/LayoutTooltip;->mOnLeft:Z

    move/from16 v17, v0

    if-eqz v17, :cond_8

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/LayoutTooltip;->mTipBg:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f020404

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setBackgroundResource(I)V

    .line 128
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/LayoutTooltip;->mTipBg:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/LayoutTooltip;->mDensity:F

    move/from16 v17, v0

    const/high16 v19, 0x4170

    mul-float v17, v17, v19

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/LayoutTooltip;->mDensity:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/waze/ifs/ui/LayoutTooltip;->mOnTop:Z

    move/from16 v17, v0

    if-eqz v17, :cond_b

    const/16 v17, 0xa

    :goto_7
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v20

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v20, v0

    .line 129
    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/LayoutTooltip;->mDensity:F

    move/from16 v17, v0

    const/high16 v21, 0x4170

    mul-float v17, v17, v21

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/ifs/ui/LayoutTooltip;->mDensity:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/waze/ifs/ui/LayoutTooltip;->mOnTop:Z

    move/from16 v17, v0

    if-eqz v17, :cond_c

    const/16 v17, 0x14

    :goto_8
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v22

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    .line 128
    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 130
    return-void

    .line 86
    .end local v7           #leftPos:I
    .end local v10           #rightPos:I
    :cond_0
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 88
    :cond_1
    add-int v17, v6, v11

    move/from16 v0, v17

    if-le v0, v13, :cond_2

    const/16 v17, 0x1

    :goto_9
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/waze/ifs/ui/LayoutTooltip;->mOnTop:Z

    goto/16 :goto_1

    :cond_2
    const/16 v17, 0x0

    goto :goto_9

    .line 94
    :cond_3
    move-object/from16 v0, p0

    iput v6, v0, Lcom/waze/ifs/ui/LayoutTooltip;->mYPos:I

    goto/16 :goto_2

    .line 101
    .restart local v7       #leftPos:I
    .restart local v10       #rightPos:I
    :cond_4
    const/16 v17, 0x0

    goto/16 :goto_3

    .line 103
    :cond_5
    add-int v17, v10, v12

    move/from16 v0, v17

    if-le v0, v14, :cond_6

    const/16 v17, 0x1

    :goto_a
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/waze/ifs/ui/LayoutTooltip;->mOnLeft:Z

    goto/16 :goto_4

    :cond_6
    const/16 v17, 0x0

    goto :goto_a

    .line 109
    :cond_7
    move-object/from16 v0, p0

    iput v10, v0, Lcom/waze/ifs/ui/LayoutTooltip;->mXPos:I

    goto/16 :goto_5

    .line 119
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/LayoutTooltip;->mTipBg:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f020403

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_6

    .line 122
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/waze/ifs/ui/LayoutTooltip;->mOnLeft:Z

    move/from16 v17, v0

    if-eqz v17, :cond_a

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/LayoutTooltip;->mTipBg:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0203fe

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_6

    .line 125
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/ifs/ui/LayoutTooltip;->mTipBg:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0203fd

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_6

    .line 128
    :cond_b
    const/16 v17, 0x14

    goto/16 :goto_7

    .line 129
    :cond_c
    const/16 v17, 0xa

    goto/16 :goto_8
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 5
    .parameter "animate"

    .prologue
    const/4 v4, 0x1

    .line 164
    if-nez p1, :cond_0

    .line 165
    iget-object v2, p0, Lcom/waze/ifs/ui/LayoutTooltip;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 205
    :goto_0
    return-void

    .line 168
    :cond_0
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 177
    .local v1, as:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v2, 0x3f4ccccd

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 178
    .local v0, aa:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 179
    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 180
    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V

    .line 181
    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 182
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 184
    iget-object v2, p0, Lcom/waze/ifs/ui/LayoutTooltip;->mTipBg:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 185
    new-instance v2, Lcom/waze/ifs/ui/LayoutTooltip$1;

    invoke-direct {v2, p0}, Lcom/waze/ifs/ui/LayoutTooltip$1;-><init>(Lcom/waze/ifs/ui/LayoutTooltip;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/waze/ifs/ui/LayoutTooltip;->mView:Landroid/view/View;

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/waze/ifs/ui/LayoutTooltip;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public move(Landroid/view/View;)V
    .locals 4
    .parameter "anchor"

    .prologue
    const/4 v3, -0x1

    .line 157
    if-nez p1, :cond_0

    .line 161
    :goto_0
    return-void

    .line 158
    :cond_0
    invoke-direct {p0, p1}, Lcom/waze/ifs/ui/LayoutTooltip;->setUpWindow(Landroid/view/View;)V

    .line 160
    iget-object v0, p0, Lcom/waze/ifs/ui/LayoutTooltip;->mWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/waze/ifs/ui/LayoutTooltip;->mXPos:I

    iget v2, p0, Lcom/waze/ifs/ui/LayoutTooltip;->mYPos:I

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0
.end method

.method public setDelta(II)V
    .locals 0
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 212
    iput p1, p0, Lcom/waze/ifs/ui/LayoutTooltip;->mDX:I

    .line 213
    iput p2, p0, Lcom/waze/ifs/ui/LayoutTooltip;->mDY:I

    .line 214
    return-void
.end method

.method public show(Landroid/view/View;)V
    .locals 11
    .parameter "anchor"

    .prologue
    const/4 v7, 0x0

    const v6, 0x3f4ccccd

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 133
    if-nez p1, :cond_0

    .line 154
    :goto_0
    return-void

    .line 134
    :cond_0
    invoke-direct {p0, p1}, Lcom/waze/ifs/ui/LayoutTooltip;->setUpWindow(Landroid/view/View;)V

    .line 136
    iget-object v3, p0, Lcom/waze/ifs/ui/LayoutTooltip;->mWindow:Landroid/widget/PopupWindow;

    iget v4, p0, Lcom/waze/ifs/ui/LayoutTooltip;->mXPos:I

    iget v5, p0, Lcom/waze/ifs/ui/LayoutTooltip;->mYPos:I

    invoke-virtual {v3, p1, v7, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 138
    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 141
    .local v10, as:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 143
    .local v0, ta:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v3, 0x96

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 144
    new-instance v3, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v3}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 145
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 147
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v9, v2, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 148
    .local v9, aa:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x64

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 149
    invoke-virtual {v9, v1}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V

    .line 150
    invoke-virtual {v9, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 151
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 153
    iget-object v1, p0, Lcom/waze/ifs/ui/LayoutTooltip;->mTipBg:Landroid/view/View;

    invoke-virtual {v1, v10}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
