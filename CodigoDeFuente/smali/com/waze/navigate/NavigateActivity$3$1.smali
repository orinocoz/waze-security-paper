.class Lcom/waze/navigate/NavigateActivity$3$1;
.super Ljava/lang/Object;
.source "NavigateActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/NavigateActivity$3;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/navigate/NavigateActivity$3;


# direct methods
.method constructor <init>(Lcom/waze/navigate/NavigateActivity$3;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/NavigateActivity$3$1;->this$1:Lcom/waze/navigate/NavigateActivity$3;

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 314
    iget-object v1, p0, Lcom/waze/navigate/NavigateActivity$3$1;->this$1:Lcom/waze/navigate/NavigateActivity$3;

    #getter for: Lcom/waze/navigate/NavigateActivity$3;->this$0:Lcom/waze/navigate/NavigateActivity;
    invoke-static {v1}, Lcom/waze/navigate/NavigateActivity$3;->access$0(Lcom/waze/navigate/NavigateActivity$3;)Lcom/waze/navigate/NavigateActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/waze/navigate/NavigateActivity;->searchBox:Landroid/widget/AutoCompleteTextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v1, p0, Lcom/waze/navigate/NavigateActivity$3$1;->this$1:Lcom/waze/navigate/NavigateActivity$3;

    #getter for: Lcom/waze/navigate/NavigateActivity$3;->this$0:Lcom/waze/navigate/NavigateActivity;
    invoke-static {v1}, Lcom/waze/navigate/NavigateActivity$3;->access$0(Lcom/waze/navigate/NavigateActivity$3;)Lcom/waze/navigate/NavigateActivity;

    move-result-object v1

    #getter for: Lcom/waze/navigate/NavigateActivity;->mPlaceAdapter:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;
    invoke-static {v1}, Lcom/waze/navigate/NavigateActivity;->access$4(Lcom/waze/navigate/NavigateActivity;)Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->setIsCalendar(Z)V

    .line 316
    iget-object v1, p0, Lcom/waze/navigate/NavigateActivity$3$1;->this$1:Lcom/waze/navigate/NavigateActivity$3;

    #getter for: Lcom/waze/navigate/NavigateActivity$3;->this$0:Lcom/waze/navigate/NavigateActivity;
    invoke-static {v1}, Lcom/waze/navigate/NavigateActivity$3;->access$0(Lcom/waze/navigate/NavigateActivity$3;)Lcom/waze/navigate/NavigateActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/waze/navigate/NavigateActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 317
    .local v0, mgr:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/waze/navigate/NavigateActivity$3$1;->this$1:Lcom/waze/navigate/NavigateActivity$3;

    #getter for: Lcom/waze/navigate/NavigateActivity$3;->this$0:Lcom/waze/navigate/NavigateActivity;
    invoke-static {v1}, Lcom/waze/navigate/NavigateActivity$3;->access$0(Lcom/waze/navigate/NavigateActivity$3;)Lcom/waze/navigate/NavigateActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/waze/navigate/NavigateActivity;->searchBox:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 318
    iget-object v1, p0, Lcom/waze/navigate/NavigateActivity$3$1;->this$1:Lcom/waze/navigate/NavigateActivity$3;

    #getter for: Lcom/waze/navigate/NavigateActivity$3;->this$0:Lcom/waze/navigate/NavigateActivity;
    invoke-static {v1}, Lcom/waze/navigate/NavigateActivity$3;->access$0(Lcom/waze/navigate/NavigateActivity$3;)Lcom/waze/navigate/NavigateActivity;

    move-result-object v1

    #getter for: Lcom/waze/navigate/NavigateActivity;->nm:Lcom/waze/navigate/DriveToNativeManager;
    invoke-static {v1}, Lcom/waze/navigate/NavigateActivity;->access$5(Lcom/waze/navigate/NavigateActivity;)Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/navigate/NavigateActivity$3$1;->this$1:Lcom/waze/navigate/NavigateActivity$3;

    #getter for: Lcom/waze/navigate/NavigateActivity$3;->this$0:Lcom/waze/navigate/NavigateActivity;
    invoke-static {v2}, Lcom/waze/navigate/NavigateActivity$3;->access$0(Lcom/waze/navigate/NavigateActivity$3;)Lcom/waze/navigate/NavigateActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/waze/navigate/NavigateActivity;->getTopTenFavoritesCallback:Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;

    invoke-virtual {v1, v2}, Lcom/waze/navigate/DriveToNativeManager;->getTopTenFavorites(Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;)V

    .line 319
    iget-object v1, p0, Lcom/waze/navigate/NavigateActivity$3$1;->this$1:Lcom/waze/navigate/NavigateActivity$3;

    #getter for: Lcom/waze/navigate/NavigateActivity$3;->this$0:Lcom/waze/navigate/NavigateActivity;
    invoke-static {v1}, Lcom/waze/navigate/NavigateActivity$3;->access$0(Lcom/waze/navigate/NavigateActivity$3;)Lcom/waze/navigate/NavigateActivity;

    move-result-object v1

    #getter for: Lcom/waze/navigate/NavigateActivity;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v1}, Lcom/waze/navigate/NavigateActivity;->access$6(Lcom/waze/navigate/NavigateActivity;)Lcom/waze/NativeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/NativeManager;->CloseProgressPopup()V

    .line 320
    return-void
.end method
