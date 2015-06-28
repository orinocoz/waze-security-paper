.class public Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PlacesAutoCompleteAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$IPrepareForSerchResults;,
        Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder;,
        Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder2;,
        Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$MyWebChromeClient;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# static fields
.field private static API_KEY:Ljava/lang/String; = null

.field public static final AUTOCOMPLETE_EXT_FEATURE_SHOW_EMPTY:I = 0x1000

.field public static final AUTOCOMPLETE_FEATURE_ADS:I = 0x20

.field public static final AUTOCOMPLETE_FEATURE_CONTACTS:I = 0x10

.field public static final AUTOCOMPLETE_FEATURE_FAVORITES:I = 0x4

.field public static final AUTOCOMPLETE_FEATURE_HISTORY:I = 0x8

.field public static final AUTOCOMPLETE_FEATURE_PLACE:I = 0x2

.field public static final AUTOCOMPLETE_FEATURE_QUERY:I = 0x1

.field public static final AUTOCOMPLETE_FEATURE_WAZE:I = 0x40

.field private static final LOG_TAG:Ljava/lang/String; = "Waze"

.field private static final OUT_JSON:Ljava/lang/String; = "/json"

.field private static final PLACES_API_BASE:Ljava/lang/String; = "https://maps.googleapis.com/maps/api/place"

.field private static final TYPE_AUTOCOMPLETE:Ljava/lang/String; = "/queryautocomplete"

.field private static mWeb:Landroid/view/View;


# instance fields
.field private _rqLayoutRunnable:Ljava/lang/Runnable;

.field private bIsAutoCompleteShown:Z

.field private mAdsResult:Lcom/waze/autocomplete/PlaceData;

.field private mContext:Landroid/content/Context;

.field private mFeatures:I

.field private mIPrepareForSerchResults:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$IPrepareForSerchResults;

.field public mInput:Ljava/lang/String;

.field private mIsCalendar:Z

.field private mIsWait:Z

