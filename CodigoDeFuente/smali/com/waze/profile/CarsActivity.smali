.class public Lcom/waze/profile/CarsActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "CarsActivity.java"


# instance fields
.field private mywazeManager:Lcom/waze/mywaze/MyWazeNativeManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 22
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/profile/CarsActivity;->mywazeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    .line 23
    return-void
.end method

.method static synthetic access$0(Lcom/waze/profile/CarsActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/waze/profile/CarsActivity;->init(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/waze/profile/CarsActivity;)Lcom/waze/mywaze/MyWazeNativeManager;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/waze/profile/CarsActivity;->mywazeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    return-object v0
.end method

.method private init(Ljava/lang/String;)V
    .locals 5
    .parameter "selection"

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/waze/profile/CarsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f0c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, carList:[Ljava/lang/String;
    new-instance v0, Lcom/waze/profile/CarListAdapter;

    invoke-virtual {p0}, Lcom/waze/profile/CarsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 43
    const v4, 0x7f03002a

    .line 42
    invoke-direct {v0, v3, v4, v1, p1}, Lcom/waze/profile/CarListAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .local v0, adapter:Lcom/waze/profile/CarListAdapter;
    const v3, 0x7f0901fe

    invoke-virtual {p0, v3}, Lcom/waze/profile/CarsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 47
    .local v2, list:Landroid/widget/ListView;
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 48
    new-instance v3, Lcom/waze/profile/CarsActivity$2;

    invoke-direct {v3, p0, v1, v0}, Lcom/waze/profile/CarsActivity$2;-><init>(Lcom/waze/profile/CarsActivity;[Ljava/lang/String;Lcom/waze/profile/CarListAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 57
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x7f03002b

    invoke-virtual {p0, v0}, Lcom/waze/profile/CarsActivity;->setContentView(I)V

    .line 30
    const v0, 0x7f0901fd

    invoke-virtual {p0, v0}, Lcom/waze/profile/CarsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/title/TitleBar;

    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_SELECT_YOUR_CAR:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, p0, v1}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;)V

    .line 31
    iget-object v0, p0, Lcom/waze/profile/CarsActivity;->mywazeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    new-instance v1, Lcom/waze/profile/CarsActivity$1;

    invoke-direct {v1, p0}, Lcom/waze/profile/CarsActivity$1;-><init>(Lcom/waze/profile/CarsActivity;)V

    invoke-virtual {v0, v1}, Lcom/waze/mywaze/MyWazeNativeManager;->getUserCar(Lcom/waze/mywaze/MyWazeNativeManager$UserCarCallback;)V

    .line 37
    return-void
.end method
