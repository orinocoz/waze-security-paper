.class public final Lcom/waze/navigate/SearchActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "SearchActivity.java"

# interfaces
.implements Lcom/waze/navigate/DriveToSearchCallback;
.implements Lcom/waze/navigate/DriveToGetSearchEnginesCallback;
.implements Lcom/waze/navigate/DriveToNavigateCallback;
.implements Lcom/waze/DownloadResCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/navigate/SearchActivity$SearchResultsListAdapter;
    }
.end annotation


# static fields
.field public static final ADDITION_ICON_PREFIX:Ljava/lang/String; = "ls_"

.field private static final CONTACT_ENGINE:Ljava/lang/String; = "_contact"

.field public static final MAX_ADDITIONS:I = 0x6

.field private static final RQ_ADDRESS_PREVIEW:I = 0x64

.field private static final WAZE_ENGINE:Ljava/lang/String; = "waze"

.field private static bGetTimeOffRoute:Ljava/lang/Boolean;

.field private static s_priceFormatString:Ljava/lang/String;


# instance fields
.field private activeEngine:Lcom/waze/navigate/SearchEngine;

.field private adapter:Lcom/waze/navigate/SearchActivity$SearchResultsListAdapter;

.field private bIsSponserd:Z

.field private category:Ljava/lang/String;

.field private engines:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/waze/navigate/SearchEngine;",
            ">;"
        }
    .end annotation
.end field

.field private enginesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/waze/navigate/SearchEngine;",
            ">;"
        }
    .end annotation
.end field

.field private mAddressItem:Lcom/waze/navigate/AddressItem;

.field private nativeManager:Lcom/waze/NativeManager;

.field private nm:Lcom/waze/navigate/DriveToNativeManager;

.field private progressPopupRunning:Z

.field private resultsArrived:Z

.field private searchMode:Ljava/lang/Integer;

.field private searchStr:Ljava/lang/String;

.field protected sortPreferences:Lcom/waze/navigate/SortPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/navigate/SearchActivity;->s_priceFormatString:Ljava/lang/String;

    .line 82
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/waze/navigate/SearchActivity;->bGetTimeOffRoute:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 77
    iput-boolean v1, p0, Lcom/waze/navigate/SearchActivity;->progressPopupRunning:Z

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/navigate/SearchActivity;->enginesList:Ljava/util/List;

    .line 81
    iput-boolean v1, p0, Lcom/waze/navigate/SearchActivity;->bIsSponserd:Z

    .line 57
    return-void
.end method

.method static synthetic access$0(Lcom/waze/navigate/SearchActivity;)Lcom/waze/NativeManager;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/waze/navigate/SearchActivity;->nativeManager:Lcom/waze/NativeManager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/navigate/SearchActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/waze/navigate/SearchActivity;->bIsSponserd:Z

    return-void
.end method

.method static synthetic access$2(Lcom/waze/navigate/SearchActivity;)Lcom/waze/navigate/DriveToNativeManager;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/waze/navigate/SearchActivity;->nm:Lcom/waze/navigate/DriveToNativeManager;

    return-object v0
.end method

.method static synthetic access$3()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/waze/navigate/SearchActivity;->bGetTimeOffRoute:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$4(Lcom/waze/navigate/SearchActivity;)Lcom/waze/navigate/SearchEngine;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/waze/navigate/SearchActivity;->activeEngine:Lcom/waze/navigate/SearchEngine;

    return-object v0
.end method

.method static synthetic access$5(Lcom/waze/navigate/SearchActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/waze/navigate/SearchActivity;->category:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/waze/navigate/SearchActivity;)Lcom/waze/navigate/SearchActivity$SearchResultsListAdapter;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/waze/navigate/SearchActivity;->adapter:Lcom/waze/navigate/SearchActivity$SearchResultsListAdapter;

    return-object v0
.end method

