.class Lcom/tokenautocomplete/TokenCompleteTextView$3;
.super Ljava/lang/Object;
.source "TokenCompleteTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tokenautocomplete/TokenCompleteTextView;->removeObject(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

.field private final synthetic val$object:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/tokenautocomplete/TokenCompleteTextView;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$3;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    iput-object p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView$3;->val$object:Ljava/lang/Object;

    .line 670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 675
    iget-object v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView$3;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-virtual {v4}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 676
    .local v2, text:Landroid/text/Editable;
    if-nez v2, :cond_1

    .line 684
    :cond_0
    return-void

    .line 678
    :cond_1
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v4

    const-class v5, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    invoke-interface {v2, v3, v4, v5}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 679
    .local v1, spans:[Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;
    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 680
    .local v0, span:Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;
    invoke-virtual {v0}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->getToken()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lcom/tokenautocomplete/TokenCompleteTextView$3;->val$object:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 681
    iget-object v5, p0, Lcom/tokenautocomplete/TokenCompleteTextView$3;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    #calls: Lcom/tokenautocomplete/TokenCompleteTextView;->removeSpan(Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;)V
    invoke-static {v5, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$3(Lcom/tokenautocomplete/TokenCompleteTextView;Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;)V

    .line 679
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
