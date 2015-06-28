.class Lcom/waze/navigate/AddFavoriteNameActivity$3;
.super Ljava/lang/Object;
.source "AddFavoriteNameActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/AddFavoriteNameActivity;->onResume()V
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
    iput-object p1, p0, Lcom/waze/navigate/AddFavoriteNameActivity$3;->this$0:Lcom/waze/navigate/AddFavoriteNameActivity;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 138
    iget-object v1, p0, Lcom/waze/navigate/AddFavoriteNameActivity$3;->this$0:Lcom/waze/navigate/AddFavoriteNameActivity;

    iget-object v1, v1, Lcom/waze/navigate/AddFavoriteNameActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 139
    iget-object v1, p0, Lcom/waze/navigate/AddFavoriteNameActivity$3;->this$0:Lcom/waze/navigate/AddFavoriteNameActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/waze/navigate/AddFavoriteNameActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 140
    .local v0, mgr:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/waze/navigate/AddFavoriteNameActivity$3;->this$0:Lcom/waze/navigate/AddFavoriteNameActivity;

    iget-object v1, v1, Lcom/waze/navigate/AddFavoriteNameActivity;->editText:Landroid/widget/EditText;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 141
    return-void
.end method
