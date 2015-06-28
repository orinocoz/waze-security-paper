.class Lcom/tokenautocomplete/TokenCompleteTextView$2;
.super Ljava/lang/Object;
.source "TokenCompleteTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tokenautocomplete/TokenCompleteTextView;->addObject(Ljava/lang/Object;Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

.field private final synthetic val$object:Ljava/lang/Object;

.field private final synthetic val$sourceText:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/tokenautocomplete/TokenCompleteTextView;Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$2;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    iput-object p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView$2;->val$object:Ljava/lang/Object;

    iput-object p3, p0, Lcom/tokenautocomplete/TokenCompleteTextView$2;->val$sourceText:Ljava/lang/CharSequence;

    .line 619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 622
    iget-object v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView$2;->val$object:Ljava/lang/Object;

    if-nez v4, :cond_1

    .line 649
    :cond_0
    :goto_0
    return-void

    .line 623
    :cond_1
    iget-object v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView$2;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    #getter for: Lcom/tokenautocomplete/TokenCompleteTextView;->allowDuplicates:Z
    invoke-static {v4}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$12(Lcom/tokenautocomplete/TokenCompleteTextView;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView$2;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    #getter for: Lcom/tokenautocomplete/TokenCompleteTextView;->objects:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$6(Lcom/tokenautocomplete/TokenCompleteTextView;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/tokenautocomplete/TokenCompleteTextView$2;->val$object:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 625
    :cond_2
    iget-object v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView$2;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    iget-object v5, p0, Lcom/tokenautocomplete/TokenCompleteTextView$2;->val$sourceText:Ljava/lang/CharSequence;

    #calls: Lcom/tokenautocomplete/TokenCompleteTextView;->buildSpannableForText(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    invoke-static {v4, v5}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$13(Lcom/tokenautocomplete/TokenCompleteTextView;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    .line 626
    .local v2, ssb:Landroid/text/SpannableStringBuilder;
    iget-object v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView$2;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    iget-object v5, p0, Lcom/tokenautocomplete/TokenCompleteTextView$2;->val$object:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lcom/tokenautocomplete/TokenCompleteTextView;->buildSpanForObject(Ljava/lang/Object;)Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    move-result-object v3

    .line 628
    .local v3, tokenSpan:Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;
    iget-object v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView$2;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-virtual {v4}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 629
    .local v0, editable:Landroid/text/Editable;
    if-eqz v0, :cond_0

    .line 630
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 632
    .local v1, offset:I
    iget-object v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView$2;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    #getter for: Lcom/tokenautocomplete/TokenCompleteTextView;->hintVisible:Z
    invoke-static {v4}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$14(Lcom/tokenautocomplete/TokenCompleteTextView;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 634
    iget-object v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView$2;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    #getter for: Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;
    invoke-static {v4}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$9(Lcom/tokenautocomplete/TokenCompleteTextView;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 635
    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 639
    :goto_1
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    add-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    const/16 v5, 0x21

    invoke-interface {v0, v3, v1, v4, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 643
    iget-object v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView$2;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    #getter for: Lcom/tokenautocomplete/TokenCompleteTextView;->objects:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$6(Lcom/tokenautocomplete/TokenCompleteTextView;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/tokenautocomplete/TokenCompleteTextView$2;->val$object:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 644
    iget-object v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView$2;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    #getter for: Lcom/tokenautocomplete/TokenCompleteTextView;->spanWatcher:Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;
    invoke-static {v4}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$15(Lcom/tokenautocomplete/TokenCompleteTextView;)Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;

    move-result-object v4

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v0, v3, v1, v5}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;->onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 647
    :cond_3
    iget-object v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView$2;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/tokenautocomplete/TokenCompleteTextView;->setSelection(I)V

    goto :goto_0

    .line 637
    :cond_4
    invoke-interface {v0, v2}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_1
.end method
