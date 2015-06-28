.class Lcom/waze/reports/UpdatePriceActivity$8;
.super Ljava/lang/Object;
.source "UpdatePriceActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/UpdatePriceActivity;->setEditTextListener(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/UpdatePriceActivity;

.field private final synthetic val$editText:Landroid/widget/EditText;

.field private final synthetic val$imageView:Landroid/widget/ImageView;

.field private final synthetic val$index:I

.field private final synthetic val$resource:I


# direct methods
.method constructor <init>(Lcom/waze/reports/UpdatePriceActivity;Landroid/widget/EditText;Landroid/widget/ImageView;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/UpdatePriceActivity$8;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    iput-object p2, p0, Lcom/waze/reports/UpdatePriceActivity$8;->val$editText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/waze/reports/UpdatePriceActivity$8;->val$imageView:Landroid/widget/ImageView;

    iput p4, p0, Lcom/waze/reports/UpdatePriceActivity$8;->val$resource:I

    iput p5, p0, Lcom/waze/reports/UpdatePriceActivity$8;->val$index:I

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/reports/UpdatePriceActivity$8;)Lcom/waze/reports/UpdatePriceActivity;
    .locals 1
    .parameter

    .prologue
    .line 351
    iget-object v0, p0, Lcom/waze/reports/UpdatePriceActivity$8;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    return-object v0
.end method

