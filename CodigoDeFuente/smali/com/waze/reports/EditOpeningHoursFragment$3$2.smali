.class Lcom/waze/reports/EditOpeningHoursFragment$3$2;
.super Ljava/lang/Object;
.source "EditOpeningHoursFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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


# direct methods
.method constructor <init>(Lcom/waze/reports/EditOpeningHoursFragment$3;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/EditOpeningHoursFragment$3$2;->this$1:Lcom/waze/reports/EditOpeningHoursFragment$3;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/waze/reports/EditOpeningHoursFragment$3$2;->this$1:Lcom/waze/reports/EditOpeningHoursFragment$3;

    #getter for: Lcom/waze/reports/EditOpeningHoursFragment$3;->this$0:Lcom/waze/reports/EditOpeningHoursFragment;
    invoke-static {v0}, Lcom/waze/reports/EditOpeningHoursFragment$3;->access$0(Lcom/waze/reports/EditOpeningHoursFragment$3;)Lcom/waze/reports/EditOpeningHoursFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/reports/EditOpeningHoursFragment;->refreashPressedState()V

    .line 231
    return-void
.end method
