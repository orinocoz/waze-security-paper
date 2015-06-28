.class Lcom/waze/reports/UpdatePriceActivity$1;
.super Ljava/lang/Object;
.source "UpdatePriceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/reports/UpdatePriceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/UpdatePriceActivity;


# direct methods
.method constructor <init>(Lcom/waze/reports/UpdatePriceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/UpdatePriceActivity$1;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setData([F[III)V
    .locals 6
    .parameter "updatedPrices"
    .parameter "updated"
    .parameter "i"
    .parameter "resource"

    .prologue
    const/4 v5, 0x0

    .line 89
    iget-object v3, p0, Lcom/waze/reports/UpdatePriceActivity$1;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    invoke-virtual {v3, p4}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 91
    .local v2, view:Landroid/widget/EditText;
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, edited:Ljava/lang/String;
    const-string v3, "N/A"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 93
    const/high16 v3, -0x4080

    aput v3, p1, p3

    .line 94
    const/4 v3, 0x2

    aput v3, p2, p3

    .line 109
    :goto_0
    return-void

    .line 97
    :cond_0
    const/16 v3, 0x2c

    const/16 v4, 0x2e

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 99
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aput v3, p1, p3

    .line 100
    aget v3, p1, p3

    iget-object v4, p0, Lcom/waze/reports/UpdatePriceActivity$1;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    #getter for: Lcom/waze/reports/UpdatePriceActivity;->product:Lcom/waze/navigate/Product;
    invoke-static {v4}, Lcom/waze/reports/UpdatePriceActivity;->access$0(Lcom/waze/reports/UpdatePriceActivity;)Lcom/waze/navigate/Product;

    move-result-object v4

    iget-object v4, v4, Lcom/waze/navigate/Product;->prices:[F

    aget v4, v4, p3

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_1

    .line 101
    const/4 v3, 0x0

    aput v3, p2, p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    aput v3, p1, p3

    .line 107
    aput v5, p2, p3

    goto :goto_0

    .line 103
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v3, 0x1

    :try_start_1
    aput v3, p2, p3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    const/4 v10, 0x2

    const/4 v6, 0x1

    const v9, 0x7f090782

    const v8, 0x7f09077d

    const/4 v7, 0x0

    .line 46
    iget-object v4, p0, Lcom/waze/reports/UpdatePriceActivity$1;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    #getter for: Lcom/waze/reports/UpdatePriceActivity;->product:Lcom/waze/navigate/Product;
    invoke-static {v4}, Lcom/waze/reports/UpdatePriceActivity;->access$0(Lcom/waze/reports/UpdatePriceActivity;)Lcom/waze/navigate/Product;

    move-result-object v4

    iget-object v4, v4, Lcom/waze/navigate/Product;->labels:[Ljava/lang/String;

    array-length v4, v4

    new-array v3, v4, [F

    .line 47
    .local v3, updatedPrices:[F
    iget-object v4, p0, Lcom/waze/reports/UpdatePriceActivity$1;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    #getter for: Lcom/waze/reports/UpdatePriceActivity;->product:Lcom/waze/navigate/Product;
    invoke-static {v4}, Lcom/waze/reports/UpdatePriceActivity;->access$0(Lcom/waze/reports/UpdatePriceActivity;)Lcom/waze/navigate/Product;

    move-result-object v4

    iget-object v4, v4, Lcom/waze/navigate/Product;->labels:[Ljava/lang/String;

    array-length v4, v4

    new-array v2, v4, [I

    .line 48
    .local v2, updated:[I
    iget-object v4, p0, Lcom/waze/reports/UpdatePriceActivity$1;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    #getter for: Lcom/waze/reports/UpdatePriceActivity;->product:Lcom/waze/navigate/Product;
    invoke-static {v4}, Lcom/waze/reports/UpdatePriceActivity;->access$0(Lcom/waze/reports/UpdatePriceActivity;)Lcom/waze/navigate/Product;

    move-result-object v4

    iget-object v4, v4, Lcom/waze/navigate/Product;->labels:[Ljava/lang/String;

    array-length v4, v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    .line 49
    invoke-direct {p0, v3, v2, v7, v8}, Lcom/waze/reports/UpdatePriceActivity$1;->setData([F[III)V

    .line 50
    invoke-direct {p0, v3, v2, v6, v9}, Lcom/waze/reports/UpdatePriceActivity$1;->setData([F[III)V

    .line 51
    const v4, 0x7f090787

    invoke-direct {p0, v3, v2, v10, v4}, Lcom/waze/reports/UpdatePriceActivity$1;->setData([F[III)V

    .line 52
    const/4 v4, 0x3

    const v5, 0x7f09078c

    invoke-direct {p0, v3, v2, v4, v5}, Lcom/waze/reports/UpdatePriceActivity$1;->setData([F[III)V

    .line 63
    :goto_0
    const-string v4, "GAS_UPDATE"

    invoke-static {v4}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;)V

    .line 65
    iget-object v4, p0, Lcom/waze/reports/UpdatePriceActivity$1;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    #getter for: Lcom/waze/reports/UpdatePriceActivity;->driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;
    invoke-static {v4}, Lcom/waze/reports/UpdatePriceActivity;->access$1(Lcom/waze/reports/UpdatePriceActivity;)Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v4

    iget-object v5, p0, Lcom/waze/reports/UpdatePriceActivity$1;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    #getter for: Lcom/waze/reports/UpdatePriceActivity;->mIndex:I
    invoke-static {v5}, Lcom/waze/reports/UpdatePriceActivity;->access$2(Lcom/waze/reports/UpdatePriceActivity;)I

    move-result v5

    .line 66
    iget-object v6, p0, Lcom/waze/reports/UpdatePriceActivity$1;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    iget v6, v6, Lcom/waze/reports/UpdatePriceActivity;->nProducts:I

    .line 65
    invoke-virtual {v4, v5, v3, v2, v6}, Lcom/waze/navigate/DriveToNativeManager;->setProductPrices(I[F[II)V

    .line 67
    iget-object v4, p0, Lcom/waze/reports/UpdatePriceActivity$1;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    const v5, 0x7f090796

    invoke-virtual {v4, v5}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 68
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v1

    .line 69
    .local v1, nativeManager:Lcom/waze/NativeManager;
    iget-object v4, p0, Lcom/waze/reports/UpdatePriceActivity$1;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    const v5, 0x7f090797

    invoke-virtual {v4, v5}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 71
    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_SENDING_UPDATEPPP:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    .line 70
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v4, p0, Lcom/waze/reports/UpdatePriceActivity$1;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    const v5, 0x7f09079a

    invoke-virtual {v4, v5}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 73
    iget-object v4, p0, Lcom/waze/reports/UpdatePriceActivity$1;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    const v5, 0x7f090799

    invoke-virtual {v4, v5}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 75
    iget-object v4, p0, Lcom/waze/reports/UpdatePriceActivity$1;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    invoke-virtual {v4, v8}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 76
    iget-object v4, p0, Lcom/waze/reports/UpdatePriceActivity$1;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    invoke-virtual {v4, v9}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 77
    iget-object v4, p0, Lcom/waze/reports/UpdatePriceActivity$1;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    const v5, 0x7f090787

    invoke-virtual {v4, v5}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 78
    iget-object v4, p0, Lcom/waze/reports/UpdatePriceActivity$1;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    const v5, 0x7f09078c

    invoke-virtual {v4, v5}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 80
    iget-object v4, p0, Lcom/waze/reports/UpdatePriceActivity$1;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    const v5, 0x7f090775

    invoke-virtual {v4, v5}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 81
    iget-object v4, p0, Lcom/waze/reports/UpdatePriceActivity$1;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    #getter for: Lcom/waze/reports/UpdatePriceActivity;->currentEditText:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/waze/reports/UpdatePriceActivity;->access$3(Lcom/waze/reports/UpdatePriceActivity;)Landroid/widget/EditText;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 82
    iget-object v4, p0, Lcom/waze/reports/UpdatePriceActivity$1;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Lcom/waze/reports/UpdatePriceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 83
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v4, p0, Lcom/waze/reports/UpdatePriceActivity$1;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    #getter for: Lcom/waze/reports/UpdatePriceActivity;->currentEditText:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/waze/reports/UpdatePriceActivity;->access$3(Lcom/waze/reports/UpdatePriceActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v0, v4, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 85
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void

    .line 53
    .end local v1           #nativeManager:Lcom/waze/NativeManager;
    :cond_1
    iget-object v4, p0, Lcom/waze/reports/UpdatePriceActivity$1;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    #getter for: Lcom/waze/reports/UpdatePriceActivity;->product:Lcom/waze/navigate/Product;
    invoke-static {v4}, Lcom/waze/reports/UpdatePriceActivity;->access$0(Lcom/waze/reports/UpdatePriceActivity;)Lcom/waze/navigate/Product;

    move-result-object v4

    iget-object v4, v4, Lcom/waze/navigate/Product;->labels:[Ljava/lang/String;

    array-length v4, v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 54
    invoke-direct {p0, v3, v2, v7, v8}, Lcom/waze/reports/UpdatePriceActivity$1;->setData([F[III)V

    .line 55
    invoke-direct {p0, v3, v2, v6, v9}, Lcom/waze/reports/UpdatePriceActivity$1;->setData([F[III)V

    .line 56
    const v4, 0x7f090787

    invoke-direct {p0, v3, v2, v10, v4}, Lcom/waze/reports/UpdatePriceActivity$1;->setData([F[III)V

    goto/16 :goto_0

    .line 57
    :cond_2
    iget-object v4, p0, Lcom/waze/reports/UpdatePriceActivity$1;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    #getter for: Lcom/waze/reports/UpdatePriceActivity;->product:Lcom/waze/navigate/Product;
    invoke-static {v4}, Lcom/waze/reports/UpdatePriceActivity;->access$0(Lcom/waze/reports/UpdatePriceActivity;)Lcom/waze/navigate/Product;

    move-result-object v4

    iget-object v4, v4, Lcom/waze/navigate/Product;->labels:[Ljava/lang/String;

    array-length v4, v4

    if-ne v4, v10, :cond_3

    .line 58
    invoke-direct {p0, v3, v2, v7, v8}, Lcom/waze/reports/UpdatePriceActivity$1;->setData([F[III)V

    .line 59
    invoke-direct {p0, v3, v2, v6, v9}, Lcom/waze/reports/UpdatePriceActivity$1;->setData([F[III)V

    goto/16 :goto_0

    .line 61
    :cond_3
    invoke-direct {p0, v3, v2, v7, v8}, Lcom/waze/reports/UpdatePriceActivity$1;->setData([F[III)V

    goto/16 :goto_0
.end method
