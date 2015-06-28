.class Lcom/waze/share/ShareUtility$OnShareClick$1;
.super Ljava/lang/Object;
.source "ShareUtility.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/share/ShareUtility$OnShareClick;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/share/ShareUtility$OnShareClick;

.field private final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/waze/share/ShareUtility$OnShareClick;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/share/ShareUtility$OnShareClick$1;->this$1:Lcom/waze/share/ShareUtility$OnShareClick;

    iput-object p2, p0, Lcom/waze/share/ShareUtility$OnShareClick$1;->val$v:Landroid/view/View;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/waze/share/ShareUtility$OnShareClick$1;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 131
    iget-object v0, p0, Lcom/waze/share/ShareUtility$OnShareClick$1;->val$v:Landroid/view/View;

    const/high16 v1, 0x3f00

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 132
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 126
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 123
    return-void
.end method
