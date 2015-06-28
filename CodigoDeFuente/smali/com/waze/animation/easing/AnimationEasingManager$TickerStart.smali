.class Lcom/waze/animation/easing/AnimationEasingManager$TickerStart;
.super Ljava/lang/Object;
.source "AnimationEasingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/animation/easing/AnimationEasingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TickerStart"
.end annotation


# instance fields
.field mValue:D

.field final synthetic this$0:Lcom/waze/animation/easing/AnimationEasingManager;


# direct methods
.method public constructor <init>(Lcom/waze/animation/easing/AnimationEasingManager;D)V
    .locals 0
    .parameter
    .parameter "value"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/waze/animation/easing/AnimationEasingManager$TickerStart;->this$0:Lcom/waze/animation/easing/AnimationEasingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-wide p2, p0, Lcom/waze/animation/easing/AnimationEasingManager$TickerStart;->mValue:D

    .line 151
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/waze/animation/easing/AnimationEasingManager$TickerStart;->this$0:Lcom/waze/animation/easing/AnimationEasingManager;

    iget-object v0, v0, Lcom/waze/animation/easing/AnimationEasingManager;->mEasingCallback:Lcom/waze/animation/easing/AnimationEasingManager$EasingCallback;

    iget-wide v1, p0, Lcom/waze/animation/easing/AnimationEasingManager$TickerStart;->mValue:D

    invoke-interface {v0, v1, v2}, Lcom/waze/animation/easing/AnimationEasingManager$EasingCallback;->onStarted(D)V

    .line 156
    return-void
.end method
