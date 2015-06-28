.class public Lcom/waze/routes/RoutesMapActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "RoutesMapActivity.java"


# instance fields
.field private driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;

.field private mapView:Lcom/waze/MapView;

.field private nativeManager:Lcom/waze/NativeManager;

.field protected routes:[Lcom/waze/routes/AlternativeRoute;

.field private selected:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/waze/routes/RoutesMapActivity;->selected:I

    .line 28
    return-void
.end method

.method static synthetic access$0(Lcom/waze/routes/RoutesMapActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 32
    iget v0, p0, Lcom/waze/routes/RoutesMapActivity;->selected:I

    return v0
.end method

.method static synthetic access$1(Lcom/waze/routes/RoutesMapActivity;)Lcom/waze/NativeManager;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/waze/routes/RoutesMapActivity;->nativeManager:Lcom/waze/NativeManager;

    return-object v0
.end method

.method static synthetic access$2(Lcom/waze/routes/RoutesMapActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/waze/routes/RoutesMapActivity;->routeConfirmed()V

    return-void
.end method

.method static synthetic access$3(Lcom/waze/routes/RoutesMapActivity;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Lcom/waze/routes/RoutesMapActivity;->populateData(IZ)V

    return-void
.end method

.method static synthetic access$4(Lcom/waze/routes/RoutesMapActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/waze/routes/RoutesMapActivity;->onSelect(I)V

    return-void
.end method

.method private onSelect(I)V
    .locals 6
    .parameter "position"

    .prologue
    const/4 v5, 0x0

    const v4, 0x7f09059c

    .line 164
    iget-object v2, p0, Lcom/waze/routes/RoutesMapActivity;->routes:[Lcom/waze/routes/AlternativeRoute;

    array-length v2, v2

    if-gt v2, p1, :cond_0

    .line 188
    :goto_0
    return-void

    .line 167
    :cond_0
    const/4 v0, 0x0

    .line 168
    .local v0, landscape:Z
    invoke-virtual {p0}, Lcom/waze/routes/RoutesMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 169
    const/4 v0, 0x1

    .line 174
    :cond_1
    iput p1, p0, Lcom/waze/routes/RoutesMapActivity;->selected:I

    .line 176
    iget-object v2, p0, Lcom/waze/routes/RoutesMapActivity;->driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;

    iget v3, p0, Lcom/waze/routes/RoutesMapActivity;->selected:I

    invoke-virtual {v2, v3}, Lcom/waze/navigate/DriveToNativeManager;->highlightRoute(I)V

    .line 179
    const v2, 0x7f0905b6

    invoke-virtual {p0, v2}, Lcom/waze/routes/RoutesMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 180
    invoke-virtual {p0, v4}, Lcom/waze/routes/RoutesMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 181
    iget-object v2, p0, Lcom/waze/routes/RoutesMapActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_VIA:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, viaStr:Ljava/lang/String;
    iget-object v2, p0, Lcom/waze/routes/RoutesMapActivity;->nativeManager:Lcom/waze/NativeManager;

    invoke-virtual {v2}, Lcom/waze/NativeManager;->getLanguageRtl()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 183
    invoke-virtual {p0, v4}, Lcom/waze/routes/RoutesMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 187
    :goto_1
    invoke-virtual {p0, v4}, Lcom/waze/routes/RoutesMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/waze/routes/RoutesMapActivity;->routes:[Lcom/waze/routes/AlternativeRoute;

    iget v5, p0, Lcom/waze/routes/RoutesMapActivity;->selected:I

    aget-object v4, v4, v5

    iget-object v4, v4, Lcom/waze/routes/AlternativeRoute;->description:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 185
    :cond_2
    invoke-virtual {p0, v4}, Lcom/waze/routes/RoutesMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_1
.end method

.method private populateData(IZ)V
    .locals 7
    .parameter "position"
    .parameter "highlightAll"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 132
    const v1, 0x7f0905b4

    invoke-virtual {p0, v1}, Lcom/waze/routes/RoutesMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/tabs/TabBar;

    .line 133
    .local v0, tabBar:Lcom/waze/view/tabs/TabBar;
    iget-object v1, p0, Lcom/waze/routes/RoutesMapActivity;->routes:[Lcom/waze/routes/AlternativeRoute;

    array-length v1, v1

    if-ne v1, v5, :cond_4

    .line 135
    invoke-virtual {v0, v5, v6}, Lcom/waze/view/tabs/TabBar;->setEnabled(IZ)V

    .line 136
    const-string v1, ""

    invoke-virtual {v0, v5, v1}, Lcom/waze/view/tabs/TabBar;->setText(ILjava/lang/String;)V

    .line 137
    invoke-virtual {v0, v4, v6}, Lcom/waze/view/tabs/TabBar;->setEnabled(IZ)V

    .line 138
    const-string v1, ""

    invoke-virtual {v0, v4, v1}, Lcom/waze/view/tabs/TabBar;->setText(ILjava/lang/String;)V

    .line 146
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/waze/routes/RoutesMapActivity;->routes:[Lcom/waze/routes/AlternativeRoute;

    array-length v1, v1

    if-lez v1, :cond_1

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/waze/routes/RoutesMapActivity;->routes:[Lcom/waze/routes/AlternativeRoute;

    aget-object v2, v2, v6

    iget v2, v2, Lcom/waze/routes/AlternativeRoute;->time:I

    div-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/routes/RoutesMapActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_MIN_:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lcom/waze/view/tabs/TabBar;->setText(ILjava/lang/String;)V

    .line 149
    :cond_1
    iget-object v1, p0, Lcom/waze/routes/RoutesMapActivity;->routes:[Lcom/waze/routes/AlternativeRoute;

    array-length v1, v1

    if-le v1, v5, :cond_2

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/waze/routes/RoutesMapActivity;->routes:[Lcom/waze/routes/AlternativeRoute;

    aget-object v2, v2, v5

    iget v2, v2, Lcom/waze/routes/AlternativeRoute;->time:I

    div-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/routes/RoutesMapActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_MIN_:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/waze/view/tabs/TabBar;->setText(ILjava/lang/String;)V

    .line 152
    :cond_2
    iget-object v1, p0, Lcom/waze/routes/RoutesMapActivity;->routes:[Lcom/waze/routes/AlternativeRoute;

    array-length v1, v1

    if-le v1, v4, :cond_3

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/waze/routes/RoutesMapActivity;->routes:[Lcom/waze/routes/AlternativeRoute;

    aget-object v2, v2, v4

    iget v2, v2, Lcom/waze/routes/AlternativeRoute;->time:I

    div-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/routes/RoutesMapActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_MIN_:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/waze/view/tabs/TabBar;->setText(ILjava/lang/String;)V

    .line 156
    :cond_3
    invoke-direct {p0, p1}, Lcom/waze/routes/RoutesMapActivity;->onSelect(I)V

    .line 157
    if-eqz p2, :cond_5

    .line 158
    iget-object v1, p0, Lcom/waze/routes/RoutesMapActivity;->driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/waze/navigate/DriveToNativeManager;->highlightRoute(I)V

    .line 162
    :goto_1
    return-void

    .line 140
    :cond_4
    iget-object v1, p0, Lcom/waze/routes/RoutesMapActivity;->routes:[Lcom/waze/routes/AlternativeRoute;

    array-length v1, v1

    if-ne v1, v4, :cond_0

    .line 142
    invoke-virtual {v0, v4, v6}, Lcom/waze/view/tabs/TabBar;->setEnabled(IZ)V

    .line 143
    const-string v1, ""

    invoke-virtual {v0, v4, v1}, Lcom/waze/view/tabs/TabBar;->setText(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 160
    :cond_5
    iget-object v1, p0, Lcom/waze/routes/RoutesMapActivity;->driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;

    invoke-virtual {v1, p1}, Lcom/waze/navigate/DriveToNativeManager;->highlightRoute(I)V

    goto :goto_1
.end method

.method private routeConfirmed()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/waze/routes/RoutesMapActivity;->driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;

    iget v1, p0, Lcom/waze/routes/RoutesMapActivity;->selected:I

    invoke-virtual {v0, v1}, Lcom/waze/navigate/DriveToNativeManager;->selectAlternativeRoute(I)V

    .line 127
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/waze/routes/RoutesMapActivity;->setResult(I)V

    .line 128
    invoke-virtual {p0}, Lcom/waze/routes/RoutesMapActivity;->finish()V

    .line 129
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 213
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 214
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/waze/routes/RoutesMapActivity;->requestWindowFeature(I)Z

    .line 39
    const v2, 0x7f0300d2

    invoke-virtual {p0, v2}, Lcom/waze/routes/RoutesMapActivity;->setContentView(I)V

    .line 40
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v2

    iput-object v2, p0, Lcom/waze/routes/RoutesMapActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 41
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v2

    iput-object v2, p0, Lcom/waze/routes/RoutesMapActivity;->driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;

    .line 43
    if-eqz p1, :cond_0

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".routes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, [Lcom/waze/routes/AlternativeRoute;

    iput-object v2, p0, Lcom/waze/routes/RoutesMapActivity;->routes:[Lcom/waze/routes/AlternativeRoute;

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".selected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/waze/routes/RoutesMapActivity;->selected:I

    .line 48
    :cond_0
    const v2, 0x7f0905b3

    invoke-virtual {p0, v2}, Lcom/waze/routes/RoutesMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/MapView;

    iput-object v2, p0, Lcom/waze/routes/RoutesMapActivity;->mapView:Lcom/waze/MapView;

    .line 49
    const v2, 0x7f090058

    invoke-virtual {p0, v2}, Lcom/waze/routes/RoutesMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/title/TitleBar;

    .line 50
    .local v1, titleBar:Lcom/waze/view/title/TitleBar;
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_ROUTES:Lcom/waze/strings/DisplayStrings;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_LIST:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, p0, v2, v3}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;Lcom/waze/strings/DisplayStrings;)V

    .line 51
    new-instance v2, Lcom/waze/routes/RoutesMapActivity$1;

    invoke-direct {v2, p0}, Lcom/waze/routes/RoutesMapActivity$1;-><init>(Lcom/waze/routes/RoutesMapActivity;)V

    invoke-virtual {v1, v2}, Lcom/waze/view/title/TitleBar;->setOnClickCloseListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v2, 0x7f0905b7

    invoke-virtual {p0, v2}, Lcom/waze/routes/RoutesMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/waze/routes/RoutesMapActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_GO:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    const v2, 0x7f0905b6

    invoke-virtual {p0, v2}, Lcom/waze/routes/RoutesMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/waze/routes/RoutesMapActivity$2;

    invoke-direct {v3, p0}, Lcom/waze/routes/RoutesMapActivity$2;-><init>(Lcom/waze/routes/RoutesMapActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v2, p0, Lcom/waze/routes/RoutesMapActivity;->routes:[Lcom/waze/routes/AlternativeRoute;

    if-nez v2, :cond_1

    .line 87
    iget-object v2, p0, Lcom/waze/routes/RoutesMapActivity;->driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;

    new-instance v3, Lcom/waze/routes/RoutesMapActivity$3;

    invoke-direct {v3, p0}, Lcom/waze/routes/RoutesMapActivity$3;-><init>(Lcom/waze/routes/RoutesMapActivity;)V

    invoke-virtual {v2, v3}, Lcom/waze/navigate/DriveToNativeManager;->getAlternativeRoutes(Lcom/waze/navigate/DriveToNativeManager$AlternativeRoutesListener;)V

    .line 94
    iget-object v2, p0, Lcom/waze/routes/RoutesMapActivity;->driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;

    new-instance v3, Lcom/waze/routes/RoutesMapActivity$4;

    invoke-direct {v3, p0}, Lcom/waze/routes/RoutesMapActivity$4;-><init>(Lcom/waze/routes/RoutesMapActivity;)V

    invoke-virtual {v2, v3}, Lcom/waze/navigate/DriveToNativeManager;->getMajorEventsOnRoute(Lcom/waze/navigate/DriveToNativeManager$MajorEventsOnRouteListener;)V

    .line 115
    :goto_0
    const v2, 0x7f0905b4

    invoke-virtual {p0, v2}, Lcom/waze/routes/RoutesMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/tabs/TabBar;

    .line 116
    .local v0, tabBar:Lcom/waze/view/tabs/TabBar;
    invoke-virtual {v0}, Lcom/waze/view/tabs/TabBar;->setAltRoutesTabs()V

    .line 117
    new-instance v2, Lcom/waze/routes/RoutesMapActivity$5;

    invoke-direct {v2, p0}, Lcom/waze/routes/RoutesMapActivity$5;-><init>(Lcom/waze/routes/RoutesMapActivity;)V

    invoke-virtual {v0, v2}, Lcom/waze/view/tabs/TabBar;->setListener(Lcom/waze/view/tabs/TabBar$IOnTabClickListener;)V

    .line 123
    return-void

    .line 112
    .end local v0           #tabBar:Lcom/waze/view/tabs/TabBar;
    :cond_1
    iget v2, p0, Lcom/waze/routes/RoutesMapActivity;->selected:I

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/waze/routes/RoutesMapActivity;->populateData(IZ)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 192
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onPause()V

    .line 193
    iget-object v0, p0, Lcom/waze/routes/RoutesMapActivity;->mapView:Lcom/waze/MapView;

    invoke-virtual {v0}, Lcom/waze/MapView;->onPause()V

    .line 194
    iget-object v0, p0, Lcom/waze/routes/RoutesMapActivity;->driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;

    invoke-virtual {v0}, Lcom/waze/navigate/DriveToNativeManager;->unsetAlternativeRoutesView()V

    .line 195
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 199
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onResume()V

    .line 200
    iget-object v0, p0, Lcom/waze/routes/RoutesMapActivity;->mapView:Lcom/waze/MapView;

    invoke-virtual {v0}, Lcom/waze/MapView;->onResume()V

    .line 201
    iget-object v0, p0, Lcom/waze/routes/RoutesMapActivity;->driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;

    invoke-virtual {v0}, Lcom/waze/navigate/DriveToNativeManager;->setAlternativeRoutesView()V

    .line 202
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 206
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".routes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/routes/RoutesMapActivity;->routes:[Lcom/waze/routes/AlternativeRoute;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".selected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/waze/routes/RoutesMapActivity;->selected:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 209
    return-void
.end method
