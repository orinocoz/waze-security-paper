.class Lcom/waze/navigate/AutocompleteSearchActivity$1;
.super Ljava/lang/Object;
.source "AutocompleteSearchActivity.java"

# interfaces
.implements Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/navigate/AutocompleteSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/AutocompleteSearchActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/AutocompleteSearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/AutocompleteSearchActivity$1;->this$0:Lcom/waze/navigate/AutocompleteSearchActivity;

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/navigate/AutocompleteSearchActivity$1;)Lcom/waze/navigate/AutocompleteSearchActivity;
    .locals 1
    .parameter

    .prologue
    .line 310
    iget-object v0, p0, Lcom/waze/navigate/AutocompleteSearchActivity$1;->this$0:Lcom/waze/navigate/AutocompleteSearchActivity;

    return-object v0
.end method


# virtual methods
.method public getAddressItemArrayCallback([Lcom/waze/navigate/AddressItem;)V
    .locals 9
    .parameter "ai"

    .prologue
    .line 314
    iget-object v0, p0, Lcom/waze/navigate/AutocompleteSearchActivity$1;->this$0:Lcom/waze/navigate/AutocompleteSearchActivity;

    #setter for: Lcom/waze/navigate/AutocompleteSearchActivity;->mAddresses:[Lcom/waze/navigate/AddressItem;
    invoke-static {v0, p1}, Lcom/waze/navigate/AutocompleteSearchActivity;->access$0(Lcom/waze/navigate/AutocompleteSearchActivity;[Lcom/waze/navigate/AddressItem;)V

    .line 315
    iget-object v8, p0, Lcom/waze/navigate/AutocompleteSearchActivity$1;->this$0:Lcom/waze/navigate/AutocompleteSearchActivity;

    .line 316
    new-instance v0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;

    iget-object v1, p0, Lcom/waze/navigate/AutocompleteSearchActivity$1;->this$0:Lcom/waze/navigate/AutocompleteSearchActivity;

    .line 317
    const v2, 0x109000a

    iget-object v3, p0, Lcom/waze/navigate/AutocompleteSearchActivity$1;->this$0:Lcom/waze/navigate/AutocompleteSearchActivity;

    #getter for: Lcom/waze/navigate/AutocompleteSearchActivity;->mAddresses:[Lcom/waze/navigate/AddressItem;
    invoke-static {v3}, Lcom/waze/navigate/AutocompleteSearchActivity;->access$1(Lcom/waze/navigate/AutocompleteSearchActivity;)[Lcom/waze/navigate/AddressItem;

    move-result-object v3

    iget-object v4, p0, Lcom/waze/navigate/AutocompleteSearchActivity$1;->this$0:Lcom/waze/navigate/AutocompleteSearchActivity;

    #getter for: Lcom/waze/navigate/AutocompleteSearchActivity;->natMgr:Lcom/waze/NativeManager;
    invoke-static {v4}, Lcom/waze/navigate/AutocompleteSearchActivity;->access$2(Lcom/waze/navigate/AutocompleteSearchActivity;)Lcom/waze/NativeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/waze/NativeManager;->getApiKey()Ljava/lang/String;

    move-result-object v4

    .line 318
    iget-object v5, p0, Lcom/waze/navigate/AutocompleteSearchActivity$1;->this$0:Lcom/waze/navigate/AutocompleteSearchActivity;

    iget-object v5, v5, Lcom/waze/navigate/AutocompleteSearchActivity;->searchBox:Lcom/waze/view/text/InstantAutoComplete;

    new-instance v6, Lcom/waze/navigate/AutocompleteSearchActivity$1$1;

    invoke-direct {v6, p0}, Lcom/waze/navigate/AutocompleteSearchActivity$1$1;-><init>(Lcom/waze/navigate/AutocompleteSearchActivity$1;)V

    .line 316
    invoke-direct/range {v0 .. v6}, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;-><init>(Landroid/content/Context;I[Lcom/waze/navigate/AddressItem;Ljava/lang/String;Landroid/view/View;Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$IPrepareForSerchResults;)V

    .line 315
    #setter for: Lcom/waze/navigate/AutocompleteSearchActivity;->mPlaceAdapter:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;
    invoke-static {v8, v0}, Lcom/waze/navigate/AutocompleteSearchActivity;->access$3(Lcom/waze/navigate/AutocompleteSearchActivity;Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;)V

    .line 326
    iget-object v0, p0, Lcom/waze/navigate/AutocompleteSearchActivity$1;->this$0:Lcom/waze/navigate/AutocompleteSearchActivity;

    #getter for: Lcom/waze/navigate/AutocompleteSearchActivity;->mAddresses:[Lcom/waze/navigate/AddressItem;
    invoke-static {v0}, Lcom/waze/navigate/AutocompleteSearchActivity;->access$1(Lcom/waze/navigate/AutocompleteSearchActivity;)[Lcom/waze/navigate/AddressItem;

    move-result-object v0

    new-instance v1, Lcom/waze/navigate/AutocompleteSearchActivity$1$2;

    invoke-direct {v1, p0}, Lcom/waze/navigate/AutocompleteSearchActivity$1$2;-><init>(Lcom/waze/navigate/AutocompleteSearchActivity$1;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 336
    iget-object v0, p0, Lcom/waze/navigate/AutocompleteSearchActivity$1;->this$0:Lcom/waze/navigate/AutocompleteSearchActivity;

    #getter for: Lcom/waze/navigate/AutocompleteSearchActivity;->mPlaceAdapter:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;
    invoke-static {v0}, Lcom/waze/navigate/AutocompleteSearchActivity;->access$4(Lcom/waze/navigate/AutocompleteSearchActivity;)Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->getFeatures()I

    move-result v7

    .line 337
    .local v7, features:I
    and-int/lit8 v7, v7, -0x21

    .line 338
    and-int/lit8 v7, v7, -0x11

    .line 339
    or-int/lit8 v7, v7, 0x8

    .line 340
    or-int/lit16 v7, v7, 0x1000

    .line 341
    iget-object v0, p0, Lcom/waze/navigate/AutocompleteSearchActivity$1;->this$0:Lcom/waze/navigate/AutocompleteSearchActivity;

    #getter for: Lcom/waze/navigate/AutocompleteSearchActivity;->mPlaceAdapter:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;
    invoke-static {v0}, Lcom/waze/navigate/AutocompleteSearchActivity;->access$4(Lcom/waze/navigate/AutocompleteSearchActivity;)Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->setFeatures(I)V

    .line 343
    iget-object v0, p0, Lcom/waze/navigate/AutocompleteSearchActivity$1;->this$0:Lcom/waze/navigate/AutocompleteSearchActivity;

    iget-object v0, v0, Lcom/waze/navigate/AutocompleteSearchActivity;->searchBox:Lcom/waze/view/text/InstantAutoComplete;

    iget-object v1, p0, Lcom/waze/navigate/AutocompleteSearchActivity$1;->this$0:Lcom/waze/navigate/AutocompleteSearchActivity;

    #getter for: Lcom/waze/navigate/AutocompleteSearchActivity;->mPlaceAdapter:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;
    invoke-static {v1}, Lcom/waze/navigate/AutocompleteSearchActivity;->access$4(Lcom/waze/navigate/AutocompleteSearchActivity;)Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/view/text/InstantAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 344
    iget-object v0, p0, Lcom/waze/navigate/AutocompleteSearchActivity$1;->this$0:Lcom/waze/navigate/AutocompleteSearchActivity;

    iget-object v0, v0, Lcom/waze/navigate/AutocompleteSearchActivity;->searchBox:Lcom/waze/view/text/InstantAutoComplete;

    invoke-virtual {v0}, Lcom/waze/view/text/InstantAutoComplete;->filterNow()V

    .line 345
    return-void
.end method
