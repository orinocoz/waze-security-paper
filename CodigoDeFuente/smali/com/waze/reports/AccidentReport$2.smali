.class Lcom/waze/reports/AccidentReport$2;
.super Ljava/lang/Object;
.source "AccidentReport.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/AccidentReport;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/AccidentReport;


# direct methods
.method constructor <init>(Lcom/waze/reports/AccidentReport;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/AccidentReport$2;->this$0:Lcom/waze/reports/AccidentReport;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const v5, 0x7f09003b

    const v4, 0x7f090034

    const v3, 0x7f0201f7

    const/4 v2, 0x1

    .line 55
    iget-object v1, p0, Lcom/waze/reports/AccidentReport$2;->this$0:Lcom/waze/reports/AccidentReport;

    #getter for: Lcom/waze/reports/AccidentReport;->selected:I
    invoke-static {v1}, Lcom/waze/reports/AccidentReport;->access$0(Lcom/waze/reports/AccidentReport;)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 56
    iget-object v1, p0, Lcom/waze/reports/AccidentReport$2;->this$0:Lcom/waze/reports/AccidentReport;

    const/4 v2, -0x1

    #setter for: Lcom/waze/reports/AccidentReport;->selected:I
    invoke-static {v1, v2}, Lcom/waze/reports/AccidentReport;->access$1(Lcom/waze/reports/AccidentReport;I)V

    .line 57
    iget-object v1, p0, Lcom/waze/reports/AccidentReport$2;->this$0:Lcom/waze/reports/AccidentReport;

    iget-object v1, v1, Lcom/waze/reports/AccidentReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_ACCIDENT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/waze/reports/AccidentReport$2;->this$0:Lcom/waze/reports/AccidentReport;

    invoke-virtual {v1, v4}, Lcom/waze/reports/AccidentReport;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v1, p0, Lcom/waze/reports/AccidentReport$2;->this$0:Lcom/waze/reports/AccidentReport;

    invoke-virtual {v1, v5}, Lcom/waze/reports/AccidentReport;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 67
    :goto_0
    iget-object v1, p0, Lcom/waze/reports/AccidentReport$2;->this$0:Lcom/waze/reports/AccidentReport;

    invoke-virtual {v1}, Lcom/waze/reports/AccidentReport;->stop()V

    .line 68
    return-void

    .line 61
    .end local v0           #text:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/waze/reports/AccidentReport$2;->this$0:Lcom/waze/reports/AccidentReport;

    #setter for: Lcom/waze/reports/AccidentReport;->selected:I
    invoke-static {v1, v2}, Lcom/waze/reports/AccidentReport;->access$1(Lcom/waze/reports/AccidentReport;I)V

    .line 62
    iget-object v1, p0, Lcom/waze/reports/AccidentReport$2;->this$0:Lcom/waze/reports/AccidentReport;

    iget-object v1, v1, Lcom/waze/reports/AccidentReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_MAJOR_ACCIDENT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .restart local v0       #text:Ljava/lang/String;
    iget-object v1, p0, Lcom/waze/reports/AccidentReport$2;->this$0:Lcom/waze/reports/AccidentReport;

    invoke-virtual {v1, v4}, Lcom/waze/reports/AccidentReport;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v1, p0, Lcom/waze/reports/AccidentReport$2;->this$0:Lcom/waze/reports/AccidentReport;

    const v2, 0x7f090037

    invoke-virtual {v1, v2}, Lcom/waze/reports/AccidentReport;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 65
    iget-object v1, p0, Lcom/waze/reports/AccidentReport$2;->this$0:Lcom/waze/reports/AccidentReport;

    invoke-virtual {v1, v5}, Lcom/waze/reports/AccidentReport;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0201fa

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
