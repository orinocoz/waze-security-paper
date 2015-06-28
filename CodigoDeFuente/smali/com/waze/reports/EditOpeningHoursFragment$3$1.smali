.class Lcom/waze/reports/EditOpeningHoursFragment$3$1;
.super Ljava/lang/Object;
.source "EditOpeningHoursFragment.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/EditOpeningHoursFragment$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/reports/EditOpeningHoursFragment$3;

.field private final synthetic val$toSet:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/waze/reports/EditOpeningHoursFragment$3;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/EditOpeningHoursFragment$3$1;->this$1:Lcom/waze/reports/EditOpeningHoursFragment$3;

    iput-object p2, p0, Lcom/waze/reports/EditOpeningHoursFragment$3$1;->val$toSet:Landroid/widget/EditText;

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 5
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/waze/reports/EditOpeningHoursFragment$3$1;->val$toSet:Landroid/widget/EditText;

    const-string v1, "%02d:%02d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 223
    return-void
.end method
