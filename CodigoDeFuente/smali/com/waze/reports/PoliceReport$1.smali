.class Lcom/waze/reports/PoliceReport$1;
.super Ljava/lang/Object;
.source "PoliceReport.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/PoliceReport;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/PoliceReport;


# direct methods
.method constructor <init>(Lcom/waze/reports/PoliceReport;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/PoliceReport$1;->this$0:Lcom/waze/reports/PoliceReport;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const v5, 0x7f090543

    const v4, 0x7f090034

    const v3, 0x7f0201f7

    const/4 v2, 0x1

    .line 46
    iget-object v1, p0, Lcom/waze/reports/PoliceReport$1;->this$0:Lcom/waze/reports/PoliceReport;

    #getter for: Lcom/waze/reports/PoliceReport;->selected:I
    invoke-static {v1}, Lcom/waze/reports/PoliceReport;->access$0(Lcom/waze/reports/PoliceReport;)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 47
    iget-object v1, p0, Lcom/waze/reports/PoliceReport$1;->this$0:Lcom/waze/reports/PoliceReport;

    const/4 v2, -0x1

    #setter for: Lcom/waze/reports/PoliceReport;->selected:I
    invoke-static {v1, v2}, Lcom/waze/reports/PoliceReport;->access$1(Lcom/waze/reports/PoliceReport;I)V

    .line 48
    iget-object v1, p0, Lcom/waze/reports/PoliceReport$1;->this$0:Lcom/waze/reports/PoliceReport;

    iget-object v1, v1, Lcom/waze/reports/PoliceReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_POLICE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/waze/reports/PoliceReport$1;->this$0:Lcom/waze/reports/PoliceReport;

    invoke-virtual {v1, v4}, Lcom/waze/reports/PoliceReport;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v1, p0, Lcom/waze/reports/PoliceReport$1;->this$0:Lcom/waze/reports/PoliceReport;

    invoke-virtual {v1, v5}, Lcom/waze/reports/PoliceReport;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 62
    :goto_0
    iget-object v1, p0, Lcom/waze/reports/PoliceReport$1;->this$0:Lcom/waze/reports/PoliceReport;

    invoke-virtual {v1}, Lcom/waze/reports/PoliceReport;->stop()V

    .line 63
    return-void

    .line 52
    .end local v0           #text:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/waze/reports/PoliceReport$1;->this$0:Lcom/waze/reports/PoliceReport;

    #setter for: Lcom/waze/reports/PoliceReport;->selected:I
    invoke-static {v1, v2}, Lcom/waze/reports/PoliceReport;->access$1(Lcom/waze/reports/PoliceReport;I)V

    .line 54
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/NativeManager;->isEnforcementPoliceEnabledNTV()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 55
    iget-object v1, p0, Lcom/waze/reports/PoliceReport$1;->this$0:Lcom/waze/reports/PoliceReport;

    iget-object v1, v1, Lcom/waze/reports/PoliceReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_SPEED_TRAP:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .restart local v0       #text:Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/waze/reports/PoliceReport$1;->this$0:Lcom/waze/reports/PoliceReport;

    invoke-virtual {v1, v4}, Lcom/waze/reports/PoliceReport;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v1, p0, Lcom/waze/reports/PoliceReport$1;->this$0:Lcom/waze/reports/PoliceReport;

    invoke-virtual {v1, v5}, Lcom/waze/reports/PoliceReport;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0201fa

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 60
    iget-object v1, p0, Lcom/waze/reports/PoliceReport$1;->this$0:Lcom/waze/reports/PoliceReport;

    const v2, 0x7f090547

    invoke-virtual {v1, v2}, Lcom/waze/reports/PoliceReport;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 57
    .end local v0           #text:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/waze/reports/PoliceReport$1;->this$0:Lcom/waze/reports/PoliceReport;

    iget-object v1, v1, Lcom/waze/reports/PoliceReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_POLICE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #text:Ljava/lang/String;
    goto :goto_1
.end method
