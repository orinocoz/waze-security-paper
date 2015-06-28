.class public final Lcom/waze/animation/easing/AnimationEasingManager;
.super Ljava/lang/Object;
.source "AnimationEasingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/animation/easing/AnimationEasingManager$EaseType;,
        Lcom/waze/animation/easing/AnimationEasingManager$EasingCallback;,
        Lcom/waze/animation/easing/AnimationEasingManager$EasingInterpolator;,
        Lcom/waze/animation/easing/AnimationEasingManager$Ticker;,
        Lcom/waze/animation/easing/AnimationEasingManager$TickerStart;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$waze$animation$easing$AnimationEasingManager$EaseType:[I = null

.field static final FPS:I = 0x3c

.field static final FRAME_TIME:I = 0x10

.field static final mHandler:Landroid/os/Handler;


# instance fields
.field mBase:J

.field mDuration:I

.field mEasing:Lcom/waze/animation/easing/AnimationEasing;

.field mEasingCallback:Lcom/waze/animation/easing/AnimationEasingManager$EasingCallback;

.field mEndValue:D

.field mInverted:Z

.field mMethod:Ljava/lang/reflect/Method;

.field mRunning:Z

.field mStartValue:D

.field mTicker:Lcom/waze/animation/easing/AnimationEasingManager$Ticker;

.field mToken:Ljava/lang/String;

.field mValue:D


# direct methods
.method static synthetic $SWITCH_TABLE$com$waze$animation$easing$AnimationEasingManager$EaseType()[I
    .locals 3

    .prologue
    .line 10
    sget-object v0, Lcom/waze/animation/easing/AnimationEasingManager;->$SWITCH_TABLE$com$waze$animation$easing$AnimationEasingManager$EaseType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/waze/animation/easing/AnimationEasingManager$EaseType;->values()[Lcom/waze/animation/easing/AnimationEasingManager$EaseType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/waze/animation/easing/AnimationEasingManager$EaseType;->EaseIn:Lcom/waze/animation/easing/AnimationEasingManager$EaseType;

    invoke-virtual {v1}, Lcom/waze/animation/easing/AnimationEasingManager$EaseType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/waze/animation/easing/AnimationEasingManager$EaseType;->EaseInOut:Lcom/waze/animation/easing/AnimationEasingManager$EaseType;

    invoke-virtual {v1}, Lcom/waze/animation/easing/AnimationEasingManager$EaseType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/waze/animation/easing/AnimationEasingManager$EaseType;->EaseNone:Lcom/waze/animation/easing/AnimationEasingManager$EaseType;

    invoke-virtual {v1}, Lcom/waze/animation/easing/AnimationEasingManager$EaseType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/waze/animation/easing/AnimationEasingManager$EaseType;->EaseOut:Lcom/waze/animation/easing/AnimationEasingManager$EaseType;

    invoke-virtual {v1}, Lcom/waze/animation/easing/AnimationEasingManager$EaseType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/waze/animation/easing/AnimationEasingManager;->$SWITCH_TABLE$com$waze$animation$easing$AnimationEasingManager$EaseType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/waze/animation/easing/AnimationEasingManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcom/waze/animation/easing/AnimationEasingManager$EasingCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/waze/animation/easing/AnimationEasingManager;->mEasingCallback:Lcom/waze/animation/easing/AnimationEasingManager$EasingCallback;

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/animation/easing/AnimationEasingManager;->mToken:Ljava/lang/String;

    .line 50
    return-void
.end method

.method static createInstance(Ljava/lang/Class;)Lcom/waze/animation/easing/AnimationEasing;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/waze/animation/easing/AnimationEasing;",
            ">;)",
            "Lcom/waze/animation/easing/AnimationEasing;"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/waze/animation/easing/AnimationEasing;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/waze/animation/easing/AnimationEasing;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 109
    :goto_0
    return-object v1

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 109
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 106
    :catch_1
    move-exception v0

    .line 107
    .local v0, e:Ljava/lang/InstantiationException;
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1
.end method

.method static getEasingMethod(Lcom/waze/animation/easing/AnimationEasing;Lcom/waze/animation/easing/AnimationEasingManager$EaseType;)Ljava/lang/reflect/Method;
    .locals 7
    .parameter "instance"
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    .line 114
    invoke-static {p1}, Lcom/waze/animation/easing/AnimationEasingManager;->getMethodName(Lcom/waze/animation/easing/AnimationEasingManager$EaseType;)Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, methodName:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 118
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v3, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 128
    :cond_0
    :goto_0
    return-object v1

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 122
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 123
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getElasticInterpolator(Lcom/waze/animation/easing/AnimationEasingManager$EaseType;DD)Landroid/view/animation/Interpolator;
    .locals 3
    .parameter "type"
    .parameter "amplitude"
    .parameter "period"

    .prologue
    .line 219
    new-instance v0, Lcom/waze/animation/easing/Elastic;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/waze/animation/easing/Elastic;-><init>(DD)V

    .line 221
    .local v0, easing:Lcom/waze/animation/easing/AnimationEasing;
    invoke-static {v0, p0}, Lcom/waze/animation/easing/AnimationEasingManager;->getEasingMethod(Lcom/waze/animation/easing/AnimationEasing;Lcom/waze/animation/easing/AnimationEasingManager$EaseType;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 222
    .local v1, method:Ljava/lang/reflect/Method;
    if-nez v1, :cond_0

    .line 223
    const/4 v2, 0x0

    .line 226
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/waze/animation/easing/AnimationEasingManager$EasingInterpolator;

    invoke-direct {v2, v0, v1}, Lcom/waze/animation/easing/AnimationEasingManager$EasingInterpolator;-><init>(Lcom/waze/animation/easing/AnimationEasing;Ljava/lang/reflect/Method;)V

    goto :goto_0
.end method

.method public static getInterpolator(Ljava/lang/Class;Lcom/waze/animation/easing/AnimationEasingManager$EaseType;)Landroid/view/animation/Interpolator;
    .locals 3
    .parameter
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/waze/animation/easing/AnimationEasing;",
            ">;",
            "Lcom/waze/animation/easing/AnimationEasingManager$EaseType;",
            ")",
            "Landroid/view/animation/Interpolator;"
        }
    .end annotation

    .prologue
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/waze/animation/easing/AnimationEasing;>;"
    const/4 v2, 0x0

    .line 201
    invoke-static {p0}, Lcom/waze/animation/easing/AnimationEasingManager;->createInstance(Ljava/lang/Class;)Lcom/waze/animation/easing/AnimationEasing;

    move-result-object v0

    .line 203
    .local v0, easing:Lcom/waze/animation/easing/AnimationEasing;
    if-nez v0, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-object v2

    .line 207
    :cond_1
    invoke-static {v0, p1}, Lcom/waze/animation/easing/AnimationEasingManager;->getEasingMethod(Lcom/waze/animation/easing/AnimationEasing;Lcom/waze/animation/easing/AnimationEasingManager$EaseType;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 208
    .local v1, method:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 212
    new-instance v2, Lcom/waze/animation/easing/AnimationEasingManager$EasingInterpolator;

    invoke-direct {v2, v0, v1}, Lcom/waze/animation/easing/AnimationEasingManager$EasingInterpolator;-><init>(Lcom/waze/animation/easing/AnimationEasing;Ljava/lang/reflect/Method;)V

    goto :goto_0
.end method

.method static getMethodName(Lcom/waze/animation/easing/AnimationEasingManager$EaseType;)Ljava/lang/String;
    .locals 2
    .parameter "type"

    .prologue
    .line 132
    invoke-static {}, Lcom/waze/animation/easing/AnimationEasingManager;->$SWITCH_TABLE$com$waze$animation$easing$AnimationEasingManager$EaseType()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/waze/animation/easing/AnimationEasingManager$EaseType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 142
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 134
    :pswitch_0
    const-string v0, "easeIn"

    goto :goto_0

    .line 136
    :pswitch_1
    const-string v0, "easeInOut"

    goto :goto_0

    .line 138
    :pswitch_2
    const-string v0, "easeNone"

    goto :goto_0

    .line 140
    :pswitch_3
    const-string v0, "easeOut"

    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public start(Ljava/lang/Class;Lcom/waze/animation/easing/AnimationEasingManager$EaseType;DDI)V
    .locals 10
    .parameter
    .parameter "type"
    .parameter "fromValue"
    .parameter "endValue"
    .parameter "durationMillis"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/waze/animation/easing/AnimationEasing;",
            ">;",
            "Lcom/waze/animation/easing/AnimationEasingManager$EaseType;",
            "DDI)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/waze/animation/easing/AnimationEasing;>;"
    const-wide/16 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v9}, Lcom/waze/animation/easing/AnimationEasingManager;->start(Ljava/lang/Class;Lcom/waze/animation/easing/AnimationEasingManager$EaseType;DDIJ)V

    .line 54
    return-void
.end method

.method public start(Ljava/lang/Class;Lcom/waze/animation/easing/AnimationEasingManager$EaseType;DDIJ)V
    .locals 7
    .parameter
    .parameter "type"
    .parameter "fromValue"
    .parameter "endValue"
    .parameter "durationMillis"
    .parameter "delayMillis"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/waze/animation/easing/AnimationEasing;",
            ">;",
            "Lcom/waze/animation/easing/AnimationEasingManager$EaseType;",
            "DDIJ)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/waze/animation/easing/AnimationEasing;>;"
    iget-boolean v2, p0, Lcom/waze/animation/easing/AnimationEasingManager;->mRunning:Z

    if-nez v2, :cond_0

    .line 58
    invoke-static {p1}, Lcom/waze/animation/easing/AnimationEasingManager;->createInstance(Ljava/lang/Class;)Lcom/waze/animation/easing/AnimationEasing;

    move-result-object v2

    iput-object v2, p0, Lcom/waze/animation/easing/AnimationEasingManager;->mEasing:Lcom/waze/animation/easing/AnimationEasing;

    .line 60
    iget-object v2, p0, Lcom/waze/animation/easing/AnimationEasingManager;->mEasing:Lcom/waze/animation/easing/AnimationEasing;

    if-nez v2, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-object v2, p0, Lcom/waze/animation/easing/AnimationEasingManager;->mEasing:Lcom/waze/animation/easing/AnimationEasing;

    invoke-static {v2, p2}, Lcom/waze/animation/easing/AnimationEasingManager;->getEasingMethod(Lcom/waze/animation/easing/AnimationEasing;Lcom/waze/animation/easing/AnimationEasingManager$EaseType;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/waze/animation/easing/AnimationEasingManager;->mMethod:Ljava/lang/reflect/Method;

    .line 65
    iget-object v2, p0, Lcom/waze/animation/easing/AnimationEasingManager;->mMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 69
    cmpl-double v2, p3, p5

    if-lez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Lcom/waze/animation/easing/AnimationEasingManager;->mInverted:Z

    .line 71
    iget-boolean v2, p0, Lcom/waze/animation/easing/AnimationEasingManager;->mInverted:Z

    if-eqz v2, :cond_3

    .line 72
    iput-wide p5, p0, Lcom/waze/animation/easing/AnimationEasingManager;->mStartValue:D

    .line 73
    iput-wide p3, p0, Lcom/waze/animation/easing/AnimationEasingManager;->mEndValue:D

    .line 78
    :goto_2
    iget-wide v2, p0, Lcom/waze/animation/easing/AnimationEasingManager;->mStartValue:D

    iput-wide v2, p0, Lcom/waze/animation/easing/AnimationEasingManager;->mValue:D

    .line 80
    iput p7, p0, Lcom/waze/animation/easing/AnimationEasingManager;->mDuration:I

    .line 81
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p8

    iput-wide v2, p0, Lcom/waze/animation/easing/AnimationEasingManager;->mBase:J

    .line 82
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/waze/animation/easing/AnimationEasingManager;->mRunning:Z

    .line 83
    new-instance v2, Lcom/waze/animation/easing/AnimationEasingManager$Ticker;

    invoke-direct {v2, p0}, Lcom/waze/animation/easing/AnimationEasingManager$Ticker;-><init>(Lcom/waze/animation/easing/AnimationEasingManager;)V

    iput-object v2, p0, Lcom/waze/animation/easing/AnimationEasingManager;->mTicker:Lcom/waze/animation/easing/AnimationEasingManager$Ticker;

    .line 84
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    add-long v0, v2, p8

    .line 86
    .local v0, next:J
    const-wide/16 v2, 0x0

    cmp-long v2, p8, v2

    if-nez v2, :cond_4

    .line 87
    iget-object v2, p0, Lcom/waze/animation/easing/AnimationEasingManager;->mEasingCallback:Lcom/waze/animation/easing/AnimationEasingManager$EasingCallback;

    invoke-interface {v2, p3, p4}, Lcom/waze/animation/easing/AnimationEasingManager$EasingCallback;->onStarted(D)V

    .line 92
    :goto_3
    sget-object v2, Lcom/waze/animation/easing/AnimationEasingManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/waze/animation/easing/AnimationEasingManager;->mTicker:Lcom/waze/animation/easing/AnimationEasingManager$Ticker;

    iget-object v4, p0, Lcom/waze/animation/easing/AnimationEasingManager;->mToken:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto :goto_0

    .line 69
    .end local v0           #next:J
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 75
    :cond_3
    iput-wide p3, p0, Lcom/waze/animation/easing/AnimationEasingManager;->mStartValue:D

    .line 76
    iput-wide p5, p0, Lcom/waze/animation/easing/AnimationEasingManager;->mEndValue:D

    goto :goto_2

    .line 89
    .restart local v0       #next:J
    :cond_4
    sget-object v2, Lcom/waze/animation/easing/AnimationEasingManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/waze/animation/easing/AnimationEasingManager$TickerStart;

    invoke-direct {v3, p0, p3, p4}, Lcom/waze/animation/easing/AnimationEasingManager$TickerStart;-><init>(Lcom/waze/animation/easing/AnimationEasingManager;D)V

    iget-object v4, p0, Lcom/waze/animation/easing/AnimationEasingManager;->mToken:Ljava/lang/String;

    const-wide/16 v5, 0x10

    sub-long v5, v0, v5

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto :goto_3
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/animation/easing/AnimationEasingManager;->mRunning:Z

    .line 98
    sget-object v0, Lcom/waze/animation/easing/AnimationEasingManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/waze/animation/easing/AnimationEasingManager;->mTicker:Lcom/waze/animation/easing/AnimationEasingManager$Ticker;

    iget-object v2, p0, Lcom/waze/animation/easing/AnimationEasingManager;->mToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 99
    return-void
.end method
