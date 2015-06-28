.class public Lcom/waze/mywaze/social/FoursquareListActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "FoursquareListActivity.java"


# instance fields
.field private mywazeManager:Lcom/waze/mywaze/MyWazeNativeManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 20
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/mywaze/social/FoursquareListActivity;->mywazeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    .line 21
    return-void
.end method

.method static synthetic access$0(Lcom/waze/mywaze/social/FoursquareListActivity;)Lcom/waze/mywaze/MyWazeNativeManager;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/waze/mywaze/social/FoursquareListActivity;->mywazeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v7, 0x7f030059

    invoke-virtual {p0, v7}, Lcom/waze/mywaze/social/FoursquareListActivity;->setContentView(I)V

    .line 28
    const v7, 0x7f0902c2

    invoke-virtual {p0, v7}, Lcom/waze/mywaze/social/FoursquareListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/waze/view/title/TitleBar;

    sget-object v8, Lcom/waze/strings/DisplayStrings;->DS_FOURSQUARE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v7, p0, v8}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;)V

    .line 30
    invoke-virtual {p0}, Lcom/waze/mywaze/social/FoursquareListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 31
    .local v1, b:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 32
    const-string v7, "com.waze.mywaze.foursquare.descriptions"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 33
    .local v2, descriptions:[Ljava/lang/String;
    const-string v7, "com.waze.mywaze.foursquare.addresses"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, addresses:[Ljava/lang/String;
    const-string v7, "com.waze.mywaze.foursquare.distances"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 35
    .local v3, distances:[Ljava/lang/String;
    array-length v7, v2

    new-array v6, v7, [Lcom/waze/mywaze/social/FoursquareVenue;

    .line 36
    .local v6, venues:[Lcom/waze/mywaze/social/FoursquareVenue;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v7, v6

    if-lt v4, v7, :cond_1

    .line 39
    const v7, 0x7f0902cb

    invoke-virtual {p0, v7}, Lcom/waze/mywaze/social/FoursquareListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    .line 40
    .local v5, list:Landroid/widget/ListView;
    new-instance v7, Lcom/waze/mywaze/social/FoursquareListAdapter;

    invoke-virtual {p0}, Lcom/waze/mywaze/social/FoursquareListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f030058

    invoke-direct {v7, v8, v9, v6}, Lcom/waze/mywaze/social/FoursquareListAdapter;-><init>(Landroid/content/Context;I[Lcom/waze/mywaze/social/FoursquareVenue;)V

    invoke-virtual {v5, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 41
    new-instance v7, Lcom/waze/mywaze/social/FoursquareListActivity$1;

    invoke-direct {v7, p0}, Lcom/waze/mywaze/social/FoursquareListActivity$1;-><init>(Lcom/waze/mywaze/social/FoursquareListActivity;)V

    invoke-virtual {v5, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 48
    .end local v0           #addresses:[Ljava/lang/String;
    .end local v2           #descriptions:[Ljava/lang/String;
    .end local v3           #distances:[Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #list:Landroid/widget/ListView;
    .end local v6           #venues:[Lcom/waze/mywaze/social/FoursquareVenue;
    :cond_0
    return-void

    .line 37
    .restart local v0       #addresses:[Ljava/lang/String;
    .restart local v2       #descriptions:[Ljava/lang/String;
    .restart local v3       #distances:[Ljava/lang/String;
    .restart local v4       #i:I
    .restart local v6       #venues:[Lcom/waze/mywaze/social/FoursquareVenue;
    :cond_1
    new-instance v7, Lcom/waze/mywaze/social/FoursquareVenue;

    aget-object v8, v2, v4

    aget-object v9, v0, v4

    aget-object v10, v3, v4

    invoke-direct {v7, v8, v9, v10}, Lcom/waze/mywaze/social/FoursquareVenue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v6, v4

    .line 36
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method
