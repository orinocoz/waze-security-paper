.class public Lcom/waze/share/ShareFbLocationActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "ShareFbLocationActivity.java"

# interfaces
.implements Lcom/waze/share/ShareFbQueries$ILocationsListCallback;
.implements Lcom/waze/share/ShareNativeManager$IShareFbLocationDataHandler;


# static fields
.field private static final LOCATIONS_LIST_LENGTH_LIMIT:I = 0x28

.field private static mSelectedLocation:Lcom/waze/share/ShareFbLocation;


# instance fields
.field private mAdapter:Lcom/waze/share/ShareFbLocListAdapter;

.field private final mListClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mListView:Landroid/widget/ListView;

.field private mSearchBox:Landroid/widget/EditText;

.field private final mSearchTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/share/ShareFbLocationActivity;->mSelectedLocation:Lcom/waze/share/ShareFbLocation;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 127
    new-instance v0, Lcom/waze/share/ShareFbLocationActivity$1;

    invoke-direct {v0, p0}, Lcom/waze/share/ShareFbLocationActivity$1;-><init>(Lcom/waze/share/ShareFbLocationActivity;)V

    iput-object v0, p0, Lcom/waze/share/ShareFbLocationActivity;->mListClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 140
    new-instance v0, Lcom/waze/share/ShareFbLocationActivity$2;

    invoke-direct {v0, p0}, Lcom/waze/share/ShareFbLocationActivity$2;-><init>(Lcom/waze/share/ShareFbLocationActivity;)V

    iput-object v0, p0, Lcom/waze/share/ShareFbLocationActivity;->mSearchTextWatcher:Landroid/text/TextWatcher;

    .line 27
    return-void
.end method

