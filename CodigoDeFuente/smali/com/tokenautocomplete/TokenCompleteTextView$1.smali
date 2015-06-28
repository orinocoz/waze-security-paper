.class Lcom/tokenautocomplete/TokenCompleteTextView$1;
.super Ljava/lang/Object;
.source "TokenCompleteTextView.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tokenautocomplete/TokenCompleteTextView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tokenautocomplete/TokenCompleteTextView;


# direct methods
.method constructor <init>(Lcom/tokenautocomplete/TokenCompleteTextView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$1;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 2
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 124
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$1;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-virtual {v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->performCompletion()V

    .line 126
    const-string v0, ""

    .line 133
    :goto_0
    return-object v0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$1;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    #getter for: Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;
    invoke-static {v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$9(Lcom/tokenautocomplete/TokenCompleteTextView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p5, v0, :cond_1

    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$1;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    #getter for: Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;
    invoke-static {v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$9(Lcom/tokenautocomplete/TokenCompleteTextView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne p6, v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$1;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    #getter for: Lcom/tokenautocomplete/TokenCompleteTextView;->prefix:Ljava/lang/String;
    invoke-static {v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$9(Lcom/tokenautocomplete/TokenCompleteTextView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p5, p6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 133
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
