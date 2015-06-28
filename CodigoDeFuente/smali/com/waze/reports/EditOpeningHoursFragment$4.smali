.class Lcom/waze/reports/EditOpeningHoursFragment$4;
.super Ljava/lang/Object;
.source "EditOpeningHoursFragment.java"

# interfaces
.implements Lcom/waze/settings/SwitchCheckedCallback;


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
    iput-object p1, p0, Lcom/waze/reports/EditOpeningHoursFragment$4;->this$0:Lcom/waze/reports/EditOpeningHoursFragment;

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnCallback(Z)V
    .locals 6
    .parameter "bIsChecked"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/high16 v4, 0x3f80

    const/high16 v3, 0x3f00

    .line 253
    iget-object v0, p0, Lcom/waze/reports/EditOpeningHoursFragment$4;->this$0:Lcom/waze/reports/EditOpeningHoursFragment;

    #getter for: Lcom/waze/reports/EditOpeningHoursFragment;->mEditTextTo:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/waze/reports/EditOpeningHoursFragment;->access$3(Lcom/waze/reports/EditOpeningHoursFragment;)Landroid/widget/EditText;

    move-result-object v5

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 254
    iget-object v0, p0, Lcom/waze/reports/EditOpeningHoursFragment$4;->this$0:Lcom/waze/reports/EditOpeningHoursFragment;

    #getter for: Lcom/waze/reports/EditOpeningHoursFragment;->mEditTextTo:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/waze/reports/EditOpeningHoursFragment;->access$3(Lcom/waze/reports/EditOpeningHoursFragment;)Landroid/widget/EditText;

    move-result-object v5

    if-eqz p1, :cond_1

    move v0, v3

    :goto_1
    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setAlpha(F)V

    .line 255
    iget-object v0, p0, Lcom/waze/reports/EditOpeningHoursFragment$4;->this$0:Lcom/waze/reports/EditOpeningHoursFragment;

    #getter for: Lcom/waze/reports/EditOpeningHoursFragment;->mEditTextTo:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/waze/reports/EditOpeningHoursFragment;->access$3(Lcom/waze/reports/EditOpeningHoursFragment;)Landroid/widget/EditText;

    move-result-object v5

    if-eqz p1, :cond_2

    const-string v0, "00:00"

    :goto_2
    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v0, p0, Lcom/waze/reports/EditOpeningHoursFragment$4;->this$0:Lcom/waze/reports/EditOpeningHoursFragment;

    #getter for: Lcom/waze/reports/EditOpeningHoursFragment;->mEditTextFrom:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/waze/reports/EditOpeningHoursFragment;->access$4(Lcom/waze/reports/EditOpeningHoursFragment;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz p1, :cond_3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 257
    iget-object v0, p0, Lcom/waze/reports/EditOpeningHoursFragment$4;->this$0:Lcom/waze/reports/EditOpeningHoursFragment;

    #getter for: Lcom/waze/reports/EditOpeningHoursFragment;->mEditTextFrom:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/waze/reports/EditOpeningHoursFragment;->access$4(Lcom/waze/reports/EditOpeningHoursFragment;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz p1, :cond_4

    :goto_4
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setAlpha(F)V

    .line 258
    iget-object v0, p0, Lcom/waze/reports/EditOpeningHoursFragment$4;->this$0:Lcom/waze/reports/EditOpeningHoursFragment;

    #getter for: Lcom/waze/reports/EditOpeningHoursFragment;->mEditTextFrom:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/waze/reports/EditOpeningHoursFragment;->access$4(Lcom/waze/reports/EditOpeningHoursFragment;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz p1, :cond_5

    const-string v0, "00:00"

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 259
    return-void

    :cond_0
    move v0, v2

    .line 253
    goto :goto_0

    :cond_1
    move v0, v4

    .line 254
    goto :goto_1

    .line 255
    :cond_2
    const-string v0, "19:00"

    goto :goto_2

    :cond_3
    move v1, v2

    .line 256
    goto :goto_3

    :cond_4
    move v3, v4

    .line 257
    goto :goto_4

    .line 258
    :cond_5
    const-string v0, "10:00"

    goto :goto_5
.end method
