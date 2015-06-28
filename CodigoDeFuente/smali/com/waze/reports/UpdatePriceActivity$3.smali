.class Lcom/waze/reports/UpdatePriceActivity$3;
.super Ljava/lang/Object;
.source "UpdatePriceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/UpdatePriceActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/waze/reports/UpdatePriceActivity$3;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 265
    iget-object v2, p0, Lcom/waze/reports/UpdatePriceActivity$3;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    const v3, 0x7f09077d

    invoke-virtual {v2, v3}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 266
    .local v0, editText:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 267
    iget-object v2, p0, Lcom/waze/reports/UpdatePriceActivity$3;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Lcom/waze/reports/UpdatePriceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 269
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    const/4 v2, 0x1

    .line 268
    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 270
    return-void
.end method
