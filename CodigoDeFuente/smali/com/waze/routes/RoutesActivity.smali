.class public Lcom/waze/routes/RoutesActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "RoutesActivity.java"


# static fields
.field protected static final MAP_ACTIVITY_CODE:I = 0x3e8


# instance fields
.field private driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;

.field protected events:[Lcom/waze/main/navigate/EventOnRoute;

.field private gotEvents:Z

.field private gotMajorEvents:Z

.field private gotRoutes:Z

.field protected majorEvents:[Lcom/waze/main/navigate/MajorEventOnRoute;

.field private nativeManager:Lcom/waze/NativeManager;

.field private routeAdapter:Lcom/waze/routes/RouteAdapter;

.field private routeList:Landroid/widget/ListView;

.field private routes:[Lcom/waze/routes/AlternativeRoute;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 35
    iput-boolean v0, p0, Lcom/waze/routes/RoutesActivity;->gotRoutes:Z

    .line 36
    iput-boolean v0, p0, Lcom/waze/routes/RoutesActivity;->gotEvents:Z

    .line 37
    iput-boolean v0, p0, Lcom/waze/routes/RoutesActivity;->gotMajorEvents:Z

    .line 26
    return-void
.end method

.method static synthetic access$0(Lcom/waze/routes/RoutesActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/waze/routes/RoutesActivity;->onRouteSelected(I)V

    return-void
.end method

.method static synthetic access$1(Lcom/waze/routes/RoutesActivity;[Lcom/waze/routes/AlternativeRoute;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/waze/routes/RoutesActivity;->routes:[Lcom/waze/routes/AlternativeRoute;

    return-void
.end method

.method static synthetic access$2(Lcom/waze/routes/RoutesActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/waze/routes/RoutesActivity;->gotRoutes:Z

    return-void
.end method

.method static synthetic access$3(Lcom/waze/routes/RoutesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/waze/routes/RoutesActivity;->invalidateRoutes()V

    return-void
.end method

.method static synthetic access$4(Lcom/waze/routes/RoutesActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/waze/routes/RoutesActivity;->gotEvents:Z

    return-void
.end method

.method static synthetic access$5(Lcom/waze/routes/RoutesActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/waze/routes/RoutesActivity;->gotMajorEvents:Z

    return-void
.end method

.method static synthetic access$6(Lcom/waze/routes/RoutesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/waze/routes/RoutesActivity;->markClosure()V

    return-void
.end method

.method static synthetic access$7(Lcom/waze/routes/RoutesActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/waze/routes/RoutesActivity;->routeConfirmed(I)V

    return-void
.end method

.method private invalidateRoutes()V
    .locals 2

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/waze/routes/RoutesActivity;->gotMajorEvents:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/waze/routes/RoutesActivity;->gotEvents:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/waze/routes/RoutesActivity;->gotRoutes:Z

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/waze/routes/RoutesActivity;->routeAdapter:Lcom/waze/routes/RouteAdapter;

    iget-object v1, p0, Lcom/waze/routes/RoutesActivity;->events:[Lcom/waze/main/navigate/EventOnRoute;

    invoke-virtual {v0, v1}, Lcom/waze/routes/RouteAdapter;->setEvents([Lcom/waze/main/navigate/EventOnRoute;)V

    .line 126
    iget-object v0, p0, Lcom/waze/routes/RoutesActivity;->routeAdapter:Lcom/waze/routes/RouteAdapter;

    iget-object v1, p0, Lcom/waze/routes/RoutesActivity;->majorEvents:[Lcom/waze/main/navigate/MajorEventOnRoute;

    invoke-virtual {v0, v1}, Lcom/waze/routes/RouteAdapter;->setMajorEvents([Lcom/waze/main/navigate/MajorEventOnRoute;)V

    .line 127
    iget-object v0, p0, Lcom/waze/routes/RoutesActivity;->routeAdapter:Lcom/waze/routes/RouteAdapter;

    iget-object v1, p0, Lcom/waze/routes/RoutesActivity;->routes:[Lcom/waze/routes/AlternativeRoute;

    invoke-virtual {v0, v1}, Lcom/waze/routes/RouteAdapter;->setRoutes([Lcom/waze/routes/AlternativeRoute;)V

    .line 128
    iget-object v0, p0, Lcom/waze/routes/RoutesActivity;->routeList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 130
    :cond_0
    return-void
.end method

.method private markClosure()V
    .locals 7

    .prologue
    .line 133
    iget-boolean v2, p0, Lcom/waze/routes/RoutesActivity;->gotMajorEvents:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/waze/routes/RoutesActivity;->majorEvents:[Lcom/waze/main/navigate/MajorEventOnRoute;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/waze/routes/RoutesActivity;->routes:[Lcom/waze/routes/AlternativeRoute;

    if-eqz v2, :cond_0

    .line 134
    iget-object v3, p0, Lcom/waze/routes/RoutesActivity;->majorEvents:[Lcom/waze/main/navigate/MajorEventOnRoute;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_1

    .line 145
    :cond_0
    return-void

    .line 134
    :cond_1
    aget-object v0, v3, v2

    .line 135
    .local v0, event:Lcom/waze/main/navigate/MajorEventOnRoute;
    iget v5, v0, Lcom/waze/main/navigate/MajorEventOnRoute;->alertType:I

    const/16 v6, 0xc

    if-ne v5, v6, :cond_2

    .line 136
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v5, p0, Lcom/waze/routes/RoutesActivity;->routes:[Lcom/waze/routes/AlternativeRoute;

    array-length v5, v5

    if-lt v1, v5, :cond_3

    .line 134
    .end local v1           #i:I
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 137
    .restart local v1       #i:I
    :cond_3
    iget v5, v0, Lcom/waze/main/navigate/MajorEventOnRoute;->alertRouteId:I

    iget-object v6, p0, Lcom/waze/routes/RoutesActivity;->routes:[Lcom/waze/routes/AlternativeRoute;

    aget-object v6, v6, v1

    iget v6, v6, Lcom/waze/routes/AlternativeRoute;->id:I

    if-ne v5, v6, :cond_4

    .line 138
    iget-object v5, p0, Lcom/waze/routes/RoutesActivity;->routes:[Lcom/waze/routes/AlternativeRoute;

    aget-object v5, v5, v1

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/waze/routes/AlternativeRoute;->closure:Z

    goto :goto_2

    .line 136
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private onRouteSelected(I)V
    .locals 8
    .parameter "position"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/waze/routes/RoutesActivity;->routes:[Lcom/waze/routes/AlternativeRoute;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waze/routes/RoutesActivity;->routes:[Lcom/waze/routes/AlternativeRoute;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/waze/routes/RoutesActivity;->routes:[Lcom/waze/routes/AlternativeRoute;

    aget-object v0, v0, p1

    iget-boolean v0, v0, Lcom/waze/routes/AlternativeRoute;->closure:Z

    if-eqz v0, :cond_2

    .line 99
    invoke-static {}, Lcom/waze/MsgBox;->getInstance()Lcom/waze/MsgBox;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/waze/routes/RoutesActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_ARE_YOU_SURE_Q:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 101
    iget-object v2, p0, Lcom/waze/routes/RoutesActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_ALTERNATIVE_CLOSURE_SELECTED:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 102
    const/4 v3, 0x0

    .line 103
    new-instance v4, Lcom/waze/routes/RoutesActivity$6;

    invoke-direct {v4, p0, p1}, Lcom/waze/routes/RoutesActivity$6;-><init>(Lcom/waze/routes/RoutesActivity;I)V

    .line 111
    iget-object v5, p0, Lcom/waze/routes/RoutesActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_YES:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    .line 112
    iget-object v6, p0, Lcom/waze/routes/RoutesActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v7, Lcom/waze/strings/DisplayStrings;->DS_NO:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v6, v7}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v6

    .line 113
    const/4 v7, -0x1

    .line 99
    invoke-virtual/range {v0 .. v7}, Lcom/waze/MsgBox;->OpenConfirmDialogCustomTimeoutCbJava(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 115
    :cond_2
    invoke-direct {p0, p1}, Lcom/waze/routes/RoutesActivity;->routeConfirmed(I)V

    goto :goto_0
.end method

.method private routeConfirmed(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/waze/routes/RoutesActivity;->driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;

    invoke-virtual {v0, p1}, Lcom/waze/navigate/DriveToNativeManager;->selectAlternativeRoute(I)V

    .line 121
    invoke-virtual {p0}, Lcom/waze/routes/RoutesActivity;->finish()V

    .line 122
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v0, -0x1

    .line 155
    if-ne p2, v0, :cond_0

    .line 157
    invoke-virtual {p0, v0}, Lcom/waze/routes/RoutesActivity;->setResult(I)V

    .line 158
    invoke-virtual {p0}, Lcom/waze/routes/RoutesActivity;->finish()V

    .line 160
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/waze/ifs/ui/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 161
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/waze/routes/RoutesActivity;->driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;

    invoke-virtual {v0}, Lcom/waze/navigate/DriveToNativeManager;->onAlternativeRoutesClosed()V

    .line 150
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onBackPressed()V

    .line 151
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/waze/routes/RoutesActivity;->requestWindowFeature(I)Z

    .line 44
    const v1, 0x7f0300d1

    invoke-virtual {p0, v1}, Lcom/waze/routes/RoutesActivity;->setContentView(I)V

    .line 45
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/routes/RoutesActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 46
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/routes/RoutesActivity;->driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;

    .line 47
    const v1, 0x7f090283

    invoke-virtual {p0, v1}, Lcom/waze/routes/RoutesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/title/TitleBar;

    .line 49
    .local v0, titleBar:Lcom/waze/view/title/TitleBar;
    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_ROUTES:Lcom/waze/strings/DisplayStrings;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_MAP:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, p0, v1, v2}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;Lcom/waze/strings/DisplayStrings;)V

    .line 50
    new-instance v1, Lcom/waze/routes/RoutesActivity$1;

    invoke-direct {v1, p0}, Lcom/waze/routes/RoutesActivity$1;-><init>(Lcom/waze/routes/RoutesActivity;)V

    invoke-virtual {v0, v1}, Lcom/waze/view/title/TitleBar;->setOnClickCloseListener(Landroid/view/View$OnClickListener;)V

    .line 57
    new-instance v1, Lcom/waze/routes/RouteAdapter;

    invoke-direct {v1, p0}, Lcom/waze/routes/RouteAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/waze/routes/RoutesActivity;->routeAdapter:Lcom/waze/routes/RouteAdapter;

    .line 58
    const v1, 0x7f0905b2

    invoke-virtual {p0, v1}, Lcom/waze/routes/RoutesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/waze/routes/RoutesActivity;->routeList:Landroid/widget/ListView;

    .line 59
    iget-object v1, p0, Lcom/waze/routes/RoutesActivity;->routeList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/waze/routes/RoutesActivity;->routeAdapter:Lcom/waze/routes/RouteAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 60
    iget-object v1, p0, Lcom/waze/routes/RoutesActivity;->routeList:Landroid/widget/ListView;

    new-instance v2, Lcom/waze/routes/RoutesActivity$2;

    invoke-direct {v2, p0}, Lcom/waze/routes/RoutesActivity$2;-><init>(Lcom/waze/routes/RoutesActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 66
    iget-object v1, p0, Lcom/waze/routes/RoutesActivity;->driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;

    new-instance v2, Lcom/waze/routes/RoutesActivity$3;

    invoke-direct {v2, p0}, Lcom/waze/routes/RoutesActivity$3;-><init>(Lcom/waze/routes/RoutesActivity;)V

    invoke-virtual {v1, v2}, Lcom/waze/navigate/DriveToNativeManager;->getAlternativeRoutes(Lcom/waze/navigate/DriveToNativeManager$AlternativeRoutesListener;)V

    .line 74
    iget-object v1, p0, Lcom/waze/routes/RoutesActivity;->driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;

    new-instance v2, Lcom/waze/routes/RoutesActivity$4;

    invoke-direct {v2, p0}, Lcom/waze/routes/RoutesActivity$4;-><init>(Lcom/waze/routes/RoutesActivity;)V

    invoke-virtual {v1, v2}, Lcom/waze/navigate/DriveToNativeManager;->getEventsOnRoute(Lcom/waze/navigate/DriveToNativeManager$EventsOnRouteListener;)V

    .line 82
    iget-object v1, p0, Lcom/waze/routes/RoutesActivity;->driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;

    new-instance v2, Lcom/waze/routes/RoutesActivity$5;

    invoke-direct {v2, p0}, Lcom/waze/routes/RoutesActivity$5;-><init>(Lcom/waze/routes/RoutesActivity;)V

    invoke-virtual {v1, v2}, Lcom/waze/navigate/DriveToNativeManager;->getMajorEventsOnRoute(Lcom/waze/navigate/DriveToNativeManager$MajorEventsOnRouteListener;)V

    .line 91
    return-void
.end method
