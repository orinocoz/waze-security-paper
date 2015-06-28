.class public Lcom/waze/rtalerts/RTAlertsCommentsEditor$CommentsEditorTitleBar;
.super Lcom/waze/view/title/TitleBar;
.source "RTAlertsCommentsEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/rtalerts/RTAlertsCommentsEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommentsEditorTitleBar"
.end annotation


# instance fields
.field private mContext:Lcom/waze/rtalerts/RTAlertsCommentsEditor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Lcom/waze/view/title/TitleBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 114
    check-cast p1, Lcom/waze/rtalerts/RTAlertsCommentsEditor;

    .end local p1
    iput-object p1, p0, Lcom/waze/rtalerts/RTAlertsCommentsEditor$CommentsEditorTitleBar;->mContext:Lcom/waze/rtalerts/RTAlertsCommentsEditor;

    .line 115
    return-void
.end method


# virtual methods
.method public onCloseClicked()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/waze/rtalerts/RTAlertsCommentsEditor$CommentsEditorTitleBar;->mContext:Lcom/waze/rtalerts/RTAlertsCommentsEditor;

    iget-object v1, p0, Lcom/waze/rtalerts/RTAlertsCommentsEditor$CommentsEditorTitleBar;->mContext:Lcom/waze/rtalerts/RTAlertsCommentsEditor;

    #getter for: Lcom/waze/rtalerts/RTAlertsCommentsEditor;->mEditBox:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/waze/rtalerts/RTAlertsCommentsEditor;->access$0(Lcom/waze/rtalerts/RTAlertsCommentsEditor;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/waze/rtalerts/RTAlertsCommentsEditor;->done(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/waze/rtalerts/RTAlertsCommentsEditor;->access$1(Lcom/waze/rtalerts/RTAlertsCommentsEditor;Ljava/lang/String;)V

    .line 119
    return-void
.end method
