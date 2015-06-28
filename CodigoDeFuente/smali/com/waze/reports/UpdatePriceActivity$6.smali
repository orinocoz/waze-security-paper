.class Lcom/waze/reports/UpdatePriceActivity$6;
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
    iput-object p1, p0, Lcom/waze/reports/UpdatePriceActivity$6;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 299
    iget-object v0, p0, Lcom/waze/reports/UpdatePriceActivity$6;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    const v1, 0x7f09078f

    invoke-virtual {v0, v1}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 300
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/waze/reports/UpdatePriceActivity$6;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    const v1, 0x7f090792

    invoke-virtual {v0, v1}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 302
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/waze/reports/UpdatePriceActivity$6;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    #getter for: Lcom/waze/reports/UpdatePriceActivity;->currentEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/waze/reports/UpdatePriceActivity;->access$3(Lcom/waze/reports/UpdatePriceActivity;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/waze/reports/UpdatePriceActivity$6;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    #getter for: Lcom/waze/reports/UpdatePriceActivity;->currentEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/waze/reports/UpdatePriceActivity;->access$3(Lcom/waze/reports/UpdatePriceActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "N/A"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/waze/reports/UpdatePriceActivity$6;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    invoke-virtual {v0}, Lcom/waze/reports/UpdatePriceActivity;->findNextField()Z

    .line 307
    return-void
.end method
