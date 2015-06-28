.class Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher$1;
.super Ljava/lang/Object;
.source "TokenCompleteTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;->updateCountSpan(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;

.field private final synthetic val$change:I

.field private final synthetic val$span:Lcom/tokenautocomplete/TokenCompleteTextView$CountSpan;

.field private final synthetic val$text:Landroid/text/Editable;


# direct methods
.method constructor <init>(Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;Landroid/text/Editable;Lcom/tokenautocomplete/TokenCompleteTextView$CountSpan;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher$1;->this$1:Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;

    iput-object p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher$1;->val$text:Landroid/text/Editable;

    iput-object p3, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher$1;->val$span:Lcom/tokenautocomplete/TokenCompleteTextView$CountSpan;

    iput p4, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher$1;->val$change:I

    .line 906
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 909
    iget-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher$1;->val$text:Landroid/text/Editable;

    iget-object v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher$1;->val$span:Lcom/tokenautocomplete/TokenCompleteTextView$CountSpan;

    invoke-interface {v2, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 910
    .local v1, spanStart:I
    iget-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher$1;->val$text:Landroid/text/Editable;

    iget-object v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher$1;->val$span:Lcom/tokenautocomplete/TokenCompleteTextView$CountSpan;

    invoke-interface {v2, v3}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 911
    .local v0, spanEnd:I
    iget-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher$1;->val$span:Lcom/tokenautocomplete/TokenCompleteTextView$CountSpan;

    iget-object v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher$1;->val$span:Lcom/tokenautocomplete/TokenCompleteTextView$CountSpan;

    invoke-virtual {v3}, Lcom/tokenautocomplete/TokenCompleteTextView$CountSpan;->getCount()I

    move-result v3

    iget v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher$1;->val$change:I

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/tokenautocomplete/TokenCompleteTextView$CountSpan;->setCount(I)V

    .line 912
    iget-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher$1;->val$span:Lcom/tokenautocomplete/TokenCompleteTextView$CountSpan;

    invoke-virtual {v2}, Lcom/tokenautocomplete/TokenCompleteTextView$CountSpan;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 913
    iget-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher$1;->val$text:Landroid/text/Editable;

    iget-object v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher$1;->val$span:Lcom/tokenautocomplete/TokenCompleteTextView$CountSpan;

    iget-object v3, v3, Lcom/tokenautocomplete/TokenCompleteTextView$CountSpan;->text:Ljava/lang/String;

    invoke-interface {v2, v1, v0, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 918
    :goto_0
    return-void

    .line 915
    :cond_0
    iget-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher$1;->val$text:Landroid/text/Editable;

    invoke-interface {v2, v1, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 916
    iget-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher$1;->val$text:Landroid/text/Editable;

    iget-object v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher$1;->val$span:Lcom/tokenautocomplete/TokenCompleteTextView$CountSpan;

    invoke-interface {v2, v3}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_0
.end method
