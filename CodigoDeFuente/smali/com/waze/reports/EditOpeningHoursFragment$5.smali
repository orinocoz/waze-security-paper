.class Lcom/waze/reports/EditOpeningHoursFragment$5;
.super Ljava/lang/Object;
.source "EditOpeningHoursFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/EditOpeningHoursFragment;->setUpFragment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/EditOpeningHoursFragment;


# direct methods
.method constructor <init>(Lcom/waze/reports/EditOpeningHoursFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/EditOpeningHoursFragment$5;->this$0:Lcom/waze/reports/EditOpeningHoursFragment;

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 269
    iget-object v1, p0, Lcom/waze/reports/EditOpeningHoursFragment$5;->this$0:Lcom/waze/reports/EditOpeningHoursFragment;

    #getter for: Lcom/waze/reports/EditOpeningHoursFragment;->mDayButtonPressed:[Z
    invoke-static {v1}, Lcom/waze/reports/EditOpeningHoursFragment;->access$1(Lcom/waze/reports/EditOpeningHoursFragment;)[Z

    move-result-object v1

    aget-boolean v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/waze/reports/EditOpeningHoursFragment$5;->this$0:Lcom/waze/reports/EditOpeningHoursFragment;

    #getter for: Lcom/waze/reports/EditOpeningHoursFragment;->mDayButtonPressed:[Z
    invoke-static {v1}, Lcom/waze/reports/EditOpeningHoursFragment;->access$1(Lcom/waze/reports/EditOpeningHoursFragment;)[Z

    move-result-object v1

    aget-boolean v1, v1, v2

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/waze/reports/EditOpeningHoursFragment$5;->this$0:Lcom/waze/reports/EditOpeningHoursFragment;

    #getter for: Lcom/waze/reports/EditOpeningHoursFragment;->mDayButtonPressed:[Z
    invoke-static {v1}, Lcom/waze/reports/EditOpeningHoursFragment;->access$1(Lcom/waze/reports/EditOpeningHoursFragment;)[Z

    move-result-object v1

    aget-boolean v1, v1, v5

    if-nez v1, :cond_0

    .line 270
    iget-object v1, p0, Lcom/waze/reports/EditOpeningHoursFragment$5;->this$0:Lcom/waze/reports/EditOpeningHoursFragment;

    #getter for: Lcom/waze/reports/EditOpeningHoursFragment;->mDayButtonPressed:[Z
    invoke-static {v1}, Lcom/waze/reports/EditOpeningHoursFragment;->access$1(Lcom/waze/reports/EditOpeningHoursFragment;)[Z

    move-result-object v1

    aget-boolean v1, v1, v6

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/waze/reports/EditOpeningHoursFragment$5;->this$0:Lcom/waze/reports/EditOpeningHoursFragment;

    #getter for: Lcom/waze/reports/EditOpeningHoursFragment;->mDayButtonPressed:[Z
    invoke-static {v1}, Lcom/waze/reports/EditOpeningHoursFragment;->access$1(Lcom/waze/reports/EditOpeningHoursFragment;)[Z

    move-result-object v1

    aget-boolean v1, v1, v7

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/waze/reports/EditOpeningHoursFragment$5;->this$0:Lcom/waze/reports/EditOpeningHoursFragment;

    #getter for: Lcom/waze/reports/EditOpeningHoursFragment;->mDayButtonPressed:[Z
    invoke-static {v1}, Lcom/waze/reports/EditOpeningHoursFragment;->access$1(Lcom/waze/reports/EditOpeningHoursFragment;)[Z

    move-result-object v1

    const/4 v4, 0x5

    aget-boolean v1, v1, v4

    if-nez v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/waze/reports/EditOpeningHoursFragment$5;->this$0:Lcom/waze/reports/EditOpeningHoursFragment;

    #getter for: Lcom/waze/reports/EditOpeningHoursFragment;->mDayButtonPressed:[Z
    invoke-static {v1}, Lcom/waze/reports/EditOpeningHoursFragment;->access$1(Lcom/waze/reports/EditOpeningHoursFragment;)[Z

    move-result-object v1

    const/4 v4, 0x6

    aget-boolean v1, v1, v4

    if-nez v1, :cond_0

    .line 298
    :goto_0
    return-void

    .line 275
    :cond_0
    new-instance v0, Lcom/waze/reports/OpeningHours;

    invoke-direct {v0}, Lcom/waze/reports/OpeningHours;-><init>()V

    .line 276
    .local v0, oh:Lcom/waze/reports/OpeningHours;
    sget-boolean v1, Lcom/waze/reports/OpeningHours;->FIRST_DAY_IS_SUNDAY:Z

    if-eqz v1, :cond_8

    .line 277
    iget-object v4, v0, Lcom/waze/reports/OpeningHours;->days:[I

    iget-object v1, p0, Lcom/waze/reports/EditOpeningHoursFragment$5;->this$0:Lcom/waze/reports/EditOpeningHoursFragment;

    #getter for: Lcom/waze/reports/EditOpeningHoursFragment;->mDayButtonPressed:[Z
    invoke-static {v1}, Lcom/waze/reports/EditOpeningHoursFragment;->access$1(Lcom/waze/reports/EditOpeningHoursFragment;)[Z

    move-result-object v1

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    aput v1, v4, v3

    .line 278
    iget-object v4, v0, Lcom/waze/reports/OpeningHours;->days:[I

    iget-object v1, p0, Lcom/waze/reports/EditOpeningHoursFragment$5;->this$0:Lcom/waze/reports/EditOpeningHoursFragment;

    #getter for: Lcom/waze/reports/EditOpeningHoursFragment;->mDayButtonPressed:[Z
    invoke-static {v1}, Lcom/waze/reports/EditOpeningHoursFragment;->access$1(Lcom/waze/reports/EditOpeningHoursFragment;)[Z

    move-result-object v1

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    aput v1, v4, v2

    .line 279
    iget-object v4, v0, Lcom/waze/reports/OpeningHours;->days:[I

    iget-object v1, p0, Lcom/waze/reports/EditOpeningHoursFragment$5;->this$0:Lcom/waze/reports/EditOpeningHoursFragment;

    #getter for: Lcom/waze/reports/EditOpeningHoursFragment;->mDayButtonPressed:[Z
    invoke-static {v1}, Lcom/waze/reports/EditOpeningHoursFragment;->access$1(Lcom/waze/reports/EditOpeningHoursFragment;)[Z

    move-result-object v1

    aget-boolean v1, v1, v5

    if-eqz v1, :cond_3

    move v1, v2

    :goto_3
    aput v1, v4, v5

    .line 280
    iget-object v4, v0, Lcom/waze/reports/OpeningHours;->days:[I

    iget-object v1, p0, Lcom/waze/reports/EditOpeningHoursFragment$5;->this$0:Lcom/waze/reports/EditOpeningHoursFragment;

    #getter for: Lcom/waze/reports/EditOpeningHoursFragment;->mDayButtonPressed:[Z
    invoke-static {v1}, Lcom/waze/reports/EditOpeningHoursFragment;->access$1(Lcom/waze/reports/EditOpeningHoursFragment;)[Z

    move-result-object v1

    aget-boolean v1, v1, v6

    if-eqz v1, :cond_4

    move v1, v2

    :goto_4
    aput v1, v4, v6

    .line 281
    iget-object v4, v0, Lcom/waze/reports/OpeningHours;->days:[I

    iget-object v1, p0, Lcom/waze/reports/EditOpeningHoursFragment$5;->this$0:Lcom/waze/reports/EditOpeningHoursFragment;

    #getter for: Lcom/waze/reports/EditOpeningHoursFragment;->mDayButtonPressed:[Z
    invoke-static {v1}, Lcom/waze/reports/EditOpeningHoursFragment;->access$1(Lcom/waze/reports/EditOpeningHoursFragment;)[Z

    move-result-object v1

    aget-boolean v1, v1, v7

    if-eqz v1, :cond_5

    move v1, v2

    :goto_5
    aput v1, v4, v7

    .line 282
    iget-object v4, v0, Lcom/waze/reports/OpeningHours;->days:[I

    const/4 v5, 0x5

    iget-object v1, p0, Lcom/waze/reports/EditOpeningHoursFragment$5;->this$0:Lcom/waze/reports/EditOpeningHoursFragment;

    #getter for: Lcom/waze/reports/EditOpeningHoursFragment;->mDayButtonPressed:[Z
    invoke-static {v1}, Lcom/waze/reports/EditOpeningHoursFragment;->access$1(Lcom/waze/reports/EditOpeningHoursFragment;)[Z

    move-result-object v1

    const/4 v6, 0x5

    aget-boolean v1, v1, v6

    if-eqz v1, :cond_6

    move v1, v2

    :goto_6
    aput v1, v4, v5

    .line 283
    iget-object v1, v0, Lcom/waze/reports/OpeningHours;->days:[I

    const/4 v4, 0x6

    iget-object v5, p0, Lcom/waze/reports/EditOpeningHoursFragment$5;->this$0:Lcom/waze/reports/EditOpeningHoursFragment;

    #getter for: Lcom/waze/reports/EditOpeningHoursFragment;->mDayButtonPressed:[Z
    invoke-static {v5}, Lcom/waze/reports/EditOpeningHoursFragment;->access$1(Lcom/waze/reports/EditOpeningHoursFragment;)[Z

    move-result-object v5

    const/4 v6, 0x6

    aget-boolean v5, v5, v6

    if-eqz v5, :cond_7

    :goto_7
    aput v2, v1, v4

    .line 294
    :goto_8
    iget-object v1, p0, Lcom/waze/reports/EditOpeningHoursFragment$5;->this$0:Lcom/waze/reports/EditOpeningHoursFragment;

    #getter for: Lcom/waze/reports/EditOpeningHoursFragment;->mEditTextFrom:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/waze/reports/EditOpeningHoursFragment;->access$4(Lcom/waze/reports/EditOpeningHoursFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/waze/reports/OpeningHours;->from:Ljava/lang/String;

    .line 295
    iget-object v1, p0, Lcom/waze/reports/EditOpeningHoursFragment$5;->this$0:Lcom/waze/reports/EditOpeningHoursFragment;

    #getter for: Lcom/waze/reports/EditOpeningHoursFragment;->mEditTextTo:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/waze/reports/EditOpeningHoursFragment;->access$3(Lcom/waze/reports/EditOpeningHoursFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/waze/reports/OpeningHours;->to:Ljava/lang/String;

    .line 296
    iget-object v1, p0, Lcom/waze/reports/EditOpeningHoursFragment$5;->this$0:Lcom/waze/reports/EditOpeningHoursFragment;

    #getter for: Lcom/waze/reports/EditOpeningHoursFragment;->mArrOpeningHours:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/waze/reports/EditOpeningHoursFragment;->access$0(Lcom/waze/reports/EditOpeningHoursFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    iget-object v1, p0, Lcom/waze/reports/EditOpeningHoursFragment$5;->this$0:Lcom/waze/reports/EditOpeningHoursFragment;

    invoke-virtual {v1, v0}, Lcom/waze/reports/EditOpeningHoursFragment;->addLine(Lcom/waze/reports/OpeningHours;)V

    goto/16 :goto_0

    :cond_1
    move v1, v3

    .line 277
    goto/16 :goto_1

    :cond_2
    move v1, v3

    .line 278
    goto/16 :goto_2

    :cond_3
    move v1, v3

    .line 279
    goto :goto_3

    :cond_4
    move v1, v3

    .line 280
    goto :goto_4

    :cond_5
    move v1, v3

    .line 281
    goto :goto_5

    :cond_6
    move v1, v3

    .line 282
    goto :goto_6

    :cond_7
    move v2, v3

    .line 283
    goto :goto_7

    .line 285
    :cond_8
    iget-object v4, v0, Lcom/waze/reports/OpeningHours;->days:[I

    iget-object v1, p0, Lcom/waze/reports/EditOpeningHoursFragment$5;->this$0:Lcom/waze/reports/EditOpeningHoursFragment;

    #getter for: Lcom/waze/reports/EditOpeningHoursFragment;->mDayButtonPressed:[Z
    invoke-static {v1}, Lcom/waze/reports/EditOpeningHoursFragment;->access$1(Lcom/waze/reports/EditOpeningHoursFragment;)[Z

    move-result-object v1

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_9

    move v1, v2

    :goto_9
    aput v1, v4, v2

    .line 286
    iget-object v4, v0, Lcom/waze/reports/OpeningHours;->days:[I

    iget-object v1, p0, Lcom/waze/reports/EditOpeningHoursFragment$5;->this$0:Lcom/waze/reports/EditOpeningHoursFragment;

    #getter for: Lcom/waze/reports/EditOpeningHoursFragment;->mDayButtonPressed:[Z
    invoke-static {v1}, Lcom/waze/reports/EditOpeningHoursFragment;->access$1(Lcom/waze/reports/EditOpeningHoursFragment;)[Z

    move-result-object v1

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_a

    move v1, v2

    :goto_a
    aput v1, v4, v5

    .line 287
    iget-object v4, v0, Lcom/waze/reports/OpeningHours;->days:[I

    iget-object v1, p0, Lcom/waze/reports/EditOpeningHoursFragment$5;->this$0:Lcom/waze/reports/EditOpeningHoursFragment;

    #getter for: Lcom/waze/reports/EditOpeningHoursFragment;->mDayButtonPressed:[Z
    invoke-static {v1}, Lcom/waze/reports/EditOpeningHoursFragment;->access$1(Lcom/waze/reports/EditOpeningHoursFragment;)[Z

    move-result-object v1

    aget-boolean v1, v1, v5

    if-eqz v1, :cond_b

    move v1, v2

    :goto_b
    aput v1, v4, v6

    .line 288
    iget-object v4, v0, Lcom/waze/reports/OpeningHours;->days:[I

    iget-object v1, p0, Lcom/waze/reports/EditOpeningHoursFragment$5;->this$0:Lcom/waze/reports/EditOpeningHoursFragment;

    #getter for: Lcom/waze/reports/EditOpeningHoursFragment;->mDayButtonPressed:[Z
    invoke-static {v1}, Lcom/waze/reports/EditOpeningHoursFragment;->access$1(Lcom/waze/reports/EditOpeningHoursFragment;)[Z

    move-result-object v1

    aget-boolean v1, v1, v6

    if-eqz v1, :cond_c

    move v1, v2

    :goto_c
    aput v1, v4, v7

    .line 289
    iget-object v4, v0, Lcom/waze/reports/OpeningHours;->days:[I

    const/4 v5, 0x5

    iget-object v1, p0, Lcom/waze/reports/EditOpeningHoursFragment$5;->this$0:Lcom/waze/reports/EditOpeningHoursFragment;

    #getter for: Lcom/waze/reports/EditOpeningHoursFragment;->mDayButtonPressed:[Z
    invoke-static {v1}, Lcom/waze/reports/EditOpeningHoursFragment;->access$1(Lcom/waze/reports/EditOpeningHoursFragment;)[Z

    move-result-object v1

    aget-boolean v1, v1, v7

    if-eqz v1, :cond_d

    move v1, v2

    :goto_d
    aput v1, v4, v5

    .line 290
    iget-object v4, v0, Lcom/waze/reports/OpeningHours;->days:[I

    const/4 v5, 0x6

    iget-object v1, p0, Lcom/waze/reports/EditOpeningHoursFragment$5;->this$0:Lcom/waze/reports/EditOpeningHoursFragment;

    #getter for: Lcom/waze/reports/EditOpeningHoursFragment;->mDayButtonPressed:[Z
    invoke-static {v1}, Lcom/waze/reports/EditOpeningHoursFragment;->access$1(Lcom/waze/reports/EditOpeningHoursFragment;)[Z

    move-result-object v1

    const/4 v6, 0x5

    aget-boolean v1, v1, v6

    if-eqz v1, :cond_e

    move v1, v2

    :goto_e
    aput v1, v4, v5

    .line 291
    iget-object v1, v0, Lcom/waze/reports/OpeningHours;->days:[I

    iget-object v4, p0, Lcom/waze/reports/EditOpeningHoursFragment$5;->this$0:Lcom/waze/reports/EditOpeningHoursFragment;

    #getter for: Lcom/waze/reports/EditOpeningHoursFragment;->mDayButtonPressed:[Z
    invoke-static {v4}, Lcom/waze/reports/EditOpeningHoursFragment;->access$1(Lcom/waze/reports/EditOpeningHoursFragment;)[Z

    move-result-object v4

    const/4 v5, 0x6

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_f

    :goto_f
    aput v2, v1, v3

    goto/16 :goto_8

    :cond_9
    move v1, v3

    .line 285
    goto :goto_9

    :cond_a
    move v1, v3

    .line 286
    goto :goto_a

    :cond_b
    move v1, v3

    .line 287
    goto :goto_b

    :cond_c
    move v1, v3

    .line 288
    goto :goto_c

    :cond_d
    move v1, v3

    .line 289
    goto :goto_d

    :cond_e
    move v1, v3

    .line 290
    goto :goto_e

    :cond_f
    move v2, v3

    .line 291
    goto :goto_f
.end method
