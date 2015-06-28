.class Lcom/waze/reports/UpdatePriceActivity$8$1;
.super Ljava/lang/Object;
.source "UpdatePriceActivity.java"

# interfaces
.implements Lcom/waze/view/text/TypingLockListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/UpdatePriceActivity$8;->onFocusChange(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/reports/UpdatePriceActivity$8;


# direct methods
.method constructor <init>(Lcom/waze/reports/UpdatePriceActivity$8;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/UpdatePriceActivity$8$1;->this$1:Lcom/waze/reports/UpdatePriceActivity$8;

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldLock()V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/waze/reports/UpdatePriceActivity$8$1;->this$1:Lcom/waze/reports/UpdatePriceActivity$8;

    #getter for: Lcom/waze/reports/UpdatePriceActivity$8;->this$0:Lcom/waze/reports/UpdatePriceActivity;
    invoke-static {v0}, Lcom/waze/reports/UpdatePriceActivity$8;->access$0(Lcom/waze/reports/UpdatePriceActivity$8;)Lcom/waze/reports/UpdatePriceActivity;

    move-result-object v0

    const v1, 0x7f090775

    invoke-virtual {v0, v1}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 361
    return-void
.end method
