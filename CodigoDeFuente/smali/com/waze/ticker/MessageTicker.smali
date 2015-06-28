.class public Lcom/waze/ticker/MessageTicker;
.super Ljava/lang/Object;
.source "MessageTicker.java"


# static fields
.field private static mIsShown:Z


# instance fields
.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lcom/waze/ticker/MessageTicker;->mIsShown:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/waze/ticker/MessageTicker;->mView:Landroid/view/View;

    .line 31
    return-void
.end method

.method static synthetic access$0(Lcom/waze/ticker/MessageTicker;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/waze/ticker/MessageTicker;->animateOut()V

    return-void
.end method

.method private animateIn()V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/waze/ticker/MessageTicker;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    const/4 v0, 0x1

    sput-boolean v0, Lcom/waze/ticker/MessageTicker;->mIsShown:Z

    .line 37
    return-void
.end method

.method private animateOut()V
    .locals 2

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lcom/waze/ticker/MessageTicker;->mIsShown:Z

    .line 41
    invoke-direct {p0}, Lcom/waze/ticker/MessageTicker;->removeAutoHideTimer()V

    .line 42
    iget-object v0, p0, Lcom/waze/ticker/MessageTicker;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 43
    invoke-direct {p0}, Lcom/waze/ticker/MessageTicker;->onMessageTickerClose()V

    .line 44
    return-void
.end method

.method private onMessageTickerClose()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/waze/ticker/MessageTicker$1;

    invoke-direct {v0, p0}, Lcom/waze/ticker/MessageTicker$1;-><init>(Lcom/waze/ticker/MessageTicker;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 27
    return-void
.end method

.method private removeAutoHideTimer()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/waze/ticker/MessageTicker;->mView:Landroid/view/View;

    const v1, 0x7f0903fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v0}, Lcom/waze/view/timer/TimerView;->stop()V

    .line 48
    return-void
.end method

.method private setAutoHideTimer(I)V
    .locals 2
    .parameter "iTimeOut"

    .prologue
    const v1, 0x7f0903fa

    .line 51
    iget-object v0, p0, Lcom/waze/ticker/MessageTicker;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v0}, Lcom/waze/view/timer/TimerView;->reset()V

    .line 52
    iget-object v0, p0, Lcom/waze/ticker/MessageTicker;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v0, p1}, Lcom/waze/view/timer/TimerView;->setTime(I)V

    .line 53
    iget-object v0, p0, Lcom/waze/ticker/MessageTicker;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/timer/TimerView;

    invoke-virtual {v0}, Lcom/waze/view/timer/TimerView;->start()V

    .line 54
    return-void
.end method

.method private setIcon(Ljava/lang/String;)V
    .locals 4
    .parameter "iconName"

    .prologue
    .line 57
    iget-object v2, p0, Lcom/waze/ticker/MessageTicker;->mView:Landroid/view/View;

    const v3, 0x7f090239

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 58
    .local v1, image:Landroid/widget/ImageView;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 59
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".bin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/waze/ResManager;->GetSkinDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 64
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setText(Ljava/lang/String;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 68
    if-nez p1, :cond_0

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/waze/ticker/MessageTicker;->mView:Landroid/view/View;

    const v2, 0x7f090020

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 71
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter "title"
    .parameter "text"
    .parameter "icon"
    .parameter "timeout"

    .prologue
    .line 76
    sget-boolean v0, Lcom/waze/ticker/MessageTicker;->mIsShown:Z

    if-eqz v0, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/waze/ticker/MessageTicker;->animateOut()V

    .line 79
    :cond_0
    invoke-direct {p0, p3}, Lcom/waze/ticker/MessageTicker;->setIcon(Ljava/lang/String;)V

    .line 80
    invoke-direct {p0, p2}, Lcom/waze/ticker/MessageTicker;->setText(Ljava/lang/String;)V

    .line 81
    invoke-direct {p0, p4}, Lcom/waze/ticker/MessageTicker;->setAutoHideTimer(I)V

    .line 82
    const/4 v0, 0x1

    sput-boolean v0, Lcom/waze/ticker/MessageTicker;->mIsShown:Z

    .line 84
    iget-object v0, p0, Lcom/waze/ticker/MessageTicker;->mView:Landroid/view/View;

    const v1, 0x7f0903f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 85
    new-instance v1, Lcom/waze/ticker/MessageTicker$2;

    invoke-direct {v1, p0}, Lcom/waze/ticker/MessageTicker$2;-><init>(Lcom/waze/ticker/MessageTicker;)V

    .line 84
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    invoke-direct {p0}, Lcom/waze/ticker/MessageTicker;->animateIn()V

    .line 92
    return-void
.end method
