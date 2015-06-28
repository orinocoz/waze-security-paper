.class Lcom/waze/main/navigate/NavigationResult$6;
.super Ljava/lang/Object;
.source "NavigationResult.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/main/navigate/NavigationResult;->dismissNavigationResultDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/main/navigate/NavigationResult;


# direct methods
.method constructor <init>(Lcom/waze/main/navigate/NavigationResult;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/main/navigate/NavigationResult$6;->this$0:Lcom/waze/main/navigate/NavigationResult;

    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 447
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult$6;->this$0:Lcom/waze/main/navigate/NavigationResult;

    invoke-virtual {v0}, Lcom/waze/main/navigate/NavigationResult;->dismissNavigationResultDialogNoAnimation()V

    .line 448
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 443
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 440
    return-void
.end method
