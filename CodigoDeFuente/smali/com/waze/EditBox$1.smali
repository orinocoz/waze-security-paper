.class Lcom/waze/EditBox$1;
.super Ljava/lang/Object;
.source "EditBox.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/EditBox;->Init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/EditBox;


# direct methods
.method constructor <init>(Lcom/waze/EditBox;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/EditBox$1;->this$0:Lcom/waze/EditBox;

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "aView"
    .parameter "aActionId"
    .parameter "aEvent"

    .prologue
    const/16 v4, 0x42

    .line 273
    const/4 v0, 0x0

    .line 274
    .local v0, res:Z
    iget-object v1, p0, Lcom/waze/EditBox$1;->this$0:Lcom/waze/EditBox;

    #getter for: Lcom/waze/EditBox;->mImeAction:I
    invoke-static {v1}, Lcom/waze/EditBox;->access$0(Lcom/waze/EditBox;)I

    move-result v1

    if-ne p2, v1, :cond_0

    .line 276
    iget-object v1, p0, Lcom/waze/EditBox$1;->this$0:Lcom/waze/EditBox;

    new-instance v2, Landroid/view/KeyEvent;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v1, v4, v2}, Lcom/waze/EditBox;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 277
    iget-object v1, p0, Lcom/waze/EditBox$1;->this$0:Lcom/waze/EditBox;

    #getter for: Lcom/waze/EditBox;->mStayOnAction:Z
    invoke-static {v1}, Lcom/waze/EditBox;->access$1(Lcom/waze/EditBox;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 279
    iget-object v1, p0, Lcom/waze/EditBox$1;->this$0:Lcom/waze/EditBox;

    invoke-virtual {v1}, Lcom/waze/EditBox;->HideSoftInput()V

    .line 282
    :cond_0
    return v0
.end method
