.class Lcom/waze/reports/HazardReport$2;
.super Ljava/lang/Object;
.source "HazardReport.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/HazardReport;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/HazardReport;


# direct methods
.method constructor <init>(Lcom/waze/reports/HazardReport;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/HazardReport$2;->this$0:Lcom/waze/reports/HazardReport;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .parameter "v"

    .prologue
    const v12, 0x7f090034

    const/4 v11, 0x3

    const/4 v8, -0x1

    const v10, 0x7f0201f7

    const/4 v9, 0x1

    .line 88
    iget-object v7, p0, Lcom/waze/reports/HazardReport$2;->this$0:Lcom/waze/reports/HazardReport;

    #getter for: Lcom/waze/reports/HazardReport;->selected:I
    invoke-static {v7}, Lcom/waze/reports/HazardReport;->access$0(Lcom/waze/reports/HazardReport;)I

    move-result v7

    if-ne v7, v9, :cond_0

    .line 89
    iget-object v7, p0, Lcom/waze/reports/HazardReport$2;->this$0:Lcom/waze/reports/HazardReport;

    #setter for: Lcom/waze/reports/HazardReport;->selected:I
    invoke-static {v7, v8}, Lcom/waze/reports/HazardReport;->access$1(Lcom/waze/reports/HazardReport;I)V

    .line 90
    iget-object v7, p0, Lcom/waze/reports/HazardReport$2;->this$0:Lcom/waze/reports/HazardReport;

    #setter for: Lcom/waze/reports/HazardReport;->subSelected:I
    invoke-static {v7, v8}, Lcom/waze/reports/HazardReport;->access$2(Lcom/waze/reports/HazardReport;I)V

    .line 91
    iget-object v7, p0, Lcom/waze/reports/HazardReport$2;->this$0:Lcom/waze/reports/HazardReport;

    iget-object v7, v7, Lcom/waze/reports/HazardReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v8, Lcom/waze/strings/DisplayStrings;->DS_HAZARD:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v7, v8}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v6

    .line 92
    .local v6, text:Ljava/lang/String;
    iget-object v7, p0, Lcom/waze/reports/HazardReport$2;->this$0:Lcom/waze/reports/HazardReport;

    invoke-virtual {v7, v12}, Lcom/waze/reports/HazardReport;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v7, p0, Lcom/waze/reports/HazardReport$2;->this$0:Lcom/waze/reports/HazardReport;

    const v8, 0x7f090311

    invoke-virtual {v7, v8}, Lcom/waze/reports/HazardReport;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    :goto_0
    iget-object v7, p0, Lcom/waze/reports/HazardReport$2;->this$0:Lcom/waze/reports/HazardReport;

    invoke-virtual {v7}, Lcom/waze/reports/HazardReport;->stop()V

    .line 110
    return-void

    .line 95
    .end local v6           #text:Ljava/lang/String;
    :cond_0
    iget-object v7, p0, Lcom/waze/reports/HazardReport$2;->this$0:Lcom/waze/reports/HazardReport;

    #setter for: Lcom/waze/reports/HazardReport;->selected:I
    invoke-static {v7, v9}, Lcom/waze/reports/HazardReport;->access$1(Lcom/waze/reports/HazardReport;I)V

    .line 96
    iget-object v7, p0, Lcom/waze/reports/HazardReport$2;->this$0:Lcom/waze/reports/HazardReport;

    iget-object v7, v7, Lcom/waze/reports/HazardReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v8, Lcom/waze/strings/DisplayStrings;->DS_SHOULDER:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v7, v8}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v6

    .line 97
    .restart local v6       #text:Ljava/lang/String;
    iget-object v7, p0, Lcom/waze/reports/HazardReport$2;->this$0:Lcom/waze/reports/HazardReport;

    invoke-virtual {v7, v12}, Lcom/waze/reports/HazardReport;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v7, p0, Lcom/waze/reports/HazardReport$2;->this$0:Lcom/waze/reports/HazardReport;

    const v8, 0x7f09030d

    invoke-virtual {v7, v8}, Lcom/waze/reports/HazardReport;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 99
    iget-object v7, p0, Lcom/waze/reports/HazardReport$2;->this$0:Lcom/waze/reports/HazardReport;

    const v8, 0x7f090311

    invoke-virtual {v7, v8}, Lcom/waze/reports/HazardReport;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    const v8, 0x7f0201fa

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    iget-object v7, p0, Lcom/waze/reports/HazardReport$2;->this$0:Lcom/waze/reports/HazardReport;

    const v8, 0x7f090315

    invoke-virtual {v7, v8}, Lcom/waze/reports/HazardReport;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    iget-object v7, p0, Lcom/waze/reports/HazardReport$2;->this$0:Lcom/waze/reports/HazardReport;

    iget-object v7, v7, Lcom/waze/reports/HazardReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v8, Lcom/waze/strings/DisplayStrings;->DS_HAZARD_ON_SHOULDER:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v7, v8}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, dialogTitle:Ljava/lang/String;
    iget-object v7, p0, Lcom/waze/reports/HazardReport$2;->this$0:Lcom/waze/reports/HazardReport;

    iget-object v7, v7, Lcom/waze/reports/HazardReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v8, Lcom/waze/strings/DisplayStrings;->DS_CAR_STOPPED:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v7, v8}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, carStopped:Ljava/lang/String;
    iget-object v7, p0, Lcom/waze/reports/HazardReport$2;->this$0:Lcom/waze/reports/HazardReport;

    iget-object v7, v7, Lcom/waze/reports/HazardReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v8, Lcom/waze/strings/DisplayStrings;->DS_ANIMALS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v7, v8}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, animals:Ljava/lang/String;
    iget-object v7, p0, Lcom/waze/reports/HazardReport$2;->this$0:Lcom/waze/reports/HazardReport;

    iget-object v7, v7, Lcom/waze/reports/HazardReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v8, Lcom/waze/strings/DisplayStrings;->DS_MISSING_SIGN:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v7, v8}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, missingSign:Ljava/lang/String;
    new-array v5, v11, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v1, v5, v7

    aput-object v0, v5, v9

    const/4 v7, 0x2

    aput-object v3, v5, v7

    .line 106
    .local v5, options:[Ljava/lang/String;
    new-array v4, v11, [I

    fill-array-data v4, :array_0

    .line 107
    .local v4, optionValues:[I
    iget-object v7, p0, Lcom/waze/reports/HazardReport$2;->this$0:Lcom/waze/reports/HazardReport;

    #calls: Lcom/waze/reports/HazardReport;->showSubmenu(Ljava/lang/String;[Ljava/lang/String;[I)V
    invoke-static {v7, v2, v5, v4}, Lcom/waze/reports/HazardReport;->access$3(Lcom/waze/reports/HazardReport;Ljava/lang/String;[Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 106
    nop

    :array_0
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data
.end method
