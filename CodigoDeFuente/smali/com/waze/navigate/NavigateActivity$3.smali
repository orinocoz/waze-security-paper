.class Lcom/waze/navigate/NavigateActivity$3;
.super Ljava/lang/Object;
.source "NavigateActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/NavigateActivity;->initLayout()V
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
.field final synthetic this$0:Lcom/waze/navigate/NavigateActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/NavigateActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/NavigateActivity$3;->this$0:Lcom/waze/navigate/NavigateActivity;

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/navigate/NavigateActivity$3;)Lcom/waze/navigate/NavigateActivity;
    .locals 1
    .parameter

    .prologue
    .line 297
    iget-object v0, p0, Lcom/waze/navigate/NavigateActivity$3;->this$0:Lcom/waze/navigate/NavigateActivity;

    return-object v0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
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
    .local p1, parentView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v8, -0x1

    const/4 v7, -0x3

    const/4 v6, -0x4

    .line 300
    iget-object v2, p0, Lcom/waze/navigate/NavigateActivity$3;->this$0:Lcom/waze/navigate/NavigateActivity;

    #getter for: Lcom/waze/navigate/NavigateActivity;->mPlaceAdapter:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;
    invoke-static {v2}, Lcom/waze/navigate/NavigateActivity;->access$4(Lcom/waze/navigate/NavigateActivity;)Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->getItemByPosition(I)Lcom/waze/autocomplete/PlaceData;

    move-result-object v1

    .line 302
    .local v1, p:Lcom/waze/autocomplete/PlaceData;
    iget-object v2, p0, Lcom/waze/navigate/NavigateActivity$3;->this$0:Lcom/waze/navigate/NavigateActivity;

    iget-object v2, v2, Lcom/waze/navigate/NavigateActivity;->mCalendarAI:Lcom/waze/navigate/AddressItem;

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/waze/autocomplete/PlaceData;->mLocalIndex:I

    if-eq v2, v6, :cond_0

    .line 303
    const-string v2, "CALENDAR_AUTOCOMPLETE_CLICK"

    const-string v3, "ID|VALUE"

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/waze/navigate/NavigateActivity$3;->this$0:Lcom/waze/navigate/NavigateActivity;

    iget-object v5, v5, Lcom/waze/navigate/NavigateActivity;->mCalendarAI:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v5}, Lcom/waze/navigate/AddressItem;->getMeetingId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/waze/navigate/NavigateActivity$3;->this$0:Lcom/waze/navigate/NavigateActivity;

    iget-object v5, v5, Lcom/waze/navigate/NavigateActivity;->searchBox:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v5}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    :cond_0
    iget-object v2, v1, Lcom/waze/autocomplete/PlaceData;->mVenueId:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/waze/autocomplete/PlaceData;->mVenueId:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 307
    :cond_1
    iget v2, v1, Lcom/waze/autocomplete/PlaceData;->mLocalIndex:I

    if-ne v2, v6, :cond_2

    .line 308
    iget-object v2, p0, Lcom/waze/navigate/NavigateActivity$3;->this$0:Lcom/waze/navigate/NavigateActivity;

    #getter for: Lcom/waze/navigate/NavigateActivity;->nm:Lcom/waze/navigate/DriveToNativeManager;
    invoke-static {v2}, Lcom/waze/navigate/NavigateActivity;->access$5(Lcom/waze/navigate/NavigateActivity;)Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v2

    iget-object v3, p0, Lcom/waze/navigate/NavigateActivity$3;->this$0:Lcom/waze/navigate/NavigateActivity;

    iget-object v3, v3, Lcom/waze/navigate/NavigateActivity;->mCalendarAI:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v3}, Lcom/waze/navigate/AddressItem;->getMeetingId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/waze/navigate/DriveToNativeManager;->CalendarAddressRemove(Ljava/lang/String;)V

    .line 309
    iget-object v2, p0, Lcom/waze/navigate/NavigateActivity$3;->this$0:Lcom/waze/navigate/NavigateActivity;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/waze/navigate/NavigateActivity;->mCalendarAI:Lcom/waze/navigate/AddressItem;

    .line 310
    iget-object v2, p0, Lcom/waze/navigate/NavigateActivity$3;->this$0:Lcom/waze/navigate/NavigateActivity;

    #getter for: Lcom/waze/navigate/NavigateActivity;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v2}, Lcom/waze/navigate/NavigateActivity;->access$6(Lcom/waze/navigate/NavigateActivity;)Lcom/waze/NativeManager;

    move-result-object v2

    iget-object v3, p0, Lcom/waze/navigate/NavigateActivity$3;->this$0:Lcom/waze/navigate/NavigateActivity;

    #getter for: Lcom/waze/navigate/NavigateActivity;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v3}, Lcom/waze/navigate/NavigateActivity;->access$6(Lcom/waze/navigate/NavigateActivity;)Lcom/waze/NativeManager;

    move-result-object v3

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_EVENT_REMOVED:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "sign_up_big_v"

    invoke-virtual {v2, v3, v4}, Lcom/waze/NativeManager;->OpenProgressIconPopup(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 312
    .local v0, hn:Landroid/os/Handler;
    new-instance v2, Lcom/waze/navigate/NavigateActivity$3$1;

    invoke-direct {v2, p0}, Lcom/waze/navigate/NavigateActivity$3$1;-><init>(Lcom/waze/navigate/NavigateActivity$3;)V

    .line 321
    const-wide/16 v3, 0x3e8

    .line 312
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 373
    .end local v0           #hn:Landroid/os/Handler;
    :goto_0
    return-void

    .line 323
    :cond_2
    iget v2, v1, Lcom/waze/autocomplete/PlaceData;->mLocalIndex:I

    if-eq v2, v8, :cond_3

    iget v2, v1, Lcom/waze/autocomplete/PlaceData;->mLocalIndex:I

    const/4 v3, -0x2

    if-eq v2, v3, :cond_3

    iget v2, v1, Lcom/waze/autocomplete/PlaceData;->mLocalIndex:I

    if-ne v2, v7, :cond_6

    .line 325
    :cond_3
    iget-object v2, p0, Lcom/waze/navigate/NavigateActivity$3;->this$0:Lcom/waze/navigate/NavigateActivity;

    invoke-virtual {v2, p2}, Lcom/waze/navigate/NavigateActivity;->searchClickedByAutoComplete(Landroid/view/View;)V

    .line 326
    iget v2, v1, Lcom/waze/autocomplete/PlaceData;->mLocalIndex:I

    if-ne v2, v8, :cond_4

    .line 328
    const-string v2, "AUTOCOMPLETE_CLICK"

    const-string v3, "VAUE"

    const-string v4, "QUERY"

    invoke-static {v2, v3, v4}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 330
    :cond_4
    iget v2, v1, Lcom/waze/autocomplete/PlaceData;->mLocalIndex:I

    if-ne v2, v7, :cond_5

    .line 332
    const-string v2, "AUTOCOMPLETE_CLICK"

    const-string v3, "VAUE"

    const-string v4, "SEARCH"

    invoke-static {v2, v3, v4}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 336
    :cond_5
    const-string v2, "AUTOCOMPLETE_CLICK"

    const-string v3, "VAUE"

    const-string v4, "CONTACT"

    invoke-static {v2, v3, v4}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 341
    :cond_6
    iget-object v2, p0, Lcom/waze/navigate/NavigateActivity$3;->this$0:Lcom/waze/navigate/NavigateActivity;

    #getter for: Lcom/waze/navigate/NavigateActivity;->mAddresses:[Lcom/waze/navigate/AddressItem;
    invoke-static {v2}, Lcom/waze/navigate/NavigateActivity;->access$1(Lcom/waze/navigate/NavigateActivity;)[Lcom/waze/navigate/AddressItem;

    move-result-object v2

    iget v3, v1, Lcom/waze/autocomplete/PlaceData;->mLocalIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/waze/navigate/AddressItem;->getType()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_7

    .line 343
    const-string v2, "AUTOCOMPLETE_CLICK"

    const-string v3, "VAUE"

    const-string v4, "HISTORY"

    invoke-static {v2, v3, v4}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    :goto_1
    iget-object v2, p0, Lcom/waze/navigate/NavigateActivity$3;->this$0:Lcom/waze/navigate/NavigateActivity;

    iget-object v2, v2, Lcom/waze/navigate/NavigateActivity;->mCalendarAI:Lcom/waze/navigate/AddressItem;

    if-eqz v2, :cond_8

    .line 352
    iget-object v2, p0, Lcom/waze/navigate/NavigateActivity$3;->this$0:Lcom/waze/navigate/NavigateActivity;

    iget-object v3, p0, Lcom/waze/navigate/NavigateActivity$3;->this$0:Lcom/waze/navigate/NavigateActivity;

    #getter for: Lcom/waze/navigate/NavigateActivity;->mAddresses:[Lcom/waze/navigate/AddressItem;
    invoke-static {v3}, Lcom/waze/navigate/NavigateActivity;->access$1(Lcom/waze/navigate/NavigateActivity;)[Lcom/waze/navigate/AddressItem;

    move-result-object v3

    iget v4, v1, Lcom/waze/autocomplete/PlaceData;->mLocalIndex:I

    aget-object v3, v3, v4

    #calls: Lcom/waze/navigate/NavigateActivity;->calendarOptions(Lcom/waze/navigate/AddressItem;)V
    invoke-static {v2, v3}, Lcom/waze/navigate/NavigateActivity;->access$7(Lcom/waze/navigate/NavigateActivity;Lcom/waze/navigate/AddressItem;)V

    goto :goto_0

    .line 347
    :cond_7
    const-string v2, "AUTOCOMPLETE_CLICK"

    const-string v3, "VAUE"

    const-string v4, "FAVORITE"

    invoke-static {v2, v3, v4}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 356
    :cond_8
    iget-object v2, p0, Lcom/waze/navigate/NavigateActivity$3;->this$0:Lcom/waze/navigate/NavigateActivity;

    #getter for: Lcom/waze/navigate/NavigateActivity;->nm:Lcom/waze/navigate/DriveToNativeManager;
    invoke-static {v2}, Lcom/waze/navigate/NavigateActivity;->access$5(Lcom/waze/navigate/NavigateActivity;)Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v2

    iget-object v3, p0, Lcom/waze/navigate/NavigateActivity$3;->this$0:Lcom/waze/navigate/NavigateActivity;

    #getter for: Lcom/waze/navigate/NavigateActivity;->mAddresses:[Lcom/waze/navigate/AddressItem;
    invoke-static {v3}, Lcom/waze/navigate/NavigateActivity;->access$1(Lcom/waze/navigate/NavigateActivity;)[Lcom/waze/navigate/AddressItem;

    move-result-object v3

    iget v4, v1, Lcom/waze/autocomplete/PlaceData;->mLocalIndex:I

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/waze/navigate/NavigateActivity$3;->this$0:Lcom/waze/navigate/NavigateActivity;

    invoke-virtual {v2, v3, v4}, Lcom/waze/navigate/DriveToNativeManager;->navigate(Lcom/waze/navigate/AddressItem;Lcom/waze/navigate/DriveToNavigateCallback;)V

    goto/16 :goto_0

    .line 362
    :cond_9
    iget-boolean v2, v1, Lcom/waze/autocomplete/PlaceData;->mIsAds:Z

    if-eqz v2, :cond_a

    .line 364
    const-string v2, "AUTOCOMPLETE_CLICK"

    const-string v3, "VAUE"

    const-string v4, "ADVERTISEMENT"

    invoke-static {v2, v3, v4}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v2, p0, Lcom/waze/navigate/NavigateActivity$3;->this$0:Lcom/waze/navigate/NavigateActivity;

    #getter for: Lcom/waze/navigate/NavigateActivity;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v2}, Lcom/waze/navigate/NavigateActivity;->access$6(Lcom/waze/navigate/NavigateActivity;)Lcom/waze/NativeManager;

    move-result-object v2

    iget-object v3, v1, Lcom/waze/autocomplete/PlaceData;->mVenueId:Ljava/lang/String;

    iget-object v4, p0, Lcom/waze/navigate/NavigateActivity$3;->this$0:Lcom/waze/navigate/NavigateActivity;

    #getter for: Lcom/waze/navigate/NavigateActivity;->mPlaceAdapter:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;
    invoke-static {v4}, Lcom/waze/navigate/NavigateActivity;->access$4(Lcom/waze/navigate/NavigateActivity;)Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;

    move-result-object v4

    iget-object v4, v4, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mInput:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, p3}, Lcom/waze/NativeManager;->AutoCompleteAdsClicked(Ljava/lang/String;Ljava/lang/String;I)V

    .line 371
    :goto_2
    iget-object v2, p0, Lcom/waze/navigate/NavigateActivity$3;->this$0:Lcom/waze/navigate/NavigateActivity;

    invoke-virtual {v2, p2, v1}, Lcom/waze/navigate/NavigateActivity;->PlaceClickedByAutoComplete(Landroid/view/View;Lcom/waze/autocomplete/PlaceData;)V

    goto/16 :goto_0

    .line 369
    :cond_a
    const-string v2, "AUTOCOMPLETE_CLICK"

    const-string v3, "VAUE"

    const-string v4, "PLACE"

    invoke-static {v2, v3, v4}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
