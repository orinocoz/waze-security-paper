.class Lcom/tokenautocomplete/TokenCompleteTextView$TokenInputConnection;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "TokenCompleteTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tokenautocomplete/TokenCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TokenInputConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tokenautocomplete/TokenCompleteTextView;


# direct methods
.method public constructor <init>(Lcom/tokenautocomplete/TokenCompleteTextView;Landroid/view/inputmethod/InputConnection;Z)V
    .locals 0
    .parameter
    .parameter "target"
    .parameter "mutable"

    .prologue
    .line 1143
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenInputConnection;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 1144
    invoke-direct {p0, p2, p3}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    .line 1145
    return-void
.end method


# virtual methods
.method public deleteSurroundingText(II)Z
    .locals 4
    .parameter "beforeLength"
    .parameter "afterLength"

    .prologue
    const/4 v0, 0x0

    .line 1151
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "before: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " after: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1152
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "selection: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenInputConnection;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-virtual {v3}, Lcom/tokenautocomplete/TokenCompleteTextView;->getSelectionStart()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " end: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenInputConnection;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-virtual {v3}, Lcom/tokenautocomplete/TokenCompleteTextView;->getSelectionEnd()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1155
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenInputConnection;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-virtual {v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenInputConnection;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    #getter for: Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;
    invoke-static {v2}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$9(Lcom/tokenautocomplete/TokenCompleteTextView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 1156
    const/4 p1, 0x0

    .line 1158
    :cond_0
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenInputConnection;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    #calls: Lcom/tokenautocomplete/TokenCompleteTextView;->deleteSelectedObject(Z)Z
    invoke-static {v1, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$10(Lcom/tokenautocomplete/TokenCompleteTextView;Z)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->deleteSurroundingText(II)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
