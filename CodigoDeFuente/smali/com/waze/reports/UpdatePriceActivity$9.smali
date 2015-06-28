.class Lcom/waze/reports/UpdatePriceActivity$9;
.super Ljava/lang/Object;
.source "UpdatePriceActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/UpdatePriceActivity;->setEditTextChangedListener(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/UpdatePriceActivity;

.field private final synthetic val$editText:Landroid/widget/EditText;

.field private final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/waze/reports/UpdatePriceActivity;Landroid/widget/EditText;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/UpdatePriceActivity$9;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    iput-object p2, p0, Lcom/waze/reports/UpdatePriceActivity$9;->val$editText:Landroid/widget/EditText;

    iput p3, p0, Lcom/waze/reports/UpdatePriceActivity$9;->val$index:I

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private deleteAllInputIfUserShortenedInput(Landroid/widget/EditText;II)Z
    .locals 2
    .parameter "editText"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 476
    const/4 v0, 0x0

    .line 477
    .local v0, isDeletion:Z
    if-le p2, p3, :cond_0

    .line 479
    const-string v1, ""

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 480
    const/4 v0, 0x1

    .line 482
    :cond_0
    return v0
.end method

.method private fitInputIntoFormat(ILandroid/widget/EditText;Ljava/lang/String;)V
    .locals 4
    .parameter "index"
    .parameter "editText"
    .parameter "str"

    .prologue
    .line 486
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/waze/reports/UpdatePriceActivity$9;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    #getter for: Lcom/waze/reports/UpdatePriceActivity;->product:Lcom/waze/navigate/Product;
    invoke-static {v2}, Lcom/waze/reports/UpdatePriceActivity;->access$0(Lcom/waze/reports/UpdatePriceActivity;)Lcom/waze/navigate/Product;

    move-result-object v2

    iget-object v2, v2, Lcom/waze/navigate/Product;->formats:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v1, v2, :cond_1

    .line 487
    iget-object v1, p0, Lcom/waze/reports/UpdatePriceActivity$9;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    #getter for: Lcom/waze/reports/UpdatePriceActivity;->product:Lcom/waze/navigate/Product;
    invoke-static {v1}, Lcom/waze/reports/UpdatePriceActivity;->access$0(Lcom/waze/reports/UpdatePriceActivity;)Lcom/waze/navigate/Product;

    move-result-object v1

    iget-object v1, v1, Lcom/waze/navigate/Product;->formats:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 488
    .local v0, nextFormatChar:C
    const/16 v1, 0x23

    if-eq v0, v1, :cond_0

    .line 490
    iget-object v1, p0, Lcom/waze/reports/UpdatePriceActivity$9;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/waze/reports/UpdatePriceActivity;->overrideFilter:Z

    .line 491
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 503
    .end local v0           #nextFormatChar:C
    :cond_0
    :goto_0
    return-void

    .line 497
    :cond_1
    const-string v1, "WAZE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Index out of bound: tried to access char at: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 498
    const-string v3, " in format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/waze/reports/UpdatePriceActivity$9;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    #getter for: Lcom/waze/reports/UpdatePriceActivity;->product:Lcom/waze/navigate/Product;
    invoke-static {v3}, Lcom/waze/reports/UpdatePriceActivity;->access$0(Lcom/waze/reports/UpdatePriceActivity;)Lcom/waze/navigate/Product;

    move-result-object v3

    iget-object v3, v3, Lcom/waze/navigate/Product;->formats:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to compare with price: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 497
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    const-string v1, ""

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 512
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 508
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .parameter "seq"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v3, 0x0

    .line 431
    iget-object v1, p0, Lcom/waze/reports/UpdatePriceActivity$9;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    iget-boolean v1, v1, Lcom/waze/reports/UpdatePriceActivity;->skipOnTextChanged:Z

    if-eqz v1, :cond_1

    .line 432
    iget-object v1, p0, Lcom/waze/reports/UpdatePriceActivity$9;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    iput-boolean v3, v1, Lcom/waze/reports/UpdatePriceActivity;->skipOnTextChanged:Z

    .line 472
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    iget-object v1, p0, Lcom/waze/reports/UpdatePriceActivity$9;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    #calls: Lcom/waze/reports/UpdatePriceActivity;->priceChanged()V
    invoke-static {v1}, Lcom/waze/reports/UpdatePriceActivity;->access$11(Lcom/waze/reports/UpdatePriceActivity;)V

    .line 436
    iget-object v1, p0, Lcom/waze/reports/UpdatePriceActivity$9;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 439
    .local v0, str:Ljava/lang/String;
    iget-object v1, p0, Lcom/waze/reports/UpdatePriceActivity$9;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    #getter for: Lcom/waze/reports/UpdatePriceActivity;->product:Lcom/waze/navigate/Product;
    invoke-static {v1}, Lcom/waze/reports/UpdatePriceActivity;->access$0(Lcom/waze/reports/UpdatePriceActivity;)Lcom/waze/navigate/Product;

    move-result-object v1

    iget-object v1, v1, Lcom/waze/navigate/Product;->formats:[Ljava/lang/String;

    array-length v1, v1

    iget v2, p0, Lcom/waze/reports/UpdatePriceActivity$9;->val$index:I

    if-gt v1, v2, :cond_2

    .line 440
    const-string v1, "WAZE"

    const-string v2, "Index is out from product format"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 445
    :cond_2
    iget-object v1, p0, Lcom/waze/reports/UpdatePriceActivity$9;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    iget-boolean v1, v1, Lcom/waze/reports/UpdatePriceActivity;->mIgnoredeletionCheck:Z

    if-nez v1, :cond_3

    .line 446
    iget-object v1, p0, Lcom/waze/reports/UpdatePriceActivity$9;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0, v1, p3, p4}, Lcom/waze/reports/UpdatePriceActivity$9;->deleteAllInputIfUserShortenedInput(Landroid/widget/EditText;II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 455
    :goto_1
    const-string v1, "N/A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 459
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/waze/reports/UpdatePriceActivity$9;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    #getter for: Lcom/waze/reports/UpdatePriceActivity;->product:Lcom/waze/navigate/Product;
    invoke-static {v2}, Lcom/waze/reports/UpdatePriceActivity;->access$0(Lcom/waze/reports/UpdatePriceActivity;)Lcom/waze/navigate/Product;

    move-result-object v2

    iget-object v2, v2, Lcom/waze/navigate/Product;->formats:[Ljava/lang/String;

    iget v3, p0, Lcom/waze/reports/UpdatePriceActivity$9;->val$index:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 460
    iget-object v1, p0, Lcom/waze/reports/UpdatePriceActivity$9;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    #getter for: Lcom/waze/reports/UpdatePriceActivity;->isTextBoxFilledByUser:Z
    invoke-static {v1}, Lcom/waze/reports/UpdatePriceActivity;->access$12(Lcom/waze/reports/UpdatePriceActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 461
    iget-object v1, p0, Lcom/waze/reports/UpdatePriceActivity$9;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    #calls: Lcom/waze/reports/UpdatePriceActivity;->focusNextField()V
    invoke-static {v1}, Lcom/waze/reports/UpdatePriceActivity;->access$7(Lcom/waze/reports/UpdatePriceActivity;)V

    goto :goto_0

    .line 452
    :cond_3
    iget-object v1, p0, Lcom/waze/reports/UpdatePriceActivity$9;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    iput-boolean v3, v1, Lcom/waze/reports/UpdatePriceActivity;->mIgnoredeletionCheck:Z

    goto :goto_1

    .line 465
    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt p2, v1, :cond_5

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 469
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 470
    iget v1, p0, Lcom/waze/reports/UpdatePriceActivity$9;->val$index:I

    iget-object v2, p0, Lcom/waze/reports/UpdatePriceActivity$9;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0, v1, v2, v0}, Lcom/waze/reports/UpdatePriceActivity$9;->fitInputIntoFormat(ILandroid/widget/EditText;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
