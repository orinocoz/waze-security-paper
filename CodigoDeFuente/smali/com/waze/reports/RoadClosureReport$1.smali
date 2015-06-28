.class Lcom/waze/reports/RoadClosureReport$1;
.super Ljava/lang/Object;
.source "RoadClosureReport.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/RoadClosureReport;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/RoadClosureReport;


# direct methods
.method constructor <init>(Lcom/waze/reports/RoadClosureReport;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/RoadClosureReport$1;->this$0:Lcom/waze/reports/RoadClosureReport;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const v6, 0x7f09030d

    const v5, 0x7f090034

    const/4 v2, -0x1

    const v4, 0x7f0201f7

    const/high16 v3, -0x100

    .line 57
    iget-object v1, p0, Lcom/waze/reports/RoadClosureReport$1;->this$0:Lcom/waze/reports/RoadClosureReport;

    invoke-virtual {v1}, Lcom/waze/reports/RoadClosureReport;->stop()V

    .line 58
    iget-object v1, p0, Lcom/waze/reports/RoadClosureReport$1;->this$0:Lcom/waze/reports/RoadClosureReport;

    #getter for: Lcom/waze/reports/RoadClosureReport;->selected:I
    invoke-static {v1}, Lcom/waze/reports/RoadClosureReport;->access$0(Lcom/waze/reports/RoadClosureReport;)I

    move-result v1

    if-nez v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/waze/reports/RoadClosureReport$1;->this$0:Lcom/waze/reports/RoadClosureReport;

    #setter for: Lcom/waze/reports/RoadClosureReport;->selected:I
    invoke-static {v1, v2}, Lcom/waze/reports/RoadClosureReport;->access$1(Lcom/waze/reports/RoadClosureReport;I)V

    .line 60
    iget-object v1, p0, Lcom/waze/reports/RoadClosureReport$1;->this$0:Lcom/waze/reports/RoadClosureReport;

    #setter for: Lcom/waze/reports/RoadClosureReport;->subSelected:I
    invoke-static {v1, v2}, Lcom/waze/reports/RoadClosureReport;->access$2(Lcom/waze/reports/RoadClosureReport;I)V

    .line 61
    iget-object v1, p0, Lcom/waze/reports/RoadClosureReport$1;->this$0:Lcom/waze/reports/RoadClosureReport;

    iget-object v1, v1, Lcom/waze/reports/RoadClosureReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_HAZARD:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/waze/reports/RoadClosureReport$1;->this$0:Lcom/waze/reports/RoadClosureReport;

    invoke-virtual {v1, v5}, Lcom/waze/reports/RoadClosureReport;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v1, p0, Lcom/waze/reports/RoadClosureReport$1;->this$0:Lcom/waze/reports/RoadClosureReport;

    invoke-virtual {v1, v6}, Lcom/waze/reports/RoadClosureReport;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 64
    iget-object v1, p0, Lcom/waze/reports/RoadClosureReport$1;->this$0:Lcom/waze/reports/RoadClosureReport;

    const v2, 0x7f09030f

    invoke-virtual {v1, v2}, Lcom/waze/reports/RoadClosureReport;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    :goto_0
    return-void

    .line 66
    .end local v0           #text:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/waze/reports/RoadClosureReport$1;->this$0:Lcom/waze/reports/RoadClosureReport;

    const/4 v2, 0x0

    #setter for: Lcom/waze/reports/RoadClosureReport;->selected:I
    invoke-static {v1, v2}, Lcom/waze/reports/RoadClosureReport;->access$1(Lcom/waze/reports/RoadClosureReport;I)V

    .line 67
    iget-object v1, p0, Lcom/waze/reports/RoadClosureReport$1;->this$0:Lcom/waze/reports/RoadClosureReport;

    iget-object v1, v1, Lcom/waze/reports/RoadClosureReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_HAZARD:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .restart local v0       #text:Ljava/lang/String;
    iget-object v1, p0, Lcom/waze/reports/RoadClosureReport$1;->this$0:Lcom/waze/reports/RoadClosureReport;

    invoke-virtual {v1, v5}, Lcom/waze/reports/RoadClosureReport;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v1, p0, Lcom/waze/reports/RoadClosureReport$1;->this$0:Lcom/waze/reports/RoadClosureReport;

    invoke-virtual {v1, v6}, Lcom/waze/reports/RoadClosureReport;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0201fa

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 70
    iget-object v1, p0, Lcom/waze/reports/RoadClosureReport$1;->this$0:Lcom/waze/reports/RoadClosureReport;

    const v2, 0x7f090311

    invoke-virtual {v1, v2}, Lcom/waze/reports/RoadClosureReport;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 71
    iget-object v1, p0, Lcom/waze/reports/RoadClosureReport$1;->this$0:Lcom/waze/reports/RoadClosureReport;

    const v2, 0x7f090315

    invoke-virtual {v1, v2}, Lcom/waze/reports/RoadClosureReport;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 72
    iget-object v1, p0, Lcom/waze/reports/RoadClosureReport$1;->this$0:Lcom/waze/reports/RoadClosureReport;

    const v2, 0x7f09030f

    invoke-virtual {v1, v2}, Lcom/waze/reports/RoadClosureReport;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    iget-object v1, p0, Lcom/waze/reports/RoadClosureReport$1;->this$0:Lcom/waze/reports/RoadClosureReport;

    const v2, 0x7f090313

    invoke-virtual {v1, v2}, Lcom/waze/reports/RoadClosureReport;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74
    iget-object v1, p0, Lcom/waze/reports/RoadClosureReport$1;->this$0:Lcom/waze/reports/RoadClosureReport;

    const v2, 0x7f090317

    invoke-virtual {v1, v2}, Lcom/waze/reports/RoadClosureReport;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method
