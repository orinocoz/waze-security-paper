.class Lcom/waze/navigate/AddFavoriteNameActivity$2;
.super Ljava/lang/Object;
.source "AddFavoriteNameActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/AddFavoriteNameActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/AddFavoriteNameActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/AddFavoriteNameActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/AddFavoriteNameActivity$2;->this$0:Lcom/waze/navigate/AddFavoriteNameActivity;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 119
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/waze/navigate/AddFavoriteNameActivity$2;->this$0:Lcom/waze/navigate/AddFavoriteNameActivity;

    invoke-virtual {v0, p1}, Lcom/waze/navigate/AddFavoriteNameActivity;->approveClicked(Landroid/view/View;)V

    .line 122
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 123
    iget-object v0, p0, Lcom/waze/navigate/AddFavoriteNameActivity$2;->this$0:Lcom/waze/navigate/AddFavoriteNameActivity;

    invoke-virtual {v0, p1}, Lcom/waze/navigate/AddFavoriteNameActivity;->approveClicked(Landroid/view/View;)V

    .line 125
    :cond_1
    return v1
.end method
