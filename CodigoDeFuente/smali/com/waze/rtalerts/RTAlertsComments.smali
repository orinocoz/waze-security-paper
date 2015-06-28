.class public Lcom/waze/rtalerts/RTAlertsComments;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "RTAlertsComments.java"


# static fields
.field protected static mAlertData:Lcom/waze/rtalerts/RTAlertsAlertData;

.field protected static mThis:Lcom/waze/rtalerts/RTAlertsComments;


# instance fields
.field protected mAdapter:Lcom/waze/rtalerts/RTAlertsCommentsAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 182
    sput-object v0, Lcom/waze/rtalerts/RTAlertsComments;->mThis:Lcom/waze/rtalerts/RTAlertsComments;

    .line 183
    sput-object v0, Lcom/waze/rtalerts/RTAlertsComments;->mAlertData:Lcom/waze/rtalerts/RTAlertsAlertData;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/rtalerts/RTAlertsComments;->mAdapter:Lcom/waze/rtalerts/RTAlertsCommentsAdapter;

    .line 34
    return-void
.end method

.method private setAddCommentButton(I)V
    .locals 5
    .parameter "alertId"

    .prologue
    .line 97
    invoke-static {}, Lcom/waze/rtalerts/RTAlertsNativeManager;->getInstance()Lcom/waze/rtalerts/RTAlertsNativeManager;

    move-result-object v3

    .line 98
    .local v3, mgr:Lcom/waze/rtalerts/RTAlertsNativeManager;
    const v4, 0x7f0905c1

    invoke-virtual {p0, v4}, Lcom/waze/rtalerts/RTAlertsComments;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 99
    .local v1, btnAddComment:Landroid/view/View;
    const v4, 0x7f0905c2

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 100
    .local v2, btnText:Landroid/widget/TextView;
    const v4, 0x7f07018b

    invoke-virtual {v3, v4}, Lcom/waze/rtalerts/RTAlertsNativeManager;->getLangStr(I)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, addCommentText:Ljava/lang/String;
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    new-instance v4, Lcom/waze/rtalerts/RTAlertsComments$1;

    invoke-direct {v4, p0, v3, p1}, Lcom/waze/rtalerts/RTAlertsComments$1;-><init>(Lcom/waze/rtalerts/RTAlertsComments;Lcom/waze/rtalerts/RTAlertsNativeManager;I)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    return-void
.end method

