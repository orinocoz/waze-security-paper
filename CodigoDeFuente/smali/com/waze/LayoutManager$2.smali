.class Lcom/waze/LayoutManager$2;
.super Ljava/lang/Object;
.source "LayoutManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/LayoutManager;->ShowEditBox(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/LayoutManager;


# direct methods
.method constructor <init>(Lcom/waze/LayoutManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/LayoutManager$2;->this$0:Lcom/waze/LayoutManager;

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 352
    iget-object v1, p0, Lcom/waze/LayoutManager$2;->this$0:Lcom/waze/LayoutManager;

    invoke-virtual {v1}, Lcom/waze/LayoutManager;->getEditBox()Lcom/waze/EditBox;

    move-result-object v0

    .line 353
    .local v0, editBox:Lcom/waze/EditBox;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/waze/LayoutManager$2;->this$0:Lcom/waze/LayoutManager;

    invoke-virtual {v1, v0}, Lcom/waze/LayoutManager;->ShowSoftInput(Landroid/view/View;)V

    .line 354
    :cond_0
    return-void
.end method
