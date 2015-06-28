.class Lcom/waze/reports/UpdatePriceActivity$11;
.super Ljava/lang/Object;
.source "UpdatePriceActivity.java"

# interfaces
.implements Lcom/waze/navigate/DriveToNativeManager$PriceFormatListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/UpdatePriceActivity;->getPriceFormatString(Lcom/waze/navigate/DriveToNativeManager;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 3
    .parameter "priceFormat"

    .prologue
    .line 591
    #calls: Lcom/waze/reports/UpdatePriceActivity;->getNumberOfDigits(Ljava/lang/String;)I
    invoke-static {p1}, Lcom/waze/reports/UpdatePriceActivity;->access$13(Ljava/lang/String;)I

    move-result v0

    .line 592
    .local v0, nDigitsAfterDotInPrice:I
    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 593
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "%2."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/waze/reports/UpdatePriceActivity;->access$14(Ljava/lang/String;)V

    .line 597
    :goto_0
    return-void

    .line 595
    :cond_0
    const-string v1, "%2.2f"

    invoke-static {v1}, Lcom/waze/reports/UpdatePriceActivity;->access$14(Ljava/lang/String;)V

    goto :goto_0
.end method
