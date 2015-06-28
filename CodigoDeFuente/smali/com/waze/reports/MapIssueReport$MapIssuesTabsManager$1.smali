.class Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager$1;
.super Ljava/lang/Object;
.source "MapIssueReport.java"

# interfaces
.implements Lcom/waze/view/tabs/TabBar$IOnTabClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final isRecording:Z

.field mgr:Lcom/waze/NativeManager;

.field final synthetic this$1:Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;


# direct methods
.method constructor <init>(Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;)V
    .locals 1
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager$1;->this$1:Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager$1;->mgr:Lcom/waze/NativeManager;

    .line 175
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->isEditorIgnoreNewRoadsNTV()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager$1;->isRecording:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onClick(I)V
    .locals 11
    .parameter "tabId"

    .prologue
    const v10, 0x7f0903ea

    const v9, 0x7f090034

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 178
    if-nez p1, :cond_0

    .line 180
    iget-object v4, p0, Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager$1;->this$1:Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;

    #getter for: Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;->mHolder:Lcom/waze/reports/MapIssueReport;
    invoke-static {v4}, Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;->access$0(Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;)Lcom/waze/reports/MapIssueReport;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/waze/reports/MapIssueReport;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 181
    .local v1, mapIssueView:Landroid/view/View;
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 183
    iget-object v4, p0, Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager$1;->this$1:Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;

    #getter for: Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;->mHolder:Lcom/waze/reports/MapIssueReport;
    invoke-static {v4}, Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;->access$0(Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;)Lcom/waze/reports/MapIssueReport;

    move-result-object v4

    const v5, 0x7f0903ed

    invoke-virtual {v4, v5}, Lcom/waze/reports/MapIssueReport;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 184
    .local v2, roadRecordingView:Landroid/view/View;
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 186
    iget-object v4, p0, Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager$1;->mgr:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_MAP_ISSUE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 187
    .local v3, titleText:Ljava/lang/String;
    iget-object v4, p0, Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager$1;->this$1:Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;

    #getter for: Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;->mHolder:Lcom/waze/reports/MapIssueReport;
    invoke-static {v4}, Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;->access$0(Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;)Lcom/waze/reports/MapIssueReport;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/waze/reports/MapIssueReport;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v4, p0, Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager$1;->mgr:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_SEND:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, buttonText:Ljava/lang/String;
    iget-object v4, p0, Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager$1;->this$1:Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;

    #getter for: Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;->mHolder:Lcom/waze/reports/MapIssueReport;
    invoke-static {v4}, Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;->access$0(Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;)Lcom/waze/reports/MapIssueReport;

    move-result-object v4

    const v5, 0x7f090370

    invoke-virtual {v4, v5}, Lcom/waze/reports/MapIssueReport;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v4, p0, Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager$1;->this$1:Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;

    #getter for: Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;->mHolder:Lcom/waze/reports/MapIssueReport;
    invoke-static {v4}, Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;->access$0(Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;)Lcom/waze/reports/MapIssueReport;

    move-result-object v4

    #setter for: Lcom/waze/reports/MapIssueReport;->mIsInPaveMode:Z
    invoke-static {v4, v6}, Lcom/waze/reports/MapIssueReport;->access$0(Lcom/waze/reports/MapIssueReport;Z)V

    .line 194
    .end local v0           #buttonText:Ljava/lang/String;
    .end local v1           #mapIssueView:Landroid/view/View;
    .end local v2           #roadRecordingView:Landroid/view/View;
    .end local v3           #titleText:Ljava/lang/String;
    :cond_0
    if-ne p1, v7, :cond_1

    .line 197
    iget-object v4, p0, Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager$1;->this$1:Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;

    #getter for: Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;->mHolder:Lcom/waze/reports/MapIssueReport;
    invoke-static {v4}, Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;->access$0(Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;)Lcom/waze/reports/MapIssueReport;

    move-result-object v4

    invoke-virtual {v4}, Lcom/waze/reports/MapIssueReport;->hideSoftInput()V

    .line 199
    iget-object v4, p0, Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager$1;->this$1:Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;

    #getter for: Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;->mHolder:Lcom/waze/reports/MapIssueReport;
    invoke-static {v4}, Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;->access$0(Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;)Lcom/waze/reports/MapIssueReport;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/waze/reports/MapIssueReport;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 200
    .restart local v1       #mapIssueView:Landroid/view/View;
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 202
    iget-object v4, p0, Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager$1;->mgr:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_PAVE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 203
    .restart local v3       #titleText:Ljava/lang/String;
    iget-object v4, p0, Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager$1;->this$1:Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;

    #getter for: Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;->mHolder:Lcom/waze/reports/MapIssueReport;
    invoke-static {v4}, Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;->access$0(Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;)Lcom/waze/reports/MapIssueReport;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/waze/reports/MapIssueReport;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v4, p0, Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager$1;->this$1:Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;

    #getter for: Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;->mHolder:Lcom/waze/reports/MapIssueReport;
    invoke-static {v4}, Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;->access$0(Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;)Lcom/waze/reports/MapIssueReport;

    move-result-object v4

    #setter for: Lcom/waze/reports/MapIssueReport;->mIsInPaveMode:Z
    invoke-static {v4, v7}, Lcom/waze/reports/MapIssueReport;->access$0(Lcom/waze/reports/MapIssueReport;Z)V

    .line 206
    iget-object v4, p0, Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager$1;->this$1:Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;

    #getter for: Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;->mHolder:Lcom/waze/reports/MapIssueReport;
    invoke-static {v4}, Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;->access$0(Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;)Lcom/waze/reports/MapIssueReport;

    move-result-object v4

    const v5, 0x7f0903ed

    invoke-virtual {v4, v5}, Lcom/waze/reports/MapIssueReport;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 207
    .restart local v2       #roadRecordingView:Landroid/view/View;
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 209
    iget-boolean v4, p0, Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager$1;->isRecording:Z

    if-eqz v4, :cond_2

    .line 210
    iget-object v4, p0, Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager$1;->this$1:Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;

    #getter for: Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;->mHolder:Lcom/waze/reports/MapIssueReport;
    invoke-static {v4}, Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;->access$0(Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;)Lcom/waze/reports/MapIssueReport;

    move-result-object v4

    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v5

    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_DONEQ:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/waze/reports/MapIssueReport;->setAdditionTextTitle(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/waze/reports/MapIssueReport;->access$1(Lcom/waze/reports/MapIssueReport;Ljava/lang/String;)V

    .line 211
    iget-object v4, p0, Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager$1;->this$1:Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;

    #getter for: Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;->mHolder:Lcom/waze/reports/MapIssueReport;
    invoke-static {v4}, Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;->access$0(Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;)Lcom/waze/reports/MapIssueReport;

    move-result-object v4

    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v5

    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_CLICK_STOP_AND_MAKE_SURE_TO_GO:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/waze/reports/MapIssueReport;->setAdditionText(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/waze/reports/MapIssueReport;->access$2(Lcom/waze/reports/MapIssueReport;Ljava/lang/String;)V

    .line 212
    iget-object v4, p0, Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager$1;->this$1:Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;

    #getter for: Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;->mHolder:Lcom/waze/reports/MapIssueReport;
    invoke-static {v4}, Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;->access$0(Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;)Lcom/waze/reports/MapIssueReport;

    move-result-object v4

    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v5

    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_STOP_PAVING:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/waze/reports/MapIssueReport;->setButtonText(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/waze/reports/MapIssueReport;->access$3(Lcom/waze/reports/MapIssueReport;Ljava/lang/String;)V

    .line 213
    iget-object v4, p0, Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager$1;->this$1:Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;

    #getter for: Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;->mHolder:Lcom/waze/reports/MapIssueReport;
    invoke-static {v4}, Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;->access$0(Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;)Lcom/waze/reports/MapIssueReport;

    move-result-object v4

    const v5, 0x7f0903ef

    invoke-virtual {v4, v5}, Lcom/waze/reports/MapIssueReport;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f0201ff

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 224
    .end local v1           #mapIssueView:Landroid/view/View;
    .end local v2           #roadRecordingView:Landroid/view/View;
    .end local v3           #titleText:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 216
    .restart local v1       #mapIssueView:Landroid/view/View;
    .restart local v2       #roadRecordingView:Landroid/view/View;
    .restart local v3       #titleText:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager$1;->this$1:Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;

    #getter for: Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;->mHolder:Lcom/waze/reports/MapIssueReport;
    invoke-static {v4}, Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;->access$0(Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;)Lcom/waze/reports/MapIssueReport;

    move-result-object v4

    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v5

    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_NO_ROAD_HEREQ:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/waze/reports/MapIssueReport;->setAdditionTextTitle(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/waze/reports/MapIssueReport;->access$1(Lcom/waze/reports/MapIssueReport;Ljava/lang/String;)V

    .line 217
    iget-object v4, p0, Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager$1;->this$1:Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;

    #getter for: Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;->mHolder:Lcom/waze/reports/MapIssueReport;
    invoke-static {v4}, Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;->access$0(Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;)Lcom/waze/reports/MapIssueReport;

    move-result-object v4

    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v5

    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_CLICK_PAVE_AND_SIMPLY_DRIVE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/waze/reports/MapIssueReport;->setAdditionText(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/waze/reports/MapIssueReport;->access$2(Lcom/waze/reports/MapIssueReport;Ljava/lang/String;)V

    .line 218
    iget-object v4, p0, Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager$1;->this$1:Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;

    #getter for: Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;->mHolder:Lcom/waze/reports/MapIssueReport;
    invoke-static {v4}, Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;->access$0(Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;)Lcom/waze/reports/MapIssueReport;

    move-result-object v4

    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v5

    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_PAVE_ROAD:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/waze/reports/MapIssueReport;->setButtonText(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/waze/reports/MapIssueReport;->access$3(Lcom/waze/reports/MapIssueReport;Ljava/lang/String;)V

    .line 219
    iget-object v4, p0, Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager$1;->this$1:Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;

    #getter for: Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;->mHolder:Lcom/waze/reports/MapIssueReport;
    invoke-static {v4}, Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;->access$0(Lcom/waze/reports/MapIssueReport$MapIssuesTabsManager;)Lcom/waze/reports/MapIssueReport;

    move-result-object v4

    const v5, 0x7f0903ef

    invoke-virtual {v4, v5}, Lcom/waze/reports/MapIssueReport;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f020200

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
