.class Lcom/waze/reports/EditOpeningHoursFragment$DurationTimePickDialog;
.super Landroid/app/TimePickerDialog;
.source "EditOpeningHoursFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/reports/EditOpeningHoursFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DurationTimePickDialog"
.end annotation


# instance fields
.field final increment:I

.field final mCallback:Landroid/app/TimePickerDialog$OnTimeSetListener;

.field mTimePicker:Landroid/widget/TimePicker;

.field final synthetic this$0:Lcom/waze/reports/EditOpeningHoursFragment;


# direct methods
.method public constructor <init>(Lcom/waze/reports/EditOpeningHoursFragment;Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZILjava/lang/String;)V
    .locals 6
    .parameter
    .parameter "context"
    .parameter "callBack"
    .parameter "hourOfDay"
    .parameter "minute"
    .parameter "is24HourView"
    .parameter "increment"
    .parameter "title"

    .prologue
    .line 351
    iput-object p1, p0, Lcom/waze/reports/EditOpeningHoursFragment$DurationTimePickDialog;->this$0:Lcom/waze/reports/EditOpeningHoursFragment;

    .line 352
    div-int v4, p5, p7

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 353
    iput-object p3, p0, Lcom/waze/reports/EditOpeningHoursFragment$DurationTimePickDialog;->mCallback:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 354
    iput p7, p0, Lcom/waze/reports/EditOpeningHoursFragment$DurationTimePickDialog;->increment:I

    .line 355
    invoke-virtual {p0, p8}, Lcom/waze/reports/EditOpeningHoursFragment$DurationTimePickDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 356
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 360
    iget-object v0, p0, Lcom/waze/reports/EditOpeningHoursFragment$DurationTimePickDialog;->mCallback:Landroid/app/TimePickerDialog$OnTimeSetListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waze/reports/EditOpeningHoursFragment$DurationTimePickDialog;->mTimePicker:Landroid/widget/TimePicker;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/waze/reports/EditOpeningHoursFragment$DurationTimePickDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Landroid/widget/TimePicker;->clearFocus()V

    .line 362
    iget-object v0, p0, Lcom/waze/reports/EditOpeningHoursFragment$DurationTimePickDialog;->mCallback:Landroid/app/TimePickerDialog$OnTimeSetListener;

    iget-object v1, p0, Lcom/waze/reports/EditOpeningHoursFragment$DurationTimePickDialog;->mTimePicker:Landroid/widget/TimePicker;

    iget-object v2, p0, Lcom/waze/reports/EditOpeningHoursFragment$DurationTimePickDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v2}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 363
    iget-object v3, p0, Lcom/waze/reports/EditOpeningHoursFragment$DurationTimePickDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v3}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lcom/waze/reports/EditOpeningHoursFragment$DurationTimePickDialog;->increment:I

    mul-int/2addr v3, v4

    .line 362
    invoke-interface {v0, v1, v2, v3}, Landroid/app/TimePickerDialog$OnTimeSetListener;->onTimeSet(Landroid/widget/TimePicker;II)V

    .line 365
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/16 v11, 0x3c

    .line 379
    invoke-super {p0, p1}, Landroid/app/TimePickerDialog;->onCreate(Landroid/os/Bundle;)V

    .line 381
    :try_start_0
    const-string v7, "com.android.internal.R$id"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 382
    .local v5, rClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v7, "timePicker"

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 383
    .local v6, timePicker:Ljava/lang/reflect/Field;
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/waze/reports/EditOpeningHoursFragment$DurationTimePickDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TimePicker;

    iput-object v7, p0, Lcom/waze/reports/EditOpeningHoursFragment$DurationTimePickDialog;->mTimePicker:Landroid/widget/TimePicker;

    .line 384
    const-string v7, "minute"

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 386
    .local v3, m:Ljava/lang/reflect/Field;
    iget-object v7, p0, Lcom/waze/reports/EditOpeningHoursFragment$DurationTimePickDialog;->mTimePicker:Landroid/widget/TimePicker;

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/NumberPicker;

    .line 387
    .local v4, mMinuteSpinner:Landroid/widget/NumberPicker;
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 388
    const/16 v7, 0x3c

    iget v8, p0, Lcom/waze/reports/EditOpeningHoursFragment$DurationTimePickDialog;->increment:I

    div-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v4, v7}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 389
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 390
    .local v0, displayedValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v11, :cond_0

    .line 393
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v0, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 397
    .end local v0           #displayedValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #i:I
    .end local v3           #m:Ljava/lang/reflect/Field;
    .end local v4           #mMinuteSpinner:Landroid/widget/NumberPicker;
    .end local v5           #rClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v6           #timePicker:Ljava/lang/reflect/Field;
    :goto_1
    return-void

    .line 391
    .restart local v0       #displayedValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2       #i:I
    .restart local v3       #m:Ljava/lang/reflect/Field;
    .restart local v4       #mMinuteSpinner:Landroid/widget/NumberPicker;
    .restart local v5       #rClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v6       #timePicker:Ljava/lang/reflect/Field;
    :cond_0
    const-string v7, "%02d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    iget v7, p0, Lcom/waze/reports/EditOpeningHoursFragment$DurationTimePickDialog;->increment:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v2, v7

    goto :goto_0

    .line 394
    .end local v0           #displayedValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #i:I
    .end local v3           #m:Ljava/lang/reflect/Field;
    .end local v4           #mMinuteSpinner:Landroid/widget/NumberPicker;
    .end local v5           #rClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v6           #timePicker:Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 395
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 375
    return-void
.end method

.method public onTimeChanged(Landroid/widget/TimePicker;II)V
    .locals 0
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 370
    return-void
.end method
