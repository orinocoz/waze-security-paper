.class public Lcom/waze/reports/UpdatePriceActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "UpdatePriceActivity.java"


# static fields
.field private static final PRICE_NOT_AVAILABLE:Ljava/lang/String; = "N/A"

.field private static s_priceFormatString:Ljava/lang/String;


# instance fields
.field private currentEditText:Landroid/widget/EditText;

.field private driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;

.field private isPriceChanged:Z

.field private isTextBoxFilledByUser:Z

.field protected mIgnoredeletionCheck:Z

.field private mIndex:I

.field protected nProducts:I

.field onClickYesListener:Landroid/view/View$OnClickListener;

.field protected overrideFilter:Z

.field private product:Lcom/waze/navigate/Product;

.field protected skipOnTextChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/reports/UpdatePriceActivity;->s_priceFormatString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 38
    iput-boolean v1, p0, Lcom/waze/reports/UpdatePriceActivity;->isPriceChanged:Z

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/reports/UpdatePriceActivity;->isTextBoxFilledByUser:Z

    .line 43
    new-instance v0, Lcom/waze/reports/UpdatePriceActivity$1;

    invoke-direct {v0, p0}, Lcom/waze/reports/UpdatePriceActivity$1;-><init>(Lcom/waze/reports/UpdatePriceActivity;)V

    iput-object v0, p0, Lcom/waze/reports/UpdatePriceActivity;->onClickYesListener:Landroid/view/View$OnClickListener;

    .line 111
    iput-boolean v1, p0, Lcom/waze/reports/UpdatePriceActivity;->overrideFilter:Z

    .line 112
    iput-boolean v1, p0, Lcom/waze/reports/UpdatePriceActivity;->skipOnTextChanged:Z

    .line 114
    const/4 v0, -0x1

    iput v0, p0, Lcom/waze/reports/UpdatePriceActivity;->nProducts:I

    .line 33
    return-void
.end method

.method static synthetic access$0(Lcom/waze/reports/UpdatePriceActivity;)Lcom/waze/navigate/Product;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/waze/reports/UpdatePriceActivity;->product:Lcom/waze/navigate/Product;

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/reports/UpdatePriceActivity;)Lcom/waze/navigate/DriveToNativeManager;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/waze/reports/UpdatePriceActivity;->driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;

    return-object v0
.end method

