.class Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;
.super Ljava/lang/Object;
.source "TokenCompleteTextView.java"

# interfaces
.implements Landroid/text/SpanWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tokenautocomplete/TokenCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TokenSpanWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tokenautocomplete/TokenCompleteTextView;


# direct methods
.method private constructor <init>(Lcom/tokenautocomplete/TokenCompleteTextView;)V
    .locals 0
    .parameter

    .prologue
    .line 898
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tokenautocomplete/TokenCompleteTextView;Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 898
    invoke-direct {p0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;)V

    return-void
.end method

.method private updateCountSpan(I)V
    .locals 6
    .parameter "change"

    .prologue
    const/4 v5, 0x0

    .line 900
    iget-object v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-virtual {v3}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 901
    .local v2, text:Landroid/text/Editable;
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    #getter for: Lcom/tokenautocomplete/TokenCompleteTextView;->lastLayout:Landroid/text/Layout;
    invoke-static {v3}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$4(Lcom/tokenautocomplete/TokenCompleteTextView;)Landroid/text/Layout;

    move-result-object v3

    if-nez v3, :cond_1

    .line 922
    :cond_0
    :goto_0
    return-void

    .line 903
    :cond_1
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v3

    const-class v4, Lcom/tokenautocomplete/TokenCompleteTextView$CountSpan;

    invoke-interface {v2, v5, v3, v4}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tokenautocomplete/TokenCompleteTextView$CountSpan;

    .line 904
    .local v0, counts:[Lcom/tokenautocomplete/TokenCompleteTextView$CountSpan;
    array-length v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 905
    aget-object v1, v0, v5

    .line 906
    .local v1, span:Lcom/tokenautocomplete/TokenCompleteTextView$CountSpan;
    iget-object v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    new-instance v4, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher$1;

    invoke-direct {v4, p0, v2, v1, p1}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher$1;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;Landroid/text/Editable;Lcom/tokenautocomplete/TokenCompleteTextView$CountSpan;I)V

    invoke-virtual {v3, v4}, Lcom/tokenautocomplete/TokenCompleteTextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 3
    .parameter "text"
    .parameter "what"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 926
    instance-of v1, p2, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    #getter for: Lcom/tokenautocomplete/TokenCompleteTextView;->savingState:Z
    invoke-static {v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$5(Lcom/tokenautocomplete/TokenCompleteTextView;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v0, p2

    .line 927
    check-cast v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 928
    .local v0, token:Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    #getter for: Lcom/tokenautocomplete/TokenCompleteTextView;->objects:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$6(Lcom/tokenautocomplete/TokenCompleteTextView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->getToken()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 929
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;->updateCountSpan(I)V

    .line 931
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    #getter for: Lcom/tokenautocomplete/TokenCompleteTextView;->listener:Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener;
    invoke-static {v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$7(Lcom/tokenautocomplete/TokenCompleteTextView;)Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 932
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    #getter for: Lcom/tokenautocomplete/TokenCompleteTextView;->listener:Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener;
    invoke-static {v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$7(Lcom/tokenautocomplete/TokenCompleteTextView;)Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->getToken()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener;->onTokenAdded(Ljava/lang/Object;)V

    .line 934
    .end local v0           #token:Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;
    :cond_0
    return-void
.end method

.method public onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V
    .locals 0
    .parameter "text"
    .parameter "what"
    .parameter "ostart"
    .parameter "oend"
    .parameter "nstart"
    .parameter "nend"

    .prologue
    .line 951
    return-void
.end method

.method public onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 3
    .parameter "text"
    .parameter "what"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 938
    instance-of v1, p2, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    #getter for: Lcom/tokenautocomplete/TokenCompleteTextView;->savingState:Z
    invoke-static {v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$5(Lcom/tokenautocomplete/TokenCompleteTextView;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v0, p2

    .line 939
    check-cast v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 940
    .local v0, token:Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    #getter for: Lcom/tokenautocomplete/TokenCompleteTextView;->objects:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$6(Lcom/tokenautocomplete/TokenCompleteTextView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->getToken()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 941
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    #getter for: Lcom/tokenautocomplete/TokenCompleteTextView;->objects:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$6(Lcom/tokenautocomplete/TokenCompleteTextView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->getToken()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 942
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;->updateCountSpan(I)V

    .line 945
    :cond_0
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    #getter for: Lcom/tokenautocomplete/TokenCompleteTextView;->listener:Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener;
    invoke-static {v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$7(Lcom/tokenautocomplete/TokenCompleteTextView;)Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 946
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    #getter for: Lcom/tokenautocomplete/TokenCompleteTextView;->listener:Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener;
    invoke-static {v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$7(Lcom/tokenautocomplete/TokenCompleteTextView;)Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->getToken()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener;->onTokenRemoved(Ljava/lang/Object;)V

    .line 948
    .end local v0           #token:Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;
    :cond_1
    return-void
.end method
