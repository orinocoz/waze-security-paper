.class Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;
.super Ljava/lang/Object;
.source "TokenCompleteTextView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tokenautocomplete/TokenCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TokenTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tokenautocomplete/TokenCompleteTextView;


# direct methods
.method private constructor <init>(Lcom/tokenautocomplete/TokenCompleteTextView;)V
    .locals 0
    .parameter

    .prologue
    .line 958
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tokenautocomplete/TokenCompleteTextView;Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 958
    invoke-direct {p0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 968
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 965
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 10
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/16 v9, 0x2c

    .line 972
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "changing text: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 973
    iget-object v6, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-virtual {v6}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 974
    .local v4, text:Landroid/text/Editable;
    if-nez v4, :cond_1

    .line 1004
    :cond_0
    return-void

    .line 977
    :cond_1
    iget-object v6, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    #calls: Lcom/tokenautocomplete/TokenCompleteTextView;->clearSelections()V
    invoke-static {v6}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$2(Lcom/tokenautocomplete/TokenCompleteTextView;)V

    .line 978
    iget-object v6, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    #calls: Lcom/tokenautocomplete/TokenCompleteTextView;->updateHint()V
    invoke-static {v6}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$8(Lcom/tokenautocomplete/TokenCompleteTextView;)V

    .line 980
    sub-int v6, p2, p3

    sub-int v7, p2, p3

    add-int/2addr v7, p4

    const-class v8, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    invoke-interface {v4, v6, v7, v8}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 982
    .local v3, spans:[Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;
    array-length v7, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v5, v3, v6

    .line 984
    .local v5, token:Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;
    add-int v0, p2, p4

    .line 985
    .local v0, position:I
    invoke-interface {v4, v5}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    if-ge v8, v0, :cond_3

    invoke-interface {v4, v5}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    if-gt v0, v8, :cond_3

    .line 987
    invoke-interface {v4, v5}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 988
    .local v2, spanStart:I
    invoke-interface {v4, v5}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 990
    .local v1, spanEnd:I
    invoke-virtual {p0, v5, v4}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;->removeToken(Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;Landroid/text/Editable;)V

    .line 993
    add-int/lit8 v1, v1, -0x1

    .line 995
    if-ltz v1, :cond_2

    invoke-interface {v4, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_2

    .line 996
    add-int/lit8 v8, v1, 0x1

    invoke-interface {v4, v1, v8}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 999
    :cond_2
    if-lez v2, :cond_3

    invoke-interface {v4, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_3

    .line 1000
    add-int/lit8 v8, v2, 0x1

    invoke-interface {v4, v2, v8}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 982
    .end local v1           #spanEnd:I
    .end local v2           #spanStart:I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method protected removeToken(Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;Landroid/text/Editable;)V
    .locals 0
    .parameter "token"
    .parameter "text"

    .prologue
    .line 961
    invoke-interface {p2, p1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 962
    return-void
.end method
