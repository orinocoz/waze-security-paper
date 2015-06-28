.class Lcom/waze/reports/CameraReport$3;
.super Ljava/lang/Object;
.source "CameraReport.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/CameraReport;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/CameraReport;


# direct methods
.method constructor <init>(Lcom/waze/reports/CameraReport;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/CameraReport$3;->this$0:Lcom/waze/reports/CameraReport;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const v5, 0x7f0901ef

    const v4, 0x7f090034

    const/4 v2, 0x2

    const v3, 0x7f0201f7

    .line 105
    iget-object v1, p0, Lcom/waze/reports/CameraReport$3;->this$0:Lcom/waze/reports/CameraReport;

    #getter for: Lcom/waze/reports/CameraReport;->selected:I
    invoke-static {v1}, Lcom/waze/reports/CameraReport;->access$0(Lcom/waze/reports/CameraReport;)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 106
    iget-object v1, p0, Lcom/waze/reports/CameraReport$3;->this$0:Lcom/waze/reports/CameraReport;

    const/4 v2, -0x1

    #setter for: Lcom/waze/reports/CameraReport;->selected:I
    invoke-static {v1, v2}, Lcom/waze/reports/CameraReport;->access$1(Lcom/waze/reports/CameraReport;I)V

    .line 107
    iget-object v1, p0, Lcom/waze/reports/CameraReport$3;->this$0:Lcom/waze/reports/CameraReport;

    iget-object v1, v1, Lcom/waze/reports/CameraReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_CAMERA:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/waze/reports/CameraReport$3;->this$0:Lcom/waze/reports/CameraReport;

    invoke-virtual {v1, v4}, Lcom/waze/reports/CameraReport;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v1, p0, Lcom/waze/reports/CameraReport$3;->this$0:Lcom/waze/reports/CameraReport;

    invoke-virtual {v1, v5}, Lcom/waze/reports/CameraReport;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 110
    iget-object v1, p0, Lcom/waze/reports/CameraReport$3;->this$0:Lcom/waze/reports/CameraReport;

    const/4 v2, 0x0

    #calls: Lcom/waze/reports/CameraReport;->setSendEnabled(Z)V
    invoke-static {v1, v2}, Lcom/waze/reports/CameraReport;->access$2(Lcom/waze/reports/CameraReport;Z)V

    .line 120
    :goto_0
    iget-object v1, p0, Lcom/waze/reports/CameraReport$3;->this$0:Lcom/waze/reports/CameraReport;

    invoke-virtual {v1}, Lcom/waze/reports/CameraReport;->stop()V

    .line 121
    return-void

    .line 112
    .end local v0           #text:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/waze/reports/CameraReport$3;->this$0:Lcom/waze/reports/CameraReport;

    #setter for: Lcom/waze/reports/CameraReport;->selected:I
    invoke-static {v1, v2}, Lcom/waze/reports/CameraReport;->access$1(Lcom/waze/reports/CameraReport;I)V

    .line 113
    iget-object v1, p0, Lcom/waze/reports/CameraReport$3;->this$0:Lcom/waze/reports/CameraReport;

    iget-object v1, v1, Lcom/waze/reports/CameraReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_FAKE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .restart local v0       #text:Ljava/lang/String;
    iget-object v1, p0, Lcom/waze/reports/CameraReport$3;->this$0:Lcom/waze/reports/CameraReport;

    invoke-virtual {v1, v4}, Lcom/waze/reports/CameraReport;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v1, p0, Lcom/waze/reports/CameraReport$3;->this$0:Lcom/waze/reports/CameraReport;

    const v2, 0x7f0901e7

    invoke-virtual {v1, v2}, Lcom/waze/reports/CameraReport;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 116
    iget-object v1, p0, Lcom/waze/reports/CameraReport$3;->this$0:Lcom/waze/reports/CameraReport;

    const v2, 0x7f0901eb

    invoke-virtual {v1, v2}, Lcom/waze/reports/CameraReport;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 117
    iget-object v1, p0, Lcom/waze/reports/CameraReport$3;->this$0:Lcom/waze/reports/CameraReport;

    invoke-virtual {v1, v5}, Lcom/waze/reports/CameraReport;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0201fa

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 118
    iget-object v1, p0, Lcom/waze/reports/CameraReport$3;->this$0:Lcom/waze/reports/CameraReport;

    const/4 v2, 0x1

    #calls: Lcom/waze/reports/CameraReport;->setSendEnabled(Z)V
    invoke-static {v1, v2}, Lcom/waze/reports/CameraReport;->access$2(Lcom/waze/reports/CameraReport;Z)V

    goto :goto_0
.end method
