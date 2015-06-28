.class Lcom/waze/PhoneList$5;
.super Ljava/lang/Object;
.source "PhoneList.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/PhoneList;->InitTab1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/PhoneList;


# direct methods
.method constructor <init>(Lcom/waze/PhoneList;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/PhoneList$5;->this$0:Lcom/waze/PhoneList;

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 195
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 200
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 7
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 204
    iget-object v1, p0, Lcom/waze/PhoneList$5;->this$0:Lcom/waze/PhoneList;

    iget-object v2, p0, Lcom/waze/PhoneList$5;->this$0:Lcom/waze/PhoneList;

    #getter for: Lcom/waze/PhoneList;->et:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/waze/PhoneList;->access$3(Lcom/waze/PhoneList;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    iput v2, v1, Lcom/waze/PhoneList;->textlength:I

    .line 205
    iget-object v1, p0, Lcom/waze/PhoneList$5;->this$0:Lcom/waze/PhoneList;

    #getter for: Lcom/waze/PhoneList;->nlist:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/waze/PhoneList;->access$1(Lcom/waze/PhoneList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 206
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/waze/PhoneList$5;->this$0:Lcom/waze/PhoneList;

    #getter for: Lcom/waze/PhoneList;->nlistString:[Ljava/lang/String;
    invoke-static {v1}, Lcom/waze/PhoneList;->access$2(Lcom/waze/PhoneList;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/waze/PhoneList$5;->this$0:Lcom/waze/PhoneList;

    const/4 v2, 0x1

    #setter for: Lcom/waze/PhoneList;->bIsSearch:Z
    invoke-static {v1, v2}, Lcom/waze/PhoneList;->access$4(Lcom/waze/PhoneList;Z)V

    .line 222
    iget-object v1, p0, Lcom/waze/PhoneList$5;->this$0:Lcom/waze/PhoneList;

    #getter for: Lcom/waze/PhoneList;->lv:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/waze/PhoneList;->access$5(Lcom/waze/PhoneList;)Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Landroid/widget/ArrayAdapter;

    .line 223
    iget-object v3, p0, Lcom/waze/PhoneList$5;->this$0:Lcom/waze/PhoneList;

    .line 224
    const v4, 0x7f030041

    const v5, 0x7f090233

    iget-object v6, p0, Lcom/waze/PhoneList$5;->this$0:Lcom/waze/PhoneList;

    #getter for: Lcom/waze/PhoneList;->nlist:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/waze/PhoneList;->access$1(Lcom/waze/PhoneList;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 222
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 225
    return-void

    .line 208
    :cond_0
    iget-object v1, p0, Lcom/waze/PhoneList$5;->this$0:Lcom/waze/PhoneList;

    iget v1, v1, Lcom/waze/PhoneList;->textlength:I

    iget-object v2, p0, Lcom/waze/PhoneList$5;->this$0:Lcom/waze/PhoneList;

    #getter for: Lcom/waze/PhoneList;->nlistString:[Ljava/lang/String;
    invoke-static {v2}, Lcom/waze/PhoneList;->access$2(Lcom/waze/PhoneList;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v1, v2, :cond_1

    .line 210
    iget-object v1, p0, Lcom/waze/PhoneList$5;->this$0:Lcom/waze/PhoneList;

    #getter for: Lcom/waze/PhoneList;->et:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/waze/PhoneList;->access$3(Lcom/waze/PhoneList;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 212
    iget-object v1, p0, Lcom/waze/PhoneList$5;->this$0:Lcom/waze/PhoneList;

    #getter for: Lcom/waze/PhoneList;->nlistString:[Ljava/lang/String;
    invoke-static {v1}, Lcom/waze/PhoneList;->access$2(Lcom/waze/PhoneList;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v0

    const/4 v3, 0x0

    .line 213
    iget-object v4, p0, Lcom/waze/PhoneList$5;->this$0:Lcom/waze/PhoneList;

    iget v4, v4, Lcom/waze/PhoneList;->textlength:I

    .line 212
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 211
    check-cast v1, Ljava/lang/String;

    .line 210
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 213
    if-eqz v1, :cond_1

    .line 215
    iget-object v1, p0, Lcom/waze/PhoneList$5;->this$0:Lcom/waze/PhoneList;

    #getter for: Lcom/waze/PhoneList;->nlist:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/waze/PhoneList;->access$1(Lcom/waze/PhoneList;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/PhoneList$5;->this$0:Lcom/waze/PhoneList;

    #getter for: Lcom/waze/PhoneList;->nlistString:[Ljava/lang/String;
    invoke-static {v2}, Lcom/waze/PhoneList;->access$2(Lcom/waze/PhoneList;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
