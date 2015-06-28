.class public Lcom/waze/reports/ThankYouDialog;
.super Landroid/app/Dialog;
.source "ThankYouDialog.java"


# static fields
.field private static final ANIM_CIRCLE_DELAY:I = 0xc8

.field private static final ANIM_CIRCLE_DUR:I = 0x96

.field private static final ANIM_DOGE_DELAY:I = 0x320

.field private static final ANIM_DOGE_DUR:I = 0xfa

.field private static final ANIM_ONES_DELAY:I = 0x1f4

.field private static final ANIM_ONES_DUR:I = 0x96

.field private static final ANIM_POINTS_DELAY:I = 0x28a

.field private static final ANIM_POINTS_DUR:I = 0x96

.field private static final ANIM_TENS_DELAY:I = 0x15e

.field private static final ANIM_TENS_DUR:I = 0x96


# instance fields
.field mEarnedPoints:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IZLandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Lcom/waze/strings/DisplayStrings;Lcom/waze/strings/DisplayStrings;Lcom/waze/strings/DisplayStrings;Lcom/waze/strings/DisplayStrings;Z)V
    .locals 17
    .parameter "context"
    .parameter "earnedPoints"
    .parameter "bShowMore"
    .parameter "onLater"
    .parameter "onMore"
    .parameter "thanks1"
    .parameter "thanks2"
    .parameter "more"
    .parameter "later"
    .parameter "pending"

    .prologue
    .line 38
    const v4, 0x7f060061

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 39
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/waze/reports/ThankYouDialog;->mEarnedPoints:I

    .line 40
    const v4, 0x7f0300b3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/waze/reports/ThankYouDialog;->setContentView(I)V

    .line 42
    invoke-virtual/range {p0 .. p0}, Lcom/waze/reports/ThankYouDialog;->getWindow()Landroid/view/Window;

    move-result-object v16

    .line 43
    .local v16, window:Landroid/view/Window;
    const/4 v4, -0x2

    const/4 v5, -0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/view/Window;->setLayout(II)V

    .line 44
    const/16 v4, 0x11

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/Window;->setGravity(I)V

    .line 46
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v14

    .line 48
    .local v14, nm:Lcom/waze/NativeManager;
    if-lez p2, :cond_2

    .line 49
    const v4, 0x7f090531

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/waze/reports/ThankYouDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 50
    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_YOU_EARNED:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v14, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    .line 49
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    const v4, 0x7f090534

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/waze/reports/ThankYouDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v6, v0, Lcom/waze/reports/ThankYouDialog;->mEarnedPoints:I

    rem-int/lit8 v6, v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    const v4, 0x7f090533

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/waze/reports/ThankYouDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v6, v0, Lcom/waze/reports/ThankYouDialog;->mEarnedPoints:I

    div-int/lit8 v6, v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    invoke-direct/range {p0 .. p0}, Lcom/waze/reports/ThankYouDialog;->animatePoints()V

    .line 59
    :goto_0
    const v4, 0x7f090537

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/waze/reports/ThankYouDialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 60
    .local v12, doge:Landroid/view/View;
    if-eqz p3, :cond_3

    .line 61
    new-instance v13, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x1

    invoke-direct {v13, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 63
    .local v13, dogeAnimation:Landroid/view/animation/AnimationSet;
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 64
    const/4 v7, 0x1

    const/high16 v8, 0x3f80

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 63
    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 65
    .local v2, dogeAnimation1:Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v13, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 67
    new-instance v3, Landroid/view/animation/RotateAnimation;

    const/high16 v4, -0x3dcc

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/high16 v7, 0x3f00

    const/4 v8, 0x1

    .line 68
    const/high16 v9, 0x3f00

    .line 67
    invoke-direct/range {v3 .. v9}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 69
    .local v3, dogeAnimation2:Landroid/view/animation/RotateAnimation;
    invoke-virtual {v13, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 70
    const-wide/16 v4, 0xfa

    invoke-virtual {v13, v4, v5}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 71
    const/4 v4, 0x1

    invoke-virtual {v13, v4}, Landroid/view/animation/AnimationSet;->setFillBefore(Z)V

    .line 72
    const-wide/16 v4, 0x320

    invoke-virtual {v13, v4, v5}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 73
    invoke-virtual {v12, v13}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 78
    .end local v2           #dogeAnimation1:Landroid/view/animation/TranslateAnimation;
    .end local v3           #dogeAnimation2:Landroid/view/animation/RotateAnimation;
    .end local v13           #dogeAnimation:Landroid/view/animation/AnimationSet;
    :goto_1
    const v4, 0x7f090538

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/waze/reports/ThankYouDialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 79
    .local v11, addMoreButton:Landroid/view/View;
    if-eqz p3, :cond_4

    .line 80
    move-object/from16 v0, p5

    invoke-virtual {v11, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    :goto_2
    const v4, 0x7f09053b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/waze/reports/ThankYouDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    if-eqz p3, :cond_5

    .line 87
    const v4, 0x7f090539

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/waze/reports/ThankYouDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, p8

    invoke-virtual {v14, v0}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    const v4, 0x7f09053b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/waze/reports/ThankYouDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, p9

    invoke-virtual {v14, v0}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    const v4, 0x7f09053a

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/waze/reports/ThankYouDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v5, "+30"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :goto_3
    const-string v15, ""

    .line 96
    .local v15, thanks:Ljava/lang/String;
    if-eqz p6, :cond_0

    .line 97
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p6

    invoke-virtual {v14, v0}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 98
    if-eqz p7, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 100
    :cond_0
    if-eqz p7, :cond_1

    .line 101
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p7

    invoke-virtual {v14, v0}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 103
    :cond_1
    const v4, 0x7f090536

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/waze/reports/ThankYouDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    if-eqz p10, :cond_6

    .line 106
    const v4, 0x7f09053c

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/waze/reports/ThankYouDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 107
    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_PENDING_COMMUNITY_REVIEW:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v14, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    .line 106
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    :goto_4
    const v4, 0x7f090535

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/waze/reports/ThankYouDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/waze/view/text/AutoResizeTextView;

    .line 112
    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_POINTS:Lcom/waze/strings/DisplayStrings;

    .line 111
    invoke-virtual {v14, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    .line 112
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 111
    invoke-virtual {v4, v5}, Lcom/waze/view/text/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    return-void

    .line 55
    .end local v11           #addMoreButton:Landroid/view/View;
    .end local v12           #doge:Landroid/view/View;
    .end local v15           #thanks:Ljava/lang/String;
    :cond_2
    const v4, 0x7f090531

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/waze/reports/ThankYouDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 56
    const v4, 0x7f090532

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/waze/reports/ThankYouDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 75
    .restart local v12       #doge:Landroid/view/View;
    :cond_3
    const/16 v4, 0x8

    invoke-virtual {v12, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 82
    .restart local v11       #addMoreButton:Landroid/view/View;
    :cond_4
    const/16 v4, 0x8

    invoke-virtual {v11, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 92
    :cond_5
    const v4, 0x7f09053b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/waze/reports/ThankYouDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, p9

    invoke-virtual {v14, v0}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 109
    .restart local v15       #thanks:Ljava/lang/String;
    :cond_6
    const v4, 0x7f09053c

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/waze/reports/ThankYouDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method

.method private animatePoints()V
    .locals 17

    .prologue
    .line 116
    const v5, 0x7f090532

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/waze/reports/ThankYouDialog;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 118
    .local v13, circle:Landroid/view/View;
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    const/4 v6, 0x1

    const/high16 v7, 0x3f00

    .line 119
    const/4 v8, 0x1

    const/high16 v9, 0x3f00

    .line 118
    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 120
    .local v1, circleAnimation:Landroid/view/animation/ScaleAnimation;
    const-wide/16 v5, 0x96

    invoke-virtual {v1, v5, v6}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 121
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/view/animation/ScaleAnimation;->setFillBefore(Z)V

    .line 122
    const-wide/16 v5, 0xc8

    invoke-virtual {v1, v5, v6}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 123
    invoke-virtual {v13, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 125
    const v5, 0x7f090533

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/waze/reports/ThankYouDialog;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 127
    .local v16, tens:Landroid/view/View;
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    .line 128
    const/4 v9, 0x1

    const/high16 v10, 0x3f00

    .line 127
    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 129
    .local v2, tensAnimation:Landroid/view/animation/ScaleAnimation;
    const-wide/16 v5, 0x96

    invoke-virtual {v2, v5, v6}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 130
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/view/animation/ScaleAnimation;->setFillBefore(Z)V

    .line 131
    const-wide/16 v5, 0x15e

    invoke-virtual {v2, v5, v6}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 132
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 134
    const v5, 0x7f090534

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/waze/reports/ThankYouDialog;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 136
    .local v14, ones:Landroid/view/View;
    new-instance v3, Landroid/view/animation/ScaleAnimation;

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/high16 v7, 0x3f80

    const/4 v8, 0x1

    const/high16 v9, 0x3f00

    .line 137
    const/4 v10, 0x1

    const/high16 v11, 0x3f00

    .line 136
    invoke-direct/range {v3 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 138
    .local v3, onesAnimation:Landroid/view/animation/ScaleAnimation;
    const-wide/16 v5, 0x96

    invoke-virtual {v3, v5, v6}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 139
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/view/animation/ScaleAnimation;->setFillBefore(Z)V

    .line 140
    const-wide/16 v5, 0x1f4

    invoke-virtual {v3, v5, v6}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 141
    invoke-virtual {v14, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 143
    const v5, 0x7f090535

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/waze/reports/ThankYouDialog;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 145
    .local v15, points:Landroid/view/View;
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    const/high16 v8, 0x3f80

    const/4 v9, 0x1

    const/high16 v10, 0x3f00

    .line 146
    const/4 v11, 0x1

    const/high16 v12, 0x3f00

    .line 145
    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 147
    .local v4, pointsAnimation:Landroid/view/animation/ScaleAnimation;
    const-wide/16 v5, 0x96

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 148
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/animation/ScaleAnimation;->setFillBefore(Z)V

    .line 149
    const-wide/16 v5, 0x28a

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 150
    invoke-virtual {v15, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 151
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 155
    const v0, 0x7f09053b

    invoke-virtual {p0, v0}, Lcom/waze/reports/ThankYouDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 156
    return-void
.end method
