.class Lcom/waze/reports/HazardReport$1;
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
    iput-object p1, p0, Lcom/waze/reports/HazardReport$1;->this$0:Lcom/waze/reports/HazardReport;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    .line 60
    iget-object v9, p0, Lcom/waze/reports/HazardReport$1;->this$0:Lcom/waze/reports/HazardReport;

    #getter for: Lcom/waze/reports/HazardReport;->selected:I
    invoke-static {v9}, Lcom/waze/reports/HazardReport;->access$0(Lcom/waze/reports/HazardReport;)I

    move-result v9

    if-nez v9, :cond_0

    .line 61
    iget-object v9, p0, Lcom/waze/reports/HazardReport$1;->this$0:Lcom/waze/reports/HazardReport;

    const/4 v10, -0x1

    #setter for: Lcom/waze/reports/HazardReport;->selected:I
    invoke-static {v9, v10}, Lcom/waze/reports/HazardReport;->access$1(Lcom/waze/reports/HazardReport;I)V

    .line 62
    iget-object v9, p0, Lcom/waze/reports/HazardReport$1;->this$0:Lcom/waze/reports/HazardReport;

    const/4 v10, -0x1

    #setter for: Lcom/waze/reports/HazardReport;->subSelected:I
    invoke-static {v9, v10}, Lcom/waze/reports/HazardReport;->access$2(Lcom/waze/reports/HazardReport;I)V

    .line 63
    iget-object v9, p0, Lcom/waze/reports/HazardReport$1;->this$0:Lcom/waze/reports/HazardReport;

    iget-object v9, v9, Lcom/waze/reports/HazardReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v10, Lcom/waze/strings/DisplayStrings;->DS_HAZARD:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v9, v10}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v8

    .line 64
    .local v8, text:Ljava/lang/String;
    iget-object v9, p0, Lcom/waze/reports/HazardReport$1;->this$0:Lcom/waze/reports/HazardReport;

    const v10, 0x7f090034

    invoke-virtual {v9, v10}, Lcom/waze/reports/HazardReport;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v9, p0, Lcom/waze/reports/HazardReport$1;->this$0:Lcom/waze/reports/HazardReport;

    const v10, 0x7f09030d

    invoke-virtual {v9, v10}, Lcom/waze/reports/HazardReport;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    const v10, 0x7f0201f7

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    :goto_0
    iget-object v9, p0, Lcom/waze/reports/HazardReport$1;->this$0:Lcom/waze/reports/HazardReport;

    invoke-virtual {v9}, Lcom/waze/reports/HazardReport;->stop()V

    .line 84
    return-void

    .line 67
    .end local v8           #text:Ljava/lang/String;
    :cond_0
    iget-object v9, p0, Lcom/waze/reports/HazardReport$1;->this$0:Lcom/waze/reports/HazardReport;

    const/4 v10, 0x0

    #setter for: Lcom/waze/reports/HazardReport;->selected:I
    invoke-static {v9, v10}, Lcom/waze/reports/HazardReport;->access$1(Lcom/waze/reports/HazardReport;I)V

    .line 68
    iget-object v9, p0, Lcom/waze/reports/HazardReport$1;->this$0:Lcom/waze/reports/HazardReport;

    iget-object v9, v9, Lcom/waze/reports/HazardReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v10, Lcom/waze/strings/DisplayStrings;->DS_ON_ROAD:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v9, v10}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v8

    .line 69
    .restart local v8       #text:Ljava/lang/String;
    iget-object v9, p0, Lcom/waze/reports/HazardReport$1;->this$0:Lcom/waze/reports/HazardReport;

    const v10, 0x7f090034

    invoke-virtual {v9, v10}, Lcom/waze/reports/HazardReport;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v9, p0, Lcom/waze/reports/HazardReport$1;->this$0:Lcom/waze/reports/HazardReport;

    const v10, 0x7f09030d

    invoke-virtual {v9, v10}, Lcom/waze/reports/HazardReport;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    const v10, 0x7f0201fa

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 71
    iget-object v9, p0, Lcom/waze/reports/HazardReport$1;->this$0:Lcom/waze/reports/HazardReport;

    const v10, 0x7f090311

    invoke-virtual {v9, v10}, Lcom/waze/reports/HazardReport;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    const v10, 0x7f0201f7

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 72
    iget-object v9, p0, Lcom/waze/reports/HazardReport$1;->this$0:Lcom/waze/reports/HazardReport;

    const v10, 0x7f090315

    invoke-virtual {v9, v10}, Lcom/waze/reports/HazardReport;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    const v10, 0x7f0201f7

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    iget-object v9, p0, Lcom/waze/reports/HazardReport$1;->this$0:Lcom/waze/reports/HazardReport;

    iget-object v9, v9, Lcom/waze/reports/HazardReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v10, Lcom/waze/strings/DisplayStrings;->DS_HAZARD_ON_ROAD:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v9, v10}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, dialogTitle:Ljava/lang/String;
    iget-object v9, p0, Lcom/waze/reports/HazardReport$1;->this$0:Lcom/waze/reports/HazardReport;

    iget-object v9, v9, Lcom/waze/reports/HazardReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v10, Lcom/waze/strings/DisplayStrings;->DS_OBJECT_ON_ROAD:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v9, v10}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, objectOnRoad:Ljava/lang/String;
    iget-object v9, p0, Lcom/waze/reports/HazardReport$1;->this$0:Lcom/waze/reports/HazardReport;

    iget-object v9, v9, Lcom/waze/reports/HazardReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v10, Lcom/waze/strings/DisplayStrings;->DS_CONSTRUCTION:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v9, v10}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, construction:Ljava/lang/String;
    iget-object v9, p0, Lcom/waze/reports/HazardReport$1;->this$0:Lcom/waze/reports/HazardReport;

    iget-object v9, v9, Lcom/waze/reports/HazardReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v10, Lcom/waze/strings/DisplayStrings;->DS_POTHOLE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v9, v10}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v6

    .line 77
    .local v6, pothole:Ljava/lang/String;
    iget-object v9, p0, Lcom/waze/reports/HazardReport$1;->this$0:Lcom/waze/reports/HazardReport;

    iget-object v9, v9, Lcom/waze/reports/HazardReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v10, Lcom/waze/strings/DisplayStrings;->DS_CAR_STOPPED_ON_ROAD:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v9, v10}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, carStopped:Ljava/lang/String;
    iget-object v9, p0, Lcom/waze/reports/HazardReport$1;->this$0:Lcom/waze/reports/HazardReport;

    iget-object v9, v9, Lcom/waze/reports/HazardReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v10, Lcom/waze/strings/DisplayStrings;->DS_ROADKILL:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v9, v10}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v7

    .line 79
    .local v7, roadkill:Ljava/lang/String;
    const/4 v9, 0x5

    new-array v5, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v3, v5, v9

    const/4 v9, 0x1

    aput-object v1, v5, v9

    const/4 v9, 0x2

    aput-object v6, v5, v9

    const/4 v9, 0x3

    aput-object v0, v5, v9

    const/4 v9, 0x4

    aput-object v7, v5, v9

    .line 80
    .local v5, options:[Ljava/lang/String;
    const/4 v9, 0x5

    new-array v4, v9, [I

    fill-array-data v4, :array_0

    .line 81
    .local v4, optionValues:[I
    iget-object v9, p0, Lcom/waze/reports/HazardReport$1;->this$0:Lcom/waze/reports/HazardReport;

    #calls: Lcom/waze/reports/HazardReport;->showSubmenu(Ljava/lang/String;[Ljava/lang/String;[I)V
    invoke-static {v9, v2, v5, v4}, Lcom/waze/reports/HazardReport;->access$3(Lcom/waze/reports/HazardReport;Ljava/lang/String;[Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 80
    nop

    :array_0
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data
.end method
