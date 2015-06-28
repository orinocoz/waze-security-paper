.class final Lcom/waze/share/ShareUtility$OnShareClick;
.super Ljava/lang/Object;
.source "ShareUtility.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/share/ShareUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OnShareClick"
.end annotation


# instance fields
.field _isSelected:Z

.field private final ctx:Lcom/waze/ifs/ui/ActivityBase;

.field private final frame:Landroid/widget/FrameLayout;

.field private final friend:Ljava/lang/Object;

.field private final name:Ljava/lang/String;

.field private final ofs:Lcom/waze/share/ShareUtility$IFriendSelected;


# direct methods
.method private constructor <init>(Lcom/waze/ifs/ui/ActivityBase;Landroid/widget/FrameLayout;Ljava/lang/Object;ZLcom/waze/share/ShareUtility$IFriendSelected;Ljava/lang/String;)V
    .locals 1
    .parameter "ctx"
    .parameter "frame"
    .parameter "friend"
    .parameter "isSelected"
    .parameter "ofs"
    .parameter "name"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/share/ShareUtility$OnShareClick;->_isSelected:Z

    .line 74
    iput-object p1, p0, Lcom/waze/share/ShareUtility$OnShareClick;->ctx:Lcom/waze/ifs/ui/ActivityBase;

    .line 75
    iput-object p2, p0, Lcom/waze/share/ShareUtility$OnShareClick;->frame:Landroid/widget/FrameLayout;

    .line 76
    iput-object p3, p0, Lcom/waze/share/ShareUtility$OnShareClick;->friend:Ljava/lang/Object;

    .line 77
    iput-object p5, p0, Lcom/waze/share/ShareUtility$OnShareClick;->ofs:Lcom/waze/share/ShareUtility$IFriendSelected;

    .line 78
    iput-object p6, p0, Lcom/waze/share/ShareUtility$OnShareClick;->name:Ljava/lang/String;

    .line 79
    iput-boolean p4, p0, Lcom/waze/share/ShareUtility$OnShareClick;->_isSelected:Z

    .line 80
    invoke-direct {p0, p2}, Lcom/waze/share/ShareUtility$OnShareClick;->setSelected(Landroid/view/View;)V

    .line 81
    return-void
.end method

