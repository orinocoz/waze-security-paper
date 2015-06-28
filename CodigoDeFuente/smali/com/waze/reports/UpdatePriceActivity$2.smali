.class Lcom/waze/reports/UpdatePriceActivity$2;
.super Ljava/lang/Object;
.source "UpdatePriceActivity.java"

# interfaces
.implements Lcom/waze/navigate/DriveToNativeManager$ProductListener;


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
    iput-object p1, p0, Lcom/waze/reports/UpdatePriceActivity$2;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/reports/UpdatePriceActivity$2;)Lcom/waze/reports/UpdatePriceActivity;
    .locals 1
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/waze/reports/UpdatePriceActivity$2;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    return-object v0
.end method

.method private setEditTextMaxLength(Lcom/waze/navigate/Product;)V
    .locals 7
    .parameter "product"

    .prologue
    .line 251
    const/4 v2, 0x4

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    .line 253
    .local v1, priceEdits:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/waze/reports/UpdatePriceActivity$2;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    iget v2, v2, Lcom/waze/reports/UpdatePriceActivity;->nProducts:I

    if-lt v0, v2, :cond_0

    .line 258
    return-void

    .line 254
    :cond_0
    iget-object v2, p0, Lcom/waze/reports/UpdatePriceActivity$2;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    aget v3, v1, v0

    invoke-virtual {v2, v3}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 255
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/text/InputFilter;

    const/4 v4, 0x0

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    iget-object v6, p1, Lcom/waze/navigate/Product;->formats:[Ljava/lang/String;

    aget-object v6, v6, v0

    .line 256
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v3, v4

    .line 255
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 253
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 251
    nop

    :array_0
    .array-data 0x4
        0x7dt 0x7t 0x9t 0x7ft
        0x82t 0x7t 0x9t 0x7ft
        0x87t 0x7t 0x9t 0x7ft
        0x8ct 0x7t 0x9t 0x7ft
    .end array-data
.end method


# virtual methods
.method public onComplete(Lcom/waze/navigate/Product;)V
    .locals 12
    .parameter "product"

    .prologue
    .line 129
    iget-object v8, p0, Lcom/waze/reports/UpdatePriceActivity$2;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    iget-object v9, p1, Lcom/waze/navigate/Product;->labels:[Ljava/lang/String;

    array-length v9, v9

    iput v9, v8, Lcom/waze/reports/UpdatePriceActivity;->nProducts:I

    .line 130
    iget-object v8, p0, Lcom/waze/reports/UpdatePriceActivity$2;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    #setter for: Lcom/waze/reports/UpdatePriceActivity;->product:Lcom/waze/navigate/Product;
    invoke-static {v8, p1}, Lcom/waze/reports/UpdatePriceActivity;->access$4(Lcom/waze/reports/UpdatePriceActivity;Lcom/waze/navigate/Product;)V

    .line 131
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v7

    .line 132
    .local v7, nativeManager:Lcom/waze/NativeManager;
    iget-object v8, p0, Lcom/waze/reports/UpdatePriceActivity$2;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    const v9, 0x7f090778

    invoke-virtual {v8, v9}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 133
    iget-object v9, p1, Lcom/waze/navigate/Product;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v8, p0, Lcom/waze/reports/UpdatePriceActivity$2;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    const v9, 0x7f090777

    invoke-virtual {v8, v9}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 136
    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p1, Lcom/waze/navigate/Product;->icon:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ".bin"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/waze/ResManager;->GetSkinDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 135
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 137
    const/4 v3, 0x0

    .line 138
    .local v3, foundAtLeastOne:Z
    iget-object v8, p0, Lcom/waze/reports/UpdatePriceActivity$2;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    iget v8, v8, Lcom/waze/reports/UpdatePriceActivity;->nProducts:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_2

    .line 139
    iget-object v8, p0, Lcom/waze/reports/UpdatePriceActivity$2;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    const/4 v9, 0x0

    .line 140
    const v10, 0x7f09077d

    #calls: Lcom/waze/reports/UpdatePriceActivity;->displayEdit(Lcom/waze/navigate/Product;II)Z
    invoke-static {v8, p1, v9, v10}, Lcom/waze/reports/UpdatePriceActivity;->access$5(Lcom/waze/reports/UpdatePriceActivity;Lcom/waze/navigate/Product;II)Z

    move-result v8

    or-int/2addr v3, v8

    .line 141
    iget-object v8, p0, Lcom/waze/reports/UpdatePriceActivity$2;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    const/4 v9, 0x1

    .line 142
    const v10, 0x7f090782

    #calls: Lcom/waze/reports/UpdatePriceActivity;->displayEdit(Lcom/waze/navigate/Product;II)Z
    invoke-static {v8, p1, v9, v10}, Lcom/waze/reports/UpdatePriceActivity;->access$5(Lcom/waze/reports/UpdatePriceActivity;Lcom/waze/navigate/Product;II)Z

    move-result v8

    or-int/2addr v3, v8

    .line 143
    iget-object v8, p0, Lcom/waze/reports/UpdatePriceActivity$2;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    const/4 v9, 0x2

    .line 144
    const v10, 0x7f090787

    #calls: Lcom/waze/reports/UpdatePriceActivity;->displayEdit(Lcom/waze/navigate/Product;II)Z
    invoke-static {v8, p1, v9, v10}, Lcom/waze/reports/UpdatePriceActivity;->access$5(Lcom/waze/reports/UpdatePriceActivity;Lcom/waze/navigate/Product;II)Z

    move-result v8

    or-int/2addr v3, v8

    .line 145
    iget-object v8, p0, Lcom/waze/reports/UpdatePriceActivity$2;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    const/4 v9, 0x3

    .line 146
    const v10, 0x7f09078c

    #calls: Lcom/waze/reports/UpdatePriceActivity;->displayEdit(Lcom/waze/navigate/Product;II)Z
    invoke-static {v8, p1, v9, v10}, Lcom/waze/reports/UpdatePriceActivity;->access$5(Lcom/waze/reports/UpdatePriceActivity;Lcom/waze/navigate/Product;II)Z

    move-result v8

    or-int/2addr v3, v8

    .line 165
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/waze/reports/UpdatePriceActivity$2;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    const v9, 0x7f09079d

    invoke-virtual {v8, v9}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 166
    new-instance v9, Lcom/waze/reports/UpdatePriceActivity$2$1;

    invoke-direct {v9, p0}, Lcom/waze/reports/UpdatePriceActivity$2$1;-><init>(Lcom/waze/reports/UpdatePriceActivity$2;)V

    .line 165
    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    const/4 v8, 0x4

    new-array v2, v8, [I

    fill-array-data v2, :array_0

    .line 175
    .local v2, fields:[I
    const/4 v8, 0x4

    new-array v5, v8, [I

    fill-array-data v5, :array_1

    .line 178
    .local v5, labels:[I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    iget-object v8, p0, Lcom/waze/reports/UpdatePriceActivity$2;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    iget v8, v8, Lcom/waze/reports/UpdatePriceActivity;->nProducts:I

    if-lt v4, v8, :cond_5

    .line 183
    iget-object v8, p0, Lcom/waze/reports/UpdatePriceActivity$2;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    const v9, 0x7f09077c

    invoke-virtual {v8, v9}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 184
    iget-object v9, p1, Lcom/waze/navigate/Product;->currency:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v8, p0, Lcom/waze/reports/UpdatePriceActivity$2;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    const v9, 0x7f090781

    invoke-virtual {v8, v9}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 186
    iget-object v9, p1, Lcom/waze/navigate/Product;->currency:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v8, p0, Lcom/waze/reports/UpdatePriceActivity$2;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    const v9, 0x7f090786

    invoke-virtual {v8, v9}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 188
    iget-object v9, p1, Lcom/waze/navigate/Product;->currency:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v8, p0, Lcom/waze/reports/UpdatePriceActivity$2;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    const v9, 0x7f09078b

    invoke-virtual {v8, v9}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 190
    iget-object v9, p1, Lcom/waze/navigate/Product;->currency:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v8, p0, Lcom/waze/reports/UpdatePriceActivity$2;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    const v9, 0x7f09079e

    invoke-virtual {v8, v9}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 193
    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_CLOSE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v7, v9}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v9

    .line 192
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v8, p0, Lcom/waze/reports/UpdatePriceActivity$2;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    const v9, 0x7f09079c

    invoke-virtual {v8, v9}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 196
    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_YES:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v7, v9}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v9

    .line 195
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v8, p0, Lcom/waze/reports/UpdatePriceActivity$2;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    const v9, 0x7f0907a0

    invoke-virtual {v8, v9}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 199
    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_NO:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v7, v9}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v9

    .line 198
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v8, p0, Lcom/waze/reports/UpdatePriceActivity$2;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    const v9, 0x7f090797

    invoke-virtual {v8, v9}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 201
    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_ARE_THESE_PRICES_CORRECT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v7, v9}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v9

    .line 200
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    if-nez v3, :cond_1

    .line 203
    iget-object v8, p0, Lcom/waze/reports/UpdatePriceActivity$2;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    const v9, 0x7f090797

    invoke-virtual {v8, v9}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 204
    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v8, p0, Lcom/waze/reports/UpdatePriceActivity$2;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    const v9, 0x7f09079b

    invoke-virtual {v8, v9}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 206
    iget-object v8, p0, Lcom/waze/reports/UpdatePriceActivity$2;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    const v9, 0x7f09079f

    invoke-virtual {v8, v9}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 207
    iget-object v8, p0, Lcom/waze/reports/UpdatePriceActivity$2;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    const v9, 0x7f09079d

    invoke-virtual {v8, v9}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 208
    const/4 v9, 0x0

    .line 207
    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 210
    :cond_1
    iget v8, p1, Lcom/waze/navigate/Product;->lastUpdated:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_8

    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    iget v10, p1, Lcom/waze/navigate/Product;->lastUpdated:I

    int-to-long v10, v10

    sub-long/2addr v8, v10

    const-wide/16 v10, 0xe10

    div-long/2addr v8, v10

    const-wide/16 v10, 0x18

    div-long v0, v8, v10

    .line 213
    .local v0, daysAgo:J
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-lez v8, :cond_6

    .line 214
    new-instance v8, Ljava/lang/StringBuilder;

    .line 215
    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_LAST_UPDATE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v7, v9}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 217
    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 218
    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 220
    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_DAYS_AGO_BY:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v7, v9}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v9

    .line 219
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 221
    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/waze/navigate/Product;->updatedBy:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 214
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 231
    .local v6, lastUpdate:Ljava/lang/String;
    :goto_2
    iget-object v8, p0, Lcom/waze/reports/UpdatePriceActivity$2;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    const v9, 0x7f090796

    invoke-virtual {v8, v9}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 232
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    .end local v0           #daysAgo:J
    .end local v6           #lastUpdate:Ljava/lang/String;
    :goto_3
    iget-object v8, p0, Lcom/waze/reports/UpdatePriceActivity$2;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    const v9, 0x7f09077d

    const/4 v10, 0x0

    .line 238
    const v11, 0x7f090782

    .line 237
    #calls: Lcom/waze/reports/UpdatePriceActivity;->setEditTextChangedListener(III)V
    invoke-static {v8, v9, v10, v11}, Lcom/waze/reports/UpdatePriceActivity;->access$6(Lcom/waze/reports/UpdatePriceActivity;III)V

    .line 239
    iget-object v8, p0, Lcom/waze/reports/UpdatePriceActivity$2;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    const v9, 0x7f090782

    const/4 v10, 0x1

    .line 240
    const v11, 0x7f090787

    .line 239
    #calls: Lcom/waze/reports/UpdatePriceActivity;->setEditTextChangedListener(III)V
    invoke-static {v8, v9, v10, v11}, Lcom/waze/reports/UpdatePriceActivity;->access$6(Lcom/waze/reports/UpdatePriceActivity;III)V

    .line 241
    iget-object v8, p0, Lcom/waze/reports/UpdatePriceActivity$2;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    const v9, 0x7f090787

    const/4 v10, 0x2

    .line 242
    const v11, 0x7f09078c

    .line 241
    #calls: Lcom/waze/reports/UpdatePriceActivity;->setEditTextChangedListener(III)V
    invoke-static {v8, v9, v10, v11}, Lcom/waze/reports/UpdatePriceActivity;->access$6(Lcom/waze/reports/UpdatePriceActivity;III)V

    .line 243
    iget-object v8, p0, Lcom/waze/reports/UpdatePriceActivity$2;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    const v9, 0x7f09078c

    const/4 v10, 0x3

    const/4 v11, 0x0

    #calls: Lcom/waze/reports/UpdatePriceActivity;->setEditTextChangedListener(III)V
    invoke-static {v8, v9, v10, v11}, Lcom/waze/reports/UpdatePriceActivity;->access$6(Lcom/waze/reports/UpdatePriceActivity;III)V

    .line 246
    invoke-direct {p0, p1}, Lcom/waze/reports/UpdatePriceActivity$2;->setEditTextMaxLength(Lcom/waze/navigate/Product;)V

    .line 247
    return-void

    .line 148
    .end local v2           #fields:[I
    .end local v4           #i:I
    .end local v5           #labels:[I
    :cond_2
    iget-object v8, p0, Lcom/waze/reports/UpdatePriceActivity$2;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    iget v8, v8, Lcom/waze/reports/UpdatePriceActivity;->nProducts:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 149
    iget-object v8, p0, Lcom/waze/reports/UpdatePriceActivity$2;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    const/4 v9, 0x0

    .line 150
    const v10, 0x7f09077d

    #calls: Lcom/waze/reports/UpdatePriceActivity;->displayEdit(Lcom/waze/navigate/Product;II)Z
    invoke-static {v8, p1, v9, v10}, Lcom/waze/reports/UpdatePriceActivity;->access$5(Lcom/waze/reports/UpdatePriceActivity;Lcom/waze/navigate/Product;II)Z

    move-result v8

    or-int/2addr v3, v8

    .line 151
    goto/16 :goto_0

    :cond_3
    iget-object v8, p0, Lcom/waze/reports/UpdatePriceActivity$2;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    iget v8, v8, Lcom/waze/reports/UpdatePriceActivity;->nProducts:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    .line 152
    iget-object v8, p0, Lcom/waze/reports/UpdatePriceActivity$2;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    const/4 v9, 0x0

    .line 153
    const v10, 0x7f09077d

    #calls: Lcom/waze/reports/UpdatePriceActivity;->displayEdit(Lcom/waze/navigate/Product;II)Z
    invoke-static {v8, p1, v9, v10}, Lcom/waze/reports/UpdatePriceActivity;->access$5(Lcom/waze/reports/UpdatePriceActivity;Lcom/waze/navigate/Product;II)Z

    move-result v8

    or-int/2addr v3, v8

    .line 154
    iget-object v8, p0, Lcom/waze/reports/UpdatePriceActivity$2;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    const/4 v9, 0x1

    .line 155
    const v10, 0x7f090782

    #calls: Lcom/waze/reports/UpdatePriceActivity;->displayEdit(Lcom/waze/navigate/Product;II)Z
    invoke-static {v8, p1, v9, v10}, Lcom/waze/reports/UpdatePriceActivity;->access$5(Lcom/waze/reports/UpdatePriceActivity;Lcom/waze/navigate/Product;II)Z

    move-result v8

    or-int/2addr v3, v8

    .line 156
    goto/16 :goto_0

    :cond_4
    iget-object v8, p0, Lcom/waze/reports/UpdatePriceActivity$2;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    iget v8, v8, Lcom/waze/reports/UpdatePriceActivity;->nProducts:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_0

    .line 157
    iget-object v8, p0, Lcom/waze/reports/UpdatePriceActivity$2;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    const/4 v9, 0x0

    .line 158
    const v10, 0x7f09077d

    #calls: Lcom/waze/reports/UpdatePriceActivity;->displayEdit(Lcom/waze/navigate/Product;II)Z
    invoke-static {v8, p1, v9, v10}, Lcom/waze/reports/UpdatePriceActivity;->access$5(Lcom/waze/reports/UpdatePriceActivity;Lcom/waze/navigate/Product;II)Z

    move-result v8

    or-int/2addr v3, v8

    .line 159
    iget-object v8, p0, Lcom/waze/reports/UpdatePriceActivity$2;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    const/4 v9, 0x1

    .line 160
    const v10, 0x7f090782

    #calls: Lcom/waze/reports/UpdatePriceActivity;->displayEdit(Lcom/waze/navigate/Product;II)Z
    invoke-static {v8, p1, v9, v10}, Lcom/waze/reports/UpdatePriceActivity;->access$5(Lcom/waze/reports/UpdatePriceActivity;Lcom/waze/navigate/Product;II)Z

    move-result v8

    or-int/2addr v3, v8

    .line 161
    iget-object v8, p0, Lcom/waze/reports/UpdatePriceActivity$2;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    const/4 v9, 0x2

    .line 162
    const v10, 0x7f090787

    #calls: Lcom/waze/reports/UpdatePriceActivity;->displayEdit(Lcom/waze/navigate/Product;II)Z
    invoke-static {v8, p1, v9, v10}, Lcom/waze/reports/UpdatePriceActivity;->access$5(Lcom/waze/reports/UpdatePriceActivity;Lcom/waze/navigate/Product;II)Z

    move-result v8

    or-int/2addr v3, v8

    goto/16 :goto_0

    .line 179
    .restart local v2       #fields:[I
    .restart local v4       #i:I
    .restart local v5       #labels:[I
    :cond_5
    iget-object v8, p0, Lcom/waze/reports/UpdatePriceActivity$2;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    aget v9, v2, v4

    invoke-virtual {v8, v9}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 180
    iget-object v8, p0, Lcom/waze/reports/UpdatePriceActivity$2;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    aget v9, v5, v4

    invoke-virtual {v8, v9}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 181
    iget-object v9, p1, Lcom/waze/navigate/Product;->labels:[Ljava/lang/String;

    aget-object v9, v9, v4

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 223
    .restart local v0       #daysAgo:J
    :cond_6
    iget-object v8, p1, Lcom/waze/navigate/Product;->updatedBy:Ljava/lang/String;

    if-eqz v8, :cond_7

    .line 224
    new-instance v8, Ljava/lang/StringBuilder;

    .line 225
    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_LAST_UPDATE_TODAY_BY:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v7, v9}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 226
    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/waze/navigate/Product;->updatedBy:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 224
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 227
    .restart local v6       #lastUpdate:Ljava/lang/String;
    goto/16 :goto_2

    .line 228
    .end local v6           #lastUpdate:Ljava/lang/String;
    :cond_7
    const-string v6, ""

    .restart local v6       #lastUpdate:Ljava/lang/String;
    goto/16 :goto_2

    .line 234
    .end local v0           #daysAgo:J
    .end local v6           #lastUpdate:Ljava/lang/String;
    :cond_8
    iget-object v8, p0, Lcom/waze/reports/UpdatePriceActivity$2;->this$0:Lcom/waze/reports/UpdatePriceActivity;

    const v9, 0x7f090796

    invoke-virtual {v8, v9}, Lcom/waze/reports/UpdatePriceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 235
    const/4 v9, 0x4

    .line 234
    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 173
    :array_0
    .array-data 0x4
        0x7at 0x7t 0x9t 0x7ft
        0x7ft 0x7t 0x9t 0x7ft
        0x84t 0x7t 0x9t 0x7ft
        0x89t 0x7t 0x9t 0x7ft
    .end array-data

    .line 175
    :array_1
    .array-data 0x4
        0x7et 0x7t 0x9t 0x7ft
        0x83t 0x7t 0x9t 0x7ft
        0x88t 0x7t 0x9t 0x7ft
        0x8dt 0x7t 0x9t 0x7ft
    .end array-data
.end method
