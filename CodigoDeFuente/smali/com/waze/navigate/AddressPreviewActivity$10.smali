.class Lcom/waze/navigate/AddressPreviewActivity$10;
.super Ljava/lang/Object;
.source "AddressPreviewActivity.java"

# interfaces
.implements Lcom/waze/navigate/DriveToNativeManager$ProductListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/AddressPreviewActivity;->fillGasPrices()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/AddressPreviewActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/AddressPreviewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/AddressPreviewActivity$10;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    .line 579
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/waze/navigate/Product;)V
    .locals 17
    .parameter "product"

    .prologue
    .line 583
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/waze/navigate/Product;->labels:[Ljava/lang/String;

    if-eqz v13, :cond_0

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/waze/navigate/Product;->prices:[F

    if-eqz v13, :cond_0

    .line 584
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/waze/navigate/Product;->formats:[Ljava/lang/String;

    if-nez v13, :cond_1

    .line 585
    :cond_0
    const-string v13, "AddressPreviewActivity.fillGasPrices().onComplete() product is null or has null members"

    invoke-static {v13}, Lcom/waze/Logger;->e(Ljava/lang/String;)V

    .line 651
    :goto_0
    return-void

    .line 589
    :cond_1
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/waze/navigate/Product;->labels:[Ljava/lang/String;

    array-length v10, v13

    .line 591
    .local v10, nProducts:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/waze/navigate/AddressPreviewActivity$10;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    const v14, 0x7f09012e

    invoke-virtual {v13, v14}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 592
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/waze/navigate/AddressPreviewActivity$10;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    const v14, 0x7f09012f

    invoke-virtual {v13, v14}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 593
    .local v5, gasTitle:Landroid/widget/TextView;
    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 595
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/waze/navigate/AddressPreviewActivity$10;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;
    invoke-static {v13}, Lcom/waze/navigate/AddressPreviewActivity;->access$20(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/NativeManager;

    move-result-object v13

    sget-object v14, Lcom/waze/strings/DisplayStrings;->DS_GAS_PRICES:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v13, v14}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    .line 597
    .local v4, gasPriceString:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/waze/navigate/Product;->currency:Ljava/lang/String;

    if-eqz v13, :cond_2

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/waze/navigate/Product;->currency:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_2

    .line 599
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, " ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/waze/navigate/AddressPreviewActivity$10;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;
    invoke-static {v14}, Lcom/waze/navigate/AddressPreviewActivity;->access$20(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/NativeManager;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/waze/navigate/Product;->currency:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lcom/waze/NativeManager;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 602
    :cond_2
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 604
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/waze/navigate/AddressPreviewActivity$10;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    const v14, 0x7f090130

    invoke-virtual {v13, v14}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 605
    .local v11, ref:Landroid/view/View;
    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Landroid/view/View;->setVisibility(I)V

    .line 608
    const/4 v13, 0x4

    new-array v9, v13, [I

    fill-array-data v9, :array_0

    .line 611
    .local v9, layouts:[I
    const/4 v13, 0x4

    new-array v3, v13, [I

    fill-array-data v3, :array_1

    .line 614
    .local v3, edits:[I
    const/4 v13, 0x4

    new-array v7, v13, [I

    fill-array-data v7, :array_2

    .line 617
    .local v7, lables:[I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    const/4 v13, 0x4

    if-lt v6, v13, :cond_3

    .line 627
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/waze/navigate/AddressPreviewActivity$10;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    const v14, 0x7f090131

    invoke-virtual {v13, v14}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 629
    .local v12, updatedBy:Landroid/widget/TextView;
    move-object/from16 v0, p1

    iget v13, v0, Lcom/waze/navigate/Product;->lastUpdated:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_7

    .line 630
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    div-long/2addr v13, v15

    move-object/from16 v0, p1

    iget v15, v0, Lcom/waze/navigate/Product;->lastUpdated:I

    int-to-long v15, v15

    sub-long/2addr v13, v15

    const-wide/16 v15, 0xe10

    div-long/2addr v13, v15

    const-wide/16 v15, 0x18

    div-long v1, v13, v15

    .line 632
    .local v1, daysAgo:J
    const-wide/16 v13, 0x0

    cmp-long v13, v1, v13

    if-lez v13, :cond_5

    .line 634
    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/waze/navigate/AddressPreviewActivity$10;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;
    invoke-static {v14}, Lcom/waze/navigate/AddressPreviewActivity;->access$20(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/NativeManager;

    move-result-object v14

    sget-object v15, Lcom/waze/strings/DisplayStrings;->DS_LAST_UPDATE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v14, v15}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 635
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/waze/navigate/AddressPreviewActivity$10;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;
    invoke-static {v14}, Lcom/waze/navigate/AddressPreviewActivity;->access$20(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/NativeManager;

    move-result-object v14

    sget-object v15, Lcom/waze/strings/DisplayStrings;->DS_DAYS_AGO_BY:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v14, v15}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 636
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/waze/navigate/Product;->updatedBy:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 634
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 646
    .local v8, lastUpdate:Ljava/lang/String;
    :goto_2
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 647
    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 618
    .end local v1           #daysAgo:J
    .end local v8           #lastUpdate:Ljava/lang/String;
    .end local v12           #updatedBy:Landroid/widget/TextView;
    :cond_3
    if-le v10, v6, :cond_4

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/waze/navigate/Product;->prices:[F

    aget v13, v13, v6

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_4

    .line 619
    aget v13, v3, v6

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 620
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/waze/navigate/Product;->formats:[Ljava/lang/String;

    aget-object v14, v14, v6

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/waze/navigate/Product;->prices:[F

    aget v15, v15, v6

    invoke-static {v14, v15}, Lcom/waze/reports/UpdatePriceActivity;->padWithZeroRightToPeriod(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v14

    .line 619
    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 621
    aget v13, v7, v6

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/waze/navigate/Product;->labels:[Ljava/lang/String;

    aget-object v14, v14, v6

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 617
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 623
    :cond_4
    aget v13, v9, v6

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 638
    .restart local v1       #daysAgo:J
    .restart local v12       #updatedBy:Landroid/widget/TextView;
    :cond_5
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/waze/navigate/Product;->updatedBy:Ljava/lang/String;

    if-eqz v13, :cond_6

    .line 640
    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/waze/navigate/AddressPreviewActivity$10;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;
    invoke-static {v14}, Lcom/waze/navigate/AddressPreviewActivity;->access$20(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/NativeManager;

    move-result-object v14

    sget-object v15, Lcom/waze/strings/DisplayStrings;->DS_LAST_UPDATE_TODAY_BY:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v14, v15}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 641
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/waze/navigate/Product;->updatedBy:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 640
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 642
    .restart local v8       #lastUpdate:Ljava/lang/String;
    goto/16 :goto_2

    .line 643
    .end local v8           #lastUpdate:Ljava/lang/String;
    :cond_6
    const-string v8, ""

    .restart local v8       #lastUpdate:Ljava/lang/String;
    goto/16 :goto_2

    .line 649
    .end local v1           #daysAgo:J
    .end local v8           #lastUpdate:Ljava/lang/String;
    :cond_7
    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 608
    :array_0
    .array-data 0x4
        0x52t 0x1t 0x9t 0x7ft
        0x55t 0x1t 0x9t 0x7ft
        0x58t 0x1t 0x9t 0x7ft
        0x5bt 0x1t 0x9t 0x7ft
    .end array-data

    .line 611
    :array_1
    .array-data 0x4
        0x53t 0x1t 0x9t 0x7ft
        0x56t 0x1t 0x9t 0x7ft
        0x59t 0x1t 0x9t 0x7ft
        0x5ct 0x1t 0x9t 0x7ft
    .end array-data

    .line 614
    :array_2
    .array-data 0x4
        0x54t 0x1t 0x9t 0x7ft
        0x57t 0x1t 0x9t 0x7ft
        0x5at 0x1t 0x9t 0x7ft
        0x5dt 0x1t 0x9t 0x7ft
    .end array-data
.end method
