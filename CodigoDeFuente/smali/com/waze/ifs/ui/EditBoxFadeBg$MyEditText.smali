.class Lcom/waze/ifs/ui/EditBoxFadeBg$MyEditText;
.super Landroid/widget/EditText;
.source "EditBoxFadeBg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/ifs/ui/EditBoxFadeBg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyEditText"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/ifs/ui/EditBoxFadeBg;


# direct methods
.method public constructor <init>(Lcom/waze/ifs/ui/EditBoxFadeBg;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/waze/ifs/ui/EditBoxFadeBg$MyEditText;->this$0:Lcom/waze/ifs/ui/EditBoxFadeBg;

    .line 22
    invoke-direct {p0, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method


# virtual methods
.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 27
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 28
    iget-object v0, p0, Lcom/waze/ifs/ui/EditBoxFadeBg$MyEditText;->this$0:Lcom/waze/ifs/ui/EditBoxFadeBg;

    #setter for: Lcom/waze/ifs/ui/EditBoxFadeBg;->mHasFocus:Z
    invoke-static {v0, p1}, Lcom/waze/ifs/ui/EditBoxFadeBg;->access$0(Lcom/waze/ifs/ui/EditBoxFadeBg;Z)V

    .line 29
    iget-object v0, p0, Lcom/waze/ifs/ui/EditBoxFadeBg$MyEditText;->this$0:Lcom/waze/ifs/ui/EditBoxFadeBg;

    #calls: Lcom/waze/ifs/ui/EditBoxFadeBg;->animateSwitch()V
    invoke-static {v0}, Lcom/waze/ifs/ui/EditBoxFadeBg;->access$1(Lcom/waze/ifs/ui/EditBoxFadeBg;)V

    .line 30
    return-void
.end method