.method static synthetic access$10(Lcom/waze/reports/UpdatePriceActivity;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/waze/reports/UpdatePriceActivity;->currentEditText:Landroid/widget/EditText;

    return-void
.end method

.method static synthetic access$11(Lcom/waze/reports/UpdatePriceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 567
    invoke-direct {p0}, Lcom/waze/reports/UpdatePriceActivity;->priceChanged()V

    return-void
.end method

.method static synthetic access$12(Lcom/waze/reports/UpdatePriceActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/waze/reports/UpdatePriceActivity;->isTextBoxFilledByUser:Z

    return v0
.end method

.method static synthetic access$13(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 602
    invoke-static {p0}, Lcom/waze/reports/UpdatePriceActivity;->getNumberOfDigits(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$14(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    sput-object p0, Lcom/waze/reports/UpdatePriceActivity;->s_priceFormatString:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/waze/reports/UpdatePriceActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 35
    iget v0, p0, Lcom/waze/reports/UpdatePriceActivity;->mIndex:I

    return v0
.end method

.method static synthetic access$3(Lcom/waze/reports/UpdatePriceActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/waze/reports/UpdatePriceActivity;->currentEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$4(Lcom/waze/reports/UpdatePriceActivity;Lcom/waze/navigate/Product;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/waze/reports/UpdatePriceActivity;->product:Lcom/waze/navigate/Product;

    return-void
.end method

.method static synthetic access$5(Lcom/waze/reports/UpdatePriceActivity;Lcom/waze/navigate/Product;II)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 610
    invoke-direct {p0, p1, p2, p3}, Lcom/waze/reports/UpdatePriceActivity;->displayEdit(Lcom/waze/navigate/Product;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6(Lcom/waze/reports/UpdatePriceActivity;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 424
    invoke-direct {p0, p1, p2, p3}, Lcom/waze/reports/UpdatePriceActivity;->setEditTextChangedListener(III)V

    return-void
.end method

.method static synthetic access$7(Lcom/waze/reports/UpdatePriceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 669
    invoke-direct {p0}, Lcom/waze/reports/UpdatePriceActivity;->focusNextField()V

    return-void
.end method

.method static synthetic access$8(Lcom/waze/reports/UpdatePriceActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/waze/reports/UpdatePriceActivity;->isTextBoxFilledByUser:Z

    return-void
.end method

.method static synthetic access$9(Lcom/waze/reports/UpdatePriceActivity;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 680
    invoke-direct {p0, p1}, Lcom/waze/reports/UpdatePriceActivity;->isParseFloatOk(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private displayEdit(Lcom/waze/navigate/Product;II)Z
    .locals 4
    .parameter "product"
    .parameter "index"
    .parameter "resource"

    .prologue
    const/4 v1, 0x0

    .line 612
    if-nez p1, :cond_0

    .line 623
    :goto_0
    return v1

    .line 614
    :cond_0
    invoke-virtual {p0, p3}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 616
    .local v0, editText:Landroid/widget/EditText;
    iget-object v2, p1, Lcom/waze/navigate/Product;->prices:[F

    array-length v2, v2

    if-le v2, p2, :cond_1

    .line 617
    iget-object v2, p1, Lcom/waze/navigate/Product;->prices:[F

    aget v2, v2, p2

    const/high16 v3, 0x42c8

    mul-float/2addr v2, v3

    float-to-int v2, v2

    if-lez v2, :cond_1

    .line 618
    iget-object v1, p1, Lcom/waze/navigate/Product;->formats:[Ljava/lang/String;

    aget-object v1, v1, p2

    iget-object v2, p1, Lcom/waze/navigate/Product;->prices:[F

    aget v2, v2, p2

    invoke-static {v1, v2}, Lcom/waze/reports/UpdatePriceActivity;->padWithZeroRightToPeriod(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 620
    const/4 v1, 0x1

    goto :goto_0

    .line 622
    :cond_1
    const-string v2, "N/A"

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private focusNextField()V
    .locals 4

    .prologue
    .line 670
    invoke-virtual {p0}, Lcom/waze/reports/UpdatePriceActivity;->findNextField()Z

    move-result v0

    .line 671
    .local v0, found:Z
    if-nez v0, :cond_0

    .line 672
    const v2, 0x7f090775

    invoke-virtual {p0, v2}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 673
    iget-object v2, p0, Lcom/waze/reports/UpdatePriceActivity;->currentEditText:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 674
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/waze/reports/UpdatePriceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 675
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/waze/reports/UpdatePriceActivity;->currentEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 678
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method private static getNumberOfDigits(Ljava/lang/String;)I
    .locals 2
    .parameter "priceFormat"

    .prologue
    .line 603
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 604
    .local v0, pos:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 605
    const/4 v1, 0x0

    .line 607
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public static getNumberOfDigitsAfterPeriod(Ljava/lang/String;)I
    .locals 3
    .parameter "format"

    .prologue
    const/4 v2, -0x1

    .line 640
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 641
    .local v0, pos:I
    if-ne v0, v2, :cond_1

    .line 642
    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 643
    if-ne v0, v2, :cond_0

    .line 644
    const/4 v1, 0x0

    .line 649
    :goto_0
    return v1

    .line 646
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 649
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public static getPriceFormatString(Lcom/waze/navigate/DriveToNativeManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "nm"
    .parameter "ProductID"

    .prologue
    .line 586
    sget-object v0, Lcom/waze/reports/UpdatePriceActivity;->s_priceFormatString:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/waze/reports/UpdatePriceActivity;->s_priceFormatString:Ljava/lang/String;

    .line 599
    :goto_0
    return-object v0

    .line 588
    :cond_0
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    new-instance v1, Lcom/waze/reports/UpdatePriceActivity$11;

    invoke-direct {v1}, Lcom/waze/reports/UpdatePriceActivity$11;-><init>()V

    invoke-virtual {v0, v1, p1}, Lcom/waze/navigate/DriveToNativeManager;->getPriceFormat(Lcom/waze/navigate/DriveToNativeManager$PriceFormatListener;Ljava/lang/String;)V

    .line 599
    const-string v0, "%2.2f"

    goto :goto_0
.end method

.method private isParseFloatOk(Ljava/lang/String;)Z
    .locals 2
    .parameter "value"

    .prologue
    .line 682
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 683
    const/4 v1, 0x1

    .line 685
    :goto_0
    return v1

    .line 684
    :catch_0
    move-exception v0

    .line 685
    .local v0, nfe:Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static padWithZeroRightToPeriod(Ljava/lang/String;F)Ljava/lang/String;
    .locals 7
    .parameter "serverFormat"
    .parameter "unformattedNumber"

    .prologue
    const/16 v6, 0x2c

    .line 628
    invoke-static {p0}, Lcom/waze/reports/UpdatePriceActivity;->getNumberOfDigitsAfterPeriod(Ljava/lang/String;)I

    move-result v2

    .line 629
    .local v2, nDigits:I
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "%."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 630
    .local v0, floatingFormat:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 632
    .local v1, formattedPrice:Ljava/lang/String;
    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 633
    const/16 v3, 0x2e

    invoke-virtual {v1, v3, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 636
    :cond_0
    return-object v1
.end method

.method private priceChanged()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 568
    iget-boolean v2, p0, Lcom/waze/reports/UpdatePriceActivity;->isPriceChanged:Z

    if-eqz v2, :cond_0

    .line 583
    :goto_0
    return-void

    .line 571
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/waze/reports/UpdatePriceActivity;->isPriceChanged:Z

    .line 572
    const v2, 0x7f090797

    invoke-virtual {p0, v2}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 573
    const v2, 0x7f09079b

    invoke-virtual {p0, v2}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 574
    const v2, 0x7f09079f

    invoke-virtual {p0, v2}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 575
    const v2, 0x7f09079d

    invoke-virtual {p0, v2}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 576
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 577
    .local v0, nativeManager:Lcom/waze/NativeManager;
    const v2, 0x7f090058

    invoke-virtual {p0, v2}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/title/TitleBar;

    .line 578
    .local v1, titleBar:Lcom/waze/view/title/TitleBar;
    const v2, 0x7f020128

    invoke-virtual {v1, v2}, Lcom/waze/view/title/TitleBar;->setCloseImageResource(I)V

    .line 579
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/waze/view/title/TitleBar;->setCloseEnabled(Z)V

    .line 581
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_SEND:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 580
    invoke-virtual {v1, v2}, Lcom/waze/view/title/TitleBar;->setCloseText(Ljava/lang/String;)V

    .line 582
    iget-object v2, p0, Lcom/waze/reports/UpdatePriceActivity;->onClickYesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/waze/view/title/TitleBar;->setOnClickCloseListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private setEditTextChangedListener(III)V
    .locals 4
    .parameter "resource"
    .parameter "index"
    .parameter "nextResource"

    .prologue
    .line 426
    invoke-virtual {p0, p1}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 427
    .local v0, editText:Landroid/widget/EditText;
    new-instance v2, Lcom/waze/reports/UpdatePriceActivity$9;

    invoke-direct {v2, p0, v0, p2}, Lcom/waze/reports/UpdatePriceActivity$9;-><init>(Lcom/waze/reports/UpdatePriceActivity;Landroid/widget/EditText;I)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 514
    new-instance v1, Lcom/waze/reports/UpdatePriceActivity$10;

    invoke-direct {v1, p0}, Lcom/waze/reports/UpdatePriceActivity$10;-><init>(Lcom/waze/reports/UpdatePriceActivity;)V

    .line 527
    .local v1, filter:Landroid/text/InputFilter;
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 528
    return-void
.end method

.method private setEditTextListener(III)V
    .locals 6
    .parameter "resource"
    .parameter "imageResource"
    .parameter "index"

    .prologue
    .line 348
    invoke-virtual {p0, p1}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 349
    .local v2, editText:Landroid/widget/EditText;
    invoke-virtual {p0, p2}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 351
    .local v3, imageView:Landroid/widget/ImageView;
    new-instance v0, Lcom/waze/reports/UpdatePriceActivity$8;

    move-object v1, p0

    move v4, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/waze/reports/UpdatePriceActivity$8;-><init>(Lcom/waze/reports/UpdatePriceActivity;Landroid/widget/EditText;Landroid/widget/ImageView;II)V

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 422
    return-void
.end method


# virtual methods
.method protected findNextField()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 531
    iget-object v6, p0, Lcom/waze/reports/UpdatePriceActivity;->currentEditText:Landroid/widget/EditText;

    if-nez v6, :cond_1

    .line 562
    :cond_0
    :goto_0
    return v5

    .line 535
    :cond_1
    iget-object v6, p0, Lcom/waze/reports/UpdatePriceActivity;->currentEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getId()I

    move-result v4

    .line 536
    .local v4, resource:I
    const/4 v6, 0x4

    new-array v1, v6, [I

    fill-array-data v1, :array_0

    .line 538
    .local v1, fields:[I
    const/4 v2, 0x0

    .line 539
    .local v2, found:Z
    const/4 v3, 0x0

    .line 541
    .local v3, i:I
    :goto_1
    aget v6, v1, v3

    if-ne v4, v6, :cond_4

    .line 546
    const/4 v0, 0x0

    .line 547
    .local v0, editText:Landroid/widget/EditText;
    :cond_2
    if-eqz v2, :cond_5

    .line 558
    :cond_3
    :goto_2
    if-eqz v2, :cond_0

    .line 559
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 560
    const/4 v5, 0x1

    goto :goto_0

    .line 544
    .end local v0           #editText:Landroid/widget/EditText;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 540
    goto :goto_1

    .line 548
    .restart local v0       #editText:Landroid/widget/EditText;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 549
    array-length v6, v1

    if-ge v3, v6, :cond_3

    iget v6, p0, Lcom/waze/reports/UpdatePriceActivity;->nProducts:I

    if-ge v3, v6, :cond_3

    .line 552
    aget v6, v1, v3

    invoke-virtual {p0, v6}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #editText:Landroid/widget/EditText;
    check-cast v0, Landroid/widget/EditText;

    .line 553
    .restart local v0       #editText:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "N/A"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 554
    const/4 v2, 0x1

    .line 555
    goto :goto_2

    .line 536
    :array_0
    .array-data 0x4
        0x7dt 0x7t 0x9t 0x7ft
        0x82t 0x7t 0x9t 0x7ft
        0x87t 0x7t 0x9t 0x7ft
        0x8ct 0x7t 0x9t 0x7ft
    .end array-data
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const v7, 0x7f090795

    const v6, 0x7f090794

    const v5, 0x7f090791

    const v4, 0x7f090790

    .line 119
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 120
    const v1, 0x7f03012e

    invoke-virtual {p0, v1}, Lcom/waze/reports/UpdatePriceActivity;->setContentView(I)V

    .line 121
    const v1, 0x7f090058

    invoke-virtual {p0, v1}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/title/TitleBar;

    .line 122
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_UPDATE_PRICE:Lcom/waze/strings/DisplayStrings;

    .line 121
    invoke-virtual {v1, p0, v2}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;)V

    .line 123
    invoke-virtual {p0}, Lcom/waze/reports/UpdatePriceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "index"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/waze/reports/UpdatePriceActivity;->mIndex:I

    .line 124
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/reports/UpdatePriceActivity;->driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;

    .line 125
    iget-object v1, p0, Lcom/waze/reports/UpdatePriceActivity;->driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;

    iget v2, p0, Lcom/waze/reports/UpdatePriceActivity;->mIndex:I

    new-instance v3, Lcom/waze/reports/UpdatePriceActivity$2;

    invoke-direct {v3, p0}, Lcom/waze/reports/UpdatePriceActivity$2;-><init>(Lcom/waze/reports/UpdatePriceActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/waze/navigate/DriveToNativeManager;->getProduct(ILcom/waze/navigate/DriveToNativeManager$ProductListener;)V

    .line 261
    const v1, 0x7f09079f

    invoke-virtual {p0, v1}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 262
    new-instance v2, Lcom/waze/reports/UpdatePriceActivity$3;

    invoke-direct {v2, p0}, Lcom/waze/reports/UpdatePriceActivity$3;-><init>(Lcom/waze/reports/UpdatePriceActivity;)V

    .line 261
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    const v1, 0x7f09079b

    invoke-virtual {p0, v1}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 273
    iget-object v2, p0, Lcom/waze/reports/UpdatePriceActivity;->onClickYesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    const v1, 0x7f09077d

    const v2, 0x7f09077b

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/waze/reports/UpdatePriceActivity;->setEditTextListener(III)V

    .line 275
    const v1, 0x7f090782

    const v2, 0x7f090780

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/waze/reports/UpdatePriceActivity;->setEditTextListener(III)V

    .line 276
    const v1, 0x7f090787

    const v2, 0x7f090785

    const/4 v3, 0x2

    invoke-direct {p0, v1, v2, v3}, Lcom/waze/reports/UpdatePriceActivity;->setEditTextListener(III)V

    .line 277
    const v1, 0x7f09078c

    const v2, 0x7f09078a

    const/4 v3, 0x3

    invoke-direct {p0, v1, v2, v3}, Lcom/waze/reports/UpdatePriceActivity;->setEditTextListener(III)V

    .line 278
    invoke-virtual {p0, v5}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 279
    new-instance v2, Lcom/waze/reports/UpdatePriceActivity$4;

    invoke-direct {v2, p0}, Lcom/waze/reports/UpdatePriceActivity$4;-><init>(Lcom/waze/reports/UpdatePriceActivity;)V

    .line 278
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    invoke-virtual {p0, v4}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 286
    new-instance v2, Lcom/waze/reports/UpdatePriceActivity$5;

    invoke-direct {v2, p0}, Lcom/waze/reports/UpdatePriceActivity$5;-><init>(Lcom/waze/reports/UpdatePriceActivity;)V

    .line 285
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    invoke-virtual {p0, v6}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 296
    new-instance v2, Lcom/waze/reports/UpdatePriceActivity$6;

    invoke-direct {v2, p0}, Lcom/waze/reports/UpdatePriceActivity$6;-><init>(Lcom/waze/reports/UpdatePriceActivity;)V

    .line 295
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    invoke-virtual {p0, v7}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 310
    new-instance v2, Lcom/waze/reports/UpdatePriceActivity$7;

    invoke-direct {v2, p0}, Lcom/waze/reports/UpdatePriceActivity$7;-><init>(Lcom/waze/reports/UpdatePriceActivity;)V

    .line 309
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    .line 320
    .local v0, nativeManager:Lcom/waze/NativeManager;
    invoke-virtual {p0, v7}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 321
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_NO:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 320
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 322
    invoke-virtual {p0, v6}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 323
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_YES:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 324
    const v1, 0x7f090793

    invoke-virtual {p0, v1}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 326
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_REMOVE_THIS_GAS_TYPEQ:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 325
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    invoke-virtual {p0, v4}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 329
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_NOT_OFFERED:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 328
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 330
    invoke-virtual {p0, v5}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 331
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_NEXT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 330
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 334
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 340
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onResume()V

    .line 343
    const v0, 0x7f090775

    invoke-virtual {p0, v0}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 344
    return-void
.end method

.method public updateActivityDone(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "title"
    .parameter "text"

    .prologue
    const/4 v5, 0x0

    const v4, 0x7f090798

    .line 654
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    .line 655
    .local v0, nativeManager:Lcom/waze/NativeManager;
    const v2, 0x7f090799

    invoke-virtual {p0, v2}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 656
    const v2, 0x7f090797

    invoke-virtual {p0, v2}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 657
    invoke-virtual {v0, p1}, Lcom/waze/NativeManager;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 658
    invoke-virtual {p0, v4}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 659
    invoke-virtual {v0, p2}, Lcom/waze/NativeManager;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 660
    invoke-virtual {p0, v4}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 661
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 662
    const v2, 0x7f090058

    invoke-virtual {p0, v2}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/title/TitleBar;

    .line 663
    .local v1, titleBar:Lcom/waze/view/title/TitleBar;
    const v2, 0x7f0200b2

    invoke-virtual {v1, v2}, Lcom/waze/view/title/TitleBar;->setCloseImageResource(I)V

    .line 664
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/waze/view/title/TitleBar;->setCloseEnabled(Z)V

    .line 665
    invoke-virtual {v1, v5}, Lcom/waze/view/title/TitleBar;->setCloseText(Ljava/lang/String;)V

    .line 666
    invoke-virtual {v1, v5}, Lcom/waze/view/title/TitleBar;->setOnClickCloseListener(Landroid/view/View$OnClickListener;)V

    .line 667
    return-void
.end method
