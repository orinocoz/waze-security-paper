.class Lcom/waze/ifs/ui/FullScreenTooltip$6;
.super Ljava/lang/Object;
.source "FullScreenTooltip.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/ifs/ui/FullScreenTooltip;->dismissTooltip()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/ifs/ui/FullScreenTooltip;


# direct methods
.method constructor <init>(Lcom/waze/ifs/ui/FullScreenTooltip;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/ifs/ui/FullScreenTooltip$6;->this$0:Lcom/waze/ifs/ui/FullScreenTooltip;

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 370
    iget-object v0, p0, Lcom/waze/ifs/ui/FullScreenTooltip$6;->this$0:Lcom/waze/ifs/ui/FullScreenTooltip;

    iget-object v0, v0, Lcom/waze/ifs/ui/FullScreenTooltip;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 371
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 366
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 363
    return-void
.end method
