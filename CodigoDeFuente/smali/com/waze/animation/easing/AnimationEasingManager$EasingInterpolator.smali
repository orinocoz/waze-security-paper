.class public Lcom/waze/animation/easing/AnimationEasingManager$EasingInterpolator;
.super Ljava/lang/Object;
.source "AnimationEasingManager.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/animation/easing/AnimationEasingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EasingInterpolator"
.end annotation


# instance fields
.field mEasing:Lcom/waze/animation/easing/AnimationEasing;

.field mMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Lcom/waze/animation/easing/AnimationEasing;Ljava/lang/reflect/Method;)V
    .locals 0
    .parameter "e"
    .parameter "m"

    .prologue
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput-object p2, p0, Lcom/waze/animation/easing/AnimationEasingManager$EasingInterpolator;->mMethod:Ljava/lang/reflect/Method;

    .line 236
    iput-object p1, p0, Lcom/waze/animation/easing/AnimationEasingManager$EasingInterpolator;->mEasing:Lcom/waze/animation/easing/AnimationEasing;

    .line 237
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 8
    .parameter "input"

    .prologue
    .line 241
    const-wide/16 v1, 0x0

    .line 243
    .local v1, value:D
    :try_start_0
    iget-object v3, p0, Lcom/waze/animation/easing/AnimationEasingManager$EasingInterpolator;->mMethod:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/waze/animation/easing/AnimationEasingManager$EasingInterpolator;->mEasing:Lcom/waze/animation/easing/AnimationEasing;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-wide v1

    .line 251
    :goto_0
    double-to-float v3, v1

    return v3

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 246
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 247
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 248
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 249
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method
