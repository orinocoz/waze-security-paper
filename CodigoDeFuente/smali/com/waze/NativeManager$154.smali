.class Lcom/waze/NativeManager$154;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->ShowEditBox(II[BJII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$aAction:I

.field private final synthetic val$aFlags:I

.field private final synthetic val$aStayOnAction:I

.field private final synthetic val$aText:[B

.field private final synthetic val$aTopMargin:I

.field private final synthetic val$editBoxCb:Lcom/waze/EditBox$EditBoxCallback;

.field private final synthetic val$layoutMgr:Lcom/waze/LayoutManager;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;ILcom/waze/LayoutManager;II[BLcom/waze/EditBox$EditBoxCallback;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$154;->this$0:Lcom/waze/NativeManager;

    iput p2, p0, Lcom/waze/NativeManager$154;->val$aFlags:I

    iput-object p3, p0, Lcom/waze/NativeManager$154;->val$layoutMgr:Lcom/waze/LayoutManager;

    iput p4, p0, Lcom/waze/NativeManager$154;->val$aAction:I

    iput p5, p0, Lcom/waze/NativeManager$154;->val$aStayOnAction:I

    iput-object p6, p0, Lcom/waze/NativeManager$154;->val$aText:[B

    iput-object p7, p0, Lcom/waze/NativeManager$154;->val$editBoxCb:Lcom/waze/EditBox$EditBoxCallback;

    iput p8, p0, Lcom/waze/NativeManager$154;->val$aTopMargin:I

    .line 3258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 3260
    const/4 v1, 0x0

    .line 3261
    .local v1, type:I
    iget v3, p0, Lcom/waze/NativeManager$154;->val$aFlags:I

    and-int/lit8 v3, v3, 0x2

    if-lez v3, :cond_0

    .line 3262
    const/4 v1, 0x1

    .line 3264
    :cond_0
    iget-object v3, p0, Lcom/waze/NativeManager$154;->val$layoutMgr:Lcom/waze/LayoutManager;

    invoke-virtual {v3, v1}, Lcom/waze/LayoutManager;->CreateEditBox(I)Lcom/waze/EditBox;

    move-result-object v0

    .line 3267
    .local v0, editBox:Lcom/waze/EditBox;
    iget v3, p0, Lcom/waze/NativeManager$154;->val$aAction:I

    invoke-virtual {v0, v3}, Lcom/waze/EditBox;->setEditBoxAction(I)V

    .line 3269
    iget v3, p0, Lcom/waze/NativeManager$154;->val$aStayOnAction:I

    if-ne v3, v2, :cond_1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/waze/EditBox;->setEditBoxStayOnAction(Z)V

    .line 3271
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/waze/NativeManager$154;->val$aText:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v2}, Lcom/waze/EditBox;->setHint(Ljava/lang/CharSequence;)V

    .line 3273
    iget-object v2, p0, Lcom/waze/NativeManager$154;->val$editBoxCb:Lcom/waze/EditBox$EditBoxCallback;

    invoke-virtual {v0, v2}, Lcom/waze/EditBox;->setEditBoxCallback(Lcom/waze/EditBox$EditBoxCallback;)V

    .line 3275
    iget v2, p0, Lcom/waze/NativeManager$154;->val$aFlags:I

    invoke-virtual {v0, v2}, Lcom/waze/EditBox;->setEditBoxFlags(I)V

    .line 3277
    iget-object v2, p0, Lcom/waze/NativeManager$154;->val$layoutMgr:Lcom/waze/LayoutManager;

    iget v3, p0, Lcom/waze/NativeManager$154;->val$aTopMargin:I

    invoke-virtual {v2, v3, v1}, Lcom/waze/LayoutManager;->ShowEditBox(II)V

    .line 3278
    return-void

    .line 3269
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
