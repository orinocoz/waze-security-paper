.class Lcom/waze/navigate/NavigateActivity$7;
.super Ljava/lang/Object;
.source "NavigateActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/NavigateActivity;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/NavigateActivity;

.field private final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/waze/navigate/NavigateActivity;Landroid/widget/ListView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/NavigateActivity$7;->this$0:Lcom/waze/navigate/NavigateActivity;

    iput-object p2, p0, Lcom/waze/navigate/NavigateActivity$7;->val$listView:Landroid/widget/ListView;

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 447
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 435
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 436
    iget-object v1, p0, Lcom/waze/navigate/NavigateActivity$7;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 437
    iget-object v1, p0, Lcom/waze/navigate/NavigateActivity$7;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->requestFocus()Z

    .line 439
    iget-object v1, p0, Lcom/waze/navigate/NavigateActivity$7;->this$0:Lcom/waze/navigate/NavigateActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/waze/navigate/NavigateActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 440
    .local v0, mgr:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/waze/navigate/NavigateActivity$7;->this$0:Lcom/waze/navigate/NavigateActivity;

    iget-object v1, v1, Lcom/waze/navigate/NavigateActivity;->searchBox:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 443
    .end local v0           #mgr:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method
