.class Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$2;
.super Landroid/widget/Filter;
.source "PlacesAutoCompleteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->getFilter()Landroid/widget/Filter;
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
    iput-object p1, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$2;->this$0:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;

    .line 170
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 7
    .parameter "constraint"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 174
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 176
    .local v0, filterResults:Landroid/widget/Filter$FilterResults;
    iget-object v3, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$2;->this$0:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;

    #getter for: Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mFeatures:I
    invoke-static {v3}, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->access$1(Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;)I

    move-result v3

    and-int/lit16 v3, v3, 0x1000

    if-eqz v3, :cond_0

    if-nez p1, :cond_0

    .line 177
    const-string p1, ""

    .line 180
    :cond_0
    if-eqz p1, :cond_4

    .line 182
    iget-object v3, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$2;->this$0:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mInput:Ljava/lang/String;

    .line 184
    const/4 v2, 0x0

    .line 185
    .local v2, tempResultList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/autocomplete/PlaceData;>;"
    iget-object v3, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$2;->this$0:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->autocomplete(Ljava/lang/String;)Ljava/util/ArrayList;
    invoke-static {v3, v4}, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->access$2(Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 187
    iget-object v3, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$2;->this$0:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;

    #getter for: Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mAdsResult:Lcom/waze/autocomplete/PlaceData;
    invoke-static {v3}, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->access$3(Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;)Lcom/waze/autocomplete/PlaceData;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 189
    iget-object v3, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$2;->this$0:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;

    #getter for: Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mAdsResult:Lcom/waze/autocomplete/PlaceData;
    invoke-static {v3}, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->access$3(Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;)Lcom/waze/autocomplete/PlaceData;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 192
    :cond_1
    iget-object v3, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$2;->this$0:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;

    #getter for: Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mIsCalendar:Z
    invoke-static {v3}, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->access$4(Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 193
    new-instance v1, Lcom/waze/autocomplete/PlaceData;

    invoke-direct {v1}, Lcom/waze/autocomplete/PlaceData;-><init>()V

    .line 195
    .local v1, pRemoveCalendarResult:Lcom/waze/autocomplete/PlaceData;
    iput-boolean v5, v1, Lcom/waze/autocomplete/PlaceData;->mIsAds:Z

    .line 196
    const/4 v3, -0x4

    iput v3, v1, Lcom/waze/autocomplete/PlaceData;->mLocalIndex:I

    .line 197
    iget-object v3, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$2;->this$0:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;

    #getter for: Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mNatMgr:Lcom/waze/NativeManager;
    invoke-static {v3}, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->access$5(Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;)Lcom/waze/NativeManager;

    move-result-object v3

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_REMOVE_THIS_EVENT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/waze/autocomplete/PlaceData;->mTitle:Ljava/lang/String;

    .line 198
    iput-object v6, v1, Lcom/waze/autocomplete/PlaceData;->mReference:Ljava/lang/String;

    .line 199
    iput-object v6, v1, Lcom/waze/autocomplete/PlaceData;->mSecondaryTitle:Ljava/lang/String;

    .line 200
    iput-object v6, v1, Lcom/waze/autocomplete/PlaceData;->mVenueId:Ljava/lang/String;

    .line 202
    invoke-virtual {v2, v5, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 207
    .end local v1           #pRemoveCalendarResult:Lcom/waze/autocomplete/PlaceData;
    :cond_2
    iget-object v3, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$2;->this$0:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;

    #getter for: Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->bIsAutoCompleteShown:Z
    invoke-static {v3}, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->access$6(Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 209
    iget-object v3, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$2;->this$0:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;

    const/4 v4, 0x1

    #setter for: Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->bIsAutoCompleteShown:Z
    invoke-static {v3, v4}, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->access$7(Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;Z)V

    .line 210
    const-string v3, "AUTOCOMPLETE_SHOWN"

    invoke-static {v3}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;)V

    .line 214
    :cond_3
    iput-object v2, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 215
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 217
    .end local v2           #tempResultList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/autocomplete/PlaceData;>;"
    :cond_4
    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .parameter "constraint"
    .parameter "results"

    .prologue
    .line 223
    if-eqz p2, :cond_0

    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_0

    .line 224
    iget-object v1, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$2;->this$0:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    #setter for: Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->resultList:Ljava/util/ArrayList;
    invoke-static {v1, v0}, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->access$8(Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;Ljava/util/ArrayList;)V

    .line 225
    iget-object v0, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$2;->this$0:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;

    invoke-virtual {v0}, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->notifyDataSetChanged()V

    .line 230
    :goto_0
    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$2;->this$0:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;

    invoke-virtual {v0}, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->notifyDataSetInvalidated()V

    .line 228
    iget-object v0, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$2;->this$0:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;

    const/4 v1, 0x0

    #setter for: Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->resultList:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->access$8(Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;Ljava/util/ArrayList;)V

    goto :goto_0
.end method
