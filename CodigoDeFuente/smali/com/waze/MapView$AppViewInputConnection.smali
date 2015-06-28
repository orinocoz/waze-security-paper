.class Lcom/waze/MapView$AppViewInputConnection;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "MapView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/MapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppViewInputConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/MapView;


# direct methods
.method constructor <init>(Lcom/waze/MapView;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter "aView"

    .prologue
    .line 447
    iput-object p1, p0, Lcom/waze/MapView$AppViewInputConnection;->this$0:Lcom/waze/MapView;

    .line 448
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 449
    return-void
.end method


# virtual methods
.method public performEditorAction(I)Z
    .locals 4
    .parameter "editorAction"

    .prologue
    const/16 v3, 0x42

    const/4 v0, 0x0

    .line 452
    iget-object v1, p0, Lcom/waze/MapView$AppViewInputConnection;->this$0:Lcom/waze/MapView;

    #getter for: Lcom/waze/MapView;->mImeAction:I
    invoke-static {v1}, Lcom/waze/MapView;->access$0(Lcom/waze/MapView;)I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 454
    iget-object v1, p0, Lcom/waze/MapView$AppViewInputConnection;->this$0:Lcom/waze/MapView;

    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, v0, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v1, v3, v2}, Lcom/waze/MapView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 455
    iget-object v0, p0, Lcom/waze/MapView$AppViewInputConnection;->this$0:Lcom/waze/MapView;

    #getter for: Lcom/waze/MapView;->mImeCloseOnAction:Z
    invoke-static {v0}, Lcom/waze/MapView;->access$1(Lcom/waze/MapView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/waze/MapView$AppViewInputConnection;->this$0:Lcom/waze/MapView;

    invoke-virtual {v0}, Lcom/waze/MapView;->HideSoftInput()V

    .line 459
    :cond_0
    const/4 v0, 0x1

    .line 461
    :cond_1
    return v0
.end method
