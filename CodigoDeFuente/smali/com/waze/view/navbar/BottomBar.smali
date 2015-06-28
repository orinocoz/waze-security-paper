.class public Lcom/waze/view/navbar/BottomBar;
.super Landroid/widget/RelativeLayout;
.source "BottomBar.java"


# instance fields
.field private final FRIENDS_FADED_ALPHA:I

.field private final FRIENDS_NORMAL_ALPHA:I

.field private LOG_TAG:Ljava/lang/String;

.field private final UNITS_FACTOR:F

.field private final UNITS_SPACE:Ljava/lang/String;

.field private final UNITS_SPACE_FACTOR:F

.field private bIsShown:Z

.field private bIsVisible:Z

.field private distanceView:Landroid/widget/TextView;

.field private etaView:Landroid/widget/TextView;

.field private followersView:Landroid/widget/TextView;

.field private nightMode:Z

.field private rootView:Landroid/view/View;

.field private timeView:Landroid/widget/TextView;

.field private waypointView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput-boolean v1, p0, Lcom/waze/view/navbar/BottomBar;->bIsShown:Z

    .line 26
    iput-boolean v1, p0, Lcom/waze/view/navbar/BottomBar;->bIsVisible:Z

    .line 286
    iput-boolean v1, p0, Lcom/waze/view/navbar/BottomBar;->nightMode:Z

    .line 302
    const-string v1, " "

    iput-object v1, p0, Lcom/waze/view/navbar/BottomBar;->UNITS_SPACE:Ljava/lang/String;

    .line 303
    const v1, 0x3f19999a

    iput v1, p0, Lcom/waze/view/navbar/BottomBar;->UNITS_SPACE_FACTOR:F

    .line 304
    const v1, 0x3f4ccccd

    iput v1, p0, Lcom/waze/view/navbar/BottomBar;->UNITS_FACTOR:F

    .line 306
    const/16 v1, 0x76

    iput v1, p0, Lcom/waze/view/navbar/BottomBar;->FRIENDS_FADED_ALPHA:I

    .line 307
    const/16 v1, 0xff

    iput v1, p0, Lcom/waze/view/navbar/BottomBar;->FRIENDS_NORMAL_ALPHA:I

    .line 308
    const-string v1, "BottomBar"

    iput-object v1, p0, Lcom/waze/view/navbar/BottomBar;->LOG_TAG:Ljava/lang/String;

    .line 30
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 31
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030026

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 32
    const v1, 0x7f0901c6

    invoke-virtual {p0, v1}, Lcom/waze/view/navbar/BottomBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/view/navbar/BottomBar;->rootView:Landroid/view/View;

    .line 33
    const v1, 0x7f0901c7

    invoke-virtual {p0, v1}, Lcom/waze/view/navbar/BottomBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/view/navbar/BottomBar;->waypointView:Landroid/view/View;

    .line 34
    const v1, 0x7f0901c8

    invoke-virtual {p0, v1}, Lcom/waze/view/navbar/BottomBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/waze/view/navbar/BottomBar;->etaView:Landroid/widget/TextView;

    .line 35
    const v1, 0x7f0901c9

    invoke-virtual {p0, v1}, Lcom/waze/view/navbar/BottomBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/waze/view/navbar/BottomBar;->followersView:Landroid/widget/TextView;

    .line 36
    const v1, 0x7f0901ca

    invoke-virtual {p0, v1}, Lcom/waze/view/navbar/BottomBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/waze/view/navbar/BottomBar;->timeView:Landroid/widget/TextView;

    .line 37
    const v1, 0x7f0901cb

    invoke-virtual {p0, v1}, Lcom/waze/view/navbar/BottomBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/waze/view/navbar/BottomBar;->distanceView:Landroid/widget/TextView;

    .line 39
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/waze/view/navbar/BottomBar;->setVisibility(I)V

    .line 40
    return-void
.end method

.method private _append_textsize_span(Landroid/text/SpannableStringBuilder;Ljava/lang/String;F)V
    .locals 4
    .parameter "builder"
    .parameter "str"
    .parameter "factor"

    .prologue
    .line 282
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 283
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v0, p3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 284
    return-void
