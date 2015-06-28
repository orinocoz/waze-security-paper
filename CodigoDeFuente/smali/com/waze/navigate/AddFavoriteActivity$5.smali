.class Lcom/waze/navigate/AddFavoriteActivity$5;
.super Ljava/lang/Object;
.source "AddFavoriteActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/AddFavoriteActivity;->onResume()V
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
    iput-object p1, p0, Lcom/waze/navigate/AddFavoriteActivity$5;->this$0:Lcom/waze/navigate/AddFavoriteActivity;

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 230
    iget-object v1, p0, Lcom/waze/navigate/AddFavoriteActivity$5;->this$0:Lcom/waze/navigate/AddFavoriteActivity;

    iget-object v1, v1, Lcom/waze/navigate/AddFavoriteActivity;->searchBox:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 232
    iget-object v1, p0, Lcom/waze/navigate/AddFavoriteActivity$5;->this$0:Lcom/waze/navigate/AddFavoriteActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/waze/navigate/AddFavoriteActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 233
    .local v0, mgr:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/waze/navigate/AddFavoriteActivity$5;->this$0:Lcom/waze/navigate/AddFavoriteActivity;

    iget-object v1, v1, Lcom/waze/navigate/AddFavoriteActivity;->searchBox:Landroid/widget/EditText;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 234
    return-void
.end method