.method private setCommentsList()V
    .locals 5

    .prologue
    .line 114
    invoke-static {}, Lcom/waze/rtalerts/RTAlertsNativeManager;->getInstance()Lcom/waze/rtalerts/RTAlertsNativeManager;

    move-result-object v3

    .line 115
    .local v3, mgr:Lcom/waze/rtalerts/RTAlertsNativeManager;
    const v4, 0x7f0905ca

    invoke-virtual {p0, v4}, Lcom/waze/rtalerts/RTAlertsComments;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 116
    .local v0, alertListItem:Landroid/view/View;
    sget-object v4, Lcom/waze/rtalerts/RTAlertsComments;->mAlertData:Lcom/waze/rtalerts/RTAlertsAlertData;

    invoke-static {p0, v0, v4}, Lcom/waze/rtalerts/RTAlertsListAdapter;->getView(Landroid/app/Activity;Landroid/view/View;Lcom/waze/rtalerts/RTAlertsAlertData;)Landroid/view/View;

    .line 118
    const v4, 0x7f0905db

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 119
    .local v1, commentsListContainer:Landroid/widget/LinearLayout;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 123
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/view/View;->setClickable(Z)V

    .line 124
    new-instance v4, Lcom/waze/rtalerts/RTAlertsComments$2;

    invoke-direct {v4, p0}, Lcom/waze/rtalerts/RTAlertsComments$2;-><init>(Lcom/waze/rtalerts/RTAlertsComments;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    new-instance v2, Lcom/waze/rtalerts/RTAlertsComments$3;

    invoke-direct {v2, p0, v1}, Lcom/waze/rtalerts/RTAlertsComments$3;-><init>(Lcom/waze/rtalerts/RTAlertsComments;Landroid/widget/LinearLayout;)V

    .line 159
    .local v2, dataHandler:Lcom/waze/rtalerts/RTAlertsNativeManager$IAlertsCommentDataHandler;
    sget-object v4, Lcom/waze/rtalerts/RTAlertsComments;->mAlertData:Lcom/waze/rtalerts/RTAlertsAlertData;

    iget v4, v4, Lcom/waze/rtalerts/RTAlertsAlertData;->mID:I

    invoke-virtual {v3, v4, v2}, Lcom/waze/rtalerts/RTAlertsNativeManager;->getAlertsCommentData(ILcom/waze/rtalerts/RTAlertsNativeManager$IAlertsCommentDataHandler;)V

    .line 160
    return-void
.end method

.method public static show(Landroid/app/Activity;Lcom/waze/rtalerts/RTAlertsAlertData;)V
    .locals 2
    .parameter "contextForResult"
    .parameter "alertData"

    .prologue
    .line 88
    sput-object p1, Lcom/waze/rtalerts/RTAlertsComments;->mAlertData:Lcom/waze/rtalerts/RTAlertsAlertData;

    .line 89
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/rtalerts/RTAlertsComments;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 90
    .local v0, intent:Landroid/content/Intent;
    const v1, 0x8005

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 91
    return-void
.end method

.method public static updateFbImage(II[BII)V
    .locals 5
    .parameter "alertId"
    .parameter "commentId"
    .parameter "image"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 73
    sget-object v3, Lcom/waze/rtalerts/RTAlertsComments;->mThis:Lcom/waze/rtalerts/RTAlertsComments;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/waze/rtalerts/RTAlertsComments;->mAlertData:Lcom/waze/rtalerts/RTAlertsAlertData;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/waze/rtalerts/RTAlertsComments;->mAlertData:Lcom/waze/rtalerts/RTAlertsAlertData;

    iget v3, v3, Lcom/waze/rtalerts/RTAlertsAlertData;->mID:I

    if-eq v3, p0, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    sget-object v3, Lcom/waze/rtalerts/RTAlertsComments;->mThis:Lcom/waze/rtalerts/RTAlertsComments;

    const v4, 0x7f0905db

    invoke-virtual {v3, v4}, Lcom/waze/rtalerts/RTAlertsComments;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 77
    .local v2, container:Landroid/widget/LinearLayout;
    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 79
    .local v1, commentView:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 81
    sget-object v3, Lcom/waze/rtalerts/RTAlertsComments;->mThis:Lcom/waze/rtalerts/RTAlertsComments;

    iget-object v0, v3, Lcom/waze/rtalerts/RTAlertsComments;->mAdapter:Lcom/waze/rtalerts/RTAlertsCommentsAdapter;

    .line 82
    .local v0, adapter:Lcom/waze/rtalerts/RTAlertsCommentsAdapter;
    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/waze/rtalerts/RTAlertsCommentsAdapter;->updateFbImage(Landroid/view/View;[BII)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 167
    invoke-super {p0, p1, p2, p3}, Lcom/waze/ifs/ui/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 168
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 170
    const/16 v0, 0x3ea

    invoke-virtual {p0, v0}, Lcom/waze/rtalerts/RTAlertsComments;->setResult(I)V

    .line 171
    invoke-virtual {p0}, Lcom/waze/rtalerts/RTAlertsComments;->finish()V

    .line 173
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v3, 0x7f0300d5

    invoke-virtual {p0, v3}, Lcom/waze/rtalerts/RTAlertsComments;->setContentView(I)V

    .line 42
    sput-object p0, Lcom/waze/rtalerts/RTAlertsComments;->mThis:Lcom/waze/rtalerts/RTAlertsComments;

    .line 44
    sget-object v3, Lcom/waze/rtalerts/RTAlertsComments;->mAlertData:Lcom/waze/rtalerts/RTAlertsAlertData;

    if-nez v3, :cond_0

    .line 46
    const-string v3, "WAZE"

    const-string v4, "Cannot open alerts comments this way. Please use show function and provide alert data!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-static {}, Lcom/waze/rtalerts/RTAlertsNativeManager;->getInstance()Lcom/waze/rtalerts/RTAlertsNativeManager;

    move-result-object v0

    .line 52
    .local v0, mgr:Lcom/waze/rtalerts/RTAlertsNativeManager;
    new-instance v3, Lcom/waze/rtalerts/RTAlertsCommentsAdapter;

    invoke-direct {v3, p0}, Lcom/waze/rtalerts/RTAlertsCommentsAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/waze/rtalerts/RTAlertsComments;->mAdapter:Lcom/waze/rtalerts/RTAlertsCommentsAdapter;

    .line 57
    const v3, 0x7f0905c0

    invoke-virtual {p0, v3}, Lcom/waze/rtalerts/RTAlertsComments;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/view/title/TitleBar;

    .line 58
    .local v2, titleBar:Lcom/waze/view/title/TitleBar;
    const v3, 0x7f07018a

    invoke-virtual {v0, v3}, Lcom/waze/rtalerts/RTAlertsNativeManager;->getLangStr(I)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, title:Ljava/lang/String;
    invoke-virtual {v2, p0, v1}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Ljava/lang/String;)V

    .line 63
    sget-object v3, Lcom/waze/rtalerts/RTAlertsComments;->mAlertData:Lcom/waze/rtalerts/RTAlertsAlertData;

    iget v3, v3, Lcom/waze/rtalerts/RTAlertsAlertData;->mID:I

    invoke-direct {p0, v3}, Lcom/waze/rtalerts/RTAlertsComments;->setAddCommentButton(I)V

    .line 67
    invoke-direct {p0}, Lcom/waze/rtalerts/RTAlertsComments;->setCommentsList()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 178
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onDestroy()V

    .line 179
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/rtalerts/RTAlertsComments;->mThis:Lcom/waze/rtalerts/RTAlertsComments;

    .line 180
    return-void
.end method
