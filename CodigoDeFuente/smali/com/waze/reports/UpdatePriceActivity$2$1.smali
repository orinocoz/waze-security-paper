.class Lcom/waze/reports/UpdatePriceActivity$2$1;
.super Ljava/lang/Object;
.source "UpdatePriceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/UpdatePriceActivity$2;->onComplete(Lcom/waze/navigate/Product;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/reports/UpdatePriceActivity$2;


# direct methods
.method constructor <init>(Lcom/waze/reports/UpdatePriceActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/UpdatePriceActivity$2$1;->this$1:Lcom/waze/reports/UpdatePriceActivity$2;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/waze/reports/UpdatePriceActivity$2$1;->this$1:Lcom/waze/reports/UpdatePriceActivity$2;

    #getter for: Lcom/waze/reports/UpdatePriceActivity$2;->this$0:Lcom/waze/reports/UpdatePriceActivity;
    invoke-static {v0}, Lcom/waze/reports/UpdatePriceActivity$2;->access$0(Lcom/waze/reports/UpdatePriceActivity$2;)Lcom/waze/reports/UpdatePriceActivity;

    move-result-object v0

    const v1, 0x7f090058

    invoke-virtual {v0, v1}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/title/TitleBar;

    .line 170
    invoke-virtual {v0}, Lcom/waze/view/title/TitleBar;->onCloseClicked()V

    .line 171
    return-void
.end method
