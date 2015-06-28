.class public Lcom/waze/view/timer/TimerView;
.super Landroid/widget/RelativeLayout;
.source "TimerView.java"


# static fields
.field private static final TIMER_TICK:I = 0x7d


# instance fields
.field protected expired:Z

.field private handler:Landroid/os/Handler;

.field private inflater:Landroid/view/LayoutInflater;

.field protected shouldStop:Z

.field private startTime:Ljava/util/Date;

.field private time:I

.field private timerCircle:Lcom/waze/view/timer/TimerCircle;

.field private timerText:Landroid/widget/TextView;

.field private updateTimeTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/waze/view/timer/TimerView;->handler:Landroid/os/Handler;

    .line 25
    iput v4, p0, Lcom/waze/view/timer/TimerView;->time:I

    .line 27
    iput-boolean v3, p0, Lcom/waze/view/timer/TimerView;->shouldStop:Z

    .line 28
    iput-boolean v3, p0, Lcom/waze/view/timer/TimerView;->expired:Z

    .line 73
    new-instance v1, Lcom/waze/view/timer/TimerView$1;

    invoke-direct {v1, p0}, Lcom/waze/view/timer/TimerView$1;-><init>(Lcom/waze/view/timer/TimerView;)V

    iput-object v1, p0, Lcom/waze/view/timer/TimerView;->updateTimeTask:Ljava/lang/Runnable;

    .line 32
    sget-object v1, Lcom/waze/R$styleable;->TimerView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 33
    .local v0, attrArray:Landroid/content/res/TypedArray;
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/waze/view/timer/TimerView;->inflater:Landroid/view/LayoutInflater;

    .line 34
    iget-object v1, p0, Lcom/waze/view/timer/TimerView;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03011c

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 35
    const v1, 0x7f090725

    invoke-virtual {p0, v1}, Lcom/waze/view/timer/TimerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/timer/TimerCircle;

    iput-object v1, p0, Lcom/waze/view/timer/TimerView;->timerCircle:Lcom/waze/view/timer/TimerCircle;

    .line 36
    const v1, 0x7f090724

    invoke-virtual {p0, v1}, Lcom/waze/view/timer/TimerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/waze/view/timer/TimerView;->timerText:Landroid/widget/TextView;

    .line 37
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/waze/view/timer/TimerView;->time:I

    .line 38
    iget v1, p0, Lcom/waze/view/timer/TimerView;->time:I

    if-lez v1, :cond_0

    iget-boolean v1, p0, Lcom/waze/view/timer/TimerView;->shouldStop:Z

    if-eqz v1, :cond_1

    .line 39
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/waze/view/timer/TimerView;->setVisibility(I)V

    .line 41
    :cond_1
    iget-object v1, p0, Lcom/waze/view/timer/TimerView;->timerText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/waze/view/timer/TimerView;->time:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v1, p0, Lcom/waze/view/timer/TimerView;->timerCircle:Lcom/waze/view/timer/TimerCircle;

    invoke-virtual {v1}, Lcom/waze/view/timer/TimerCircle;->invalidate()V

    .line 43
    return-void
.end method

.method static synthetic access$0(Lcom/waze/view/timer/TimerView;)Ljava/util/Date;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/waze/view/timer/TimerView;->startTime:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/view/timer/TimerView;)I
    .locals 1
    .parameter

    .prologue
    .line 25
    iget v0, p0, Lcom/waze/view/timer/TimerView;->time:I

    return v0
.end method

.method static synthetic access$2(Lcom/waze/view/timer/TimerView;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/waze/view/timer/TimerView;->timerText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/waze/view/timer/TimerView;)Lcom/waze/view/timer/TimerCircle;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/waze/view/timer/TimerView;->timerCircle:Lcom/waze/view/timer/TimerCircle;

    return-object v0
.end method

.method static synthetic access$4(Lcom/waze/view/timer/TimerView;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/waze/view/timer/TimerView;->handler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public hasExpired()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/waze/view/timer/TimerView;->expired:Z

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/view/timer/TimerView;->shouldStop:Z

    .line 72
    return-void
.end method

.method public setGrayColor()V
    .locals 3

    .prologue
    .line 58
    const v0, 0x7f090724

    invoke-virtual {p0, v0}, Lcom/waze/view/timer/TimerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/waze/view/timer/TimerView;->timerText:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lcom/waze/view/timer/TimerView;->timerText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/waze/view/timer/TimerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08003d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    return-void
.end method

.method public setTime(I)V
    .locals 1
    .parameter "seconds"

    .prologue
    .line 46
    iput p1, p0, Lcom/waze/view/timer/TimerView;->time:I

    .line 47
    iget v0, p0, Lcom/waze/view/timer/TimerView;->time:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/waze/view/timer/TimerView;->shouldStop:Z

    if-nez v0, :cond_0

    .line 48
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/waze/view/timer/TimerView;->setVisibility(I)V

    .line 50
    :cond_0
    return-void
.end method

.method public setWhiteColor()V
    .locals 2

    .prologue
    .line 52
    const v0, 0x7f090724

    invoke-virtual {p0, v0}, Lcom/waze/view/timer/TimerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/waze/view/timer/TimerView;->timerText:Landroid/widget/TextView;

    .line 53
    iget-object v0, p0, Lcom/waze/view/timer/TimerView;->timerText:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    const v0, 0x7f090723

    invoke-virtual {p0, v0}, Lcom/waze/view/timer/TimerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0203fb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 55
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 67
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/waze/view/timer/TimerView;->startTime:Ljava/util/Date;

    .line 68
    iget-object v0, p0, Lcom/waze/view/timer/TimerView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/waze/view/timer/TimerView;->updateTimeTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 69
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/view/timer/TimerView;->shouldStop:Z

    .line 64
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/waze/view/timer/TimerView;->setVisibility(I)V

    .line 65
    return-void
.end method
