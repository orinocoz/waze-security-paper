.class public Lcom/waze/view/button/SwipeableButton;
.super Landroid/widget/RelativeLayout;
.source "SwipeableButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/view/button/SwipeableButton$SwipeableButtonListener;
    }
.end annotation


# static fields
.field private static final NONE:I = 0x0

.field private static final STARTED:I = 0x1

.field private static final SWIPING:I = 0x1


# instance fields
.field private animateStart:Ljava/lang/Runnable;

.field private bgDisplayed:Z

.field private bgView:Landroid/widget/ImageView;

.field private buttonDrawable:Landroid/graphics/drawable/Drawable;

.field protected handler:Landroid/os/Handler;

.field private inflater:Landroid/view/LayoutInflater;

.field protected lastValidValue:I

.field private listener:Lcom/waze/view/button/SwipeableButton$SwipeableButtonListener;

.field private reduceProgress:Ljava/lang/Runnable;

.field private scale:F

.field private seekBar:Landroid/widget/SeekBar;

.field protected startStopState:I

.field private state:I

.field private swipeRight:Z

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/waze/view/button/SwipeableButton;->handler:Landroid/os/Handler;

    .line 35
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/waze/view/button/SwipeableButton;->listener:Lcom/waze/view/button/SwipeableButton$SwipeableButtonListener;

    .line 36
    iput v3, p0, Lcom/waze/view/button/SwipeableButton;->state:I

    .line 37
    iput v3, p0, Lcom/waze/view/button/SwipeableButton;->startStopState:I

    .line 38
    iput-boolean v3, p0, Lcom/waze/view/button/SwipeableButton;->bgDisplayed:Z

    .line 124
    new-instance v1, Lcom/waze/view/button/SwipeableButton$1;

    invoke-direct {v1, p0}, Lcom/waze/view/button/SwipeableButton$1;-><init>(Lcom/waze/view/button/SwipeableButton;)V

    iput-object v1, p0, Lcom/waze/view/button/SwipeableButton;->animateStart:Ljava/lang/Runnable;

    .line 132
    new-instance v1, Lcom/waze/view/button/SwipeableButton$2;

    invoke-direct {v1, p0}, Lcom/waze/view/button/SwipeableButton$2;-><init>(Lcom/waze/view/button/SwipeableButton;)V

    iput-object v1, p0, Lcom/waze/view/button/SwipeableButton;->reduceProgress:Ljava/lang/Runnable;

    .line 46
    invoke-virtual {p0}, Lcom/waze/view/button/SwipeableButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/waze/view/button/SwipeableButton;->scale:F

    .line 47
    sget-object v1, Lcom/waze/R$styleable;->SwipeableButton:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 48
    .local v0, attrArray:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/waze/view/button/SwipeableButton;->swipeRight:Z

    .line 49
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/view/button/SwipeableButton;->buttonDrawable:Landroid/graphics/drawable/Drawable;

    .line 50
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/view/button/SwipeableButton;->inflater:Landroid/view/LayoutInflater;

    .line 51
    iget-object v1, p0, Lcom/waze/view/button/SwipeableButton;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030111

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 52
    const v1, 0x7f09070b

    invoke-virtual {p0, v1}, Lcom/waze/view/button/SwipeableButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/waze/view/button/SwipeableButton;->bgView:Landroid/widget/ImageView;

    .line 53
    iget-boolean v1, p0, Lcom/waze/view/button/SwipeableButton;->swipeRight:Z

    if-eqz v1, :cond_0

    .line 54
    const v1, 0x7f09070e

    invoke-virtual {p0, v1}, Lcom/waze/view/button/SwipeableButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/waze/view/button/SwipeableButton;->seekBar:Landroid/widget/SeekBar;

    .line 55
    const v1, 0x7f09070c

    invoke-virtual {p0, v1}, Lcom/waze/view/button/SwipeableButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/waze/view/button/SwipeableButton;->textView:Landroid/widget/TextView;

    .line 60
    :goto_0
    iget-object v1, p0, Lcom/waze/view/button/SwipeableButton;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 61
    iget-object v1, p0, Lcom/waze/view/button/SwipeableButton;->buttonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/waze/view/button/SwipeableButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    iget-object v1, p0, Lcom/waze/view/button/SwipeableButton;->seekBar:Landroid/widget/SeekBar;

    new-instance v2, Lcom/waze/view/button/SwipeableButton$3;

    invoke-direct {v2, p0}, Lcom/waze/view/button/SwipeableButton$3;-><init>(Lcom/waze/view/button/SwipeableButton;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 117
    return-void

    .line 57
    :cond_0
    const v1, 0x7f09070f

    invoke-virtual {p0, v1}, Lcom/waze/view/button/SwipeableButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/waze/view/button/SwipeableButton;->seekBar:Landroid/widget/SeekBar;

    .line 58
    const v1, 0x7f09070d

    invoke-virtual {p0, v1}, Lcom/waze/view/button/SwipeableButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/waze/view/button/SwipeableButton;->textView:Landroid/widget/TextView;

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/waze/view/button/SwipeableButton;)Z
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/waze/view/button/SwipeableButton;->bgDisplayed:Z

    return v0
.end method