.method private handleFocusIn(Landroid/widget/EditText;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 4
    .parameter "editText"
    .parameter "imageView"
    .parameter "view"

    .prologue
    const/4 v3, 0x1

    .line 403
    iget-object v1, p0, Lcom/waze/reports/UpdatePriceActivity$8;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    #setter for: Lcom/waze/reports/UpdatePriceActivity;->currentEditText:Landroid/widget/EditText;
    invoke-static {v1, p1}, Lcom/waze/reports/UpdatePriceActivity;->access$10(Lcom/waze/reports/UpdatePriceActivity;Landroid/widget/EditText;)V

    .line 404
    iget-object v1, p0, Lcom/waze/reports/UpdatePriceActivity$8;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    const v2, 0x7f09078e

    invoke-virtual {v1, v2}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 405
    const/4 v2, 0x0

    .line 404
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 406
    const v1, 0x7f020307

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object v1, p3

    .line 407
    check-cast v1, Landroid/widget/EditText;

    move-object v2, p3

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 408
    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 407
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 409
    check-cast p3, Landroid/widget/EditText;

    .end local p3
    const-string v1, ""

    invoke-virtual {p3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 410
    iget-object v1, p0, Lcom/waze/reports/UpdatePriceActivity$8;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    #setter for: Lcom/waze/reports/UpdatePriceActivity;->isTextBoxFilledByUser:Z
    invoke-static {v1, v3}, Lcom/waze/reports/UpdatePriceActivity;->access$8(Lcom/waze/reports/UpdatePriceActivity;Z)V

    .line 411
    iget-object v1, p0, Lcom/waze/reports/UpdatePriceActivity$8;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/waze/reports/UpdatePriceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 412
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0, p1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 413
    return-void
.end method

.method private handleFocusOut(IILandroid/widget/ImageView;Landroid/view/View;)V
    .locals 6
    .parameter "resource"
    .parameter "index"
    .parameter "imageView"
    .parameter "view"

    .prologue
    .line 372
    iget-object v3, p0, Lcom/waze/reports/UpdatePriceActivity$8;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    const/4 v4, 0x0

    #setter for: Lcom/waze/reports/UpdatePriceActivity;->isTextBoxFilledByUser:Z
    invoke-static {v3, v4}, Lcom/waze/reports/UpdatePriceActivity;->access$8(Lcom/waze/reports/UpdatePriceActivity;Z)V

    .line 373
    iget-object v3, p0, Lcom/waze/reports/UpdatePriceActivity$8;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    const v4, 0x7f09078e

    invoke-virtual {v3, v4}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    move-object v1, p4

    .line 374
    check-cast v1, Landroid/widget/EditText;

    .line 376
    .local v1, editText:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2c

    const/16 v5, 0x2e

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, currentPrice:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/waze/reports/UpdatePriceActivity$8;->isPriceAndFormattedOK(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 381
    invoke-direct {p0, p1, p2, p3}, Lcom/waze/reports/UpdatePriceActivity$8;->restorePriceFromPlaceHolder(IILandroid/widget/ImageView;)V

    .line 394
    :goto_0
    return-void

    .line 384
    :cond_0
    const-string v3, "N/A"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 387
    iget-object v3, p0, Lcom/waze/reports/UpdatePriceActivity$8;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    #getter for: Lcom/waze/reports/UpdatePriceActivity;->product:Lcom/waze/navigate/Product;
    invoke-static {v3}, Lcom/waze/reports/UpdatePriceActivity;->access$0(Lcom/waze/reports/UpdatePriceActivity;)Lcom/waze/navigate/Product;

    move-result-object v3

    iget-object v3, v3, Lcom/waze/navigate/Product;->formats:[Ljava/lang/String;

    aget-object v3, v3, p2

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-static {v3, v4}, Lcom/waze/reports/UpdatePriceActivity;->padWithZeroRightToPeriod(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    .line 388
    .local v2, priceZeroPadded:Ljava/lang/String;
    iget-object v3, p0, Lcom/waze/reports/UpdatePriceActivity$8;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/waze/reports/UpdatePriceActivity;->skipOnTextChanged:Z

    .line 389
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 392
    .end local v2           #priceZeroPadded:Ljava/lang/String;
    :cond_1
    const v3, 0x7f020308

    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private isPriceAndFormattedOK(Ljava/lang/String;)Z
    .locals 1
    .parameter "currentPrice"

    .prologue
    .line 397
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 398
    const-string v0, "N/A"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/waze/reports/UpdatePriceActivity$8;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    #calls: Lcom/waze/reports/UpdatePriceActivity;->isParseFloatOk(Ljava/lang/String;)Z
    invoke-static {v0, p1}, Lcom/waze/reports/UpdatePriceActivity;->access$9(Lcom/waze/reports/UpdatePriceActivity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 397
    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private restorePriceFromPlaceHolder(IILandroid/widget/ImageView;)V
    .locals 2
    .parameter "resource"
    .parameter "index"
    .parameter "imageView"

    .prologue
    .line 417
    iget-object v0, p0, Lcom/waze/reports/UpdatePriceActivity$8;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/waze/reports/UpdatePriceActivity;->mIgnoredeletionCheck:Z

    .line 418
    const v0, 0x7f020306

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 419
    iget-object v0, p0, Lcom/waze/reports/UpdatePriceActivity$8;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    iget-object v1, p0, Lcom/waze/reports/UpdatePriceActivity$8;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    #getter for: Lcom/waze/reports/UpdatePriceActivity;->product:Lcom/waze/navigate/Product;
    invoke-static {v1}, Lcom/waze/reports/UpdatePriceActivity;->access$0(Lcom/waze/reports/UpdatePriceActivity;)Lcom/waze/navigate/Product;

    move-result-object v1

    #calls: Lcom/waze/reports/UpdatePriceActivity;->displayEdit(Lcom/waze/navigate/Product;II)Z
    invoke-static {v0, v1, p2, p1}, Lcom/waze/reports/UpdatePriceActivity;->access$5(Lcom/waze/reports/UpdatePriceActivity;Lcom/waze/navigate/Product;II)Z

    .line 420
    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .parameter "view"
    .parameter "hasFocus"

    .prologue
    .line 354
    if-eqz p2, :cond_0

    .line 356
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    .line 357
    .local v0, mgr:Lcom/waze/NativeManager;
    new-instance v1, Lcom/waze/reports/UpdatePriceActivity$8$1;

    invoke-direct {v1, p0}, Lcom/waze/reports/UpdatePriceActivity$8$1;-><init>(Lcom/waze/reports/UpdatePriceActivity$8;)V

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->checkTypingLock(Lcom/waze/view/text/TypingLockListener;)V

    .line 363
    iget-object v1, p0, Lcom/waze/reports/UpdatePriceActivity$8;->val$editText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/waze/reports/UpdatePriceActivity$8;->val$imageView:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2, p1}, Lcom/waze/reports/UpdatePriceActivity$8;->handleFocusIn(Landroid/widget/EditText;Landroid/widget/ImageView;Landroid/view/View;)V

    .line 367
    .end local v0           #mgr:Lcom/waze/NativeManager;
    :goto_0
    return-void

    .line 365
    :cond_0
    iget v1, p0, Lcom/waze/reports/UpdatePriceActivity$8;->val$resource:I

    iget v2, p0, Lcom/waze/reports/UpdatePriceActivity$8;->val$index:I

    iget-object v3, p0, Lcom/waze/reports/UpdatePriceActivity$8;->val$imageView:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2, v3, p1}, Lcom/waze/reports/UpdatePriceActivity$8;->handleFocusOut(IILandroid/widget/ImageView;Landroid/view/View;)V

    goto :goto_0
.end method