.end method


# virtual methods
.method public SetVisible(Z)V
    .locals 1
    .parameter "IsVisible"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/waze/view/navbar/BottomBar;->bIsVisible:Z

    .line 79
    iget-boolean v0, p0, Lcom/waze/view/navbar/BottomBar;->bIsVisible:Z

    if-eqz v0, :cond_0

    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/waze/view/navbar/BottomBar;->setVisibility(I)V

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/waze/view/navbar/BottomBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public hide(Z)V
    .locals 18
    .parameter "animated"

    .prologue
    .line 89
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/view/navbar/BottomBar;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Hide request. Visible: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/waze/view/navbar/BottomBar;->isVisible()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/waze/Logger;->d_(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/waze/view/navbar/BottomBar;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    if-eqz p1, :cond_1

    .line 92
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/waze/view/navbar/BottomBar;->bIsVisible:Z

    .line 95
    new-instance v1, Lcom/waze/view/anim/AxisFlipper;

    const-wide/16 v2, 0x0

    const-wide v4, 0x4056800000000000L

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/high16 v14, 0x3fe0

    const-wide/high16 v16, 0x3fe0

    invoke-direct/range {v1 .. v17}, Lcom/waze/view/anim/AxisFlipper;-><init>(DDDDDDDD)V

    .line 96
    .local v1, anim:Landroid/view/animation/Animation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 97
    new-instance v2, Lcom/waze/view/navbar/BottomBar$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/waze/view/navbar/BottomBar$2;-><init>(Lcom/waze/view/navbar/BottomBar;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 113
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/waze/view/navbar/BottomBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 119
    .end local v1           #anim:Landroid/view/animation/Animation;
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    const/16 v2, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/view/navbar/BottomBar;->setVisibility(I)V

    .line 116
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/waze/view/navbar/BottomBar;->bIsVisible:Z

    goto :goto_0
.end method

.method public initLang(Z)V
    .locals 0
    .parameter "rtlMode"

    .prologue
    .line 162
    return-void
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/waze/view/navbar/BottomBar;->bIsVisible:Z

    return v0
.end method

.method public setDistance(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "dist"
    .parameter "unit"

    .prologue
    .line 178
    if-nez p1, :cond_0

    .line 191
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/waze/view/navbar/BottomBar;->distanceView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 184
    .local v0, builder:Landroid/text/SpannableStringBuilder;
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 186
    const-string v1, " "

    const v2, 0x3f19999a

    invoke-direct {p0, v0, v1, v2}, Lcom/waze/view/navbar/BottomBar;->_append_textsize_span(Landroid/text/SpannableStringBuilder;Ljava/lang/String;F)V

    .line 187
    const v1, 0x3f4ccccd

    invoke-direct {p0, v0, p2, v1}, Lcom/waze/view/navbar/BottomBar;->_append_textsize_span(Landroid/text/SpannableStringBuilder;Ljava/lang/String;F)V

    .line 189
    iget-object v1, p0, Lcom/waze/view/navbar/BottomBar;->distanceView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setETA(Ljava/lang/String;)V
    .locals 11
    .parameter "eta"

    .prologue
    const/4 v10, 0x0

    .line 210
    if-nez p1, :cond_0

    .line 249
    :goto_0
    return-void

    .line 215
    :cond_0
    invoke-static {}, Lcom/waze/AppService;->getAppResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0024

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v3, v8

    .line 216
    .local v3, etaBoxEtaTextSize:F
    invoke-static {}, Lcom/waze/AppService;->getAppResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0025

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v1, v8

    .line 218
    .local v1, etaBoxEtaAmPmTextSize:F
    invoke-static {}, Lcom/waze/AppService;->getAppResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0022

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    int-to-float v4, v8

    .line 219
    .local v4, etaBoxEtaTopMargin:F
    invoke-static {}, Lcom/waze/AppService;->getAppResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0023

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    int-to-float v2, v8

    .line 222
    .local v2, etaBoxEtaAmPmTopMargin:F
    iget-object v8, p0, Lcom/waze/view/navbar/BottomBar;->etaView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 224
    .local v5, mlp:Landroid/view/ViewGroup$MarginLayoutParams;
    const-string v8, " "

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 226
    const-string v8, " "

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 228
    .local v7, strs:[Ljava/lang/String;
    move v6, v1

    .line 229
    .local v6, pxSize:F
    float-to-int v8, v2

    iput v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 231
    iget-object v8, p0, Lcom/waze/view/navbar/BottomBar;->etaView:Landroid/widget/TextView;

    invoke-virtual {v8, v10, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 233
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 234
    .local v0, builder:Landroid/text/SpannableStringBuilder;
    aget-object v8, v7, v10

    invoke-virtual {v0, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 235
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const v9, 0x3f4ccccd

    invoke-direct {p0, v0, v8, v9}, Lcom/waze/view/navbar/BottomBar;->_append_textsize_span(Landroid/text/SpannableStringBuilder;Ljava/lang/String;F)V

    .line 237
    iget-object v8, p0, Lcom/waze/view/navbar/BottomBar;->etaView:Landroid/widget/TextView;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    .end local v0           #builder:Landroid/text/SpannableStringBuilder;
    .end local v7           #strs:[Ljava/lang/String;
    :goto_1
    iget-object v8, p0, Lcom/waze/view/navbar/BottomBar;->etaView:Landroid/widget/TextView;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 241
    .end local v6           #pxSize:F
    :cond_1
    move v6, v3

    .line 242
    .restart local v6       #pxSize:F
    float-to-int v8, v4

    iput v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 244
    iget-object v8, p0, Lcom/waze/view/navbar/BottomBar;->etaView:Landroid/widget/TextView;

    invoke-virtual {v8, v10, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 245
    iget-object v8, p0, Lcom/waze/view/navbar/BottomBar;->etaView:Landroid/widget/TextView;

    invoke-virtual {v8, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public setFollowers(II)V
    .locals 3
    .parameter "numFollowing"
    .parameter "maxFollowers"

    .prologue
    const v2, 0x7f020140

    .line 252
    if-gez p2, :cond_0

    .line 253
    iget-object v0, p0, Lcom/waze/view/navbar/BottomBar;->followersView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 267
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/waze/view/navbar/BottomBar;->followersView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    if-nez p2, :cond_1

    .line 257
    iget-object v0, p0, Lcom/waze/view/navbar/BottomBar;->followersView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v0, p0, Lcom/waze/view/navbar/BottomBar;->followersView:Landroid/widget/TextView;

    const v1, 0x7f020141

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 259
    :cond_1
    const/16 v0, 0x63

    if-gt p2, v0, :cond_2

    .line 260
    iget-object v0, p0, Lcom/waze/view/navbar/BottomBar;->followersView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v0, p0, Lcom/waze/view/navbar/BottomBar;->followersView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 263
    :cond_2
    iget-object v0, p0, Lcom/waze/view/navbar/BottomBar;->followersView:Landroid/widget/TextView;

    const-string v1, "99"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v0, p0, Lcom/waze/view/navbar/BottomBar;->followersView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setMode(Z)V
    .locals 3
    .parameter "nightMode"

    .prologue
    const/4 v2, 0x0

    .line 165
    iget-boolean v0, p0, Lcom/waze/view/navbar/BottomBar;->nightMode:Z

    if-eq v0, p1, :cond_0

    .line 166
    iput-boolean p1, p0, Lcom/waze/view/navbar/BottomBar;->nightMode:Z

    .line 167
    if-eqz p1, :cond_1

    .line 168
    iget-object v0, p0, Lcom/waze/view/navbar/BottomBar;->rootView:Landroid/view/View;

    const v1, 0x7f0203f7

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 172
    :goto_0
    iget-object v0, p0, Lcom/waze/view/navbar/BottomBar;->rootView:Landroid/view/View;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 174
    :cond_0
    return-void

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/waze/view/navbar/BottomBar;->rootView:Landroid/view/View;

    const v1, 0x7f0203f6

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setTime(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "timeStr"
    .parameter "timeUnits"

    .prologue
    .line 195
    if-nez p1, :cond_0

    .line 206
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/waze/view/navbar/BottomBar;->timeView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 201
    .local v0, builder:Landroid/text/SpannableStringBuilder;
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 202
    const-string v1, " "

    const v2, 0x3f19999a

    invoke-direct {p0, v0, v1, v2}, Lcom/waze/view/navbar/BottomBar;->_append_textsize_span(Landroid/text/SpannableStringBuilder;Ljava/lang/String;F)V

    .line 203
    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 205
    iget-object v1, p0, Lcom/waze/view/navbar/BottomBar;->timeView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setToShown()V
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/view/navbar/BottomBar;->bIsShown:Z

    .line 140
    return-void
.end method

.method public setWaypointVisibility(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 271
    iget-object v1, p0, Lcom/waze/view/navbar/BottomBar;->waypointView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 276
    :goto_0
    return-void

    .line 274
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 275
    .local v0, visibility:I
    :goto_1
    iget-object v1, p0, Lcom/waze/view/navbar/BottomBar;->waypointView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 274
    .end local v0           #visibility:I
    :cond_1
    const/4 v0, 0x4

    goto :goto_1
.end method

.method public show()V
    .locals 19

    .prologue
    .line 43
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/NativeManager;->isNavigatingNTV()Z

    move-result v18

    .line 44
    .local v18, navigating:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/view/navbar/BottomBar;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Show request. Visible: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/waze/view/navbar/BottomBar;->isVisible()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Navigating: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/waze/Logger;->d_(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/waze/view/navbar/BottomBar;->isVisible()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v18, :cond_0

    .line 47
    new-instance v1, Lcom/waze/view/anim/AxisFlipper;

    const-wide v2, 0x4056800000000000L

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/high16 v14, 0x3fe0

    const-wide/high16 v16, 0x3fe0

    invoke-direct/range {v1 .. v17}, Lcom/waze/view/anim/AxisFlipper;-><init>(DDDDDDDD)V

    .line 48
    .local v1, anim:Landroid/view/animation/Animation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 49
    new-instance v2, Lcom/waze/view/navbar/BottomBar$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/waze/view/navbar/BottomBar$1;-><init>(Lcom/waze/view/navbar/BottomBar;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 64
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/waze/view/navbar/BottomBar;->bIsShown:Z

    .line 65
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/waze/view/navbar/BottomBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 67
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/waze/view/navbar/BottomBar;->bIsVisible:Z

    .line 69
    .end local v1           #anim:Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method

.method public unhide()Z
    .locals 19

    .prologue
    .line 122
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/NativeManager;->isNavigatingNTV()Z

    move-result v18

    .line 123
    .local v18, navigating:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/view/navbar/BottomBar;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unhide request. Visible: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/waze/view/navbar/BottomBar;->isVisible()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Navigating: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/waze/Logger;->d_(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual/range {p0 .. p0}, Lcom/waze/view/navbar/BottomBar;->isVisible()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/waze/view/navbar/BottomBar;->bIsShown:Z

    if-eqz v2, :cond_0

    .line 127
    new-instance v1, Lcom/waze/view/anim/AxisFlipper;

    const-wide v2, 0x4056800000000000L

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/high16 v14, 0x3fe0

    const-wide/high16 v16, 0x3fe0

    invoke-direct/range {v1 .. v17}, Lcom/waze/view/anim/AxisFlipper;-><init>(DDDDDDDD)V

    .line 128
    .local v1, anim:Landroid/view/animation/Animation;
    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 129
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/waze/view/navbar/BottomBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 130
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/view/navbar/BottomBar;->setVisibility(I)V

    .line 131
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/waze/view/navbar/BottomBar;->bIsVisible:Z

    .line 132
    const/4 v2, 0x1

    .line 134
    .end local v1           #anim:Landroid/view/animation/Animation;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
