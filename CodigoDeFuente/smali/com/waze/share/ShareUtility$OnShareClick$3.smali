.class Lcom/waze/share/ShareUtility$OnShareClick$3;
.super Ljava/lang/Object;
.source "ShareUtility.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


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

.field private final synthetic val$action:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/waze/share/ShareUtility$OnShareClick;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/share/ShareUtility$OnShareClick$3;->this$1:Lcom/waze/share/ShareUtility$OnShareClick;

    iput-object p2, p0, Lcom/waze/share/ShareUtility$OnShareClick$3;->val$action:Ljava/lang/Runnable;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 195
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/waze/share/ShareUtility$OnShareClick$3;->val$action:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 191
    return-void
.end method
