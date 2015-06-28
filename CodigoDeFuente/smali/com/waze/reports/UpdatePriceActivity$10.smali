.class Lcom/waze/reports/UpdatePriceActivity$10;
.super Ljava/lang/Object;
.source "UpdatePriceActivity.java"

# interfaces
.implements Landroid/text/InputFilter;


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


# direct methods
.method constructor <init>(Lcom/waze/reports/UpdatePriceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/UpdatePriceActivity$10;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    .line 514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 3
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    const/4 v0, 0x0

    .line 517
    iget-object v1, p0, Lcom/waze/reports/UpdatePriceActivity$10;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    iget-boolean v1, v1, Lcom/waze/reports/UpdatePriceActivity;->overrideFilter:Z

    if-eqz v1, :cond_1

    .line 518
    iget-object v1, p0, Lcom/waze/reports/UpdatePriceActivity$10;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/waze/reports/UpdatePriceActivity;->overrideFilter:Z

    .line 524
    :cond_0
    :goto_0
    return-object v0

    .line 521
    :cond_1
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 522
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method
