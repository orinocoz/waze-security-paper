.class Lcom/waze/reports/TrafficJamReport$2;
.super Ljava/lang/Object;
.source "TrafficJamReport.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/TrafficJamReport;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/TrafficJamReport;


# direct methods
.method constructor <init>(Lcom/waze/reports/TrafficJamReport;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/TrafficJamReport$2;->this$0:Lcom/waze/reports/TrafficJamReport;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const v5, 0x7f09075c

    const v4, 0x7f090034

    const/4 v2, 0x1

    const v3, 0x7f0201f7

    .line 63
    iget-object v1, p0, Lcom/waze/reports/TrafficJamReport$2;->this$0:Lcom/waze/reports/TrafficJamReport;

    #getter for: Lcom/waze/reports/TrafficJamReport;->selected:I
    invoke-static {v1}, Lcom/waze/reports/TrafficJamReport;->access$0(Lcom/waze/reports/TrafficJamReport;)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 64
    iget-object v1, p0, Lcom/waze/reports/TrafficJamReport$2;->this$0:Lcom/waze/reports/TrafficJamReport;

    const/4 v2, -0x1

    #setter for: Lcom/waze/reports/TrafficJamReport;->selected:I
    invoke-static {v1, v2}, Lcom/waze/reports/TrafficJamReport;->access$1(Lcom/waze/reports/TrafficJamReport;I)V

    .line 65
    iget-object v1, p0, Lcom/waze/reports/TrafficJamReport$2;->this$0:Lcom/waze/reports/TrafficJamReport;

    iget-object v1, v1, Lcom/waze/reports/TrafficJamReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_TRAFFIC_JAM:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/waze/reports/TrafficJamReport$2;->this$0:Lcom/waze/reports/TrafficJamReport;

    invoke-virtual {v1, v4}, Lcom/waze/reports/TrafficJamReport;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v1, p0, Lcom/waze/reports/TrafficJamReport$2;->this$0:Lcom/waze/reports/TrafficJamReport;

    invoke-virtual {v1, v5}, Lcom/waze/reports/TrafficJamReport;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    :goto_0
    iget-object v1, p0, Lcom/waze/reports/TrafficJamReport$2;->this$0:Lcom/waze/reports/TrafficJamReport;

    invoke-virtual {v1}, Lcom/waze/reports/TrafficJamReport;->stop()V

    .line 77
    return-void

    .line 69
    .end local v0           #text:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/waze/reports/TrafficJamReport$2;->this$0:Lcom/waze/reports/TrafficJamReport;

    #setter for: Lcom/waze/reports/TrafficJamReport;->selected:I
    invoke-static {v1, v2}, Lcom/waze/reports/TrafficJamReport;->access$1(Lcom/waze/reports/TrafficJamReport;I)V

    .line 70
    iget-object v1, p0, Lcom/waze/reports/TrafficJamReport$2;->this$0:Lcom/waze/reports/TrafficJamReport;

    iget-object v1, v1, Lcom/waze/reports/TrafficJamReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_HEAVY_TRAFFIC:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .restart local v0       #text:Ljava/lang/String;
    iget-object v1, p0, Lcom/waze/reports/TrafficJamReport$2;->this$0:Lcom/waze/reports/TrafficJamReport;

    invoke-virtual {v1, v4}, Lcom/waze/reports/TrafficJamReport;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v1, p0, Lcom/waze/reports/TrafficJamReport$2;->this$0:Lcom/waze/reports/TrafficJamReport;

    const v2, 0x7f090758

    invoke-virtual {v1, v2}, Lcom/waze/reports/TrafficJamReport;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    iget-object v1, p0, Lcom/waze/reports/TrafficJamReport$2;->this$0:Lcom/waze/reports/TrafficJamReport;

    invoke-virtual {v1, v5}, Lcom/waze/reports/TrafficJamReport;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0201fa

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 74
    iget-object v1, p0, Lcom/waze/reports/TrafficJamReport$2;->this$0:Lcom/waze/reports/TrafficJamReport;

    const v2, 0x7f090760

    invoke-virtual {v1, v2}, Lcom/waze/reports/TrafficJamReport;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
