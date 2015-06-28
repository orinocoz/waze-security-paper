.class Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$5;
.super Ljava/lang/Object;
.source "PlacesAutoCompleteAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;


# direct methods
.method constructor <init>(Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$5;->this$0:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "v"
    .parameter "event"

    .prologue
    .line 381
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    .line 383
    .local v11, action:I
    packed-switch v11, :pswitch_data_0

    .line 396
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 385
    :pswitch_0
    const v0, 0x7f0905bf

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/waze/autocomplete/PlaceData;

    .line 386
    .local v12, p:Lcom/waze/autocomplete/PlaceData;
    if-eqz v12, :cond_0

    .line 388
    const-string v0, "AUTOCOMPLETE_CLICK"

    const-string v1, "VAUE"

    const-string v2, "ADVERTISEMENT"

    invoke-static {v0, v1, v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$5;->this$0:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;

    #getter for: Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mIPrepareForSerchResults:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$IPrepareForSerchResults;
    invoke-static {v0}, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->access$12(Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;)Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$IPrepareForSerchResults;

    move-result-object v0

    invoke-interface {v0}, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$IPrepareForSerchResults;->onPrepareForSerchResults()V

    .line 390
    iget-object v0, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$5;->this$0:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;

    #getter for: Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mNatMgr:Lcom/waze/NativeManager;
    invoke-static {v0}, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->access$5(Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;)Lcom/waze/NativeManager;

    move-result-object v0

    iget-object v1, v12, Lcom/waze/autocomplete/PlaceData;->mVenueId:Ljava/lang/String;

    iget-object v2, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$5;->this$0:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;

    iget-object v2, v2, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mInput:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/waze/NativeManager;->AutoCompleteAdsClicked(Ljava/lang/String;Ljava/lang/String;I)V

    .line 391
    iget-object v0, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$5;->this$0:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;

    #getter for: Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mNatMgr:Lcom/waze/NativeManager;
    invoke-static {v0}, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->access$5(Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;)Lcom/waze/NativeManager;

    move-result-object v0

    iget-object v1, v12, Lcom/waze/autocomplete/PlaceData;->mVenueId:Ljava/lang/String;

    iget-object v2, v12, Lcom/waze/autocomplete/PlaceData;->mReference:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$5;->this$0:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;

    iget-object v6, v6, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mInput:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v0 .. v10}, Lcom/waze/NativeManager;->AutoCompletePlaceClicked(Ljava/lang/String;Ljava/lang/String;Lcom/waze/navigate/AddressItem;Ljava/lang/String;ZLjava/lang/String;ZILjava/lang/String;Ljava/lang/String;)V

    .line 393
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 383
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
