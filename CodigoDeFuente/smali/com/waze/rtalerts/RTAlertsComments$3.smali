.class Lcom/waze/rtalerts/RTAlertsComments$3;
.super Ljava/lang/Object;
.source "RTAlertsComments.java"

# interfaces
.implements Lcom/waze/rtalerts/RTAlertsNativeManager$IAlertsCommentDataHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/rtalerts/RTAlertsComments;->setCommentsList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/rtalerts/RTAlertsComments;

.field private final synthetic val$commentsListContainer:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/waze/rtalerts/RTAlertsComments;Landroid/widget/LinearLayout;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/rtalerts/RTAlertsComments$3;->this$0:Lcom/waze/rtalerts/RTAlertsComments;

    iput-object p2, p0, Lcom/waze/rtalerts/RTAlertsComments$3;->val$commentsListContainer:Landroid/widget/LinearLayout;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handler([Lcom/waze/rtalerts/RTAlertsCommentData;)V
    .locals 8
    .parameter "data"

    .prologue
    const/4 v7, 0x0

    .line 139
    if-eqz p1, :cond_0

    .line 142
    iget-object v3, p0, Lcom/waze/rtalerts/RTAlertsComments$3;->this$0:Lcom/waze/rtalerts/RTAlertsComments;

    iget-object v3, v3, Lcom/waze/rtalerts/RTAlertsComments;->mAdapter:Lcom/waze/rtalerts/RTAlertsCommentsAdapter;

    invoke-virtual {v3, p1}, Lcom/waze/rtalerts/RTAlertsCommentsAdapter;->update([Lcom/waze/rtalerts/RTAlertsCommentData;)V

    .line 143
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/waze/rtalerts/RTAlertsComments$3;->this$0:Lcom/waze/rtalerts/RTAlertsComments;

    iget-object v3, v3, Lcom/waze/rtalerts/RTAlertsComments;->mAdapter:Lcom/waze/rtalerts/RTAlertsCommentsAdapter;

    invoke-virtual {v3}, Lcom/waze/rtalerts/RTAlertsCommentsAdapter;->getCount()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 154
    iget-object v3, p0, Lcom/waze/rtalerts/RTAlertsComments$3;->val$commentsListContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7, v7, v7, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 155
    iget-object v3, p0, Lcom/waze/rtalerts/RTAlertsComments$3;->val$commentsListContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 157
    .end local v2           #i:I
    :cond_0
    return-void

    .line 145
    .restart local v2       #i:I
    :cond_1
    if-lez v2, :cond_2

    .line 147
    new-instance v1, Landroid/view/View;

    iget-object v3, p0, Lcom/waze/rtalerts/RTAlertsComments$3;->this$0:Lcom/waze/rtalerts/RTAlertsComments;

    invoke-direct {v1, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 148
    .local v1, dividerView:Landroid/view/View;
    const v3, 0x7f080037

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 149
    iget-object v3, p0, Lcom/waze/rtalerts/RTAlertsComments$3;->val$commentsListContainer:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    .end local v1           #dividerView:Landroid/view/View;
    :cond_2
    iget-object v3, p0, Lcom/waze/rtalerts/RTAlertsComments$3;->this$0:Lcom/waze/rtalerts/RTAlertsComments;

    iget-object v3, v3, Lcom/waze/rtalerts/RTAlertsComments;->mAdapter:Lcom/waze/rtalerts/RTAlertsCommentsAdapter;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/waze/rtalerts/RTAlertsComments$3;->val$commentsListContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2, v4, v5}, Lcom/waze/rtalerts/RTAlertsCommentsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 152
    .local v0, commentView:Landroid/view/View;
    iget-object v3, p0, Lcom/waze/rtalerts/RTAlertsComments$3;->val$commentsListContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 143
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