.method synthetic constructor <init>(Lcom/waze/ifs/ui/ActivityBase;Landroid/widget/FrameLayout;Ljava/lang/Object;ZLcom/waze/share/ShareUtility$IFriendSelected;Ljava/lang/String;Lcom/waze/share/ShareUtility$OnShareClick;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-direct/range {p0 .. p6}, Lcom/waze/share/ShareUtility$OnShareClick;-><init>(Lcom/waze/ifs/ui/ActivityBase;Landroid/widget/FrameLayout;Ljava/lang/Object;ZLcom/waze/share/ShareUtility$IFriendSelected;Ljava/lang/String;)V

    return-void
.end method

.method private setSelected(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/16 v1, 0x1b5b

    .line 203
    iget-boolean v0, p0, Lcom/waze/share/ShareUtility$OnShareClick;->_isSelected:Z

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/waze/share/ShareUtility$OnShareClick;->frame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/waze/share/ShareUtility$OnShareClick;->frame:Landroid/widget/FrameLayout;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 211
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/waze/share/ShareUtility$OnShareClick;->frame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/waze/share/ShareUtility$OnShareClick;->frame:Landroid/widget/FrameLayout;

    const/high16 v1, 0x3f00

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 20
    .parameter "v"

    .prologue
    .line 86
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/waze/share/ShareUtility$OnShareClick;->frame:Landroid/widget/FrameLayout;

    const/16 v5, 0x1b5b

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 88
    .local v16, selected:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/waze/share/ShareUtility$OnShareClick;->ofs:Lcom/waze/share/ShareUtility$IFriendSelected;

    if-eqz v4, :cond_1

    .line 89
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/waze/share/ShareUtility$OnShareClick;->ofs:Lcom/waze/share/ShareUtility$IFriendSelected;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/waze/share/ShareUtility$OnShareClick;->friend:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/waze/share/ShareUtility$OnShareClick;->_isSelected:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v5, v6, v4}, Lcom/waze/share/ShareUtility$IFriendSelected;->onFriendSelected(Ljava/lang/Object;Z)Z

    move-result v13

    .line 90
    .local v13, allow:Z
    if-nez v13, :cond_1

    .line 200
    .end local v13           #allow:Z
    :goto_1
    return-void

    .line 89
    :cond_0
    const/4 v4, 0x1

    goto :goto_0

    .line 93
    :cond_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-ge v4, v5, :cond_2

    .line 95
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/waze/share/ShareUtility;->access$0(Z)V

    .line 98
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/waze/share/ShareUtility$OnShareClick;->_isSelected:Z

    if-eqz v4, :cond_4

    .line 99
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 100
    new-instance v18, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 102
    .local v18, set1:Landroid/view/animation/AnimationSet;
    const-string v4, "SHARE_TOGGLE_CLICK"

    const-string v5, "VAUE"

    const-string v6, "OFF"

    invoke-static {v4, v5, v6}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    new-instance v15, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    invoke-direct {v15, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 106
    .local v15, alpha1:Landroid/view/animation/AlphaAnimation;
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 108
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f00

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f00

    const/4 v7, 0x1

    const v8, 0x3f4ccccd

    .line 109
    const/4 v9, 0x1

    const v10, 0x3e4ccccd

    .line 108
    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 110
    .local v2, scale1:Landroid/view/animation/ScaleAnimation;
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 113
    const-wide/16 v4, 0x96

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 114
    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 115
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 117
    new-instance v14, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f00

    invoke-direct {v14, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 118
    .local v14, alpha:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v4, 0xc8

    invoke-virtual {v14, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 119
    const/4 v4, 0x0

    invoke-virtual {v14, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 120
    new-instance v4, Lcom/waze/share/ShareUtility$OnShareClick$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1}, Lcom/waze/share/ShareUtility$OnShareClick$1;-><init>(Lcom/waze/share/ShareUtility$OnShareClick;Landroid/view/View;)V

    invoke-virtual {v14, v4}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 134
    const/high16 v4, 0x3f80

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 135
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 199
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/waze/share/ShareUtility$OnShareClick;->_isSelected:Z

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/waze/share/ShareUtility$OnShareClick;->_isSelected:Z

    goto/16 :goto_1

    .line 137
    .end local v2           #scale1:Landroid/view/animation/ScaleAnimation;
    .end local v14           #alpha:Landroid/view/animation/AlphaAnimation;
    .end local v15           #alpha1:Landroid/view/animation/AlphaAnimation;
    .end local v18           #set1:Landroid/view/animation/AnimationSet;
    :cond_4
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 138
    new-instance v18, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 140
    .restart local v18       #set1:Landroid/view/animation/AnimationSet;
    const-string v4, "SHARE_TOGGLE_CLICK"

    const-string v5, "VAUE"

    const-string v6, "ON"

    invoke-static {v4, v5, v6}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    new-instance v15, Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    invoke-direct {v15, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 144
    .restart local v15       #alpha1:Landroid/view/animation/AlphaAnimation;
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 146
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f00

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f00

    const/high16 v6, 0x3f80

    const/4 v7, 0x1

    const v8, 0x3f4ccccd

    .line 147
    const/4 v9, 0x1

    const v10, 0x3e4ccccd

    .line 146
    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 148
    .restart local v2       #scale1:Landroid/view/animation/ScaleAnimation;
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 150
    const-wide/16 v4, 0x12c

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 151
    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 152
    sget-object v4, Lcom/waze/animation/easing/AnimationEasingManager$EaseType;->EaseOut:Lcom/waze/animation/easing/AnimationEasingManager$EaseType;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    invoke-static {v4, v5, v6, v7, v8}, Lcom/waze/animation/easing/AnimationEasingManager;->getElasticInterpolator(Lcom/waze/animation/easing/AnimationEasingManager$EaseType;DD)Landroid/view/animation/Interpolator;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 153
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 155
    new-instance v17, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 157
    .local v17, set:Landroid/view/animation/AnimationSet;
    new-instance v14, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f00

    const/high16 v5, 0x3f80

    invoke-direct {v14, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 158
    .restart local v14       #alpha:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v4, 0xc8

    invoke-virtual {v14, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 159
    const/4 v4, 0x1

    invoke-virtual {v14, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 160
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 163
    new-instance v3, Landroid/view/animation/ScaleAnimation;

    const v4, 0x3f666666

    const/high16 v5, 0x3f80

    const v6, 0x3f666666

    const/high16 v7, 0x3f80

    const/4 v8, 0x1

    const/high16 v9, 0x3f00

    .line 164
    const/4 v10, 0x1

    const/high16 v11, 0x3f00

    .line 163
    invoke-direct/range {v3 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 165
    .local v3, scale:Landroid/view/animation/ScaleAnimation;
    const-wide/16 v4, 0x190

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 166
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 168
    sget-object v4, Lcom/waze/animation/easing/AnimationEasingManager$EaseType;->EaseOut:Lcom/waze/animation/easing/AnimationEasingManager$EaseType;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    invoke-static {v4, v5, v6, v7, v8}, Lcom/waze/animation/easing/AnimationEasingManager;->getElasticInterpolator(Lcom/waze/animation/easing/AnimationEasingManager$EaseType;DD)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 169
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 171
    const/high16 v4, 0x3f80

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 172
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 173
    invoke-static {}, Lcom/waze/share/ShareUtility;->access$1()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 175
    new-instance v19, Lcom/waze/ifs/ui/TinyTooltip;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/waze/share/ShareUtility$OnShareClick;->ctx:Lcom/waze/ifs/ui/ActivityBase;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/waze/share/ShareUtility$OnShareClick;->name:Ljava/lang/String;

    invoke-static {v5}, Lcom/waze/share/ShareUtility;->getShortened(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-direct {v0, v4, v5}, Lcom/waze/ifs/ui/TinyTooltip;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 176
    .local v19, tip:Lcom/waze/ifs/ui/TinyTooltip;
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/waze/ifs/ui/TinyTooltip;->show(Landroid/view/View;)V

    .line 177
    new-instance v12, Lcom/waze/share/ShareUtility$OnShareClick$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v12, v0, v1}, Lcom/waze/share/ShareUtility$OnShareClick$2;-><init>(Lcom/waze/share/ShareUtility$OnShareClick;Lcom/waze/ifs/ui/TinyTooltip;)V

    .line 185
    .local v12, action:Ljava/lang/Runnable;
    const-wide/16 v4, 0x3e8

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 186
    new-instance v4, Lcom/waze/share/ShareUtility$OnShareClick$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v12}, Lcom/waze/share/ShareUtility$OnShareClick$3;-><init>(Lcom/waze/share/ShareUtility$OnShareClick;Ljava/lang/Runnable;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto/16 :goto_2

    .line 199
    .end local v3           #scale:Landroid/view/animation/ScaleAnimation;
    .end local v12           #action:Ljava/lang/Runnable;
    .end local v17           #set:Landroid/view/animation/AnimationSet;
    .end local v19           #tip:Lcom/waze/ifs/ui/TinyTooltip;
    :cond_5
    const/4 v4, 0x1

    goto/16 :goto_3
.end method
