.class public Lcom/waze/ifs/ui/PointsView;
.super Landroid/widget/RelativeLayout;
.source "PointsView.java"


# static fields
.field private static final BASIC_SWITCH_DURATION:I = 0xc8


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private mBg:Landroid/view/View;

.field private mCheck:Landroid/view/View;

.field private mMust:Landroid/view/View;

.field private mPointsOn:Z

.field private mPointsTextView:Landroid/widget/TextView;

.field private mShowPoints:Z

.field private mValid:Z

.field private mWasValid:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x1

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    iput-boolean v1, p0, Lcom/waze/ifs/ui/PointsView;->mShowPoints:Z

    .line 28
    iput-boolean v1, p0, Lcom/waze/ifs/ui/PointsView;->mPointsOn:Z

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/ifs/ui/PointsView;->mValid:Z

    .line 30
    iput-boolean v1, p0, Lcom/waze/ifs/ui/PointsView;->mWasValid:Z

    .line 34
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/ifs/ui/PointsView;->inflater:Landroid/view/LayoutInflater;

    .line 35
    iget-object v0, p0, Lcom/waze/ifs/ui/PointsView;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0300b4

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 36
    invoke-direct {p0}, Lcom/waze/ifs/ui/PointsView;->initMemebers()V

    .line 37
    return-void
.end method

.method private animateSwitch(Z)V
    .locals 14
    .parameter "isOn"

    .prologue
    const/high16 v1, 0x3f80

    const/high16 v6, 0x3f00

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 87
    const/4 v12, 0x0

    .line 88
    .local v12, showView:Landroid/view/View;
    const/4 v13, 0x0

    .line 89
    .local v13, showView1:Landroid/view/View;
    const/4 v10, 0x0

    .line 90
    .local v10, removeView:Landroid/view/View;
    const/4 v11, 0x0

    .line 91
    .local v11, removeView1:Landroid/view/View;
    iget-boolean v3, p0, Lcom/waze/ifs/ui/PointsView;->mValid:Z

    if-eqz v3, :cond_6

    move v9, v2

    .line 93
    .local v9, clockwise:Z
    :goto_0
    iget-boolean v3, p0, Lcom/waze/ifs/ui/PointsView;->mWasValid:Z

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lcom/waze/ifs/ui/PointsView;->mValid:Z

    if-eqz v3, :cond_7

    .line 94
    iget-object v10, p0, Lcom/waze/ifs/ui/PointsView;->mMust:Landroid/view/View;

    .line 102
    :cond_0
    :goto_1
    iget-boolean v3, p0, Lcom/waze/ifs/ui/PointsView;->mValid:Z

    if-nez v3, :cond_9

    iget-boolean v3, p0, Lcom/waze/ifs/ui/PointsView;->mWasValid:Z

    if-eqz v3, :cond_9

    .line 103
    iget-object v12, p0, Lcom/waze/ifs/ui/PointsView;->mMust:Landroid/view/View;

    .line 111
    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/waze/ifs/ui/PointsView;->mMust:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 112
    iget-object v3, p0, Lcom/waze/ifs/ui/PointsView;->mCheck:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 113
    iget-object v3, p0, Lcom/waze/ifs/ui/PointsView;->mPointsTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    if-eqz v12, :cond_2

    .line 116
    invoke-virtual {v12, v2}, Landroid/view/View;->setVisibility(I)V

    .line 117
    invoke-direct {p0, v5, v9}, Lcom/waze/ifs/ui/PointsView;->makeAnimation(ZZ)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 119
    :cond_2
    if-eqz v13, :cond_3

    .line 120
    invoke-virtual {v13, v2}, Landroid/view/View;->setVisibility(I)V

    .line 121
    invoke-direct {p0, v5, v9}, Lcom/waze/ifs/ui/PointsView;->makeAnimation(ZZ)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 123
    :cond_3
    if-eqz v10, :cond_4

    .line 124
    invoke-virtual {v10, v2}, Landroid/view/View;->setVisibility(I)V

    .line 125
    invoke-direct {p0, v2, v9}, Lcom/waze/ifs/ui/PointsView;->makeAnimation(ZZ)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 127
    :cond_4
    if-eqz v11, :cond_5

    .line 128
    invoke-virtual {v11, v2}, Landroid/view/View;->setVisibility(I)V

    .line 129
    invoke-direct {p0, v2, v9}, Lcom/waze/ifs/ui/PointsView;->makeAnimation(ZZ)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 131
    :cond_5
    iget-boolean v2, p0, Lcom/waze/ifs/ui/PointsView;->mValid:Z

    iput-boolean v2, p0, Lcom/waze/ifs/ui/PointsView;->mWasValid:Z

    .line 132
    iput-boolean p1, p0, Lcom/waze/ifs/ui/PointsView;->mPointsOn:Z

    .line 135
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v2, 0x3f99999a

    const v4, 0x3f99999a

    move v3, v1

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 137
    .local v0, pulse:Landroid/view/animation/ScaleAnimation;
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 138
    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setRepeatCount(I)V

    .line 139
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setRepeatMode(I)V

    .line 140
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 142
    invoke-virtual {p0, v0}, Lcom/waze/ifs/ui/PointsView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 143
    return-void

    .end local v0           #pulse:Landroid/view/animation/ScaleAnimation;
    .end local v9           #clockwise:Z
    :cond_6
    move v9, v5

    .line 91
    goto :goto_0

    .line 95
    .restart local v9       #clockwise:Z
    :cond_7
    if-nez p1, :cond_8

    iget-boolean v3, p0, Lcom/waze/ifs/ui/PointsView;->mPointsOn:Z

    if-eqz v3, :cond_8

    .line 96
    iget-object v10, p0, Lcom/waze/ifs/ui/PointsView;->mCheck:Landroid/view/View;

    .line 97
    iget-boolean v3, p0, Lcom/waze/ifs/ui/PointsView;->mShowPoints:Z

    if-nez v3, :cond_0

    iget-object v11, p0, Lcom/waze/ifs/ui/PointsView;->mBg:Landroid/view/View;

    .line 98
    goto/16 :goto_1

    :cond_8
    iget-boolean v3, p0, Lcom/waze/ifs/ui/PointsView;->mShowPoints:Z

    if-eqz v3, :cond_0

    .line 99
    iget-object v10, p0, Lcom/waze/ifs/ui/PointsView;->mPointsTextView:Landroid/widget/TextView;

    goto/16 :goto_1

    .line 104
    :cond_9
    iget-boolean v3, p0, Lcom/waze/ifs/ui/PointsView;->mPointsOn:Z

    if-nez v3, :cond_a

    if-eqz p1, :cond_a

    .line 105
    iget-object v12, p0, Lcom/waze/ifs/ui/PointsView;->mCheck:Landroid/view/View;

    .line 106
    iget-boolean v3, p0, Lcom/waze/ifs/ui/PointsView;->mShowPoints:Z

    if-nez v3, :cond_1

    iget-object v13, p0, Lcom/waze/ifs/ui/PointsView;->mBg:Landroid/view/View;

    .line 107
    goto/16 :goto_2

    :cond_a
    iget-boolean v3, p0, Lcom/waze/ifs/ui/PointsView;->mShowPoints:Z

    if-eqz v3, :cond_1

    .line 108
    iget-object v12, p0, Lcom/waze/ifs/ui/PointsView;->mPointsTextView:Landroid/widget/TextView;

    goto/16 :goto_2