.method static synthetic access$1(Lcom/waze/view/button/SwipeableButton;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput p1, p0, Lcom/waze/view/button/SwipeableButton;->state:I

    return-void
.end method

.method static synthetic access$10(Lcom/waze/view/button/SwipeableButton;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/waze/view/button/SwipeableButton;->animateStart:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$11(Lcom/waze/view/button/SwipeableButton;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lcom/waze/view/button/SwipeableButton;->setTextAlpha(F)V

    return-void
.end method

.method static synthetic access$2(Lcom/waze/view/button/SwipeableButton;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/waze/view/button/SwipeableButton;->displayBg()V

    return-void
.end method

.method static synthetic access$3(Lcom/waze/view/button/SwipeableButton;)Landroid/widget/SeekBar;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/waze/view/button/SwipeableButton;->seekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$4(Lcom/waze/view/button/SwipeableButton;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/waze/view/button/SwipeableButton;->minimizeSize()V

    return-void
.end method

.method static synthetic access$5(Lcom/waze/view/button/SwipeableButton;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/waze/view/button/SwipeableButton;->removeBg()V

    return-void
.end method

.method static synthetic access$6(Lcom/waze/view/button/SwipeableButton;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/waze/view/button/SwipeableButton;->reduceProgress:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$7(Lcom/waze/view/button/SwipeableButton;)I
    .locals 1
    .parameter

    .prologue
    .line 36
    iget v0, p0, Lcom/waze/view/button/SwipeableButton;->state:I

    return v0
.end method

.method static synthetic access$8(Lcom/waze/view/button/SwipeableButton;)Lcom/waze/view/button/SwipeableButton$SwipeableButtonListener;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/waze/view/button/SwipeableButton;->listener:Lcom/waze/view/button/SwipeableButton$SwipeableButtonListener;

    return-object v0
.end method

.method static synthetic access$9(Lcom/waze/view/button/SwipeableButton;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/waze/view/button/SwipeableButton;->maximizeSize()V

    return-void
.end method

.method private displayBg()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/high16 v3, 0x3f80

    const/4 v4, 0x1

    .line 170
    iget-object v2, p0, Lcom/waze/view/button/SwipeableButton;->bgView:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 171
    iget-object v2, p0, Lcom/waze/view/button/SwipeableButton;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    invoke-direct {p0, v3}, Lcom/waze/view/button/SwipeableButton;->setTextAlpha(F)V

    .line 173
    iput-boolean v4, p0, Lcom/waze/view/button/SwipeableButton;->bgDisplayed:Z

    .line 174
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 175
    .local v1, animation:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 176
    .local v0, alphaAnimation:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 177
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 178
    invoke-virtual {v1, v4}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 179
    iget-object v2, p0, Lcom/waze/view/button/SwipeableButton;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 180
    iget-object v2, p0, Lcom/waze/view/button/SwipeableButton;->bgView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 181
    return-void
.end method

.method private maximizeSize()V
    .locals 3

    .prologue
    .line 164
    iget-object v1, p0, Lcom/waze/view/button/SwipeableButton;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 165
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/high16 v1, 0x437a

    iget v2, p0, Lcom/waze/view/button/SwipeableButton;->scale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 166
    iget-object v1, p0, Lcom/waze/view/button/SwipeableButton;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    return-void
.end method

.method private minimizeSize()V
    .locals 3

    .prologue
    .line 158
    iget-object v1, p0, Lcom/waze/view/button/SwipeableButton;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 159
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/high16 v1, 0x4282

    iget v2, p0, Lcom/waze/view/button/SwipeableButton;->scale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 160
    iget-object v1, p0, Lcom/waze/view/button/SwipeableButton;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    return-void
.end method

.method private removeBg()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 184
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/waze/view/button/SwipeableButton;->bgDisplayed:Z

    .line 185
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 186
    .local v1, animation:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 187
    .local v0, alphaAnimation:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 188
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 189
    invoke-virtual {v1, v4}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 190
    iget-object v2, p0, Lcom/waze/view/button/SwipeableButton;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 191
    iget-object v2, p0, Lcom/waze/view/button/SwipeableButton;->bgView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 192
    return-void
.end method

.method private setTextAlpha(F)V
    .locals 3
    .parameter "alphaProgress"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/waze/view/button/SwipeableButton;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/view/button/SwipeableButton;->textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    const/high16 v2, 0x437f

    mul-float/2addr v2, p1

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 196
    return-void
.end method


# virtual methods
.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "drawable"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/waze/view/button/SwipeableButton;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 121
    invoke-direct {p0}, Lcom/waze/view/button/SwipeableButton;->minimizeSize()V

    .line 122
    iget-object v0, p0, Lcom/waze/view/button/SwipeableButton;->seekBar:Landroid/widget/SeekBar;

    const/high16 v1, 0x4220

    iget v2, p0, Lcom/waze/view/button/SwipeableButton;->scale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    .line 123
    return-void
.end method

.method public setOnClickListener(Lcom/waze/view/button/SwipeableButton$SwipeableButtonListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/waze/view/button/SwipeableButton;->listener:Lcom/waze/view/button/SwipeableButton$SwipeableButtonListener;

    .line 152
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/waze/view/button/SwipeableButton;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    return-void
.end method