.method static synthetic access$0(Lcom/waze/share/ShareFbLocation;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    sput-object p0, Lcom/waze/share/ShareFbLocationActivity;->mSelectedLocation:Lcom/waze/share/ShareFbLocation;

    return-void
.end method

.method static synthetic access$1()Lcom/waze/share/ShareFbLocation;
    .locals 1

    .prologue
    .line 165
    sget-object v0, Lcom/waze/share/ShareFbLocationActivity;->mSelectedLocation:Lcom/waze/share/ShareFbLocation;

    return-object v0
.end method

.method static synthetic access$2(Lcom/waze/share/ShareFbLocationActivity;Ljava/lang/String;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/waze/share/ShareFbLocationActivity;->fetchLocations(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$3(Lcom/waze/share/ShareFbLocationActivity;)Lcom/waze/share/ShareFbLocListAdapter;
    .locals 1
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, Lcom/waze/share/ShareFbLocationActivity;->mAdapter:Lcom/waze/share/ShareFbLocListAdapter;

    return-object v0
.end method

.method static synthetic access$4(Lcom/waze/share/ShareFbLocationActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 163
    iget-object v0, p0, Lcom/waze/share/ShareFbLocationActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/waze/share/ShareFbLocationActivity;Ljava/lang/String;Lcom/waze/location/Position;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 122
    invoke-direct {p0, p1, p2, p3}, Lcom/waze/share/ShareFbLocationActivity;->requestLocations(Ljava/lang/String;Lcom/waze/location/Position;Z)V

    return-void
.end method

.method private fetchLocations(Ljava/lang/String;ZZ)V
    .locals 8
    .parameter "pattern"
    .parameter "showProgress"
    .parameter "applyLocationListener"

    .prologue
    .line 96
    invoke-static {}, Lcom/waze/NativeLocListener;->getInstance()Lcom/waze/NativeLocListener;

    move-result-object v4

    .line 97
    .local v4, nl:Lcom/waze/NativeLocListener;
    new-instance v3, Lcom/waze/location/Position;

    invoke-direct {v3}, Lcom/waze/location/Position;-><init>()V

    .line 99
    .local v3, pos:Lcom/waze/location/Position;
    new-instance v0, Lcom/waze/share/ShareFbLocationActivity$4;

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/waze/share/ShareFbLocationActivity$4;-><init>(Lcom/waze/share/ShareFbLocationActivity;Landroid/app/Activity;Lcom/waze/location/Position;Lcom/waze/NativeLocListener;Ljava/lang/String;Z)V

    .line 110
    .local v0, locationRetriever:Lcom/waze/ifs/async/RunnableExecutor;
    invoke-static {}, Lcom/waze/NativeLocListener;->getInstance()Lcom/waze/NativeLocListener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/NativeLocListener;->getLastLocation()Landroid/location/Location;

    move-result-object v7

    .line 112
    .local v7, loc:Landroid/location/Location;
    if-eqz v7, :cond_1

    .line 114
    invoke-virtual {v7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    iput-wide v1, v3, Lcom/waze/location/Position;->latitude:D

    .line 115
    invoke-virtual {v7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    iput-wide v1, v3, Lcom/waze/location/Position;->longitude:D

    .line 116
    invoke-direct {p0, p1, v3, p2}, Lcom/waze/share/ShareFbLocationActivity;->requestLocations(Ljava/lang/String;Lcom/waze/location/Position;Z)V

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    if-eqz p3, :cond_0

    .line 119
    invoke-virtual {v4, v0}, Lcom/waze/NativeLocListener;->registerLocListener(Lcom/waze/ifs/async/RunnableExecutor;)V

    goto :goto_0
.end method

.method public static getSelected(Ljava/lang/String;)Lcom/waze/share/ShareFbLocation;
    .locals 2
    .parameter "locId"

    .prologue
    .line 81
    sget-object v0, Lcom/waze/share/ShareFbLocationActivity;->mSelectedLocation:Lcom/waze/share/ShareFbLocation;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/waze/share/ShareFbLocationActivity;->mSelectedLocation:Lcom/waze/share/ShareFbLocation;

    iget-object v0, v0, Lcom/waze/share/ShareFbLocation;->name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    sget-object v0, Lcom/waze/share/ShareFbLocationActivity;->mSelectedLocation:Lcom/waze/share/ShareFbLocation;

    .line 88
    :goto_0
    return-object v0

    .line 87
    :cond_0
    const-string v0, "WAZE"

    const-string v1, "There is no match between the supplied id and selected lcoation"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private requestLocations(Ljava/lang/String;Lcom/waze/location/Position;Z)V
    .locals 6
    .parameter "pattern"
    .parameter "pos"
    .parameter "showProgress"

    .prologue
    .line 124
    const/16 v2, 0x28

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p0

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/waze/share/ShareFbQueries;->getLocationsList(Lcom/waze/ifs/ui/ActivityBase;Ljava/lang/String;ILcom/waze/location/Position;Lcom/waze/share/ShareFbQueries$ILocationsListCallback;Z)V

    .line 125
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 32
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v1, 0x7f030102

    invoke-virtual {p0, v1}, Lcom/waze/share/ShareFbLocationActivity;->setContentView(I)V

    .line 36
    invoke-static {}, Lcom/waze/share/ShareNativeManager;->getInstance()Lcom/waze/share/ShareNativeManager;

    move-result-object v0

    .line 37
    .local v0, nm:Lcom/waze/share/ShareNativeManager;
    invoke-virtual {v0, p0}, Lcom/waze/share/ShareNativeManager;->getShareFbLocationData(Lcom/waze/share/ShareNativeManager$IShareFbLocationDataHandler;)V

    .line 40
    const v1, 0x7f0906b2

    invoke-virtual {p0, v1}, Lcom/waze/share/ShareFbLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/waze/share/ShareFbLocationActivity;->mSearchBox:Landroid/widget/EditText;

    .line 41
    const v1, 0x7f0906b3

    invoke-virtual {p0, v1}, Lcom/waze/share/ShareFbLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/waze/share/ShareFbLocationActivity;->mListView:Landroid/widget/ListView;

    .line 43
    iget-object v1, p0, Lcom/waze/share/ShareFbLocationActivity;->mSearchBox:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/waze/share/ShareFbLocationActivity;->mSearchTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 45
    new-instance v1, Lcom/waze/share/ShareFbLocListAdapter;

    invoke-direct {v1, p0}, Lcom/waze/share/ShareFbLocListAdapter;-><init>(Lcom/waze/ifs/ui/ActivityBase;)V

    iput-object v1, p0, Lcom/waze/share/ShareFbLocationActivity;->mAdapter:Lcom/waze/share/ShareFbLocListAdapter;

    .line 46
    iget-object v1, p0, Lcom/waze/share/ShareFbLocationActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/waze/share/ShareFbLocationActivity;->mAdapter:Lcom/waze/share/ShareFbLocListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 47
    iget-object v1, p0, Lcom/waze/share/ShareFbLocationActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/waze/share/ShareFbLocationActivity;->mListClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 49
    const-string v1, ""

    invoke-direct {p0, v1, v3, v3}, Lcom/waze/share/ShareFbLocationActivity;->fetchLocations(Ljava/lang/String;ZZ)V

    .line 50
    return-void
.end method

.method public onFbLocationData(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/waze/share/ShareFbLocationActivity;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    const v1, 0x7f0906b1

    invoke-virtual {p0, v1}, Lcom/waze/share/ShareFbLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/title/TitleBar;

    .line 59
    .local v0, tb:Lcom/waze/view/title/TitleBar;
    invoke-virtual {v0, p0, p1}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Ljava/lang/String;)V

    .line 61
    .end local v0           #tb:Lcom/waze/view/title/TitleBar;
    :cond_0
    return-void
.end method

.method public onLocationsListResult(Ljava/util/ArrayList;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter "error_code"
    .parameter "errorString"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/share/ShareFbLocation;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/share/ShareFbLocation;>;"
    new-instance v0, Lcom/waze/share/ShareFbLocationActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/waze/share/ShareFbLocationActivity$3;-><init>(Lcom/waze/share/ShareFbLocationActivity;Ljava/util/ArrayList;)V

    .line 73
    .local v0, r:Ljava/lang/Runnable;
    if-nez p2, :cond_0

    .line 75
    invoke-virtual {p0, v0}, Lcom/waze/share/ShareFbLocationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 77
    :cond_0
    return-void
.end method
