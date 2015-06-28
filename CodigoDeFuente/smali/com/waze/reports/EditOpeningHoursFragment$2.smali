.class Lcom/waze/reports/EditOpeningHoursFragment$2;
.super Ljava/lang/Object;
.source "EditOpeningHoursFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    iput-object p1, p0, Lcom/waze/reports/EditOpeningHoursFragment$2;->this$0:Lcom/waze/reports/EditOpeningHoursFragment;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 173
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_0

    move-object v1, p1

    .line 174
    check-cast v1, Landroid/widget/Button;

    .line 175
    .local v1, dayButton:Landroid/widget/Button;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 176
    .local v0, d:I
    iget-object v2, p0, Lcom/waze/reports/EditOpeningHoursFragment$2;->this$0:Lcom/waze/reports/EditOpeningHoursFragment;

    #getter for: Lcom/waze/reports/EditOpeningHoursFragment;->mDayButtonPressed:[Z
    invoke-static {v2}, Lcom/waze/reports/EditOpeningHoursFragment;->access$1(Lcom/waze/reports/EditOpeningHoursFragment;)[Z

    move-result-object v4

    iget-object v2, p0, Lcom/waze/reports/EditOpeningHoursFragment$2;->this$0:Lcom/waze/reports/EditOpeningHoursFragment;

    #getter for: Lcom/waze/reports/EditOpeningHoursFragment;->mDayButtonPressed:[Z
    invoke-static {v2}, Lcom/waze/reports/EditOpeningHoursFragment;->access$1(Lcom/waze/reports/EditOpeningHoursFragment;)[Z

    move-result-object v2

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    aput-boolean v2, v4, v0

    .line 177
    iget-object v2, p0, Lcom/waze/reports/EditOpeningHoursFragment$2;->this$0:Lcom/waze/reports/EditOpeningHoursFragment;

    #getter for: Lcom/waze/reports/EditOpeningHoursFragment;->mDayButtonPressed:[Z
    invoke-static {v2}, Lcom/waze/reports/EditOpeningHoursFragment;->access$1(Lcom/waze/reports/EditOpeningHoursFragment;)[Z

    move-result-object v2

    aget-boolean v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setPressed(Z)V

    .line 178
    iget-object v2, p0, Lcom/waze/reports/EditOpeningHoursFragment$2;->this$0:Lcom/waze/reports/EditOpeningHoursFragment;

    invoke-virtual {v2}, Lcom/waze/reports/EditOpeningHoursFragment;->setAddButtonEnabledState()V

    .line 180
    .end local v0           #d:I
    .end local v1           #dayButton:Landroid/widget/Button;
    :cond_0
    return v3

    .restart local v0       #d:I
    .restart local v1       #dayButton:Landroid/widget/Button;
    :cond_1
    move v2, v3

    .line 176
    goto :goto_0
.end method
