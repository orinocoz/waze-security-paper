.class Lcom/waze/navigate/NavigateActivity$1;
.super Ljava/lang/Object;
.source "NavigateActivity.java"

# interfaces
.implements Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/navigate/NavigateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/NavigateActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/NavigateActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/NavigateActivity$1;->this$0:Lcom/waze/navigate/NavigateActivity;

    .line 867
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/navigate/NavigateActivity$1;)Lcom/waze/navigate/NavigateActivity;
    .locals 1
    .parameter

    .prologue
    .line 867
    iget-object v0, p0, Lcom/waze/navigate/NavigateActivity$1;->this$0:Lcom/waze/navigate/NavigateActivity;

    return-object v0
.end method


# virtual methods
.method public getAddressItemArrayCallback([Lcom/waze/navigate/AddressItem;)V
    .locals 9
    .parameter "ai"

    .prologue
    .line 871
    iget-object v0, p0, Lcom/waze/navigate/NavigateActivity$1;->this$0:Lcom/waze/navigate/NavigateActivity;

    #setter for: Lcom/waze/navigate/NavigateActivity;->mAddresses:[Lcom/waze/navigate/AddressItem;
    invoke-static {v0, p1}, Lcom/waze/navigate/NavigateActivity;->access$0(Lcom/waze/navigate/NavigateActivity;[Lcom/waze/navigate/AddressItem;)V

    .line 872
    iget-object v8, p0, Lcom/waze/navigate/NavigateActivity$1;->this$0:Lcom/waze/navigate/NavigateActivity;

    .line 873
    new-instance v0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;

    iget-object v1, p0, Lcom/waze/navigate/NavigateActivity$1;->this$0:Lcom/waze/navigate/NavigateActivity;

    .line 874
    const v2, 0x109000a

    iget-object v3, p0, Lcom/waze/navigate/NavigateActivity$1;->this$0:Lcom/waze/navigate/NavigateActivity;

    #getter for: Lcom/waze/navigate/NavigateActivity;->mAddresses:[Lcom/waze/navigate/AddressItem;
    invoke-static {v3}, Lcom/waze/navigate/NavigateActivity;->access$1(Lcom/waze/navigate/NavigateActivity;)[Lcom/waze/navigate/AddressItem;

    move-result-object v3

    iget-object v4, p0, Lcom/waze/navigate/NavigateActivity$1;->this$0:Lcom/waze/navigate/NavigateActivity;

    #getter for: Lcom/waze/navigate/NavigateActivity;->natMgr:Lcom/waze/NativeManager;
    invoke-static {v4}, Lcom/waze/navigate/NavigateActivity;->access$2(Lcom/waze/navigate/NavigateActivity;)Lcom/waze/NativeManager;

    move-result-object v4

    .line 875
    invoke-virtual {v4}, Lcom/waze/NativeManager;->getApiKey()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/waze/navigate/NavigateActivity$1;->this$0:Lcom/waze/navigate/NavigateActivity;

    iget-object v5, v5, Lcom/waze/navigate/NavigateActivity;->searchBox:Landroid/widget/AutoCompleteTextView;

    new-instance v6, Lcom/waze/navigate/NavigateActivity$1$1;

    invoke-direct {v6, p0}, Lcom/waze/navigate/NavigateActivity$1$1;-><init>(Lcom/waze/navigate/NavigateActivity$1;)V

    .line 873
    invoke-direct/range {v0 .. v6}, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;-><init>(Landroid/content/Context;I[Lcom/waze/navigate/AddressItem;Ljava/lang/String;Landroid/view/View;Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$IPrepareForSerchResults;)V

    .line 872
    #setter for: Lcom/waze/navigate/NavigateActivity;->mPlaceAdapter:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;
    invoke-static {v8, v0}, Lcom/waze/navigate/NavigateActivity;->access$3(Lcom/waze/navigate/NavigateActivity;Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;)V

    .line 881
    iget-object v0, p0, Lcom/waze/navigate/NavigateActivity$1;->this$0:Lcom/waze/navigate/NavigateActivity;

    iget-object v0, v0, Lcom/waze/navigate/NavigateActivity;->searchBox:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/waze/navigate/NavigateActivity$1;->this$0:Lcom/waze/navigate/NavigateActivity;

    #getter for: Lcom/waze/navigate/NavigateActivity;->mPlaceAdapter:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;
    invoke-static {v1}, Lcom/waze/navigate/NavigateActivity;->access$4(Lcom/waze/navigate/NavigateActivity;)Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 883
    iget-object v0, p0, Lcom/waze/navigate/NavigateActivity$1;->this$0:Lcom/waze/navigate/NavigateActivity;

    iget-object v0, v0, Lcom/waze/navigate/NavigateActivity;->mCalendarAI:Lcom/waze/navigate/AddressItem;

    if-eqz v0, :cond_1

    .line 885
    iget-object v0, p0, Lcom/waze/navigate/NavigateActivity$1;->this$0:Lcom/waze/navigate/NavigateActivity;

    iget-object v0, v0, Lcom/waze/navigate/NavigateActivity;->mCalendarAI:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v0}, Lcom/waze/navigate/AddressItem;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/waze/navigate/NavigateActivity$1;->this$0:Lcom/waze/navigate/NavigateActivity;

    iget-object v0, v0, Lcom/waze/navigate/NavigateActivity;->mCalendarAI:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v0}, Lcom/waze/navigate/AddressItem;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 887
    iget-object v0, p0, Lcom/waze/navigate/NavigateActivity$1;->this$0:Lcom/waze/navigate/NavigateActivity;

    iget-object v0, v0, Lcom/waze/navigate/NavigateActivity;->searchBox:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/waze/navigate/NavigateActivity$1;->this$0:Lcom/waze/navigate/NavigateActivity;

    iget-object v1, v1, Lcom/waze/navigate/NavigateActivity;->mCalendarAI:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v1}, Lcom/waze/navigate/AddressItem;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 888
    iget-object v0, p0, Lcom/waze/navigate/NavigateActivity$1;->this$0:Lcom/waze/navigate/NavigateActivity;

    iget-object v0, v0, Lcom/waze/navigate/NavigateActivity;->searchBox:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 889
    iget-object v0, p0, Lcom/waze/navigate/NavigateActivity$1;->this$0:Lcom/waze/navigate/NavigateActivity;

    iget-object v0, v0, Lcom/waze/navigate/NavigateActivity;->searchBox:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/waze/navigate/NavigateActivity$1;->this$0:Lcom/waze/navigate/NavigateActivity;

    iget-object v1, v1, Lcom/waze/navigate/NavigateActivity;->mCalendarAI:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v1}, Lcom/waze/navigate/AddressItem;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setSelection(I)V

    .line 897
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/waze/navigate/NavigateActivity$1;->this$0:Lcom/waze/navigate/NavigateActivity;

    #getter for: Lcom/waze/navigate/NavigateActivity;->mPlaceAdapter:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;
    invoke-static {v0}, Lcom/waze/navigate/NavigateActivity;->access$4(Lcom/waze/navigate/NavigateActivity;)Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->setIsCalendar(Z)V

    .line 898
    iget-object v0, p0, Lcom/waze/navigate/NavigateActivity$1;->this$0:Lcom/waze/navigate/NavigateActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/waze/navigate/NavigateActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodManager;

    .line 899
    .local v7, mgr:Landroid/view/inputmethod/InputMethodManager;
    iget-object v0, p0, Lcom/waze/navigate/NavigateActivity$1;->this$0:Lcom/waze/navigate/NavigateActivity;

    iget-object v0, v0, Lcom/waze/navigate/NavigateActivity;->searchBox:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x2

    invoke-virtual {v7, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 902
    .end local v7           #mgr:Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    return-void

    .line 891
    :cond_2
    iget-object v0, p0, Lcom/waze/navigate/NavigateActivity$1;->this$0:Lcom/waze/navigate/NavigateActivity;

    iget-object v0, v0, Lcom/waze/navigate/NavigateActivity;->mCalendarAI:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v0}, Lcom/waze/navigate/AddressItem;->getSecondaryTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waze/navigate/NavigateActivity$1;->this$0:Lcom/waze/navigate/NavigateActivity;

    iget-object v0, v0, Lcom/waze/navigate/NavigateActivity;->mCalendarAI:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v0}, Lcom/waze/navigate/AddressItem;->getSecondaryTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 893
    iget-object v0, p0, Lcom/waze/navigate/NavigateActivity$1;->this$0:Lcom/waze/navigate/NavigateActivity;

    iget-object v0, v0, Lcom/waze/navigate/NavigateActivity;->searchBox:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/waze/navigate/NavigateActivity$1;->this$0:Lcom/waze/navigate/NavigateActivity;

    iget-object v1, v1, Lcom/waze/navigate/NavigateActivity;->mCalendarAI:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v1}, Lcom/waze/navigate/AddressItem;->getSecondaryTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 894
    iget-object v0, p0, Lcom/waze/navigate/NavigateActivity$1;->this$0:Lcom/waze/navigate/NavigateActivity;

    iget-object v0, v0, Lcom/waze/navigate/NavigateActivity;->searchBox:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 895
    iget-object v0, p0, Lcom/waze/navigate/NavigateActivity$1;->this$0:Lcom/waze/navigate/NavigateActivity;

    iget-object v0, v0, Lcom/waze/navigate/NavigateActivity;->searchBox:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/waze/navigate/NavigateActivity$1;->this$0:Lcom/waze/navigate/NavigateActivity;

    iget-object v1, v1, Lcom/waze/navigate/NavigateActivity;->mCalendarAI:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v1}, Lcom/waze/navigate/AddressItem;->getSecondaryTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setSelection(I)V

    goto :goto_0
.end method