.method private activateNewSearchEngine(Lcom/waze/navigate/SearchEngine;)V
    .locals 8
    .parameter "engine"

    .prologue
    const/4 v7, 0x1

    .line 237
    iput-object p1, p0, Lcom/waze/navigate/SearchActivity;->activeEngine:Lcom/waze/navigate/SearchEngine;

    .line 238
    const v0, 0x7f090283

    invoke-virtual {p0, v0}, Lcom/waze/navigate/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/waze/view/title/TitleBar;

    .line 239
    .local v6, titleBar:Lcom/waze/view/title/TitleBar;
    iget-object v0, p0, Lcom/waze/navigate/SearchActivity;->activeEngine:Lcom/waze/navigate/SearchEngine;

    iget-boolean v0, v0, Lcom/waze/navigate/SearchEngine;->canShowOnMap:Z

    invoke-virtual {v6, v0}, Lcom/waze/view/title/TitleBar;->setCloseVisibility(Z)V

    .line 241
    const-string v0, "WAZE"

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "activateNewSearchEngine new:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/waze/navigate/SearchActivity;->activeEngine:Lcom/waze/navigate/SearchEngine;

    invoke-virtual {v2}, Lcom/waze/navigate/SearchEngine;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 243
    iget-object v2, p0, Lcom/waze/navigate/SearchActivity;->activeEngine:Lcom/waze/navigate/SearchEngine;

    invoke-virtual {v2}, Lcom/waze/navigate/SearchEngine;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Searching: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 244
    iget-object v2, p0, Lcom/waze/navigate/SearchActivity;->activeEngine:Lcom/waze/navigate/SearchEngine;

    invoke-virtual {v2}, Lcom/waze/navigate/SearchEngine;->getSearching()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Searched: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 245
    iget-object v2, p0, Lcom/waze/navigate/SearchActivity;->activeEngine:Lcom/waze/navigate/SearchEngine;

    invoke-virtual {v2}, Lcom/waze/navigate/SearchEngine;->getSearched()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 242
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 241
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Lcom/waze/navigate/SearchActivity;->activeEngine:Lcom/waze/navigate/SearchEngine;

    invoke-virtual {v0}, Lcom/waze/navigate/SearchEngine;->getButton()Lcom/waze/navigate/SearchButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/navigate/SearchButton;->selectButton()V

    .line 247
    iget-object v0, p0, Lcom/waze/navigate/SearchActivity;->activeEngine:Lcom/waze/navigate/SearchEngine;

    invoke-virtual {v0}, Lcom/waze/navigate/SearchEngine;->getSearched()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/waze/navigate/SearchActivity;->needRetry()Z

    move-result v0

    if-nez v0, :cond_1

    .line 248
    invoke-virtual {p0}, Lcom/waze/navigate/SearchActivity;->closeProgressPopup()V

    .line 249
    invoke-virtual {p0}, Lcom/waze/navigate/SearchActivity;->getAddressItems()V

    .line 259
    :goto_0
    iget-object v0, p0, Lcom/waze/navigate/SearchActivity;->activeEngine:Lcom/waze/navigate/SearchEngine;

    iget-boolean v0, v0, Lcom/waze/navigate/SearchEngine;->requestedResultEta:Z

    if-nez v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/waze/navigate/SearchActivity;->activeEngine:Lcom/waze/navigate/SearchEngine;

    invoke-virtual {v0}, Lcom/waze/navigate/SearchEngine;->getResults()[Lcom/waze/navigate/AddressItem;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/waze/navigate/SearchActivity;->activeEngine:Lcom/waze/navigate/SearchEngine;

    iput-boolean v7, v0, Lcom/waze/navigate/SearchEngine;->requestedResultEta:Z

    .line 262
    iget-object v0, p0, Lcom/waze/navigate/SearchActivity;->nm:Lcom/waze/navigate/DriveToNativeManager;

    invoke-virtual {p1}, Lcom/waze/navigate/SearchEngine;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/navigate/DriveToNativeManager;->getSearchResultsEta(Ljava/lang/String;)V

    .line 264
    :cond_0
    return-void

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/waze/navigate/SearchActivity;->activeEngine:Lcom/waze/navigate/SearchEngine;

    invoke-virtual {v0}, Lcom/waze/navigate/SearchEngine;->getSearching()Z

    move-result v0

    if-nez v0, :cond_3

    .line 251
    iget-object v0, p0, Lcom/waze/navigate/SearchActivity;->adapter:Lcom/waze/navigate/SearchActivity$SearchResultsListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/waze/navigate/SearchActivity$SearchResultsListAdapter;->setItems([Lcom/waze/navigate/AddressItem;)V

    .line 252
    iget-object v0, p0, Lcom/waze/navigate/SearchActivity;->activeEngine:Lcom/waze/navigate/SearchEngine;

    invoke-virtual {v0, v7}, Lcom/waze/navigate/SearchEngine;->setSearching(Z)V

    .line 253
    iget-object v0, p0, Lcom/waze/navigate/SearchActivity;->nm:Lcom/waze/navigate/DriveToNativeManager;

    iget-object v1, p0, Lcom/waze/navigate/SearchActivity;->category:Ljava/lang/String;

    iget-object v2, p0, Lcom/waze/navigate/SearchActivity;->activeEngine:Lcom/waze/navigate/SearchEngine;

    invoke-virtual {v2}, Lcom/waze/navigate/SearchEngine;->getProvider()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/waze/navigate/SearchActivity;->searchStr:Ljava/lang/String;

    .line 254
    iget-boolean v4, p0, Lcom/waze/navigate/SearchActivity;->resultsArrived:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    :goto_1
    move-object v5, p0

    .line 253
    invoke-virtual/range {v0 .. v5}, Lcom/waze/navigate/DriveToNativeManager;->search(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/waze/navigate/DriveToSearchCallback;)V

    .line 255
    invoke-virtual {p0}, Lcom/waze/navigate/SearchActivity;->openProgressPopup()V

    goto :goto_0

    :cond_2
    move v4, v7

    .line 254
    goto :goto_1

    .line 257
    :cond_3
    invoke-virtual {p0}, Lcom/waze/navigate/SearchActivity;->openProgressPopup()V

    goto :goto_0
.end method

.method private chooseActiveEngine()V
    .locals 7

    .prologue
    .line 1027
    const/4 v2, 0x0

    .line 1029
    .local v2, selectedEngine:Lcom/waze/navigate/SearchEngine;
    iget-object v3, p0, Lcom/waze/navigate/SearchActivity;->activeEngine:Lcom/waze/navigate/SearchEngine;

    if-eqz v3, :cond_1

    .line 1030
    invoke-direct {p0}, Lcom/waze/navigate/SearchActivity;->reselectOldActiveEngine()V

    .line 1031
    iget-object v2, p0, Lcom/waze/navigate/SearchActivity;->activeEngine:Lcom/waze/navigate/SearchEngine;

    .line 1045
    :cond_0
    :goto_0
    move-object v0, v2

    .line 1046
    .local v0, finalEngine:Lcom/waze/navigate/SearchEngine;
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/waze/navigate/SearchActivity$7;

    invoke-direct {v4, p0, v0}, Lcom/waze/navigate/SearchActivity$7;-><init>(Lcom/waze/navigate/SearchActivity;Lcom/waze/navigate/SearchEngine;)V

    .line 1051
    const-wide/16 v5, 0x32

    .line 1046
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1052
    return-void

    .line 1033
    .end local v0           #finalEngine:Lcom/waze/navigate/SearchEngine;
    :cond_1
    iget-object v3, p0, Lcom/waze/navigate/SearchActivity;->engines:Ljava/util/Map;

    const-string v4, "waze"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1034
    iget-object v3, p0, Lcom/waze/navigate/SearchActivity;->engines:Ljava/util/Map;

    const-string v4, "waze"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #selectedEngine:Lcom/waze/navigate/SearchEngine;
    check-cast v2, Lcom/waze/navigate/SearchEngine;

    .line 1036
    .restart local v2       #selectedEngine:Lcom/waze/navigate/SearchEngine;
    goto :goto_0

    .line 1037
    :cond_2
    iget-object v3, p0, Lcom/waze/navigate/SearchActivity;->engines:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1038
    iget-object v3, p0, Lcom/waze/navigate/SearchActivity;->engines:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/waze/navigate/SearchEngine;

    .line 1039
    .local v1, searchEngine:Lcom/waze/navigate/SearchEngine;
    move-object v2, v1

    goto :goto_0
.end method

.method private clearSearchEngines()V
    .locals 5

    .prologue
    .line 404
    iget-object v1, p0, Lcom/waze/navigate/SearchActivity;->engines:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 408
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/waze/navigate/SearchActivity;->resultsArrived:Z

    .line 409
    return-void

    .line 404
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/navigate/SearchEngine;

    .line 405
    .local v0, e:Lcom/waze/navigate/SearchEngine;
    const-string v2, "WAZE"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Clearing provider: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/waze/navigate/SearchEngine;->getProvider()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-virtual {v0}, Lcom/waze/navigate/SearchEngine;->clear()V

    goto :goto_0
.end method

.method private forButtonsWithoutEngineSetVisibilityToGone()V
    .locals 6

    .prologue
    .line 968
    iget-object v2, p0, Lcom/waze/navigate/SearchActivity;->enginesList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .local v1, j:I
    :goto_0
    const/16 v2, 0xa

    if-lt v1, v2, :cond_0

    .line 973
    return-void

    .line 969
    :cond_0
    invoke-virtual {p0}, Lcom/waze/navigate/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "searchButton"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 970
    const-string v4, "id"

    invoke-virtual {p0}, Lcom/waze/navigate/SearchActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 969
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 971
    .local v0, buttonId:I
    invoke-virtual {p0, v0}, Lcom/waze/navigate/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 968
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static getNumberOfDigits(Ljava/lang/String;)I
    .locals 2
    .parameter "priceFormat"

    .prologue
    .line 140
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 141
    .local v0, pos:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 142
    const/4 v1, 0x0

    .line 144
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public static getPriceFormatString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "priceFormat"

    .prologue
    .line 128
    sget-object v1, Lcom/waze/navigate/SearchActivity;->s_priceFormatString:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/waze/navigate/SearchActivity;->s_priceFormatString:Ljava/lang/String;

    .line 136
    :goto_0
    return-object v1

    .line 129
    :cond_0
    invoke-static {p0}, Lcom/waze/navigate/SearchActivity;->getNumberOfDigits(Ljava/lang/String;)I

    move-result v0

    .line 130
    .local v0, nDigitsAfterDotInPrice:I
    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    const/4 v1, 0x5

    if-gt v0, v1, :cond_1

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "%2."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/waze/navigate/SearchActivity;->s_priceFormatString:Ljava/lang/String;

    .line 136
    :goto_1
    sget-object v1, Lcom/waze/navigate/SearchActivity;->s_priceFormatString:Ljava/lang/String;

    goto :goto_0

    .line 133
    :cond_1
    const-string v1, "%2.2f"

    sput-object v1, Lcom/waze/navigate/SearchActivity;->s_priceFormatString:Ljava/lang/String;

    goto :goto_1
.end method

.method private initLayout()V
    .locals 6

    .prologue
    const v5, 0x7f0905e5

    .line 165
    const v3, 0x7f0300dd

    invoke-virtual {p0, v3}, Lcom/waze/navigate/SearchActivity;->setContentView(I)V

    .line 166
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v3

    iput-object v3, p0, Lcom/waze/navigate/SearchActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 167
    const v3, 0x7f090283

    invoke-virtual {p0, v3}, Lcom/waze/navigate/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/view/title/TitleBar;

    .line 168
    .local v2, titleBar:Lcom/waze/view/title/TitleBar;
    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_SEARCH_RESULTS:Lcom/waze/strings/DisplayStrings;

    .line 169
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_MAP:Lcom/waze/strings/DisplayStrings;

    .line 168
    invoke-virtual {v2, p0, v3, v4}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;Lcom/waze/strings/DisplayStrings;)V

    .line 170
    new-instance v3, Lcom/waze/navigate/SearchActivity$2;

    invoke-direct {v3, p0}, Lcom/waze/navigate/SearchActivity$2;-><init>(Lcom/waze/navigate/SearchActivity;)V

    invoke-virtual {v2, v3}, Lcom/waze/view/title/TitleBar;->setOnClickCloseListener(Landroid/view/View$OnClickListener;)V

    .line 185
    const v3, 0x7f0905e6

    invoke-virtual {p0, v3}, Lcom/waze/navigate/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 187
    .local v1, sv:Landroid/view/View;
    const v3, 0x7f09002a

    iget-object v4, p0, Lcom/waze/navigate/SearchActivity;->engines:Ljava/util/Map;

    invoke-virtual {v1, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 188
    const v3, 0x7f09002b

    invoke-virtual {v1, v3, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 190
    invoke-virtual {p0, v5}, Lcom/waze/navigate/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 192
    .local v0, searchResultsList:Landroid/widget/ListView;
    new-instance v3, Lcom/waze/navigate/SearchActivity$SearchResultsListAdapter;

    invoke-direct {v3, p0}, Lcom/waze/navigate/SearchActivity$SearchResultsListAdapter;-><init>(Lcom/waze/navigate/SearchActivity;)V

    iput-object v3, p0, Lcom/waze/navigate/SearchActivity;->adapter:Lcom/waze/navigate/SearchActivity$SearchResultsListAdapter;

    .line 193
    iget-object v3, p0, Lcom/waze/navigate/SearchActivity;->adapter:Lcom/waze/navigate/SearchActivity$SearchResultsListAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 195
    invoke-virtual {p0, v5}, Lcom/waze/navigate/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 196
    new-instance v4, Lcom/waze/navigate/SearchActivity$3;

    invoke-direct {v4, p0}, Lcom/waze/navigate/SearchActivity$3;-><init>(Lcom/waze/navigate/SearchActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 203
    return-void
.end method

.method private iterateAllEnginesList()V
    .locals 9

    .prologue
    .line 914
    const/4 v4, 0x0

    .line 916
    .local v4, j:I
    iget-object v5, p0, Lcom/waze/navigate/SearchActivity;->enginesList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 917
    .local v3, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/waze/navigate/SearchEngine;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 943
    invoke-direct {p0}, Lcom/waze/navigate/SearchActivity;->forButtonsWithoutEngineSetVisibilityToGone()V

    .line 944
    return-void

    .line 918
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 919
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/waze/navigate/SearchEngine;

    .line 921
    .local v1, engine:Lcom/waze/navigate/SearchEngine;
    const-string v5, "WAZE"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "id:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/waze/navigate/SearchEngine;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " N:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/waze/navigate/SearchEngine;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 922
    const-string v7, " P:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/waze/navigate/SearchEngine;->getProvider()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " B:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/waze/navigate/SearchEngine;->getButton()Lcom/waze/navigate/SearchButton;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 921
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    invoke-virtual {p0}, Lcom/waze/navigate/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "searchButton"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 925
    const-string v7, "id"

    invoke-virtual {p0}, Lcom/waze/navigate/SearchActivity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 924
    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 927
    .local v0, buttonId:I
    invoke-direct {p0, v1, v0}, Lcom/waze/navigate/SearchActivity;->setDrawables(Lcom/waze/navigate/SearchEngine;I)V

    .line 929
    invoke-virtual {v1, v0}, Lcom/waze/navigate/SearchEngine;->setId(I)V

    .line 931
    iget-object v5, p0, Lcom/waze/navigate/SearchActivity;->engines:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/waze/navigate/SearchEngine;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    iget-object v5, p0, Lcom/waze/navigate/SearchActivity;->activeEngine:Lcom/waze/navigate/SearchEngine;

    if-ne v1, v5, :cond_0

    .line 933
    iget-object v2, p0, Lcom/waze/navigate/SearchActivity;->activeEngine:Lcom/waze/navigate/SearchEngine;

    .line 934
    .local v2, finalActiveEngine:Lcom/waze/navigate/SearchEngine;
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    new-instance v6, Lcom/waze/navigate/SearchActivity$6;

    invoke-direct {v6, p0, v2}, Lcom/waze/navigate/SearchActivity$6;-><init>(Lcom/waze/navigate/SearchActivity;Lcom/waze/navigate/SearchEngine;)V

    .line 939
    const-wide/16 v7, 0xc8

    .line 934
    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method private makeOldActiveEngineIdle()V
    .locals 3

    .prologue
    .line 267
    const-string v0, "WAZE"

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "makeOldActiveEngineIdle old:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/waze/navigate/SearchActivity;->activeEngine:Lcom/waze/navigate/SearchEngine;

    invoke-virtual {v2}, Lcom/waze/navigate/SearchEngine;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 269
    iget-object v2, p0, Lcom/waze/navigate/SearchActivity;->activeEngine:Lcom/waze/navigate/SearchEngine;

    invoke-virtual {v2}, Lcom/waze/navigate/SearchEngine;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Searching: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 270
    iget-object v2, p0, Lcom/waze/navigate/SearchActivity;->activeEngine:Lcom/waze/navigate/SearchEngine;

    invoke-virtual {v2}, Lcom/waze/navigate/SearchEngine;->getSearching()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Searched: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 271
    iget-object v2, p0, Lcom/waze/navigate/SearchActivity;->activeEngine:Lcom/waze/navigate/SearchEngine;

    invoke-virtual {v2}, Lcom/waze/navigate/SearchEngine;->getSearched()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 268
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 267
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v0, p0, Lcom/waze/navigate/SearchActivity;->activeEngine:Lcom/waze/navigate/SearchEngine;

    invoke-virtual {v0}, Lcom/waze/navigate/SearchEngine;->getButton()Lcom/waze/navigate/SearchButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/navigate/SearchButton;->idleButton()V

    .line 273
    return-void
.end method

.method private needRetry()Z
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/waze/navigate/SearchActivity;->activeEngine:Lcom/waze/navigate/SearchEngine;

    invoke-virtual {v0}, Lcom/waze/navigate/SearchEngine;->getErrorState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refreshList()V
    .locals 1

    .prologue
    .line 788
    new-instance v0, Lcom/waze/navigate/SearchActivity$5;

    invoke-direct {v0, p0}, Lcom/waze/navigate/SearchActivity$5;-><init>(Lcom/waze/navigate/SearchActivity;)V

    invoke-virtual {p0, v0}, Lcom/waze/navigate/SearchActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 795
    return-void
.end method

.method private refreshSpecificSearchEngine(Ljava/lang/String;)V
    .locals 9
    .parameter "trimedEngineName"

    .prologue
    .line 878
    const/4 v3, 0x0

    .line 880
    .local v3, isFound:Z
    iget-object v5, p0, Lcom/waze/navigate/SearchActivity;->enginesList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 881
    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/waze/navigate/SearchEngine;>;"
    const/4 v4, 0x0

    .line 883
    .local v4, j:I
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 911
    :cond_1
    :goto_0
    return-void

    .line 884
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 885
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/waze/navigate/SearchEngine;

    .line 887
    .local v1, engine:Lcom/waze/navigate/SearchEngine;
    invoke-virtual {v1}, Lcom/waze/navigate/SearchEngine;->getProvider()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 890
    const/4 v3, 0x1

    .line 892
    const-string v5, "WAZE"

    .line 893
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "id:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/waze/navigate/SearchEngine;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " N:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/waze/navigate/SearchEngine;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 894
    const-string v7, " P:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/waze/navigate/SearchEngine;->getProvider()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " B:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 895
    invoke-virtual {v1}, Lcom/waze/navigate/SearchEngine;->getButton()Lcom/waze/navigate/SearchButton;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 893
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 892
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    invoke-virtual {p0}, Lcom/waze/navigate/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "searchButton"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 898
    const-string v7, "id"

    invoke-virtual {p0}, Lcom/waze/navigate/SearchActivity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 897
    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 900
    .local v0, buttonId:I
    invoke-direct {p0, v1, v0}, Lcom/waze/navigate/SearchActivity;->setDrawables(Lcom/waze/navigate/SearchEngine;I)V

    .line 902
    invoke-virtual {v1, v0}, Lcom/waze/navigate/SearchEngine;->setId(I)V

    .line 904
    iget-object v5, p0, Lcom/waze/navigate/SearchActivity;->engines:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/waze/navigate/SearchEngine;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    iget-object v5, p0, Lcom/waze/navigate/SearchActivity;->activeEngine:Lcom/waze/navigate/SearchEngine;

    if-ne v1, v5, :cond_1

    .line 906
    iget-object v5, p0, Lcom/waze/navigate/SearchActivity;->activeEngine:Lcom/waze/navigate/SearchEngine;

    invoke-virtual {v5}, Lcom/waze/navigate/SearchEngine;->getButton()Lcom/waze/navigate/SearchButton;

    move-result-object v5

    invoke-virtual {v5}, Lcom/waze/navigate/SearchButton;->selectButton()V

    goto/16 :goto_0
.end method

.method private reselectOldActiveEngine()V
    .locals 4

    .prologue
    .line 1055
    iget-object v2, p0, Lcom/waze/navigate/SearchActivity;->activeEngine:Lcom/waze/navigate/SearchEngine;

    invoke-virtual {v2}, Lcom/waze/navigate/SearchEngine;->getProvider()Ljava/lang/String;

    move-result-object v0

    .line 1057
    .local v0, activeProvider:Ljava/lang/String;
    iget-object v2, p0, Lcom/waze/navigate/SearchActivity;->engines:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1063
    :goto_0
    return-void

    .line 1057
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/waze/navigate/SearchEngine;

    .line 1058
    .local v1, searchEngine:Lcom/waze/navigate/SearchEngine;
    invoke-virtual {v1}, Lcom/waze/navigate/SearchEngine;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1059
    iput-object v1, p0, Lcom/waze/navigate/SearchActivity;->activeEngine:Lcom/waze/navigate/SearchEngine;

    goto :goto_0
.end method

.method private setDrawables(Lcom/waze/navigate/SearchEngine;I)V
    .locals 5
    .parameter "engine"
    .parameter "buttonId"

    .prologue
    .line 976
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "engine_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 977
    invoke-virtual {p1}, Lcom/waze/navigate/SearchEngine;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_selected.bin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 976
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/waze/ResManager;->GetSkinDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 978
    .local v1, drawableSelected:Landroid/graphics/drawable/Drawable;
    const-string v2, "WAZE"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "drawable selected="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    if-nez v1, :cond_0

    .line 981
    const-string v2, "engine__generic_selected.bin"

    invoke-static {v2}, Lcom/waze/ResManager;->GetSkinDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 983
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "engine_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 984
    invoke-virtual {p1}, Lcom/waze/navigate/SearchEngine;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_idle.bin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 983
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/waze/ResManager;->GetSkinDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 985
    .local v0, drawableIdle:Landroid/graphics/drawable/Drawable;
    const-string v2, "WAZE"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "drawable idle="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    if-nez v0, :cond_1

    .line 988
    const-string v2, "engine__generic_idle.bin"

    invoke-static {v2}, Lcom/waze/ResManager;->GetSkinDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 991
    :cond_1
    new-instance v3, Lcom/waze/navigate/SearchButton;

    invoke-virtual {p0, p2}, Lcom/waze/navigate/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 992
    invoke-direct {v3, v2, v1, v0}, Lcom/waze/navigate/SearchButton;-><init>(Landroid/widget/ImageButton;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 991
    invoke-virtual {p1, v3}, Lcom/waze/navigate/SearchEngine;->setButton(Lcom/waze/navigate/SearchButton;)V

    .line 993
    return-void
.end method

.method private trimSearchEngineName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "engineName"

    .prologue
    .line 947
    const/4 v2, 0x0

    .line 951
    .local v2, trimedEngineName:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 953
    const-string v3, "_"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v0, v3, 0x1

    .line 957
    .local v0, firstUnderScorePosition:I
    new-instance v3, Ljava/lang/StringBuffer;

    .line 955
    invoke-direct {v3, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 957
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 955
    add-int/lit8 v1, v3, 0x1

    .line 961
    .local v1, lastUnderScorePosition:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    .line 959
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 961
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 964
    .end local v0           #firstUnderScorePosition:I
    .end local v1           #lastUnderScorePosition:I
    :cond_0
    return-object v2
.end method


# virtual methods
.method public InitTitle(Ljava/lang/String;)V
    .locals 3
    .parameter "title"

    .prologue
    const v0, 0x7f090283

    .line 155
    if-nez p1, :cond_0

    .line 156
    invoke-virtual {p0, v0}, Lcom/waze/navigate/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/title/TitleBar;

    iget-object v1, p0, Lcom/waze/navigate/SearchActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 157
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_SEARCH_RESULTS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 156
    invoke-virtual {v0, v1}, Lcom/waze/view/title/TitleBar;->setTitle(Ljava/lang/String;)V

    .line 162
    :goto_0
    return-void

    .line 159
    :cond_0
    invoke-virtual {p0, v0}, Lcom/waze/navigate/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/title/TitleBar;

    iget-object v1, p0, Lcom/waze/navigate/SearchActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 160
    invoke-virtual {v1, p1}, Lcom/waze/NativeManager;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 159
    invoke-virtual {v0, v1}, Lcom/waze/view/title/TitleBar;->setTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addressItemClicked(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x5

    const/16 v9, 0x64

    const/4 v8, -0x1

    const/4 v7, 0x1

    .line 280
    const v4, 0x7f09002c

    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/navigate/AddressItem;

    .line 281
    .local v0, ai:Lcom/waze/navigate/AddressItem;
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v2

    .line 282
    .local v2, nm:Lcom/waze/navigate/DriveToNativeManager;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 283
    .local v3, position:I
    const/4 v1, 0x0

    .line 284
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Lcom/waze/navigate/AddressItem;->getCategory()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 385
    :goto_0
    return-void

    .line 286
    :cond_0
    invoke-virtual {v0}, Lcom/waze/navigate/AddressItem;->getCategory()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 287
    invoke-virtual {v0}, Lcom/waze/navigate/AddressItem;->getAddress()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/waze/navigate/SearchActivity;->searchStr:Ljava/lang/String;

    .line 288
    iget-object v4, p0, Lcom/waze/navigate/SearchActivity;->searchMode:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v7, :cond_1

    .line 289
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/waze/navigate/SearchActivity;->searchMode:Ljava/lang/Integer;

    .line 291
    :cond_1
    invoke-direct {p0}, Lcom/waze/navigate/SearchActivity;->clearSearchEngines()V

    .line 292
    iget-object v4, p0, Lcom/waze/navigate/SearchActivity;->engines:Ljava/util/Map;

    const-string v5, "waze"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/waze/navigate/SearchEngine;

    invoke-virtual {p0, v4}, Lcom/waze/navigate/SearchActivity;->setActiveEngine(Lcom/waze/navigate/SearchEngine;)V

    goto :goto_0

    .line 296
    :cond_2
    iget-object v4, p0, Lcom/waze/navigate/SearchActivity;->searchMode:Ljava/lang/Integer;

    if-nez v4, :cond_3

    .line 297
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/waze/navigate/SearchActivity;->searchMode:Ljava/lang/Integer;

    .line 300
    :cond_3
    iget-object v4, p0, Lcom/waze/navigate/SearchActivity;->searchMode:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 302
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-class v4, Lcom/waze/navigate/AddFavoriteNameActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 303
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v4, "AddressItem"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 304
    invoke-virtual {p0, v1, v7}, Lcom/waze/navigate/SearchActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 307
    :pswitch_1
    const-string v4, "Home"

    invoke-virtual {v0, v4}, Lcom/waze/navigate/AddressItem;->setTitle(Ljava/lang/String;)V

    .line 308
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/waze/navigate/AddressItem;->setCategory(Ljava/lang/Integer;)V

    .line 309
    const-string v4, "WAZE"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "add home ai="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/waze/navigate/AddressItem;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-virtual {v2, v0}, Lcom/waze/navigate/DriveToNativeManager;->StoreAddressItem(Lcom/waze/navigate/AddressItem;)V

    .line 311
    invoke-virtual {p0, v8}, Lcom/waze/navigate/SearchActivity;->setResult(I)V

    .line 312
    invoke-virtual {p0}, Lcom/waze/navigate/SearchActivity;->finish()V

    goto/16 :goto_0

    .line 315
    :pswitch_2
    const-string v4, "Work"

    invoke-virtual {v0, v4}, Lcom/waze/navigate/AddressItem;->setTitle(Ljava/lang/String;)V

    .line 316
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/waze/navigate/AddressItem;->setCategory(Ljava/lang/Integer;)V

    .line 317
    const-string v4, "WAZE"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "add work ai="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/waze/navigate/AddressItem;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-virtual {v2, v0}, Lcom/waze/navigate/DriveToNativeManager;->StoreAddressItem(Lcom/waze/navigate/AddressItem;)V

    .line 319
    invoke-virtual {p0, v8}, Lcom/waze/navigate/SearchActivity;->setResult(I)V

    .line 320
    invoke-virtual {p0}, Lcom/waze/navigate/SearchActivity;->finish()V

    goto/16 :goto_0

    .line 324
    :pswitch_3
    invoke-virtual {v2}, Lcom/waze/navigate/DriveToNativeManager;->isStopPointSearchNTV()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 325
    iget v4, v0, Lcom/waze/navigate/AddressItem;->index:I

    invoke-virtual {v2, v4}, Lcom/waze/navigate/DriveToNativeManager;->requestStopPoint(I)V

    .line 326
    :cond_4
    iget v4, v0, Lcom/waze/navigate/AddressItem;->index:I

    invoke-virtual {v2, v4}, Lcom/waze/navigate/DriveToNativeManager;->notifyAddressItemClicked(I)V

    .line 327
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-class v4, Lcom/waze/navigate/AddressPreviewActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 329
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v4, "AddressItemList"

    .line 330
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/waze/navigate/SearchActivity;->activeEngine:Lcom/waze/navigate/SearchEngine;

    .line 331
    invoke-virtual {v6}, Lcom/waze/navigate/SearchEngine;->getResults()[Lcom/waze/navigate/AddressItem;

    move-result-object v6

    .line 330
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 328
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 332
    const-string v4, "AddressItemSelected"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 333
    const-string v4, "ActionButton"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 335
    const-string v4, "ClearAdsContext"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 336
    invoke-virtual {p0, v1, v9}, Lcom/waze/navigate/SearchActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 339
    :pswitch_4
    invoke-virtual {v2}, Lcom/waze/navigate/DriveToNativeManager;->isStopPointSearchNTV()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 340
    iget v4, v0, Lcom/waze/navigate/AddressItem;->index:I

    invoke-virtual {v2, v4}, Lcom/waze/navigate/DriveToNativeManager;->requestStopPoint(I)V

    .line 341
    :cond_5
    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/waze/navigate/AddressItem;->setCategory(Ljava/lang/Integer;)V

    .line 342
    iget-object v4, p0, Lcom/waze/navigate/SearchActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v4}, Lcom/waze/navigate/AddressItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/waze/navigate/AddressItem;->setTitle(Ljava/lang/String;)V

    .line 343
    iget-object v4, p0, Lcom/waze/navigate/SearchActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v4}, Lcom/waze/navigate/AddressItem;->getMeetingId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/waze/navigate/AddressItem;->setMeetingId(Ljava/lang/String;)V

    .line 344
    iget v4, v0, Lcom/waze/navigate/AddressItem;->index:I

    invoke-virtual {v2, v4}, Lcom/waze/navigate/DriveToNativeManager;->notifyAddressItemClicked(I)V

    .line 345
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-class v4, Lcom/waze/navigate/AddressPreviewActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 347
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v4, "AddressItemList"

    .line 348
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/waze/navigate/SearchActivity;->activeEngine:Lcom/waze/navigate/SearchEngine;

    .line 349
    invoke-virtual {v6}, Lcom/waze/navigate/SearchEngine;->getResults()[Lcom/waze/navigate/AddressItem;

    move-result-object v6

    .line 348
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 346
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 350
    const-string v4, "AddressItemSelected"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 351
    const-string v4, "AddressItem"

    iget-object v5, p0, Lcom/waze/navigate/SearchActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 352
    const-string v4, "ActionButton"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 354
    const-string v4, "ClearAdsContext"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 355
    invoke-virtual {p0, v1, v9}, Lcom/waze/navigate/SearchActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 359
    :pswitch_5
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-class v4, Lcom/waze/phone/PhoneVerifyYourAccountActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 360
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v4, "AddressItem"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 361
    invoke-virtual {p0, v8, v1}, Lcom/waze/navigate/SearchActivity;->setResult(ILandroid/content/Intent;)V

    .line 362
    invoke-virtual {p0}, Lcom/waze/navigate/SearchActivity;->finish()V

    goto/16 :goto_0

    .line 366
    :pswitch_6
    sget-object v4, Lcom/waze/share/ShareUtility$ShareType;->ShareType_ShareSelection:Lcom/waze/share/ShareUtility$ShareType;

    invoke-static {v4, v10, v0, v10}, Lcom/waze/share/ShareUtility;->OpenShareActivity(Lcom/waze/share/ShareUtility$ShareType;Ljava/lang/String;Lcom/waze/navigate/AddressItem;[Lcom/waze/user/PersonBase;)V

    goto/16 :goto_0

    .line 370
    :pswitch_7
    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/waze/navigate/AddressItem;->setCategory(Ljava/lang/Integer;)V

    .line 371
    iget-object v4, p0, Lcom/waze/navigate/SearchActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v4}, Lcom/waze/navigate/AddressItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/waze/navigate/AddressItem;->setTitle(Ljava/lang/String;)V

    .line 372
    iget-object v4, p0, Lcom/waze/navigate/SearchActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v4}, Lcom/waze/navigate/AddressItem;->getMeetingId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/waze/navigate/AddressItem;->setMeetingId(Ljava/lang/String;)V

    .line 373
    iget v4, v0, Lcom/waze/navigate/AddressItem;->index:I

    invoke-virtual {v2, v4}, Lcom/waze/navigate/DriveToNativeManager;->notifyAddressItemClicked(I)V

    .line 374
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-class v4, Lcom/waze/navigate/AddressPreviewActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 376
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v4, "AddressItemList"

    .line 377
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/waze/navigate/SearchActivity;->activeEngine:Lcom/waze/navigate/SearchEngine;

    .line 378
    invoke-virtual {v6}, Lcom/waze/navigate/SearchEngine;->getResults()[Lcom/waze/navigate/AddressItem;

    move-result-object v6

    .line 377
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 375
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 379
    const-string v4, "AddressItemSelected"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 380
    const-string v4, "AddressItem"

    iget-object v5, p0, Lcom/waze/navigate/SearchActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 381
    const-string v4, "ClearAdsContext"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 382
    invoke-virtual {p0, v1, v9}, Lcom/waze/navigate/SearchActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 300
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public buttonBarSizeChanged(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 276
    const-string v0, "WAZE"

    const-string v1, "button bar changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return-void
.end method

.method public closeProgressPopup()V
    .locals 2

    .prologue
    .line 1078
    iget-boolean v0, p0, Lcom/waze/navigate/SearchActivity;->progressPopupRunning:Z

    if-eqz v0, :cond_0

    .line 1079
    const v0, 0x7f0905f2

    invoke-virtual {p0, v0}, Lcom/waze/navigate/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1080
    const v0, 0x7f0905f3

    invoke-virtual {p0, v0}, Lcom/waze/navigate/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/map/ProgressAnimation;

    .line 1081
    invoke-virtual {v0}, Lcom/waze/view/map/ProgressAnimation;->stop()V

    .line 1082
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/navigate/SearchActivity;->progressPopupRunning:Z

    .line 1084
    :cond_0
    return-void
.end method

.method public downloadResCallback()V
    .locals 1

    .prologue
    .line 1126
    new-instance v0, Lcom/waze/navigate/SearchActivity$8;

    invoke-direct {v0, p0}, Lcom/waze/navigate/SearchActivity$8;-><init>(Lcom/waze/navigate/SearchActivity;)V

    invoke-virtual {p0, v0}, Lcom/waze/navigate/SearchActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1134
    return-void
.end method

.method public engineClicked(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 412
    const-string v0, "WAZE"

    const-string v1, "engine button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v0, p0, Lcom/waze/navigate/SearchActivity;->engines:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/navigate/SearchEngine;

    invoke-virtual {p0, v0}, Lcom/waze/navigate/SearchActivity;->setActiveEngine(Lcom/waze/navigate/SearchEngine;)V

    .line 414
    return-void
.end method

.method finalizeSearch(Ljava/lang/String;)V
    .locals 5
    .parameter "active_provider"

    .prologue
    .line 799
    const-string v2, "WAZE"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Finalizing search. Active provider: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    iget-object v2, p0, Lcom/waze/navigate/SearchActivity;->engines:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 811
    iget-boolean v2, p0, Lcom/waze/navigate/SearchActivity;->resultsArrived:Z

    if-eqz v2, :cond_3

    .line 812
    iget-object v0, p0, Lcom/waze/navigate/SearchActivity;->activeEngine:Lcom/waze/navigate/SearchEngine;

    .line 816
    .local v0, actEng:Lcom/waze/navigate/SearchEngine;
    :goto_1
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string v2, "_contact"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 821
    invoke-virtual {p0, v0}, Lcom/waze/navigate/SearchActivity;->setActiveEngine(Lcom/waze/navigate/SearchEngine;)V

    .line 822
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/waze/navigate/SearchActivity;->resultsArrived:Z

    .line 825
    :cond_0
    return-void

    .line 803
    .end local v0           #actEng:Lcom/waze/navigate/SearchEngine;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/waze/navigate/SearchEngine;

    .line 804
    .local v1, engine:Lcom/waze/navigate/SearchEngine;
    iget-object v3, p0, Lcom/waze/navigate/SearchActivity;->category:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/waze/navigate/SearchActivity;->category:Ljava/lang/String;

    const-string v4, "gas"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 805
    iget-object v3, p0, Lcom/waze/navigate/SearchActivity;->sortPreferences:Lcom/waze/navigate/SortPreferences;

    invoke-virtual {v1, v3}, Lcom/waze/navigate/SearchEngine;->sortResults(Lcom/waze/navigate/SortPreferences;)V

    .line 807
    :cond_2
    invoke-virtual {v1}, Lcom/waze/navigate/SearchEngine;->finalizeSearch()V

    goto :goto_0

    .line 814
    .end local v1           #engine:Lcom/waze/navigate/SearchEngine;
    :cond_3
    iget-object v2, p0, Lcom/waze/navigate/SearchActivity;->engines:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/navigate/SearchEngine;

    .restart local v0       #actEng:Lcom/waze/navigate/SearchEngine;
    goto :goto_1
.end method

.method public getAddressItems()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1146
    iget-object v3, p0, Lcom/waze/navigate/SearchActivity;->activeEngine:Lcom/waze/navigate/SearchEngine;

    invoke-virtual {v3}, Lcom/waze/navigate/SearchEngine;->getProvider()Ljava/lang/String;

    move-result-object v3

    const-string v4, "waze"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1147
    iget-object v3, p0, Lcom/waze/navigate/SearchActivity;->searchMode:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    .line 1148
    iget-object v3, p0, Lcom/waze/navigate/SearchActivity;->activeEngine:Lcom/waze/navigate/SearchEngine;

    invoke-virtual {v3}, Lcom/waze/navigate/SearchEngine;->getResults()[Lcom/waze/navigate/AddressItem;

    move-result-object v3

    array-length v3, v3

    if-ne v3, v1, :cond_1

    .line 1149
    iget-object v3, p0, Lcom/waze/navigate/SearchActivity;->activeEngine:Lcom/waze/navigate/SearchEngine;

    invoke-virtual {v3}, Lcom/waze/navigate/SearchEngine;->getResults()[Lcom/waze/navigate/AddressItem;

    move-result-object v3

    aget-object v0, v3, v2

    .line 1150
    .local v0, ai:Lcom/waze/navigate/AddressItem;
    invoke-virtual {v0}, Lcom/waze/navigate/AddressItem;->getCategory()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v1, :cond_0

    .line 1151
    .local v1, store:Z
    :goto_0
    iget-object v3, p0, Lcom/waze/navigate/SearchActivity;->nm:Lcom/waze/navigate/DriveToNativeManager;

    invoke-virtual {v3, v0, p0, v2, v1}, Lcom/waze/navigate/DriveToNativeManager;->navigate(Lcom/waze/navigate/AddressItem;Lcom/waze/navigate/DriveToNavigateCallback;ZZ)V

    .line 1155
    .end local v0           #ai:Lcom/waze/navigate/AddressItem;
    .end local v1           #store:Z
    :goto_1
    return-void

    .restart local v0       #ai:Lcom/waze/navigate/AddressItem;
    :cond_0
    move v1, v2

    .line 1150
    goto :goto_0

    .line 1153
    .end local v0           #ai:Lcom/waze/navigate/AddressItem;
    :cond_1
    iget-object v2, p0, Lcom/waze/navigate/SearchActivity;->adapter:Lcom/waze/navigate/SearchActivity$SearchResultsListAdapter;

    iget-object v3, p0, Lcom/waze/navigate/SearchActivity;->activeEngine:Lcom/waze/navigate/SearchEngine;

    invoke-virtual {v3}, Lcom/waze/navigate/SearchEngine;->getResults()[Lcom/waze/navigate/AddressItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/waze/navigate/SearchActivity$SearchResultsListAdapter;->setItems([Lcom/waze/navigate/AddressItem;)V

    goto :goto_1
.end method

.method public getSearchEnginesCallback(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/waze/navigate/SearchEngine;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 997
    .local p1, el:Ljava/util/List;,"Ljava/util/List<Lcom/waze/navigate/SearchEngine;>;"
    iput-object p1, p0, Lcom/waze/navigate/SearchActivity;->enginesList:Ljava/util/List;

    .line 998
    const-string v4, "WAZE"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "in getSearchEnginesCallback count="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/waze/navigate/SearchActivity;->enginesList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    iget-object v4, p0, Lcom/waze/navigate/SearchActivity;->enginesList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1000
    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/waze/navigate/SearchEngine;>;"
    const/4 v3, 0x0

    .line 1002
    .local v3, j:I
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1016
    invoke-direct {p0}, Lcom/waze/navigate/SearchActivity;->chooseActiveEngine()V

    .line 1018
    invoke-direct {p0}, Lcom/waze/navigate/SearchActivity;->forButtonsWithoutEngineSetVisibilityToGone()V

    .line 1019
    iget-object v4, p0, Lcom/waze/navigate/SearchActivity;->engines:Ljava/util/Map;

    const-string v5, "_contact"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/waze/navigate/SearchEngine;

    .line 1020
    .local v1, engine:Lcom/waze/navigate/SearchEngine;
    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/waze/navigate/SearchActivity;->searchStr:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 1021
    iget-object v4, p0, Lcom/waze/navigate/SearchActivity;->searchStr:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/waze/navigate/SearchActivity;->searchContacts(Ljava/lang/String;)[Lcom/waze/navigate/AddressItem;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/waze/navigate/SearchEngine;->setResults([Lcom/waze/navigate/AddressItem;)V

    .line 1024
    :cond_0
    return-void

    .line 1003
    .end local v1           #engine:Lcom/waze/navigate/SearchEngine;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 1004
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/waze/navigate/SearchEngine;

    .line 1005
    .restart local v1       #engine:Lcom/waze/navigate/SearchEngine;
    const-string v4, "WAZE"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "id:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/waze/navigate/SearchEngine;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " N:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/waze/navigate/SearchEngine;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1006
    const-string v6, " P:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/waze/navigate/SearchEngine;->getProvider()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " B:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/waze/navigate/SearchEngine;->getButton()Lcom/waze/navigate/SearchButton;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1005
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    invoke-virtual {p0}, Lcom/waze/navigate/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "searchButton"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1008
    const-string v6, "id"

    invoke-virtual {p0}, Lcom/waze/navigate/SearchActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1007
    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1009
    .local v0, buttonId:I
    invoke-direct {p0, v1, v0}, Lcom/waze/navigate/SearchActivity;->setDrawables(Lcom/waze/navigate/SearchEngine;I)V

    .line 1010
    invoke-virtual {v1, v0}, Lcom/waze/navigate/SearchEngine;->setId(I)V

    .line 1011
    iget-object v4, p0, Lcom/waze/navigate/SearchActivity;->engines:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/waze/navigate/SearchEngine;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    iget-object v4, p0, Lcom/waze/navigate/SearchActivity;->engines:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/waze/navigate/SearchEngine;->getProvider()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method protected myHandleMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "msg"

    .prologue
    .line 745
    iget v1, p1, Landroid/os/Message;->what:I

    sget v2, Lcom/waze/navigate/DriveToNativeManager;->UH_ETA:I

    if-ne v1, v2, :cond_1

    .line 746
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 747
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "provider"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "distance"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/waze/navigate/SearchActivity;->updateEta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    .end local v0           #b:Landroid/os/Bundle;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->myHandleMessage(Landroid/os/Message;)Z

    move-result v1

    return v1

    .line 748
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    sget v2, Lcom/waze/navigate/DriveToNativeManager;->UH_SEARCH_ADD_RESULT:I

    if-ne v1, v2, :cond_2

    .line 749
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 750
    .restart local v0       #b:Landroid/os/Bundle;
    const-string v1, "provider"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "address_item"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/waze/navigate/AddressItem;

    invoke-virtual {p0, v2, v1}, Lcom/waze/navigate/SearchActivity;->searchAddResult(Ljava/lang/String;Lcom/waze/navigate/AddressItem;)V

    goto :goto_0

    .line 751
    .end local v0           #b:Landroid/os/Bundle;
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    sget v2, Lcom/waze/navigate/DriveToNativeManager;->UH_SEARCH_FINALIZE:I

    if-ne v1, v2, :cond_3

    .line 752
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 753
    .restart local v0       #b:Landroid/os/Bundle;
    const-string v1, "provider"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/waze/navigate/SearchActivity;->finalizeSearch(Ljava/lang/String;)V

    goto :goto_0

    .line 754
    .end local v0           #b:Landroid/os/Bundle;
    :cond_3
    iget v1, p1, Landroid/os/Message;->what:I

    sget v2, Lcom/waze/navigate/DriveToNativeManager;->UH_SEARCH_FAIL:I

    if-ne v1, v2, :cond_0

    .line 755
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 756
    .restart local v0       #b:Landroid/os/Bundle;
    const-string v1, "provider"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "errMsg"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "canRetry"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/waze/navigate/SearchActivity;->searchFail(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public navigateCallback(I)V
    .locals 3
    .parameter "rc"

    .prologue
    .line 1159
    const-string v0, "WAZE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "navigateCallback:rc="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/waze/navigate/SearchActivity;->setResult(I)V

    .line 1161
    invoke-virtual {p0}, Lcom/waze/navigate/SearchActivity;->finish()V

    .line 1162
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 1166
    invoke-super {p0, p1, p2, p3}, Lcom/waze/ifs/ui/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 1168
    const/16 v3, 0x64

    if-ne p1, v3, :cond_0

    .line 1169
    if-eqz p3, :cond_0

    const-string v3, "venue"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "position"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1170
    const-string v3, "position"

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1171
    .local v1, position:I
    const-string v3, "venue"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 1172
    .local v2, venue:Landroid/os/Parcelable;
    iget-object v3, p0, Lcom/waze/navigate/SearchActivity;->activeEngine:Lcom/waze/navigate/SearchEngine;

    if-eqz v3, :cond_0

    .line 1173
    iget-object v3, p0, Lcom/waze/navigate/SearchActivity;->activeEngine:Lcom/waze/navigate/SearchEngine;

    invoke-virtual {v3, v1}, Lcom/waze/navigate/SearchEngine;->getResult(I)Lcom/waze/navigate/AddressItem;

    move-result-object v0

    .line 1174
    .local v0, item:Lcom/waze/navigate/AddressItem;
    check-cast v2, Lcom/waze/reports/VenueData;

    .end local v2           #venue:Landroid/os/Parcelable;
    iput-object v2, v0, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    .line 1175
    iget-object v3, p0, Lcom/waze/navigate/SearchActivity;->activeEngine:Lcom/waze/navigate/SearchEngine;

    invoke-virtual {v3, v1, v0}, Lcom/waze/navigate/SearchEngine;->setResult(ILcom/waze/navigate/AddressItem;)V

    .line 1180
    .end local v0           #item:Lcom/waze/navigate/AddressItem;
    .end local v1           #position:I
    :cond_0
    const/4 v3, 0x2

    if-eq p2, v3, :cond_1

    .line 1182
    if-ne p2, v4, :cond_2

    .line 1183
    invoke-virtual {p0, v4}, Lcom/waze/navigate/SearchActivity;->setResult(I)V

    .line 1184
    invoke-virtual {p0}, Lcom/waze/navigate/SearchActivity;->finish()V

    .line 1192
    :cond_1
    :goto_0
    return-void

    .line 1185
    :cond_2
    if-ne p2, v5, :cond_3

    .line 1186
    invoke-virtual {p0, v5}, Lcom/waze/navigate/SearchActivity;->setResult(I)V

    .line 1187
    invoke-virtual {p0}, Lcom/waze/navigate/SearchActivity;->finish()V

    goto :goto_0

    .line 1188
    :cond_3
    if-eqz p2, :cond_1

    .line 1189
    invoke-virtual {p0, p2, p3}, Lcom/waze/navigate/SearchActivity;->setResult(ILandroid/content/Intent;)V

    .line 1190
    invoke-virtual {p0}, Lcom/waze/navigate/SearchActivity;->finish()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 148
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 149
    invoke-direct {p0}, Lcom/waze/navigate/SearchActivity;->initLayout()V

    .line 150
    iget-object v0, p0, Lcom/waze/navigate/SearchActivity;->nativeManager:Lcom/waze/NativeManager;

    iget-object v1, p0, Lcom/waze/navigate/SearchActivity;->category:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/waze/NativeManager;->GetTitle(Ljava/lang/String;Lcom/waze/navigate/SearchActivity;)V

    .line 151
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/waze/navigate/SearchActivity;->refreshSearchEngines(Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 86
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/waze/navigate/SearchActivity;->requestWindowFeature(I)Z

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/waze/navigate/SearchActivity;->engines:Ljava/util/Map;

    .line 89
    invoke-virtual {p0}, Lcom/waze/navigate/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 90
    const-string v1, "SearchCategory"

    .line 89
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/navigate/SearchActivity;->category:Ljava/lang/String;

    .line 91
    invoke-virtual {p0}, Lcom/waze/navigate/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 92
    const-string v1, "SearchStr"

    .line 91
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/navigate/SearchActivity;->searchStr:Ljava/lang/String;

    .line 93
    invoke-virtual {p0}, Lcom/waze/navigate/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "SearchMode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/navigate/SearchActivity;->searchMode:Ljava/lang/Integer;

    .line 95
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/waze/navigate/SearchActivity;->bGetTimeOffRoute:Ljava/lang/Boolean;

    .line 97
    iget-object v0, p0, Lcom/waze/navigate/SearchActivity;->searchMode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/waze/navigate/SearchActivity;->searchMode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/waze/navigate/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 99
    const-string v1, "AddressItem"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/waze/navigate/AddressItem;

    .line 98
    iput-object v0, p0, Lcom/waze/navigate/SearchActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    .line 102
    :cond_1
    iput-boolean v2, p0, Lcom/waze/navigate/SearchActivity;->resultsArrived:Z

    .line 103
    invoke-direct {p0}, Lcom/waze/navigate/SearchActivity;->initLayout()V

    .line 104
    iget-object v0, p0, Lcom/waze/navigate/SearchActivity;->nativeManager:Lcom/waze/NativeManager;

    iget-object v1, p0, Lcom/waze/navigate/SearchActivity;->category:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/waze/NativeManager;->GetTitle(Ljava/lang/String;Lcom/waze/navigate/SearchActivity;)V

    .line 106
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/navigate/SearchActivity;->nm:Lcom/waze/navigate/DriveToNativeManager;

    .line 107
    iget-object v0, p0, Lcom/waze/navigate/SearchActivity;->nm:Lcom/waze/navigate/DriveToNativeManager;

    iget-object v1, p0, Lcom/waze/navigate/SearchActivity;->category:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/waze/navigate/DriveToNativeManager;->getSearchEngines(Ljava/lang/String;Lcom/waze/navigate/DriveToGetSearchEnginesCallback;)V

    .line 108
    iget-object v0, p0, Lcom/waze/navigate/SearchActivity;->category:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 109
    iget-object v0, p0, Lcom/waze/navigate/SearchActivity;->nm:Lcom/waze/navigate/DriveToNativeManager;

    iget-object v1, p0, Lcom/waze/navigate/SearchActivity;->category:Ljava/lang/String;

    new-instance v2, Lcom/waze/navigate/SearchActivity$1;

    invoke-direct {v2, p0}, Lcom/waze/navigate/SearchActivity$1;-><init>(Lcom/waze/navigate/SearchActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/waze/navigate/DriveToNativeManager;->getSortPreferences(Ljava/lang/String;Lcom/waze/navigate/DriveToNativeManager$SortPreferencesListener;)V

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/waze/navigate/SearchActivity;->nm:Lcom/waze/navigate/DriveToNativeManager;

    sget v1, Lcom/waze/navigate/DriveToNativeManager;->UH_ETA:I

    iget-object v2, p0, Lcom/waze/navigate/SearchActivity;->mHandler:Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;

    invoke-virtual {v0, v1, v2}, Lcom/waze/navigate/DriveToNativeManager;->setUpdateHandler(ILandroid/os/Handler;)V

    .line 118
    iget-object v0, p0, Lcom/waze/navigate/SearchActivity;->nm:Lcom/waze/navigate/DriveToNativeManager;

    sget v1, Lcom/waze/navigate/DriveToNativeManager;->UH_SEARCH_ADD_RESULT:I

    iget-object v2, p0, Lcom/waze/navigate/SearchActivity;->mHandler:Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;

    invoke-virtual {v0, v1, v2}, Lcom/waze/navigate/DriveToNativeManager;->setUpdateHandler(ILandroid/os/Handler;)V

    .line 119
    iget-object v0, p0, Lcom/waze/navigate/SearchActivity;->nm:Lcom/waze/navigate/DriveToNativeManager;

    sget v1, Lcom/waze/navigate/DriveToNativeManager;->UH_SEARCH_FINALIZE:I

    iget-object v2, p0, Lcom/waze/navigate/SearchActivity;->mHandler:Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;

    invoke-virtual {v0, v1, v2}, Lcom/waze/navigate/DriveToNativeManager;->setUpdateHandler(ILandroid/os/Handler;)V

    .line 120
    iget-object v0, p0, Lcom/waze/navigate/SearchActivity;->nm:Lcom/waze/navigate/DriveToNativeManager;

    sget v1, Lcom/waze/navigate/DriveToNativeManager;->UH_SEARCH_FAIL:I

    iget-object v2, p0, Lcom/waze/navigate/SearchActivity;->mHandler:Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;

    invoke-virtual {v0, v1, v2}, Lcom/waze/navigate/DriveToNativeManager;->setUpdateHandler(ILandroid/os/Handler;)V

    .line 125
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 389
    iget-object v0, p0, Lcom/waze/navigate/SearchActivity;->nm:Lcom/waze/navigate/DriveToNativeManager;

    sget v1, Lcom/waze/navigate/DriveToNativeManager;->UH_ETA:I

    iget-object v2, p0, Lcom/waze/navigate/SearchActivity;->mHandler:Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;

    invoke-virtual {v0, v1, v2}, Lcom/waze/navigate/DriveToNativeManager;->unsetUpdateHandler(ILandroid/os/Handler;)V

    .line 390
    iget-object v0, p0, Lcom/waze/navigate/SearchActivity;->nm:Lcom/waze/navigate/DriveToNativeManager;

    sget v1, Lcom/waze/navigate/DriveToNativeManager;->UH_SEARCH_ADD_RESULT:I

    iget-object v2, p0, Lcom/waze/navigate/SearchActivity;->mHandler:Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;

    invoke-virtual {v0, v1, v2}, Lcom/waze/navigate/DriveToNativeManager;->unsetUpdateHandler(ILandroid/os/Handler;)V

    .line 391
    iget-object v0, p0, Lcom/waze/navigate/SearchActivity;->nm:Lcom/waze/navigate/DriveToNativeManager;

    sget v1, Lcom/waze/navigate/DriveToNativeManager;->UH_SEARCH_FINALIZE:I

    iget-object v2, p0, Lcom/waze/navigate/SearchActivity;->mHandler:Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;

    invoke-virtual {v0, v1, v2}, Lcom/waze/navigate/DriveToNativeManager;->unsetUpdateHandler(ILandroid/os/Handler;)V

    .line 392
    iget-object v0, p0, Lcom/waze/navigate/SearchActivity;->nm:Lcom/waze/navigate/DriveToNativeManager;

    sget v1, Lcom/waze/navigate/DriveToNativeManager;->UH_SEARCH_FAIL:I

    iget-object v2, p0, Lcom/waze/navigate/SearchActivity;->mHandler:Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;

    invoke-virtual {v0, v1, v2}, Lcom/waze/navigate/DriveToNativeManager;->unsetUpdateHandler(ILandroid/os/Handler;)V

    .line 393
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/waze/navigate/SearchActivity;->bGetTimeOffRoute:Ljava/lang/Boolean;

    .line 394
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onDestroy()V

    .line 395
    iget-object v0, p0, Lcom/waze/navigate/SearchActivity;->nativeManager:Lcom/waze/NativeManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->setSearchResults(Ljava/util/ArrayList;)V

    .line 396
    return-void
.end method

.method public openProgressPopup()V
    .locals 3

    .prologue
    .line 1066
    iget-boolean v0, p0, Lcom/waze/navigate/SearchActivity;->progressPopupRunning:Z

    if-nez v0, :cond_0

    .line 1067
    const v0, 0x7f0905f2

    invoke-virtual {p0, v0}, Lcom/waze/navigate/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1068
    const v0, 0x7f0905f3

    invoke-virtual {p0, v0}, Lcom/waze/navigate/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/map/ProgressAnimation;

    .line 1069
    invoke-virtual {v0}, Lcom/waze/view/map/ProgressAnimation;->start()V

    .line 1070
    const v0, 0x7f0905f4

    invoke-virtual {p0, v0}, Lcom/waze/navigate/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1071
    iget-object v1, p0, Lcom/waze/navigate/SearchActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 1072
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_SEARCHING_______:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 1071
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1073
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/navigate/SearchActivity;->progressPopupRunning:Z

    .line 1075
    :cond_0
    return-void
.end method

.method public refreshAdressItemsIcons(ILjava/lang/String;)V
    .locals 1
    .parameter "position"
    .parameter "icon"

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/waze/navigate/SearchActivity;->adapter:Lcom/waze/navigate/SearchActivity$SearchResultsListAdapter;

    invoke-virtual {v0}, Lcom/waze/navigate/SearchActivity$SearchResultsListAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1139
    iget-object v0, p0, Lcom/waze/navigate/SearchActivity;->adapter:Lcom/waze/navigate/SearchActivity$SearchResultsListAdapter;

    invoke-virtual {v0, p1}, Lcom/waze/navigate/SearchActivity$SearchResultsListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/navigate/AddressItem;

    invoke-virtual {v0, p2}, Lcom/waze/navigate/AddressItem;->setIcon(Ljava/lang/String;)V

    .line 1141
    iget-object v0, p0, Lcom/waze/navigate/SearchActivity;->adapter:Lcom/waze/navigate/SearchActivity$SearchResultsListAdapter;

    invoke-virtual {v0}, Lcom/waze/navigate/SearchActivity$SearchResultsListAdapter;->notifyDataSetChanged()V

    .line 1143
    :cond_0
    return-void
.end method

.method public refreshSearchEngines(Ljava/lang/String;)V
    .locals 1
    .parameter "engineName"

    .prologue
    .line 866
    iget-object v0, p0, Lcom/waze/navigate/SearchActivity;->enginesList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 875
    :goto_0
    return-void

    .line 869
    :cond_0
    if-nez p1, :cond_1

    .line 870
    invoke-direct {p0}, Lcom/waze/navigate/SearchActivity;->iterateAllEnginesList()V

    goto :goto_0

    .line 873
    :cond_1
    invoke-direct {p0, p1}, Lcom/waze/navigate/SearchActivity;->trimSearchEngineName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/waze/navigate/SearchActivity;->refreshSpecificSearchEngine(Ljava/lang/String;)V

    goto :goto_0
.end method

.method searchAddResult(Ljava/lang/String;Lcom/waze/navigate/AddressItem;)V
    .locals 2
    .parameter "provider"
    .parameter "ai"

    .prologue
    .line 764
    iget-object v1, p0, Lcom/waze/navigate/SearchActivity;->engines:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/navigate/SearchEngine;

    .line 765
    .local v0, engine:Lcom/waze/navigate/SearchEngine;
    if-eqz v0, :cond_0

    const-string v1, "_contact"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 766
    invoke-virtual {v0, p2}, Lcom/waze/navigate/SearchEngine;->addResult(Lcom/waze/navigate/AddressItem;)V

    .line 768
    :cond_0
    return-void
.end method

.method public searchCallback(I)V
    .locals 4
    .parameter "rc"

    .prologue
    const/4 v3, -0x1

    .line 735
    const-string v0, "WAZE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "search rc="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    if-ne p1, v3, :cond_0

    .line 737
    invoke-virtual {p0, v3}, Lcom/waze/navigate/SearchActivity;->setResult(I)V

    .line 738
    invoke-virtual {p0}, Lcom/waze/navigate/SearchActivity;->finish()V

    .line 740
    :cond_0
    return-void
.end method

.method public searchContacts(Ljava/lang/String;)[Lcom/waze/navigate/AddressItem;
    .locals 31
    .parameter "search"

    .prologue
    .line 1087
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

    .line 1088
    const/16 v29, 0x0

    .line 1089
    .local v29, contacts:[Lcom/waze/navigate/AddressItem;
    invoke-virtual/range {p0 .. p0}, Lcom/waze/navigate/SearchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1090
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v4, "display_name LIKE ? AND mimetype = ?"

    .line 1092
    .local v4, where:Ljava/lang/String;
    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 1093
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

    .line 1094
    const-string v3, "vnd.android.cursor.item/postal-address_v2"

    aput-object v3, v5, v2

    .line 1097
    .local v5, whereParams:[Ljava/lang/String;
    :try_start_0
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 1098
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 1097
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v28

    .line 1099
    .local v28, addrCur:Landroid/database/Cursor;
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->getCount()I

    move-result v2

    new-array v0, v2, [Lcom/waze/navigate/AddressItem;

    move-object/from16 v29, v0

    .line 1101
    :goto_0
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1112
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1116
    .end local v28           #addrCur:Landroid/database/Cursor;
    :goto_1
    const-string v2, "WAZE"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "contact search end "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    if-eqz v29, :cond_0

    move-object/from16 v0, v29

    array-length v2, v0

    if-nez v2, :cond_1

    .line 1118
    :cond_0
    const/4 v2, 0x1

    new-array v0, v2, [Lcom/waze/navigate/AddressItem;

    move-object/from16 v29, v0

    .end local v29           #contacts:[Lcom/waze/navigate/AddressItem;
    const/4 v2, 0x0

    sget-object v3, Lcom/waze/navigate/AddressItem;->NO_RESULT_ADDRESS_ITEM:Lcom/waze/navigate/AddressItem;

    aput-object v3, v29, v2

    .line 1120
    :cond_1
    return-object v29

    .line 1102
    .restart local v28       #addrCur:Landroid/database/Cursor;
    .restart local v29       #contacts:[Lcom/waze/navigate/AddressItem;
    :cond_2
    :try_start_1
    const-string v2, "data1"

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1103
    .local v11, formatted:Ljava/lang/String;
    const-string v2, "display_name"

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1104
    .local v9, name:Ljava/lang/String;
    const-string v2, "data10"

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 1105
    .local v22, country:Ljava/lang/String;
    const-string v2, "data8"

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 1106
    .local v23, state:Ljava/lang/String;
    const-string v2, "data7"

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 1107
    .local v24, city:Ljava/lang/String;
    const-string v2, "data4"

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 1109
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

    .line 1110
    const-string v26, ""

    const/16 v27, 0x0

    invoke-direct/range {v6 .. v27}, Lcom/waze/navigate/AddressItem;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/waze/reports/VenueData;)V

    .line 1109
    aput-object v6, v29, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1113
    .end local v9           #name:Ljava/lang/String;
    .end local v11           #formatted:Ljava/lang/String;
    .end local v22           #country:Ljava/lang/String;
    .end local v23           #state:Ljava/lang/String;
    .end local v24           #city:Ljava/lang/String;
    .end local v25           #street:Ljava/lang/String;
    .end local v28           #addrCur:Landroid/database/Cursor;
    :catch_0
    move-exception v30

    .line 1114
    .local v30, e:Ljava/lang/Exception;
    const-string v2, "WAZE"

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method searchFail(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .parameter "provider"
    .parameter "errMsg"
    .parameter "canRetry"

    .prologue
    const/4 v2, 0x1

    .line 830
    iget-object v1, p0, Lcom/waze/navigate/SearchActivity;->engines:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/navigate/SearchEngine;

    .line 831
    .local v0, engine:Lcom/waze/navigate/SearchEngine;
    if-eqz v0, :cond_1

    const-string v1, "_contact"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 833
    if-eqz p3, :cond_2

    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/waze/navigate/SearchEngine;->setErrorState(I)V

    .line 835
    invoke-virtual {v0}, Lcom/waze/navigate/SearchEngine;->getResults()[Lcom/waze/navigate/AddressItem;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_0

    .line 836
    sget-object v1, Lcom/waze/navigate/AddressItem;->NO_RESULT_ADDRESS_ITEM:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v0, v1}, Lcom/waze/navigate/SearchEngine;->addResult(Lcom/waze/navigate/AddressItem;)V

    .line 838
    :cond_0
    invoke-virtual {v0}, Lcom/waze/navigate/SearchEngine;->finalizeSearch()V

    .line 840
    iget-object v1, p0, Lcom/waze/navigate/SearchActivity;->activeEngine:Lcom/waze/navigate/SearchEngine;

    if-ne v0, v1, :cond_1

    .line 841
    invoke-virtual {p0}, Lcom/waze/navigate/SearchActivity;->closeProgressPopup()V

    .line 842
    iget-object v1, p0, Lcom/waze/navigate/SearchActivity;->adapter:Lcom/waze/navigate/SearchActivity$SearchResultsListAdapter;

    invoke-virtual {v0}, Lcom/waze/navigate/SearchEngine;->getResults()[Lcom/waze/navigate/AddressItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/waze/navigate/SearchActivity$SearchResultsListAdapter;->setItems([Lcom/waze/navigate/AddressItem;)V

    .line 843
    iput-boolean v2, p0, Lcom/waze/navigate/SearchActivity;->resultsArrived:Z

    .line 846
    :cond_1
    return-void

    :cond_2
    move v1, v2

    .line 834
    goto :goto_0
.end method

.method searchResults(Ljava/lang/String;[Lcom/waze/navigate/AddressItem;)V
    .locals 5
    .parameter "provider"
    .parameter "ai"

    .prologue
    const/4 v4, 0x0

    .line 849
    const-string v1, "WAZE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "searchResults provider="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    const-string v1, "WAZE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "searchResults ai="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    const-string v1, "WAZE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "searchResults length="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    const-string v1, "WAZE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "searchResults ai[0]="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, p2, v4

    invoke-virtual {v3}, Lcom/waze/navigate/AddressItem;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    iget-object v1, p0, Lcom/waze/navigate/SearchActivity;->engines:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/navigate/SearchEngine;

    .line 854
    .local v0, engine:Lcom/waze/navigate/SearchEngine;
    if-eqz v0, :cond_2

    const-string v1, "_contact"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 855
    invoke-virtual {v0, p2}, Lcom/waze/navigate/SearchEngine;->setResults([Lcom/waze/navigate/AddressItem;)V

    .line 856
    array-length v1, p2

    if-lez v1, :cond_0

    .line 857
    aget-object v1, p2, v4

    invoke-virtual {v1}, Lcom/waze/navigate/AddressItem;->getCategory()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/waze/navigate/SearchActivity;->resultsArrived:Z

    if-eqz v1, :cond_1

    .line 858
    :cond_0
    iget-object v1, p0, Lcom/waze/navigate/SearchActivity;->activeEngine:Lcom/waze/navigate/SearchEngine;

    if-ne v0, v1, :cond_2

    .line 859
    :cond_1
    invoke-virtual {p0, v0}, Lcom/waze/navigate/SearchActivity;->setActiveEngine(Lcom/waze/navigate/SearchEngine;)V

    .line 860
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/waze/navigate/SearchActivity;->resultsArrived:Z

    .line 863
    :cond_2
    return-void
.end method

.method public setActiveEngine(Lcom/waze/navigate/SearchEngine;)V
    .locals 5
    .parameter "engine"

    .prologue
    const/4 v4, 0x0

    .line 206
    if-nez p1, :cond_0

    .line 234
    :goto_0
    return-void

    .line 210
    :cond_0
    invoke-static {}, Lcom/waze/AppService;->isNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 211
    new-instance v0, Lcom/waze/navigate/SearchActivity$4;

    invoke-direct {v0, p0}, Lcom/waze/navigate/SearchActivity$4;-><init>(Lcom/waze/navigate/SearchActivity;)V

    .line 220
    .local v0, onclick:Landroid/content/DialogInterface$OnClickListener;
    iget-object v1, p0, Lcom/waze/navigate/SearchActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 221
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_NO_NETWORK_CONNECTION:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 222
    iget-object v2, p0, Lcom/waze/navigate/SearchActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 223
    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_SORRY__YOU_HAVE_NO_NETWORK_CONNECTION_RIGHT_NOW__PLEASE_TRY_LATER:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 219
    invoke-static {v1, v2, v4, v0}, Lcom/waze/MsgBox;->openMessageBoxWithCallback(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 228
    .end local v0           #onclick:Landroid/content/DialogInterface$OnClickListener;
    :cond_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/waze/navigate/SearchActivity;->bGetTimeOffRoute:Ljava/lang/Boolean;

    .line 230
    iget-object v1, p0, Lcom/waze/navigate/SearchActivity;->activeEngine:Lcom/waze/navigate/SearchEngine;

    if-eqz v1, :cond_2

    .line 231
    invoke-direct {p0}, Lcom/waze/navigate/SearchActivity;->makeOldActiveEngineIdle()V

    .line 233
    :cond_2
    invoke-direct {p0, p1}, Lcom/waze/navigate/SearchActivity;->activateNewSearchEngine(Lcom/waze/navigate/SearchEngine;)V

    goto :goto_0
.end method

.method updateEta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "provider"
    .parameter "distance"
    .parameter "id"

    .prologue
    .line 771
    const-string v2, "WAZE"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "updateEta: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iget-object v2, p0, Lcom/waze/navigate/SearchActivity;->engines:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/waze/navigate/SearchEngine;

    .line 773
    .local v1, engine:Lcom/waze/navigate/SearchEngine;
    if-eqz v1, :cond_0

    .line 774
    invoke-virtual {v1}, Lcom/waze/navigate/SearchEngine;->getResults()[Lcom/waze/navigate/AddressItem;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_1

    .line 784
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/waze/navigate/SearchActivity;->refreshList()V

    .line 785
    return-void

    .line 774
    :cond_1
    aget-object v0, v3, v2

    .line 775
    .local v0, addressItem:Lcom/waze/navigate/AddressItem;
    if-eqz v0, :cond_2

    .line 776
    invoke-virtual {v0}, Lcom/waze/navigate/AddressItem;->getId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lcom/waze/navigate/AddressItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 777
    invoke-virtual {v0, p2}, Lcom/waze/navigate/AddressItem;->setDistance(Ljava/lang/String;)V

    .line 778
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/waze/navigate/SearchActivity;->bGetTimeOffRoute:Ljava/lang/Boolean;

    goto :goto_1

    .line 774
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
