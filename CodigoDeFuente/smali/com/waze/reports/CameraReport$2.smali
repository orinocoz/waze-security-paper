.class Lcom/waze/reports/CameraReport$2;
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
    iput-object p1, p0, Lcom/waze/reports/CameraReport$2;->this$0:Lcom/waze/reports/CameraReport;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const v6, 0x7f0901eb

    const v5, 0x7f090034

    const v4, 0x7f0201f7

    const/4 v3, 0x1

    .line 85
    iget-object v1, p0, Lcom/waze/reports/CameraReport$2;->this$0:Lcom/waze/reports/CameraReport;

    #getter for: Lcom/waze/reports/CameraReport;->selected:I
    invoke-static {v1}, Lcom/waze/reports/CameraReport;->access$0(Lcom/waze/reports/CameraReport;)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 86
    iget-object v1, p0, Lcom/waze/reports/CameraReport$2;->this$0:Lcom/waze/reports/CameraReport;

    const/4 v2, -0x1

    #setter for: Lcom/waze/reports/CameraReport;->selected:I
    invoke-static {v1, v2}, Lcom/waze/reports/CameraReport;->access$1(Lcom/waze/reports/CameraReport;I)V

    .line 87
    iget-object v1, p0, Lcom/waze/reports/CameraReport$2;->this$0:Lcom/waze/reports/CameraReport;

    iget-object v1, v1, Lcom/waze/reports/CameraReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_CAMERA:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/waze/reports/CameraReport$2;->this$0:Lcom/waze/reports/CameraReport;

    invoke-virtual {v1, v5}, Lcom/waze/reports/CameraReport;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v1, p0, Lcom/waze/reports/CameraReport$2;->this$0:Lcom/waze/reports/CameraReport;

    invoke-virtual {v1, v6}, Lcom/waze/reports/CameraReport;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 90
    iget-object v1, p0, Lcom/waze/reports/CameraReport$2;->this$0:Lcom/waze/reports/CameraReport;

    const/4 v2, 0x0

    #calls: Lcom/waze/reports/CameraReport;->setSendEnabled(Z)V
    invoke-static {v1, v2}, Lcom/waze/reports/CameraReport;->access$2(Lcom/waze/reports/CameraReport;Z)V

    .line 100
    :goto_0
    iget-object v1, p0, Lcom/waze/reports/CameraReport$2;->this$0:Lcom/waze/reports/CameraReport;

    invoke-virtual {v1}, Lcom/waze/reports/CameraReport;->stop()V

    .line 101
    return-void

    .line 92
    .end local v0           #text:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/waze/reports/CameraReport$2;->this$0:Lcom/waze/reports/CameraReport;

    #setter for: Lcom/waze/reports/CameraReport;->selected:I
    invoke-static {v1, v3}, Lcom/waze/reports/CameraReport;->access$1(Lcom/waze/reports/CameraReport;I)V

    .line 93
    iget-object v1, p0, Lcom/waze/reports/CameraReport$2;->this$0:Lcom/waze/reports/CameraReport;

    iget-object v1, v1, Lcom/waze/reports/CameraReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_RED_LIGHT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .restart local v0       #text:Ljava/lang/String;
    iget-object v1, p0, Lcom/waze/reports/CameraReport$2;->this$0:Lcom/waze/reports/CameraReport;

    invoke-virtual {v1, v5}, Lcom/waze/reports/CameraReport;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v1, p0, Lcom/waze/reports/CameraReport$2;->this$0:Lcom/waze/reports/CameraReport;

    const v2, 0x7f0901e7

    invoke-virtual {v1, v2}, Lcom/waze/reports/CameraReport;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 96
    iget-object v1, p0, Lcom/waze/reports/CameraReport$2;->this$0:Lcom/waze/reports/CameraReport;

    invoke-virtual {v1, v6}, Lcom/waze/reports/CameraReport;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0201fa

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 97
    iget-object v1, p0, Lcom/waze/reports/CameraReport$2;->this$0:Lcom/waze/reports/CameraReport;

    const v2, 0x7f0901ef

    invoke-virtual {v1, v2}, Lcom/waze/reports/CameraReport;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 98
    iget-object v1, p0, Lcom/waze/reports/CameraReport$2;->this$0:Lcom/waze/reports/CameraReport;

    #calls: Lcom/waze/reports/CameraReport;->setSendEnabled(Z)V
    invoke-static {v1, v3}, Lcom/waze/reports/CameraReport;->access$2(Lcom/waze/reports/CameraReport;Z)V

    goto :goto_0
.end method