.field private mLocalData:[Lcom/waze/navigate/AddressItem;

.field private mNatMgr:Lcom/waze/NativeManager;

.field private mTextBox:Landroid/view/View;

.field private resultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/autocomplete/PlaceData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->API_KEY:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I[Lcom/waze/navigate/AddressItem;Ljava/lang/String;Landroid/view/View;Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$IPrepareForSerchResults;)V
    .locals 7
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter "mAddressItems"
    .parameter "ApiKey"
    .parameter "Textbox"
    .parameter "iPrepare"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 95
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 78
    iput-object v6, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->resultList:Ljava/util/ArrayList;

    .line 79
    iput-object v6, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mAdsResult:Lcom/waze/autocomplete/PlaceData;

    .line 82
    iput-boolean v4, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mIsWait:Z

    .line 84
    iput-boolean v4, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->bIsAutoCompleteShown:Z

    .line 85
    iput-object v6, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mInput:Ljava/lang/String;

    .line 86
    iput-boolean v4, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mIsCalendar:Z

    .line 88
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v4

    iput-object v4, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mNatMgr:Lcom/waze/NativeManager;

    .line 96
    iput-object p1, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mContext:Landroid/content/Context;

    .line 97
    iput-object p6, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mIPrepareForSerchResults:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$IPrepareForSerchResults;

    .line 98
    iput-object p3, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mLocalData:[Lcom/waze/navigate/AddressItem;

    .line 99
    sput-object p4, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->API_KEY:Ljava/lang/String;

    .line 100
    iput-object p5, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mTextBox:Landroid/view/View;

    .line 102
    iget-object v4, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mNatMgr:Lcom/waze/NativeManager;

    invoke-virtual {v4}, Lcom/waze/NativeManager;->getAutoCompleteFeatures()I

    move-result v4

    iput v4, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mFeatures:I

    .line 104
    iget-object v4, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mContext:Landroid/content/Context;

    .line 105
    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 104
    check-cast v2, Landroid/view/LayoutInflater;

    .line 107
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f0300d4

    invoke-virtual {v2, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    sput-object v4, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mWeb:Landroid/view/View;

    .line 109
    sget-object v4, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mWeb:Landroid/view/View;

    const v5, 0x7f0905bf

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 111
    .local v0, AdsText:Landroid/webkit/WebView;
    new-instance v4, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$MyWebChromeClient;

    invoke-direct {v4, p0}, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$MyWebChromeClient;-><init>(Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 112
    new-instance v4, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$1;

    invoke-direct {v4, p0}, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$1;-><init>(Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 119
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    .line 120
    .local v3, webSettings:Landroid/webkit/WebSettings;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 121
    iget-object v4, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mNatMgr:Lcom/waze/NativeManager;

    invoke-virtual {v4}, Lcom/waze/NativeManager;->GetWazeAutocompleteAdsUrl()Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, URL:Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method static synthetic access$1(Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;)I
    .locals 1
    .parameter

    .prologue
    .line 89
    iget v0, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mFeatures:I

    return v0
.end method

.method static synthetic access$10(Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mTextBox:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$11(Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->_rqLayoutRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$12(Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;)Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$IPrepareForSerchResults;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mIPrepareForSerchResults:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$IPrepareForSerchResults;

    return-object v0
.end method

.method static synthetic access$2(Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 695
    invoke-direct {p0, p1}, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->autocomplete(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;)Lcom/waze/autocomplete/PlaceData;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mAdsResult:Lcom/waze/autocomplete/PlaceData;

    return-object v0
.end method

.method static synthetic access$4(Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;)Z
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mIsCalendar:Z

    return v0
.end method

.method static synthetic access$5(Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;)Lcom/waze/NativeManager;
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mNatMgr:Lcom/waze/NativeManager;

    return-object v0
.end method

.method static synthetic access$6(Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;)Z
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->bIsAutoCompleteShown:Z

    return v0
.end method

.method static synthetic access$7(Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->bIsAutoCompleteShown:Z

    return-void
.end method

.method static synthetic access$8(Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->resultList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$9(Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private autocomplete(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 50
    .parameter "input"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/autocomplete/PlaceData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 696
    const/16 v36, 0x0

    .line 698
    .local v36, resultList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/autocomplete/PlaceData;>;"
    const/16 v47, 0x0

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mAdsResult:Lcom/waze/autocomplete/PlaceData;

    .line 699
    const/16 v39, 0x0

    .line 700
    .local v39, sWazeUrl:Ljava/lang/String;
    const/4 v12, 0x0

    .line 701
    .local v12, conn:Ljava/net/HttpURLConnection;
    const/4 v8, 0x0

    .line 702
    .local v8, Wazeconn:Ljava/net/HttpURLConnection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mLocalData:[Lcom/waze/navigate/AddressItem;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    array-length v0, v0

    move/from16 v47, v0

    move/from16 v0, v47

    new-array v0, v0, [I

    move-object/from16 v27, v0

    .line 703
    .local v27, nIndexOfLocalMatch:[I
    const/16 v28, 0x0

    .line 704
    .local v28, nMatches:I
    const/4 v3, 0x0

    .line 705
    .local v3, Contacts:[Lcom/waze/navigate/AddressItem;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 706
    .local v22, jsonResults:Ljava/lang/StringBuilder;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 707
    .local v24, jsonWazeResults:Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/waze/NativeLocListener;->getInstance()Lcom/waze/NativeLocListener;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Lcom/waze/NativeLocListener;->getLastLocation()Landroid/location/Location;

    move-result-object v25

    .line 710
    .local v25, loc:Landroid/location/Location;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v47

    const/16 v48, 0x3

    move/from16 v0, v47

    move/from16 v1, v48

    if-ge v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mFeatures:I

    move/from16 v47, v0

    move/from16 v0, v47

    and-int/lit16 v0, v0, 0x1000

    move/from16 v47, v0

    if-eqz v47, :cond_4

    .line 712
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mFeatures:I

    move/from16 v47, v0

    and-int/lit8 v47, v47, 0x10

    if-lez v47, :cond_1

    .line 714
    invoke-virtual/range {p0 .. p1}, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->searchContacts(Ljava/lang/String;)[Lcom/waze/navigate/AddressItem;

    move-result-object v3

    .line 717
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mFeatures:I

    move/from16 v47, v0

    and-int/lit8 v47, v47, 0x8

    if-lez v47, :cond_2

    .line 719
    const/4 v5, 0x0

    .local v5, LocalIndex:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mLocalData:[Lcom/waze/navigate/AddressItem;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    array-length v0, v0

    move/from16 v47, v0

    move/from16 v0, v47

    if-lt v5, v0, :cond_d

    .line 728
    .end local v5           #LocalIndex:I
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mFeatures:I

    move/from16 v47, v0

    and-int/lit8 v47, v47, 0x20

    if-lez v47, :cond_3

    .line 741
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/waze/navigate/DriveToNativeManager;->getAutoCompleteAdsResultNative(Ljava/lang/String;)Lcom/waze/autocomplete/PlaceData;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mAdsResult:Lcom/waze/autocomplete/PlaceData;

    .line 744
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v47

    const/16 v48, 0x3

    move/from16 v0, v47

    move/from16 v1, v48

    if-lt v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mFeatures:I

    move/from16 v47, v0

    and-int/lit8 v47, v47, 0x40

    if-lez v47, :cond_4

    .line 746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mNatMgr:Lcom/waze/NativeManager;

    move-object/from16 v47, v0

    const-string v48, "utf8"

    move-object/from16 v0, p1

    move-object/from16 v1, v48

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Lcom/waze/NativeManager;->GetWazeAutocompleteUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 750
    :cond_4
    new-instance v40, Ljava/lang/StringBuilder;

    const-string v47, "https://maps.googleapis.com/maps/api/place/queryautocomplete/json"

    move-object/from16 v0, v40

    move-object/from16 v1, v47

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 751
    .local v40, sb:Ljava/lang/StringBuilder;
    new-instance v47, Ljava/lang/StringBuilder;

    const-string v48, "?sensor=true&key="

    invoke-direct/range {v47 .. v48}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v48, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->API_KEY:Ljava/lang/String;

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v40

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    if-eqz v25, :cond_5

    .line 754
    new-instance v47, Ljava/lang/StringBuilder;

    const-string v48, "&location="

    invoke-direct/range {v47 .. v48}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Landroid/location/Location;->getLatitude()D

    move-result-wide v48

    invoke-virtual/range {v47 .. v49}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, ","

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v25 .. v25}, Landroid/location/Location;->getLongitude()D

    move-result-wide v48

    invoke-virtual/range {v47 .. v49}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v40

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    :cond_5
    const-string v47, "&radius=2000"

    move-object/from16 v0, v40

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    new-instance v47, Ljava/lang/StringBuilder;

    const-string v48, "&input="

    invoke-direct/range {v47 .. v48}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v48, "utf8"

    move-object/from16 v0, p1

    move-object/from16 v1, v48

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v40

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    new-instance v42, Ljava/net/URL;

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v42

    move-object/from16 v1, v47

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 762
    .local v42, url:Ljava/net/URL;
    invoke-virtual/range {v42 .. v42}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v47

    move-object/from16 v0, v47

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v12, v0

    .line 763
    new-instance v16, Ljava/io/InputStreamReader;

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v47

    move-object/from16 v0, v16

    move-object/from16 v1, v47

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 767
    .local v16, in:Ljava/io/InputStreamReader;
    const/16 v47, 0x400

    move/from16 v0, v47

    new-array v11, v0, [C

    .line 768
    .local v11, buff:[C
    :goto_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/io/InputStreamReader;->read([C)I

    move-result v35

    .local v35, read:I
    const/16 v47, -0x1

    move/from16 v0, v35

    move/from16 v1, v47

    if-ne v0, v1, :cond_10

    .line 773
    if-eqz v39, :cond_6

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v47

    if-nez v47, :cond_6

    .line 775
    new-instance v9, Ljava/net/URL;

    move-object/from16 v0, v39

    invoke-direct {v9, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 776
    .local v9, Wazeurl:Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v47

    move-object/from16 v0, v47

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v8, v0

    .line 777
    const-string v47, "User-Agent"

    const-string v48, "Mozilla/5.0"

    move-object/from16 v0, v47

    move-object/from16 v1, v48

    invoke-virtual {v8, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-direct {v7, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 781
    .local v7, WazeStream:Ljava/io/InputStreamReader;
    const/16 v35, 0x0

    .line 782
    :goto_2
    invoke-virtual {v7, v11}, Ljava/io/InputStreamReader;->read([C)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v35

    const/16 v47, -0x1

    move/from16 v0, v35

    move/from16 v1, v47

    if-ne v0, v1, :cond_13

    .line 795
    .end local v7           #WazeStream:Ljava/io/InputStreamReader;
    .end local v9           #Wazeurl:Ljava/net/URL;
    :cond_6
    if-eqz v12, :cond_7

    .line 796
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 798
    :cond_7
    if-eqz v8, :cond_8

    .line 800
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 806
    .end local v11           #buff:[C
    .end local v16           #in:Ljava/io/InputStreamReader;
    .end local v35           #read:I
    .end local v40           #sb:Ljava/lang/StringBuilder;
    .end local v42           #url:Ljava/net/URL;
    :cond_8
    :goto_3
    :try_start_1
    new-instance v21, Lorg/json/JSONObject;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v21

    move-object/from16 v1, v47

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 807
    .local v21, jsonObj:Lorg/json/JSONObject;
    const/16 v23, 0x0

    .line 808
    .local v23, jsonWazeObj:Lorg/json/JSONArray;
    const/16 v34, 0x0

    .line 809
    .local v34, predsWazeJsonArray:Lorg/json/JSONArray;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->length()I

    move-result v47

    if-lez v47, :cond_1c

    .line 811
    new-instance v23, Lorg/json/JSONArray;

    .end local v23           #jsonWazeObj:Lorg/json/JSONArray;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 812
    .restart local v23       #jsonWazeObj:Lorg/json/JSONArray;
    const/16 v47, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v34

    .line 819
    :goto_4
    const-string v47, "predictions"

    move-object/from16 v0, v21

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v33

    .line 822
    .local v33, predsJsonArray:Lorg/json/JSONArray;
    const/16 v26, 0x0

    .line 824
    .local v26, nContacts:I
    if-eqz v3, :cond_9

    .line 826
    array-length v0, v3

    move/from16 v26, v0

    .line 836
    :cond_9
    new-instance v37, Ljava/util/ArrayList;

    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    .line 839
    .end local v36           #resultList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/autocomplete/PlaceData;>;"
    .local v37, resultList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/autocomplete/PlaceData;>;"
    if-lez v28, :cond_a

    .line 841
    const/4 v15, 0x0

    .local v15, iLocal:I
    :goto_5
    move/from16 v0, v28

    if-lt v15, v0, :cond_1d

    .line 860
    .end local v15           #iLocal:I
    :cond_a
    if-eqz v3, :cond_b

    .line 862
    const/4 v15, 0x0

    .restart local v15       #iLocal:I
    :goto_6
    :try_start_2
    array-length v0, v3

    move/from16 v47, v0

    move/from16 v0, v47

    if-lt v15, v0, :cond_21

    .line 878
    .end local v15           #iLocal:I
    :cond_b
    invoke-virtual/range {v33 .. v33}, Lorg/json/JSONArray;->length()I

    move-result v29

    .line 880
    .local v29, nMaxSize:I
    invoke-virtual/range {v34 .. v34}, Lorg/json/JSONArray;->length()I

    move-result v47

    move/from16 v0, v47

    move/from16 v1, v29

    if-le v0, v1, :cond_c

    .line 882
    invoke-virtual/range {v34 .. v34}, Lorg/json/JSONArray;->length()I

    move-result v29

    .line 885
    :cond_c
    const/4 v14, 0x0

    .local v14, i:I
    :goto_7
    move/from16 v0, v29

    if-lt v14, v0, :cond_23

    .line 1062
    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mFeatures:I

    move/from16 v47, v0

    and-int/lit8 v47, v47, 0x1

    if-lez v47, :cond_32

    .line 1064
    new-instance v32, Lcom/waze/autocomplete/PlaceData;

    invoke-direct/range {v32 .. v32}, Lcom/waze/autocomplete/PlaceData;-><init>()V

    .line 1066
    .local v32, pMoreResult:Lcom/waze/autocomplete/PlaceData;
    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, v32

    iput-boolean v0, v1, Lcom/waze/autocomplete/PlaceData;->mIsAds:Z

    .line 1067
    const/16 v47, -0x3

    move/from16 v0, v47

    move-object/from16 v1, v32

    iput v0, v1, Lcom/waze/autocomplete/PlaceData;->mLocalIndex:I

    .line 1068
    new-instance v47, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mNatMgr:Lcom/waze/NativeManager;

    move-object/from16 v48, v0

    .line 1070
    sget-object v49, Lcom/waze/strings/DisplayStrings;->DS_MORE_RESULT_FOR:Lcom/waze/strings/DisplayStrings;

    .line 1069
    invoke-virtual/range {v48 .. v49}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v48

    invoke-static/range {v48 .. v48}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1071
    const-string v48, " "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mInput:Ljava/lang/String;

    move-object/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    .line 1068
    move-object/from16 v0, v47

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/waze/autocomplete/PlaceData;->mTitle:Ljava/lang/String;

    .line 1072
    const/16 v47, 0x0

    move-object/from16 v0, v47

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/waze/autocomplete/PlaceData;->mReference:Ljava/lang/String;

    .line 1073
    const/16 v47, 0x0

    move-object/from16 v0, v47

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/waze/autocomplete/PlaceData;->mSecondaryTitle:Ljava/lang/String;

    .line 1074
    const/16 v47, 0x0

    move-object/from16 v0, v47

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/waze/autocomplete/PlaceData;->mVenueId:Ljava/lang/String;

    .line 1076
    move-object/from16 v0, v37

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v36, v37

    .end local v14           #i:I
    .end local v21           #jsonObj:Lorg/json/JSONObject;
    .end local v23           #jsonWazeObj:Lorg/json/JSONArray;
    .end local v26           #nContacts:I
    .end local v29           #nMaxSize:I
    .end local v32           #pMoreResult:Lcom/waze/autocomplete/PlaceData;
    .end local v33           #predsJsonArray:Lorg/json/JSONArray;
    .end local v34           #predsWazeJsonArray:Lorg/json/JSONArray;
    .end local v37           #resultList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/autocomplete/PlaceData;>;"
    .restart local v36       #resultList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/autocomplete/PlaceData;>;"
    :goto_8
    move-object/from16 v37, v36

    .line 1087
    .end local v36           #resultList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/autocomplete/PlaceData;>;"
    .restart local v37       #resultList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/autocomplete/PlaceData;>;"
    :goto_9
    return-object v37

    .line 721
    .end local v37           #resultList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/autocomplete/PlaceData;>;"
    .restart local v5       #LocalIndex:I
    .restart local v36       #resultList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/autocomplete/PlaceData;>;"
    :cond_d
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mLocalData:[Lcom/waze/navigate/AddressItem;

    move-object/from16 v47, v0

    aget-object v47, v47, v5

    invoke-virtual/range {v47 .. v47}, Lcom/waze/navigate/AddressItem;->getTitle()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v47

    if-nez v47, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mLocalData:[Lcom/waze/navigate/AddressItem;

    move-object/from16 v47, v0

    aget-object v47, v47, v5

    invoke-virtual/range {v47 .. v47}, Lcom/waze/navigate/AddressItem;->getAddress()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v47

    if-nez v47, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mLocalData:[Lcom/waze/navigate/AddressItem;

    move-object/from16 v47, v0

    aget-object v47, v47, v5

    invoke-virtual/range {v47 .. v47}, Lcom/waze/navigate/AddressItem;->getSecondaryTitle()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v47

    if-eqz v47, :cond_f

    .line 723
    :cond_e
    aput v5, v27, v28

    .line 724
    add-int/lit8 v28, v28, 0x1

    .line 719
    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 769
    .end local v5           #LocalIndex:I
    .restart local v11       #buff:[C
    .restart local v16       #in:Ljava/io/InputStreamReader;
    .restart local v35       #read:I
    .restart local v40       #sb:Ljava/lang/StringBuilder;
    .restart local v42       #url:Ljava/net/URL;
    :cond_10
    const/16 v47, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v47

    move/from16 v2, v35

    invoke-virtual {v0, v11, v1, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 786
    .end local v11           #buff:[C
    .end local v16           #in:Ljava/io/InputStreamReader;
    .end local v35           #read:I
    .end local v40           #sb:Ljava/lang/StringBuilder;
    .end local v42           #url:Ljava/net/URL;
    :catch_0
    move-exception v13

    .line 787
    .local v13, e:Ljava/net/MalformedURLException;
    :try_start_4
    const-string v47, "Waze"

    const-string v48, "Error processing Places API URL"

    move-object/from16 v0, v47

    move-object/from16 v1, v48

    invoke-static {v0, v1, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 788
    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mFeatures:I

    move/from16 v47, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move/from16 v0, v47

    and-int/lit16 v0, v0, 0x1000

    move/from16 v47, v0

    if-nez v47, :cond_16

    .line 795
    if-eqz v12, :cond_11

    .line 796
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 798
    :cond_11
    if-eqz v8, :cond_12

    .line 800
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_12
    move-object/from16 v37, v36

    .line 789
    .end local v36           #resultList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/autocomplete/PlaceData;>;"
    .restart local v37       #resultList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/autocomplete/PlaceData;>;"
    goto/16 :goto_9

    .line 783
    .end local v13           #e:Ljava/net/MalformedURLException;
    .end local v37           #resultList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/autocomplete/PlaceData;>;"
    .restart local v7       #WazeStream:Ljava/io/InputStreamReader;
    .restart local v9       #Wazeurl:Ljava/net/URL;
    .restart local v11       #buff:[C
    .restart local v16       #in:Ljava/io/InputStreamReader;
    .restart local v35       #read:I
    .restart local v36       #resultList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/autocomplete/PlaceData;>;"
    .restart local v40       #sb:Ljava/lang/StringBuilder;
    .restart local v42       #url:Ljava/net/URL;
    :cond_13
    const/16 v47, 0x0

    :try_start_5
    move-object/from16 v0, v24

    move/from16 v1, v47

    move/from16 v2, v35

    invoke-virtual {v0, v11, v1, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_2

    .line 790
    .end local v7           #WazeStream:Ljava/io/InputStreamReader;
    .end local v9           #Wazeurl:Ljava/net/URL;
    .end local v11           #buff:[C
    .end local v16           #in:Ljava/io/InputStreamReader;
    .end local v35           #read:I
    .end local v40           #sb:Ljava/lang/StringBuilder;
    .end local v42           #url:Ljava/net/URL;
    :catch_1
    move-exception v13

    .line 791
    .local v13, e:Ljava/io/IOException;
    :try_start_6
    const-string v47, "Waze"

    const-string v48, "Error connecting to Places API"

    move-object/from16 v0, v47

    move-object/from16 v1, v48

    invoke-static {v0, v1, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 792
    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mFeatures:I

    move/from16 v47, v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move/from16 v0, v47

    and-int/lit16 v0, v0, 0x1000

    move/from16 v47, v0

    if-nez v47, :cond_18

    .line 795
    if-eqz v12, :cond_14

    .line 796
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 798
    :cond_14
    if-eqz v8, :cond_15

    .line 800
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_15
    move-object/from16 v37, v36

    .line 793
    .end local v36           #resultList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/autocomplete/PlaceData;>;"
    .restart local v37       #resultList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/autocomplete/PlaceData;>;"
    goto/16 :goto_9

    .line 795
    .end local v37           #resultList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/autocomplete/PlaceData;>;"
    .local v13, e:Ljava/net/MalformedURLException;
    .restart local v36       #resultList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/autocomplete/PlaceData;>;"
    :cond_16
    if-eqz v12, :cond_17

    .line 796
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 798
    :cond_17
    if-eqz v8, :cond_8

    .line 800
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_3

    .line 795
    .local v13, e:Ljava/io/IOException;
    :cond_18
    if-eqz v12, :cond_19

    .line 796
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 798
    :cond_19
    if-eqz v8, :cond_8

    .line 800
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_3

    .line 794
    .end local v13           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v47

    .line 795
    if-eqz v12, :cond_1a

    .line 796
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 798
    :cond_1a
    if-eqz v8, :cond_1b

    .line 800
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 802
    :cond_1b
    throw v47

    .line 816
    .restart local v21       #jsonObj:Lorg/json/JSONObject;
    .restart local v23       #jsonWazeObj:Lorg/json/JSONArray;
    .restart local v34       #predsWazeJsonArray:Lorg/json/JSONArray;
    :cond_1c
    :try_start_7
    new-instance v34, Lorg/json/JSONArray;

    .end local v34           #predsWazeJsonArray:Lorg/json/JSONArray;
    invoke-direct/range {v34 .. v34}, Lorg/json/JSONArray;-><init>()V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_3

    .restart local v34       #predsWazeJsonArray:Lorg/json/JSONArray;
    goto/16 :goto_4

    .line 843
    .end local v36           #resultList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/autocomplete/PlaceData;>;"
    .restart local v15       #iLocal:I
    .restart local v26       #nContacts:I
    .restart local v33       #predsJsonArray:Lorg/json/JSONArray;
    .restart local v37       #resultList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/autocomplete/PlaceData;>;"
    :cond_1d
    :try_start_8
    new-instance v30, Lcom/waze/autocomplete/PlaceData;

    invoke-direct/range {v30 .. v30}, Lcom/waze/autocomplete/PlaceData;-><init>()V

    .line 844
    .local v30, p:Lcom/waze/autocomplete/PlaceData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mLocalData:[Lcom/waze/navigate/AddressItem;

    move-object/from16 v47, v0

    aget v48, v27, v15

    aget-object v10, v47, v48

    .line 845
    .local v10, addressItem:Lcom/waze/navigate/AddressItem;
    invoke-virtual {v10}, Lcom/waze/navigate/AddressItem;->getTitle()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/waze/autocomplete/PlaceData;->mTitle:Ljava/lang/String;

    .line 846
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/waze/autocomplete/PlaceData;->mTitle:Ljava/lang/String;

    move-object/from16 v47, v0

    if-eqz v47, :cond_1e

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/waze/autocomplete/PlaceData;->mTitle:Ljava/lang/String;

    move-object/from16 v47, v0

    const-string v48, ""

    invoke-virtual/range {v47 .. v48}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v47

    if-eqz v47, :cond_1f

    .line 847
    :cond_1e
    invoke-virtual {v10}, Lcom/waze/navigate/AddressItem;->getAddress()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/waze/autocomplete/PlaceData;->mTitle:Ljava/lang/String;

    .line 849
    :cond_1f
    const-string v47, ""

    move-object/from16 v0, v47

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/waze/autocomplete/PlaceData;->mSecondaryTitle:Ljava/lang/String;

    .line 850
    invoke-virtual {v10}, Lcom/waze/navigate/AddressItem;->getSecondaryTitle()Ljava/lang/String;

    move-result-object v47

    if-eqz v47, :cond_20

    .line 852
    invoke-virtual {v10}, Lcom/waze/navigate/AddressItem;->getSecondaryTitle()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/waze/autocomplete/PlaceData;->mSecondaryTitle:Ljava/lang/String;

    .line 854
    :cond_20
    aget v47, v27, v15

    move/from16 v0, v47

    move-object/from16 v1, v30

    iput v0, v1, Lcom/waze/autocomplete/PlaceData;->mLocalIndex:I

    .line 856
    move-object/from16 v0, v37

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 841
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_5

    .line 864
    .end local v10           #addressItem:Lcom/waze/navigate/AddressItem;
    .end local v30           #p:Lcom/waze/autocomplete/PlaceData;
    :cond_21
    new-instance v30, Lcom/waze/autocomplete/PlaceData;

    invoke-direct/range {v30 .. v30}, Lcom/waze/autocomplete/PlaceData;-><init>()V

    .line 865
    .restart local v30       #p:Lcom/waze/autocomplete/PlaceData;
    aget-object v47, v3, v15

    invoke-virtual/range {v47 .. v47}, Lcom/waze/navigate/AddressItem;->getTitle()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/waze/autocomplete/PlaceData;->mTitle:Ljava/lang/String;

    .line 866
    const-string v47, ""

    move-object/from16 v0, v47

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/waze/autocomplete/PlaceData;->mSecondaryTitle:Ljava/lang/String;

    .line 867
    aget-object v47, v3, v15

    invoke-virtual/range {v47 .. v47}, Lcom/waze/navigate/AddressItem;->getAddress()Ljava/lang/String;

    move-result-object v47

    if-eqz v47, :cond_22

    .line 869
    aget-object v47, v3, v15

    invoke-virtual/range {v47 .. v47}, Lcom/waze/navigate/AddressItem;->getAddress()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/waze/autocomplete/PlaceData;->mSecondaryTitle:Ljava/lang/String;

    .line 871
    :cond_22
    const/16 v47, -0x2

    move/from16 v0, v47

    move-object/from16 v1, v30

    iput v0, v1, Lcom/waze/autocomplete/PlaceData;->mLocalIndex:I

    .line 873
    move-object/from16 v0, v37

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 862
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_6

    .line 887
    .end local v15           #iLocal:I
    .end local v30           #p:Lcom/waze/autocomplete/PlaceData;
    .restart local v14       #i:I
    .restart local v29       #nMaxSize:I
    :cond_23
    const/16 v30, 0x0

    .line 888
    .restart local v30       #p:Lcom/waze/autocomplete/PlaceData;
    const/16 v31, 0x0

    .line 889
    .local v31, p2:Lcom/waze/autocomplete/PlaceData;
    const/4 v4, 0x0

    .line 890
    .local v4, GoogleID:Ljava/lang/String;
    const/4 v6, 0x0

    .line 891
    .local v6, WazeID:Ljava/lang/String;
    invoke-virtual/range {v33 .. v33}, Lorg/json/JSONArray;->length()I

    move-result v47

    add-int/lit8 v47, v47, -0x1

    move/from16 v0, v47

    if-lt v0, v14, :cond_25

    .line 893
    new-instance v30, Lcom/waze/autocomplete/PlaceData;

    .end local v30           #p:Lcom/waze/autocomplete/PlaceData;
    invoke-direct/range {v30 .. v30}, Lcom/waze/autocomplete/PlaceData;-><init>()V

    .line 894
    .restart local v30       #p:Lcom/waze/autocomplete/PlaceData;
    move-object/from16 v0, v33

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/waze/autocomplete/PlaceData;->mResponse:Ljava/lang/String;

    .line 895
    move-object/from16 v0, v33

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v47

    const-string v48, "terms"

    invoke-virtual/range {v47 .. v48}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v18

    .line 896
    .local v18, js:Lorg/json/JSONArray;
    const/16 v47, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    .line 897
    .local v19, jsObjString:Lorg/json/JSONObject;
    const-string v47, "value"

    move-object/from16 v0, v19

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/waze/autocomplete/PlaceData;->mTitle:Ljava/lang/String;

    .line 898
    const-string v38, ""

    .line 900
    .local v38, sSecondRow:Ljava/lang/String;
    const/16 v17, 0x1

    .local v17, index:I
    :goto_a
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v47

    move/from16 v0, v17

    move/from16 v1, v47

    if-lt v0, v1, :cond_2f

    .line 906
    const/16 v47, 0x2

    move/from16 v0, v47

    move-object/from16 v1, v30

    iput v0, v1, Lcom/waze/autocomplete/PlaceData;->mfeature:I

    .line 907
    move-object/from16 v0, v38

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/waze/autocomplete/PlaceData;->mSecondaryTitle:Ljava/lang/String;

    .line 908
    move-object/from16 v0, v33

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v47

    const-string v48, "reference"

    invoke-virtual/range {v47 .. v48}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/waze/autocomplete/PlaceData;->mReference:Ljava/lang/String;

    .line 909
    move-object/from16 v0, v33

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v47

    const-string v48, "id"

    invoke-virtual/range {v47 .. v48}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/waze/autocomplete/PlaceData;->mVenueId:Ljava/lang/String;

    .line 910
    move-object/from16 v0, v33

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v47

    const-string v48, "place_id"

    invoke-virtual/range {v47 .. v48}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 911
    const/16 v47, -0x1

    move/from16 v0, v47

    move-object/from16 v1, v30

    iput v0, v1, Lcom/waze/autocomplete/PlaceData;->mLocalIndex:I

    .line 912
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/waze/autocomplete/PlaceData;->mVenueId:Ljava/lang/String;

    move-object/from16 v47, v0

    if-eqz v47, :cond_24

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/waze/autocomplete/PlaceData;->mVenueId:Ljava/lang/String;

    move-object/from16 v47, v0

    const-string v48, ""

    invoke-virtual/range {v47 .. v48}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v47

    if-eqz v47, :cond_30

    .line 914
    :cond_24
    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mFeatures:I

    move/from16 v47, v0

    and-int/lit8 v47, v47, 0x1

    if-nez v47, :cond_25

    .line 916
    const/16 v30, 0x0

    .line 929
    .end local v17           #index:I
    .end local v18           #js:Lorg/json/JSONArray;
    .end local v19           #jsObjString:Lorg/json/JSONObject;
    .end local v38           #sSecondRow:Ljava/lang/String;
    :cond_25
    :goto_b
    invoke-virtual/range {v34 .. v34}, Lorg/json/JSONArray;->length()I

    move-result v47

    add-int/lit8 v47, v47, -0x1

    move/from16 v0, v47

    if-lt v0, v14, :cond_2b

    .line 931
    new-instance v31, Lcom/waze/autocomplete/PlaceData;

    .end local v31           #p2:Lcom/waze/autocomplete/PlaceData;
    invoke-direct/range {v31 .. v31}, Lcom/waze/autocomplete/PlaceData;-><init>()V

    .line 932
    .restart local v31       #p2:Lcom/waze/autocomplete/PlaceData;
    move-object/from16 v0, v34

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v18

    .line 933
    .restart local v18       #js:Lorg/json/JSONArray;
    move-object/from16 v0, v34

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/waze/autocomplete/PlaceData;->mResponse:Ljava/lang/String;

    .line 934
    const/16 v47, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    .line 935
    .restart local v19       #jsObjString:Lorg/json/JSONObject;
    const/16 v47, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v41

    .line 936
    .local v41, title:Ljava/lang/String;
    const-string v47, "\u000c"

    const-string v48, ""

    move-object/from16 v0, v41

    move-object/from16 v1, v47

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v41

    .line 937
    const-string v47, "\u0007"

    const-string v48, ""

    move-object/from16 v0, v41

    move-object/from16 v1, v47

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v41

    .line 938
    move-object/from16 v0, v41

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/waze/autocomplete/PlaceData;->mTitle:Ljava/lang/String;

    .line 939
    const-string v38, ""

    .line 945
    .restart local v38       #sSecondRow:Ljava/lang/String;
    const-string v47, "a"

    move-object/from16 v0, v19

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v47

    if-nez v47, :cond_26

    .line 947
    const-string v47, "a"

    move-object/from16 v0, v19

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/waze/autocomplete/PlaceData;->mSecondaryTitle:Ljava/lang/String;

    .line 949
    :cond_26
    const-string v47, "g"

    move-object/from16 v0, v19

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v47

    if-nez v47, :cond_27

    .line 951
    const-string v47, "g"

    move-object/from16 v0, v19

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v20

    .line 952
    .local v20, jsWaze:Lorg/json/JSONArray;
    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONArray;->length()I

    move-result v47

    if-lez v47, :cond_27

    .line 954
    const/16 v47, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 958
    .end local v20           #jsWaze:Lorg/json/JSONArray;
    :cond_27
    const-string v47, "x"

    move-object/from16 v0, v19

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v47

    if-nez v47, :cond_28

    .line 960
    const-string v47, "x"

    move-object/from16 v0, v19

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v43

    .line 961
    .local v43, x:D
    const-wide v47, 0x412e848000000000L

    mul-double v47, v47, v43

    move-wide/from16 v0, v47

    double-to-int v0, v0

    move/from16 v47, v0

    move/from16 v0, v47

    move-object/from16 v1, v31

    iput v0, v1, Lcom/waze/autocomplete/PlaceData;->mLocX:I

    .line 963
    .end local v43           #x:D
    :cond_28
    const-string v47, "y"

    move-object/from16 v0, v19

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v47

    if-nez v47, :cond_29

    .line 965
    const-string v47, "y"

    move-object/from16 v0, v19

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v45

    .line 966
    .local v45, y:D
    const-wide v47, 0x412e848000000000L

    mul-double v47, v47, v45

    move-wide/from16 v0, v47

    double-to-int v0, v0

    move/from16 v47, v0

    move/from16 v0, v47

    move-object/from16 v1, v31

    iput v0, v1, Lcom/waze/autocomplete/PlaceData;->mLocY:I

    .line 968
    .end local v45           #y:D
    :cond_29
    const/16 v47, 0x0

    move-object/from16 v0, v47

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/waze/autocomplete/PlaceData;->mReference:Ljava/lang/String;

    .line 969
    const-string v47, "v"

    move-object/from16 v0, v19

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v47

    if-nez v47, :cond_2a

    .line 971
    const-string v47, "v"

    move-object/from16 v0, v19

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/waze/autocomplete/PlaceData;->mVenueId:Ljava/lang/String;

    .line 974
    :cond_2a
    const-string v47, "c"

    move-object/from16 v0, v19

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v47

    if-nez v47, :cond_31

    .line 976
    const/16 v47, -0x3

    move/from16 v0, v47

    move-object/from16 v1, v31

    iput v0, v1, Lcom/waze/autocomplete/PlaceData;->mLocalIndex:I

    .line 981
    .end local v18           #js:Lorg/json/JSONArray;
    .end local v19           #jsObjString:Lorg/json/JSONObject;
    .end local v38           #sSecondRow:Ljava/lang/String;
    .end local v41           #title:Ljava/lang/String;
    :cond_2b
    :goto_c
    if-eqz v4, :cond_2c

    if-eqz v6, :cond_2c

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v47

    if-nez v47, :cond_2c

    .line 983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mNatMgr:Lcom/waze/NativeManager;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    invoke-virtual {v0, v4, v6}, Lcom/waze/NativeManager;->AutocompleteIsMatchNTV(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v47

    if-eqz v47, :cond_2c

    .line 985
    const/16 v30, 0x0

    .line 989
    :cond_2c
    if-eqz v30, :cond_2d

    .line 991
    move-object/from16 v0, v37

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 993
    :cond_2d
    if-eqz v31, :cond_2e

    .line 995
    move-object/from16 v0, v37

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 885
    :cond_2e
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_7

    .line 902
    .restart local v17       #index:I
    .restart local v18       #js:Lorg/json/JSONArray;
    .restart local v19       #jsObjString:Lorg/json/JSONObject;
    .restart local v38       #sSecondRow:Ljava/lang/String;
    :cond_2f
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    .line 903
    new-instance v47, Ljava/lang/StringBuilder;

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v48, "value"

    move-object/from16 v0, v19

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, " "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    .line 900
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_a

    .line 921
    :cond_30
    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mFeatures:I

    move/from16 v47, v0

    and-int/lit8 v47, v47, 0x2

    if-nez v47, :cond_25

    .line 923
    const/16 v30, 0x0

    goto/16 :goto_b

    .line 978
    .end local v17           #index:I
    .restart local v41       #title:Ljava/lang/String;
    :cond_31
    const/16 v47, -0x1

    move/from16 v0, v47

    move-object/from16 v1, v31

    iput v0, v1, Lcom/waze/autocomplete/PlaceData;->mLocalIndex:I
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_c

    .line 1083
    .end local v4           #GoogleID:Ljava/lang/String;
    .end local v6           #WazeID:Ljava/lang/String;
    .end local v14           #i:I
    .end local v18           #js:Lorg/json/JSONArray;
    .end local v19           #jsObjString:Lorg/json/JSONObject;
    .end local v29           #nMaxSize:I
    .end local v30           #p:Lcom/waze/autocomplete/PlaceData;
    .end local v31           #p2:Lcom/waze/autocomplete/PlaceData;
    .end local v38           #sSecondRow:Ljava/lang/String;
    .end local v41           #title:Ljava/lang/String;
    :catch_2
    move-exception v13

    move-object/from16 v36, v37

    .line 1084
    .end local v21           #jsonObj:Lorg/json/JSONObject;
    .end local v23           #jsonWazeObj:Lorg/json/JSONArray;
    .end local v26           #nContacts:I
    .end local v33           #predsJsonArray:Lorg/json/JSONArray;
    .end local v34           #predsWazeJsonArray:Lorg/json/JSONArray;
    .end local v37           #resultList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/autocomplete/PlaceData;>;"
    .local v13, e:Lorg/json/JSONException;
    .restart local v36       #resultList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/autocomplete/PlaceData;>;"
    :goto_d
    const-string v47, "Waze"

    const-string v48, "Cannot process JSON results"

    move-object/from16 v0, v47

    move-object/from16 v1, v48

    invoke-static {v0, v1, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    .line 1083
    .end local v13           #e:Lorg/json/JSONException;
    :catch_3
    move-exception v13

    goto :goto_d

    .end local v36           #resultList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/autocomplete/PlaceData;>;"
    .restart local v14       #i:I
    .restart local v21       #jsonObj:Lorg/json/JSONObject;
    .restart local v23       #jsonWazeObj:Lorg/json/JSONArray;
    .restart local v26       #nContacts:I
    .restart local v29       #nMaxSize:I
    .restart local v33       #predsJsonArray:Lorg/json/JSONArray;
    .restart local v34       #predsWazeJsonArray:Lorg/json/JSONArray;
    .restart local v37       #resultList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/autocomplete/PlaceData;>;"
    :cond_32
    move-object/from16 v36, v37

    .end local v37           #resultList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/autocomplete/PlaceData;>;"
    .restart local v36       #resultList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/autocomplete/PlaceData;>;"
    goto/16 :goto_8
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->resultList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 129
    const/4 v0, 0x0

    .line 131
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getFeatures()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mFeatures:I

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 170
    new-instance v0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$2;

    invoke-direct {v0, p0}, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$2;-><init>(Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;)V

    .line 231
    .local v0, filter:Landroid/widget/Filter;
    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/autocomplete/PlaceData;

    iget v0, v0, Lcom/waze/autocomplete/PlaceData;->mLocalIndex:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 154
    iget-object v0, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/autocomplete/PlaceData;

    iget-object v0, v0, Lcom/waze/autocomplete/PlaceData;->mSecondaryTitle:Ljava/lang/String;

    .line 165
    :goto_0
    return-object v0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/autocomplete/PlaceData;

    iget v0, v0, Lcom/waze/autocomplete/PlaceData;->mLocalIndex:I

    const/4 v1, -0x4

    if-ne v0, v1, :cond_1

    .line 158
    iget-object v0, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mInput:Ljava/lang/String;

    goto :goto_0

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/autocomplete/PlaceData;

    iget-object v0, v0, Lcom/waze/autocomplete/PlaceData;->mSecondaryTitle:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/autocomplete/PlaceData;

    iget-object v0, v0, Lcom/waze/autocomplete/PlaceData;->mSecondaryTitle:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 162
    :cond_2
    iget-object v0, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/autocomplete/PlaceData;

    iget-object v0, v0, Lcom/waze/autocomplete/PlaceData;->mTitle:Ljava/lang/String;

    goto :goto_0

    .line 165
    :cond_3
    iget-object v0, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mInput:Ljava/lang/String;

    goto :goto_0
.end method

.method public getItemByPosition(I)Lcom/waze/autocomplete/PlaceData;
    .locals 1
    .parameter "index"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/autocomplete/PlaceData;

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    const/4 v1, 0x1

    .line 242
    iget-object v0, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt v0, p1, :cond_1

    .line 244
    iget-object v0, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/autocomplete/PlaceData;

    iget-boolean v0, v0, Lcom/waze/autocomplete/PlaceData;->mIsAds:Z

    if-eqz v0, :cond_0

    .line 246
    const/4 v0, 0x0

    .line 254
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 250
    goto :goto_0

    :cond_1
    move v0, v1

    .line 254
    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 259
    const/4 v2, 0x0

    .line 260
    .local v2, holder:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder;
    const/4 v3, 0x0

    .line 262
    .local v3, holder2:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder2;
    if-nez p2, :cond_5

    .line 264
    iget-object v10, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mContext:Landroid/content/Context;

    .line 265
    const-string v11, "layout_inflater"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 264
    check-cast v4, Landroid/view/LayoutInflater;

    .line 266
    .local v4, inflater:Landroid/view/LayoutInflater;
    iget-object v10, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/waze/autocomplete/PlaceData;

    iget-boolean v10, v10, Lcom/waze/autocomplete/PlaceData;->mIsAds:Z

    if-eqz v10, :cond_4

    .line 268
    sget-object p2, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mWeb:Landroid/view/View;

    .line 272
    if-nez v3, :cond_0

    .line 277
    new-instance v3, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder2;

    .end local v3           #holder2:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder2;
    const/4 v10, 0x0

    invoke-direct {v3, v10}, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder2;-><init>(Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder2;)V

    .line 278
    .restart local v3       #holder2:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder2;
    const v10, 0x7f0905bf

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/webkit/WebView;

    iput-object v10, v3, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder2;->AdsText:Landroid/webkit/WebView;

    .line 279
    const v10, 0x7f0905b8

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, v3, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder2;->root:Landroid/view/View;

    .line 280
    const v10, 0x7f0300d4

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 332
    .end local v4           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    :goto_0
    iget-object v10, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge p1, v10, :cond_14

    .line 334
    new-instance v10, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$3;

    invoke-direct {v10, p0}, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$3;-><init>(Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 350
    iget-object v10, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/waze/autocomplete/PlaceData;

    iget-boolean v10, v10, Lcom/waze/autocomplete/PlaceData;->mIsAds:Z

    if-eqz v10, :cond_7

    .line 352
    if-nez v3, :cond_1

    .line 354
    new-instance v3, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder2;

    .end local v3           #holder2:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder2;
    const/4 v10, 0x0

    invoke-direct {v3, v10}, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder2;-><init>(Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder2;)V

    .line 355
    .restart local v3       #holder2:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder2;
    sget-object v10, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mWeb:Landroid/view/View;

    const v11, 0x7f0905bf

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/webkit/WebView;

    iput-object v10, v3, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder2;->AdsText:Landroid/webkit/WebView;

    .line 356
    sget-object v10, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mWeb:Landroid/view/View;

    const v11, 0x7f0905b8

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, v3, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder2;->root:Landroid/view/View;

    .line 358
    const v10, 0x7f0300d4

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 360
    :cond_1
    iget-object v1, v3, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder2;->AdsText:Landroid/webkit/WebView;

    .line 362
    .local v1, adsView:Landroid/webkit/WebView;
    if-eqz v1, :cond_3

    .line 364
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v10, "javascript:window.W.adios.setQueryString(\""

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/waze/autocomplete/PlaceData;

    iget-object v10, v10, Lcom/waze/autocomplete/PlaceData;->mAdsUrl:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 365
    .local v9, url:Ljava/lang/String;
    invoke-virtual {v1, v9}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 366
    iget-object v10, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->_rqLayoutRunnable:Ljava/lang/Runnable;

    if-nez v10, :cond_2

    .line 367
    new-instance v10, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$4;

    invoke-direct {v10, p0, v1}, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$4;-><init>(Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;Landroid/webkit/WebView;)V

    iput-object v10, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->_rqLayoutRunnable:Ljava/lang/Runnable;

    .line 375
    iget-object v10, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->_rqLayoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v11, 0x64

    invoke-virtual {v1, v10, v11, v12}, Landroid/webkit/WebView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 377
    :cond_2
    iget-object v10, v3, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder2;->AdsText:Landroid/webkit/WebView;

    const v11, 0x7f0905bf

    iget-object v12, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v12, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/webkit/WebView;->setTag(ILjava/lang/Object;)V

    .line 378
    iget-object v10, v3, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder2;->AdsText:Landroid/webkit/WebView;

    new-instance v11, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$5;

    invoke-direct {v11, p0}, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$5;-><init>(Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;)V

    invoke-virtual {v10, v11}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 400
    iget-object v10, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/waze/autocomplete/PlaceData;

    iget-boolean v10, v10, Lcom/waze/autocomplete/PlaceData;->mWasAdReported:Z

    if-nez v10, :cond_3

    .line 402
    iget-object v10, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/waze/autocomplete/PlaceData;

    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/waze/autocomplete/PlaceData;->mWasAdReported:Z

    .line 403
    iget-object v11, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mNatMgr:Lcom/waze/NativeManager;

    iget-object v10, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/waze/autocomplete/PlaceData;

    iget-object v10, v10, Lcom/waze/autocomplete/PlaceData;->mVenueId:Ljava/lang/String;

    iget-object v12, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mInput:Ljava/lang/String;

    invoke-virtual {v11, v10, v12, p1}, Lcom/waze/NativeManager;->AutoCompleteAdsShown(Ljava/lang/String;Ljava/lang/String;I)V

    .line 524
    .end local v1           #adsView:Landroid/webkit/WebView;
    .end local v9           #url:Ljava/lang/String;
    :cond_3
    :goto_1
    return-object p2

    .line 285
    .restart local v4       #inflater:Landroid/view/LayoutInflater;
    :cond_4
    const v10, 0x7f0300d3

    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v4, v10, v0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 290
    if-nez v2, :cond_0

    .line 295
    new-instance v2, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder;

    .end local v2           #holder:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder;
    const/4 v10, 0x0

    invoke-direct {v2, v10}, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder;-><init>(Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder;)V

    .line 296
    .restart local v2       #holder:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder;
    const v10, 0x7f0905bc

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/waze/view/text/WazeTextView;

    iput-object v10, v2, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder;->Title:Lcom/waze/view/text/WazeTextView;

    .line 297
    const v10, 0x7f0905bd

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/waze/view/text/WazeTextView;

    iput-object v10, v2, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder;->SecondaryTitle:Lcom/waze/view/text/WazeTextView;

    .line 298
    const v10, 0x7f0905be

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, v2, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder;->CompleteTextImage:Landroid/view/View;

    .line 299
    const v10, 0x7f0905bb

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, v2, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder;->RowType:Landroid/widget/ImageView;

    .line 300
    const v10, 0x7f0905b8

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, v2, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder;->root:Landroid/view/View;

    .line 302
    const v10, 0x7f0300d3

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 308
    .end local v4           #inflater:Landroid/view/LayoutInflater;
    :cond_5
    iget-object v10, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge p1, v10, :cond_0

    .line 310
    iget-object v10, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/waze/autocomplete/PlaceData;

    iget-boolean v10, v10, Lcom/waze/autocomplete/PlaceData;->mIsAds:Z

    if-eqz v10, :cond_6

    .line 312
    const v10, 0x7f0300d4

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #holder2:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder2;
    check-cast v3, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder2;

    .line 314
    .restart local v3       #holder2:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder2;
    if-nez v3, :cond_0

    .line 316
    new-instance v3, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder2;

    .end local v3           #holder2:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder2;
    const/4 v10, 0x0

    invoke-direct {v3, v10}, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder2;-><init>(Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder2;)V

    .line 317
    .restart local v3       #holder2:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder2;
    const v10, 0x7f0905bf

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/webkit/WebView;

    iput-object v10, v3, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder2;->AdsText:Landroid/webkit/WebView;

    .line 318
    const v10, 0x7f0905b8

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, v3, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder2;->root:Landroid/view/View;

    .line 320
    const v10, 0x7f0300d4

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 325
    :cond_6
    const v10, 0x7f0300d3

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #holder:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder;
    check-cast v2, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder;

    .restart local v2       #holder:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder;
    goto/16 :goto_0

    .line 409
    :cond_7
    if-nez v2, :cond_8

    .line 411
    iget-object v10, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mContext:Landroid/content/Context;

    .line 412
    const-string v11, "layout_inflater"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 411
    check-cast v4, Landroid/view/LayoutInflater;

    .line 413
    .restart local v4       #inflater:Landroid/view/LayoutInflater;
    const v10, 0x7f0300d3

    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v4, v10, v0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 414
    new-instance v2, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder;

    .end local v2           #holder:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder;
    const/4 v10, 0x0

    invoke-direct {v2, v10}, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder;-><init>(Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder;)V

    .line 415
    .restart local v2       #holder:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder;
    const v10, 0x7f0905bc

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/waze/view/text/WazeTextView;

    iput-object v10, v2, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder;->Title:Lcom/waze/view/text/WazeTextView;

    .line 416
    const v10, 0x7f0905bd

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/waze/view/text/WazeTextView;

    iput-object v10, v2, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder;->SecondaryTitle:Lcom/waze/view/text/WazeTextView;

    .line 417
    const v10, 0x7f0905be

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, v2, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder;->CompleteTextImage:Landroid/view/View;

    .line 418
    const v10, 0x7f0905bb

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, v2, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder;->RowType:Landroid/widget/ImageView;

    .line 419
    const v10, 0x7f0905b8

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, v2, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder;->root:Landroid/view/View;

    .line 421
    const v10, 0x7f0300d3

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 424
    .end local v4           #inflater:Landroid/view/LayoutInflater;
    :cond_8
    iget-object v10, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/waze/autocomplete/PlaceData;

    iget v10, v10, Lcom/waze/autocomplete/PlaceData;->mLocalIndex:I

    const/4 v11, -0x4

    if-ne v10, v11, :cond_b

    .line 426
    iget-object v10, v2, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder;->CompleteTextImage:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 448
    :goto_2
    iget-object v5, v2, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder;->Title:Lcom/waze/view/text/WazeTextView;

    .line 451
    .local v5, nameView:Lcom/waze/view/text/WazeTextView;
    iget-object v10, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/waze/autocomplete/PlaceData;

    iget-object v7, v10, Lcom/waze/autocomplete/PlaceData;->mTitle:Ljava/lang/String;

    .line 453
    .local v7, sResultText:Ljava/lang/String;
    iget-object v6, v2, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder;->SecondaryTitle:Lcom/waze/view/text/WazeTextView;

    .line 459
    .local v6, nameView2:Lcom/waze/view/text/WazeTextView;
    iget-object v10, v2, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder;->root:Landroid/view/View;

    const/16 v11, 0xdd

    const/16 v12, 0xe7

    const/16 v13, 0xea

    invoke-static {v11, v12, v13}, Landroid/graphics/Color;->rgb(III)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundColor(I)V

    .line 461
    iget-object v10, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/waze/autocomplete/PlaceData;

    iget v10, v10, Lcom/waze/autocomplete/PlaceData;->mLocalIndex:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_10

    .line 463
    iget-object v10, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/waze/autocomplete/PlaceData;

    iget v10, v10, Lcom/waze/autocomplete/PlaceData;->mLocalIndex:I

    const/4 v11, -0x2

    if-ne v10, v11, :cond_c

    .line 465
    iget-object v10, v2, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder;->RowType:Landroid/widget/ImageView;

    const v11, 0x7f020002

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 501
    :cond_9
    :goto_3
    iget-object v10, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/waze/autocomplete/PlaceData;

    iget-object v8, v10, Lcom/waze/autocomplete/PlaceData;->mSecondaryTitle:Ljava/lang/String;

    .line 503
    .local v8, sResultText2:Ljava/lang/String;
    if-eqz v8, :cond_a

    const-string v10, ""

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 505
    :cond_a
    const/16 v10, 0x8

    invoke-virtual {v6, v10}, Lcom/waze/view/text/WazeTextView;->setVisibility(I)V

    .line 513
    :goto_4
    invoke-virtual {v5, v7}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 430
    .end local v5           #nameView:Lcom/waze/view/text/WazeTextView;
    .end local v6           #nameView2:Lcom/waze/view/text/WazeTextView;
    .end local v7           #sResultText:Ljava/lang/String;
    .end local v8           #sResultText2:Ljava/lang/String;
    :cond_b
    iget-object v10, v2, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder;->CompleteTextImage:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 431
    iget-object v11, v2, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder;->CompleteTextImage:Landroid/view/View;

    new-instance v12, Ljava/lang/String;

    iget-object v10, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/waze/autocomplete/PlaceData;

    iget-object v10, v10, Lcom/waze/autocomplete/PlaceData;->mTitle:Ljava/lang/String;

    invoke-direct {v12, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 432
    iget-object v10, v2, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder;->CompleteTextImage:Landroid/view/View;

    new-instance v11, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$6;

    invoke-direct {v11, p0}, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$6;-><init>(Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 467
    .restart local v5       #nameView:Lcom/waze/view/text/WazeTextView;
    .restart local v6       #nameView2:Lcom/waze/view/text/WazeTextView;
    .restart local v7       #sResultText:Ljava/lang/String;
    :cond_c
    iget-object v10, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/waze/autocomplete/PlaceData;

    iget v10, v10, Lcom/waze/autocomplete/PlaceData;->mLocalIndex:I

    const/4 v11, -0x3

    if-ne v10, v11, :cond_d

    .line 469
    iget-object v10, v2, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder;->RowType:Landroid/widget/ImageView;

    const v11, 0x7f020006

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 471
    :cond_d
    iget-object v10, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/waze/autocomplete/PlaceData;

    iget v10, v10, Lcom/waze/autocomplete/PlaceData;->mLocalIndex:I

    const/4 v11, -0x4

    if-ne v10, v11, :cond_e

    .line 473
    iget-object v10, v2, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder;->RowType:Landroid/widget/ImageView;

    const v11, 0x7f020286

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 474
    iget-object v10, v2, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder;->root:Landroid/view/View;

    const/16 v11, 0xc0

    const/16 v12, 0xd8

    const/16 v13, 0xdf

    invoke-static {v11, v12, v13}, Landroid/graphics/Color;->rgb(III)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_3

    .line 479
    :cond_e
    iget-object v11, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mLocalData:[Lcom/waze/navigate/AddressItem;

    iget-object v10, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/waze/autocomplete/PlaceData;

    iget v10, v10, Lcom/waze/autocomplete/PlaceData;->mLocalIndex:I

    aget-object v10, v11, v10

    invoke-virtual {v10}, Lcom/waze/navigate/AddressItem;->getType()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, 0x5

    if-ne v10, v11, :cond_f

    .line 481
    iget-object v10, v2, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder;->RowType:Landroid/widget/ImageView;

    const v11, 0x7f020003

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 483
    :cond_f
    iget-object v11, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mLocalData:[Lcom/waze/navigate/AddressItem;

    iget-object v10, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/waze/autocomplete/PlaceData;

    iget v10, v10, Lcom/waze/autocomplete/PlaceData;->mLocalIndex:I

    aget-object v10, v11, v10

    invoke-virtual {v10}, Lcom/waze/navigate/AddressItem;->getType()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_9

    .line 485
    iget-object v10, v2, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder;->RowType:Landroid/widget/ImageView;

    const v11, 0x7f020004

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 491
    :cond_10
    iget-object v10, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/waze/autocomplete/PlaceData;

    iget-object v10, v10, Lcom/waze/autocomplete/PlaceData;->mVenueId:Ljava/lang/String;

    if-eqz v10, :cond_11

    iget-object v10, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/waze/autocomplete/PlaceData;

    iget-object v10, v10, Lcom/waze/autocomplete/PlaceData;->mVenueId:Ljava/lang/String;

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 493
    :cond_11
    iget-object v10, v2, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder;->RowType:Landroid/widget/ImageView;

    const v11, 0x7f020006

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 497
    :cond_12
    iget-object v10, v2, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder;->RowType:Landroid/widget/ImageView;

    const v11, 0x7f020005

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 509
    .restart local v8       #sResultText2:Ljava/lang/String;
    :cond_13
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lcom/waze/view/text/WazeTextView;->setVisibility(I)V

    .line 510
    invoke-virtual {v6, v8}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 518
    .end local v5           #nameView:Lcom/waze/view/text/WazeTextView;
    .end local v6           #nameView2:Lcom/waze/view/text/WazeTextView;
    .end local v7           #sResultText:Ljava/lang/String;
    .end local v8           #sResultText2:Ljava/lang/String;
    :cond_14
    if-eqz v2, :cond_3

    .line 520
    iget-object v10, v2, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$ItemHolder;->root:Landroid/view/View;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x2

    return v0
.end method

.method public searchContacts(Ljava/lang/String;)[Lcom/waze/navigate/AddressItem;
    .locals 31
    .parameter "search"

    .prologue
    .line 1092
    const-string v2, "WAZE"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "contact search start "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    const/16 v29, 0x0

    .line 1094
    .local v29, contacts:[Lcom/waze/navigate/AddressItem;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1095
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v4, "display_name LIKE ? AND mimetype = ?"

    .line 1096
    .local v4, where:Ljava/lang/String;
    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "%"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "%"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v2, 0x1

    const-string v3, "vnd.android.cursor.item/postal-address_v2"

    aput-object v3, v5, v2

    .line 1098
    .local v5, whereParams:[Ljava/lang/String;
    :try_start_0
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 1099
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 1098
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v28

    .line 1100
    .local v28, addrCur:Landroid/database/Cursor;
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->getCount()I

    move-result v2

    new-array v0, v2, [Lcom/waze/navigate/AddressItem;

    move-object/from16 v29, v0

    .line 1102
    :goto_0
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1113
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    .line 1118
    .end local v28           #addrCur:Landroid/database/Cursor;
    :goto_1
    return-object v29

    .line 1103
    .restart local v28       #addrCur:Landroid/database/Cursor;
    :cond_0
    const-string v2, "data1"

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1104
    .local v11, formatted:Ljava/lang/String;
    const-string v2, "display_name"

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1105
    .local v9, name:Ljava/lang/String;
    const-string v2, "data10"

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 1106
    .local v22, country:Ljava/lang/String;
    const-string v2, "data8"

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 1107
    .local v23, state:Ljava/lang/String;
    const-string v2, "data7"

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 1108
    .local v24, city:Ljava/lang/String;
    const-string v2, "data4"

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 1110
    .local v25, street:Ljava/lang/String;
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    new-instance v6, Lcom/waze/navigate/AddressItem;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 1111
    const-string v26, ""

    const/16 v27, 0x0

    invoke-direct/range {v6 .. v27}, Lcom/waze/navigate/AddressItem;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/waze/reports/VenueData;)V

    .line 1110
    aput-object v6, v29, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1114
    .end local v9           #name:Ljava/lang/String;
    .end local v11           #formatted:Ljava/lang/String;
    .end local v22           #country:Ljava/lang/String;
    .end local v23           #state:Ljava/lang/String;
    .end local v24           #city:Ljava/lang/String;
    .end local v25           #street:Ljava/lang/String;
    .end local v28           #addrCur:Landroid/database/Cursor;
    :catch_0
    move-exception v30

    .line 1115
    .local v30, e:Ljava/lang/Exception;
    const-string v2, "WAZE"

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public setFeatures(I)V
    .locals 0
    .parameter "features"

    .prologue
    .line 139
    iput p1, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mFeatures:I

    .line 140
    return-void
.end method

.method public setIsCalendar(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mIsCalendar:Z

    .line 144
    return-void
.end method