.end method

.method private initMemebers()V
    .locals 1

    .prologue
    .line 184
    const v0, 0x7f09053d

    invoke-virtual {p0, v0}, Lcom/waze/ifs/ui/PointsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/ifs/ui/PointsView;->mBg:Landroid/view/View;

    .line 185
    const v0, 0x7f09053f

    invoke-virtual {p0, v0}, Lcom/waze/ifs/ui/PointsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/ifs/ui/PointsView;->mCheck:Landroid/view/View;

    .line 186
    const v0, 0x7f090540

    invoke-virtual {p0, v0}, Lcom/waze/ifs/ui/PointsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/ifs/ui/PointsView;->mMust:Landroid/view/View;

    .line 187
    const v0, 0x7f09053e

    invoke-virtual {p0, v0}, Lcom/waze/ifs/ui/PointsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/waze/ifs/ui/PointsView;->mPointsTextView:Landroid/widget/TextView;

    .line 188
    return-void
.end method

.method private makeAnimation(ZZ)Landroid/view/animation/Animation;
    .locals 11
    .parameter "rotateIn"
    .parameter "clockwise"

    .prologue
    const/high16 v6, 0x3f80

    const/high16 v4, 0x3f00

    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 146
    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 147
    .local v10, set:Landroid/view/animation/AnimationSet;
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 148
    const-wide/16 v1, 0xc8

    invoke-virtual {v10, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 149
    invoke-virtual {v10, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 152
    if-eqz p1, :cond_0

    .line 153
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v7, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 157
    .local v7, alpha:Landroid/view/animation/AlphaAnimation;
    :goto_0
    invoke-virtual {v10, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 160
    if-eqz p1, :cond_2

    .line 161
    const/4 v9, 0x0

    .line 162
    .local v9, degTo:I
    if-eqz p2, :cond_1

    .line 163
    const/16 v8, -0xb4

    .line 177
    .local v8, degFrom:I
    :goto_1
    new-instance v0, Landroid/view/animation/RotateAnimation;

    int-to-float v1, v8

    int-to-float v2, v9

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 179
    .local v0, rotate:Landroid/view/animation/RotateAnimation;
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 180
    return-object v10

    .line 155
    .end local v0           #rotate:Landroid/view/animation/RotateAnimation;
    .end local v7           #alpha:Landroid/view/animation/AlphaAnimation;
    .end local v8           #degFrom:I
    .end local v9           #degTo:I
    :cond_0
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v7, v6, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v7       #alpha:Landroid/view/animation/AlphaAnimation;
    goto :goto_0

    .line 165
    .restart local v9       #degTo:I
    :cond_1
    const/16 v8, 0xb4

    .line 167
    .restart local v8       #degFrom:I
    goto :goto_1

    .line 168
    .end local v8           #degFrom:I
    .end local v9           #degTo:I
    :cond_2
    const/4 v8, 0x0

    .line 169
    .restart local v8       #degFrom:I
    if-eqz p2, :cond_3

    .line 170
    const/16 v9, 0xb4

    .line 171
    .restart local v9       #degTo:I
    goto :goto_1

    .line 172
    .end local v9           #degTo:I
    :cond_3
    const/16 v9, -0xb4

    .restart local v9       #degTo:I
    goto :goto_1
.end method


# virtual methods
.method public isOn()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/waze/ifs/ui/PointsView;->mPointsOn:Z

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/waze/ifs/ui/PointsView;->mValid:Z

    return v0
.end method

.method public setIsOn(ZZZ)V
    .locals 5
    .parameter "isOn"
    .parameter "hasContent"
    .parameter "animate"

    .prologue
    const/4 v1, 0x4

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 58
    if-eqz p3, :cond_2

    .line 59
    iget-boolean v0, p0, Lcom/waze/ifs/ui/PointsView;->mPointsOn:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/waze/ifs/ui/PointsView;->mWasValid:Z

    iget-boolean v1, p0, Lcom/waze/ifs/ui/PointsView;->mValid:Z

    if-eq v0, v1, :cond_1

    .line 60
    :cond_0
    invoke-direct {p0, p1}, Lcom/waze/ifs/ui/PointsView;->animateSwitch(Z)V

    .line 76
    :cond_1
    :goto_0
    return-void

    .line 63
    :cond_2
    iput-boolean p1, p0, Lcom/waze/ifs/ui/PointsView;->mPointsOn:Z

    .line 64
    iget-boolean v0, p0, Lcom/waze/ifs/ui/PointsView;->mValid:Z

    if-nez v0, :cond_7

    .line 65
    iget-object v4, p0, Lcom/waze/ifs/ui/PointsView;->mMust:Landroid/view/View;

    iget-boolean v0, p0, Lcom/waze/ifs/ui/PointsView;->mPointsOn:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lcom/waze/ifs/ui/PointsView;->mPointsTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73
    :goto_2
    iget-object v0, p0, Lcom/waze/ifs/ui/PointsView;->mCheck:Landroid/view/View;

    iget-boolean v4, p0, Lcom/waze/ifs/ui/PointsView;->mPointsOn:Z

    if-eqz v4, :cond_3

    move v3, v2

    :cond_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/waze/ifs/ui/PointsView;->mBg:Landroid/view/View;

    iget-boolean v3, p0, Lcom/waze/ifs/ui/PointsView;->mPointsOn:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/waze/ifs/ui/PointsView;->mShowPoints:Z

    if-eqz v3, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_6
    move v0, v2

    .line 65
    goto :goto_1

    .line 68
    :cond_7
    iget-boolean v0, p0, Lcom/waze/ifs/ui/PointsView;->mShowPoints:Z

    if-eqz v0, :cond_8

    .line 69
    iget-object v4, p0, Lcom/waze/ifs/ui/PointsView;->mPointsTextView:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/waze/ifs/ui/PointsView;->mPointsOn:Z

    if-eqz v0, :cond_9

    move v0, v3

    :goto_3
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    :cond_8
    iget-object v0, p0, Lcom/waze/ifs/ui/PointsView;->mMust:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_9
    move v0, v2

    .line 69
    goto :goto_3
.end method

.method public setPoints(I)V
    .locals 1
    .parameter "points"

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/waze/ifs/ui/PointsView;->setPoints(IZ)V

    .line 41
    return-void
.end method

.method public setPoints(IZ)V
    .locals 3
    .parameter "points"
    .parameter "hide"

    .prologue
    .line 44
    if-nez p2, :cond_0

    if-lez p1, :cond_0

    .line 45
    iget-object v0, p0, Lcom/waze/ifs/ui/PointsView;->mPointsTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "+"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    :goto_0
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/ifs/ui/PointsView;->mShowPoints:Z

    .line 48
    iget-object v0, p0, Lcom/waze/ifs/ui/PointsView;->mPointsTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setValid(Z)V
    .locals 0
    .parameter "valid"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/waze/ifs/ui/PointsView;->mValid:Z

    .line 55
    return-void
.end method
