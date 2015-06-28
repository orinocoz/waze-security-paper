.class Lcom/waze/ifs/ui/LayoutTooltip$1$1;
.super Ljava/lang/Object;
.source "LayoutTooltip.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/ifs/ui/LayoutTooltip$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/ifs/ui/LayoutTooltip$1;


# direct methods
.method constructor <init>(Lcom/waze/ifs/ui/LayoutTooltip$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/ifs/ui/LayoutTooltip$1$1;->this$1:Lcom/waze/ifs/ui/LayoutTooltip$1;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/waze/ifs/ui/LayoutTooltip$1$1;->this$1:Lcom/waze/ifs/ui/LayoutTooltip$1;

    #getter for: Lcom/waze/ifs/ui/LayoutTooltip$1;->this$0:Lcom/waze/ifs/ui/LayoutTooltip;
    invoke-static {v0}, Lcom/waze/ifs/ui/LayoutTooltip$1;->access$0(Lcom/waze/ifs/ui/LayoutTooltip$1;)Lcom/waze/ifs/ui/LayoutTooltip;

    move-result-object v0

    iget-object v0, v0, Lcom/waze/ifs/ui/LayoutTooltip;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 201
    return-void
.end method
