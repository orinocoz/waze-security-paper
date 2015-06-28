.class Lcom/waze/reports/HazardReport$3;
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
    iput-object p1, p0, Lcom/waze/reports/HazardReport$3;->this$0:Lcom/waze/reports/HazardReport;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .parameter "v"

    .prologue
    const v13, 0x7f090034

    const/4 v12, 0x4

    const/4 v9, -0x1

    const v11, 0x7f0201f7

    const/4 v10, 0x2

    .line 114
    iget-object v8, p0, Lcom/waze/reports/HazardReport$3;->this$0:Lcom/waze/reports/HazardReport;

    #getter for: Lcom/waze/reports/HazardReport;->selected:I
    invoke-static {v8}, Lcom/waze/reports/HazardReport;->access$0(Lcom/waze/reports/HazardReport;)I

    move-result v8

    if-ne v8, v10, :cond_0

    .line 115
    iget-object v8, p0, Lcom/waze/reports/HazardReport$3;->this$0:Lcom/waze/reports/HazardReport;

    #setter for: Lcom/waze/reports/HazardReport;->selected:I
    invoke-static {v8, v9}, Lcom/waze/reports/HazardReport;->access$1(Lcom/waze/reports/HazardReport;I)V

    .line 116
    iget-object v8, p0, Lcom/waze/reports/HazardReport$3;->this$0:Lcom/waze/reports/HazardReport;

    #setter for: Lcom/waze/reports/HazardReport;->subSelected:I
    invoke-static {v8, v9}, Lcom/waze/reports/HazardReport;->access$2(Lcom/waze/reports/HazardReport;I)V

    .line 117
    iget-object v8, p0, Lcom/waze/reports/HazardReport$3;->this$0:Lcom/waze/reports/HazardReport;

    iget-object v8, v8, Lcom/waze/reports/HazardReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_HAZARD:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v8, v9}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v7

    .line 118
    .local v7, text:Ljava/lang/String;
    iget-object v8, p0, Lcom/waze/reports/HazardReport$3;->this$0:Lcom/waze/reports/HazardReport;

    invoke-virtual {v8, v13}, Lcom/waze/reports/HazardReport;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v8, p0, Lcom/waze/reports/HazardReport$3;->this$0:Lcom/waze/reports/HazardReport;

    const v9, 0x7f090315

    invoke-virtual {v8, v9}, Lcom/waze/reports/HazardReport;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 136
    :goto_0
    iget-object v8, p0, Lcom/waze/reports/HazardReport$3;->this$0:Lcom/waze/reports/HazardReport;

    invoke-virtual {v8}, Lcom/waze/reports/HazardReport;->stop()V

    .line 137
    return-void

    .line 121
    .end local v7           #text:Ljava/lang/String;
    :cond_0
    iget-object v8, p0, Lcom/waze/reports/HazardReport$3;->this$0:Lcom/waze/reports/HazardReport;

    #setter for: Lcom/waze/reports/HazardReport;->selected:I
    invoke-static {v8, v10}, Lcom/waze/reports/HazardReport;->access$1(Lcom/waze/reports/HazardReport;I)V

    .line 122
    iget-object v8, p0, Lcom/waze/reports/HazardReport$3;->this$0:Lcom/waze/reports/HazardReport;

    iget-object v8, v8, Lcom/waze/reports/HazardReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_WEATHER:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v8, v9}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v7

    .line 123
    .restart local v7       #text:Ljava/lang/String;
    iget-object v8, p0, Lcom/waze/reports/HazardReport$3;->this$0:Lcom/waze/reports/HazardReport;

    invoke-virtual {v8, v13}, Lcom/waze/reports/HazardReport;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v8, p0, Lcom/waze/reports/HazardReport$3;->this$0:Lcom/waze/reports/HazardReport;

    const v9, 0x7f09030d

    invoke-virtual {v8, v9}, Lcom/waze/reports/HazardReport;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 125
    iget-object v8, p0, Lcom/waze/reports/HazardReport$3;->this$0:Lcom/waze/reports/HazardReport;

    const v9, 0x7f090311

    invoke-virtual {v8, v9}, Lcom/waze/reports/HazardReport;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 126
    iget-object v8, p0, Lcom/waze/reports/HazardReport$3;->this$0:Lcom/waze/reports/HazardReport;

    const v9, 0x7f090315

    invoke-virtual {v8, v9}, Lcom/waze/reports/HazardReport;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    const v9, 0x7f0201fa

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    iget-object v8, p0, Lcom/waze/reports/HazardReport$3;->this$0:Lcom/waze/reports/HazardReport;

    iget-object v8, v8, Lcom/waze/reports/HazardReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_WEATHER_HAZARD:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v8, v9}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, dialogTitle:Ljava/lang/String;
    iget-object v8, p0, Lcom/waze/reports/HazardReport$3;->this$0:Lcom/waze/reports/HazardReport;

    iget-object v8, v8, Lcom/waze/reports/HazardReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_FOG:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v8, v9}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, fog:Ljava/lang/String;
    iget-object v8, p0, Lcom/waze/reports/HazardReport$3;->this$0:Lcom/waze/reports/HazardReport;

    iget-object v8, v8, Lcom/waze/reports/HazardReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_HAIL:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v8, v9}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, hail:Ljava/lang/String;
    iget-object v8, p0, Lcom/waze/reports/HazardReport$3;->this$0:Lcom/waze/reports/HazardReport;

    iget-object v8, v8, Lcom/waze/reports/HazardReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_FLOOD:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v8, v9}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    .line 131
    .local v5, rain:Ljava/lang/String;
    iget-object v8, p0, Lcom/waze/reports/HazardReport$3;->this$0:Lcom/waze/reports/HazardReport;

    iget-object v8, v8, Lcom/waze/reports/HazardReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_ICE_ON_ROAD:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v8, v9}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v6

    .line 132
    .local v6, snow:Ljava/lang/String;
    new-array v4, v12, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v1, v4, v8

    const/4 v8, 0x1

    aput-object v2, v4, v8

    aput-object v5, v4, v10

    const/4 v8, 0x3

    aput-object v6, v4, v8

    .line 133
    .local v4, options:[Ljava/lang/String;
    new-array v3, v12, [I

    fill-array-data v3, :array_0

    .line 134
    .local v3, optionValues:[I
    iget-object v8, p0, Lcom/waze/reports/HazardReport$3;->this$0:Lcom/waze/reports/HazardReport;

    #calls: Lcom/waze/reports/HazardReport;->showSubmenu(Ljava/lang/String;[Ljava/lang/String;[I)V
    invoke-static {v8, v0, v4, v3}, Lcom/waze/reports/HazardReport;->access$3(Lcom/waze/reports/HazardReport;Ljava/lang/String;[Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 133
    :array_0
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data
.end method
