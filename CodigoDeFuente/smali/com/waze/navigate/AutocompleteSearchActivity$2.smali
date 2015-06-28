.class Lcom/waze/navigate/AutocompleteSearchActivity$2;
.super Ljava/lang/Object;
.source "AutocompleteSearchActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/AutocompleteSearchActivity;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/AutocompleteSearchActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/AutocompleteSearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/AutocompleteSearchActivity$2;->this$0:Lcom/waze/navigate/AutocompleteSearchActivity;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "selectedItemView"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 189
    .local p1, parentView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/waze/navigate/AutocompleteSearchActivity$2;->this$0:Lcom/waze/navigate/AutocompleteSearchActivity;

    #getter for: Lcom/waze/navigate/AutocompleteSearchActivity;->mPlaceAdapter:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;
    invoke-static {v2}, Lcom/waze/navigate/AutocompleteSearchActivity;->access$4(Lcom/waze/navigate/AutocompleteSearchActivity;)Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->getItemByPosition(I)Lcom/waze/autocomplete/PlaceData;

    move-result-object v1

    .line 191
    .local v1, p:Lcom/waze/autocomplete/PlaceData;
    iget-object v2, v1, Lcom/waze/autocomplete/PlaceData;->mVenueId:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/waze/autocomplete/PlaceData;->mVenueId:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 192
    :cond_0
    iget v2, v1, Lcom/waze/autocomplete/PlaceData;->mLocalIndex:I

    if-ltz v2, :cond_1

    .line 193
    iget-object v2, p0, Lcom/waze/navigate/AutocompleteSearchActivity$2;->this$0:Lcom/waze/navigate/AutocompleteSearchActivity;

    #getter for: Lcom/waze/navigate/AutocompleteSearchActivity;->mAddresses:[Lcom/waze/navigate/AddressItem;
    invoke-static {v2}, Lcom/waze/navigate/AutocompleteSearchActivity;->access$1(Lcom/waze/navigate/AutocompleteSearchActivity;)[Lcom/waze/navigate/AddressItem;

    move-result-object v2

    iget v3, v1, Lcom/waze/autocomplete/PlaceData;->mLocalIndex:I

    aget-object v0, v2, v3

    .line 194
    .local v0, ai:Lcom/waze/navigate/AddressItem;
    iget-object v2, p0, Lcom/waze/navigate/AutocompleteSearchActivity$2;->this$0:Lcom/waze/navigate/AutocompleteSearchActivity;

    #calls: Lcom/waze/navigate/AutocompleteSearchActivity;->finishedSearch(Lcom/waze/navigate/AddressItem;)V
    invoke-static {v2, v0}, Lcom/waze/navigate/AutocompleteSearchActivity;->access$5(Lcom/waze/navigate/AutocompleteSearchActivity;Lcom/waze/navigate/AddressItem;)V

    .line 200
    .end local v0           #ai:Lcom/waze/navigate/AddressItem;
    :cond_1
    :goto_0
    return-void

    .line 198
    :cond_2
    iget-object v2, p0, Lcom/waze/navigate/AutocompleteSearchActivity$2;->this$0:Lcom/waze/navigate/AutocompleteSearchActivity;

    invoke-virtual {v2, p2, v1}, Lcom/waze/navigate/AutocompleteSearchActivity;->PlaceClickedByAutoComplete(Landroid/view/View;Lcom/waze/autocomplete/PlaceData;)V

    goto :goto_0
.end method
