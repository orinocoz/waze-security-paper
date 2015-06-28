.class Lcom/waze/reports/HazardReport$4;
.super Ljava/lang/Object;
.source "HazardReport.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/HazardReport;->showSubmenu(Ljava/lang/String;[Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/HazardReport;

.field private final synthetic val$optionValues:[I

.field private final synthetic val$options:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/reports/HazardReport;[Ljava/lang/String;[I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/HazardReport$4;->this$0:Lcom/waze/reports/HazardReport;

    iput-object p2, p0, Lcom/waze/reports/HazardReport$4;->val$options:[Ljava/lang/String;

    iput-object p3, p0, Lcom/waze/reports/HazardReport$4;->val$optionValues:[I

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/waze/reports/HazardReport$4;->this$0:Lcom/waze/reports/HazardReport;

    const v1, 0x7f090034

    invoke-virtual {v0, v1}, Lcom/waze/reports/HazardReport;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/reports/HazardReport$4;->val$options:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, p0, Lcom/waze/reports/HazardReport$4;->this$0:Lcom/waze/reports/HazardReport;

    iget-object v1, p0, Lcom/waze/reports/HazardReport$4;->val$optionValues:[I

    aget v1, v1, p2

    #setter for: Lcom/waze/reports/HazardReport;->subSelected:I
    invoke-static {v0, v1}, Lcom/waze/reports/HazardReport;->access$2(Lcom/waze/reports/HazardReport;I)V

    .line 149
    return-void
.end method
