.class Lcom/waze/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/MainActivity;->SearchBarClicked(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/MainActivity;

.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/waze/MainActivity;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/MainActivity$4;->this$0:Lcom/waze/MainActivity;

    iput-object p2, p0, Lcom/waze/MainActivity$4;->val$view:Landroid/view/View;

    .line 973
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/MainActivity$4;)Lcom/waze/MainActivity;
    .locals 1
    .parameter

    .prologue
    .line 973
    iget-object v0, p0, Lcom/waze/MainActivity$4;->this$0:Lcom/waze/MainActivity;

    return-object v0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "animation"

    .prologue
    .line 986
    iget-object v0, p0, Lcom/waze/MainActivity$4;->this$0:Lcom/waze/MainActivity;

    invoke-virtual {v0}, Lcom/waze/MainActivity;->startNavigateActivityWithFade()V

    .line 988
    iget-object v0, p0, Lcom/waze/MainActivity$4;->val$view:Landroid/view/View;

    new-instance v1, Lcom/waze/MainActivity$4$1;

    invoke-direct {v1, p0}, Lcom/waze/MainActivity$4$1;-><init>(Lcom/waze/MainActivity$4;)V

    .line 1003
    const-wide/16 v2, 0xc8

    .line 988
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1005
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 982
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 976
    return-void
.end method
