.class Lcom/waze/navigate/AddFavoriteActivity$3;
.super Ljava/lang/Object;
.source "AddFavoriteActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/AddFavoriteActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/AddFavoriteActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/AddFavoriteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/AddFavoriteActivity$3;->this$0:Lcom/waze/navigate/AddFavoriteActivity;

    .line 184
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

    .line 188
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/waze/navigate/AddFavoriteActivity$3;->this$0:Lcom/waze/navigate/AddFavoriteActivity;

    invoke-virtual {v0, p1}, Lcom/waze/navigate/AddFavoriteActivity;->searchClicked(Landroid/view/View;)V

    .line 191
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 192
    iget-object v0, p0, Lcom/waze/navigate/AddFavoriteActivity$3;->this$0:Lcom/waze/navigate/AddFavoriteActivity;

    invoke-virtual {v0, p1}, Lcom/waze/navigate/AddFavoriteActivity;->searchClicked(Landroid/view/View;)V

    .line 194
    :cond_1
    return v1
.end method
