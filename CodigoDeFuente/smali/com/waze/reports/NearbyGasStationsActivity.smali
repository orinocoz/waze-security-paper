.class public Lcom/waze/reports/NearbyGasStationsActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "NearbyGasStationsActivity.java"


# instance fields
.field protected nearbyStations:[Lcom/waze/navigate/NearbyStation;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

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

    .line 25
    if-ne p2, v0, :cond_0

    .line 27
    invoke-virtual {p0, v0}, Lcom/waze/reports/NearbyGasStationsActivity;->setResult(I)V

    .line 28
    invoke-virtual {p0}, Lcom/waze/reports/NearbyGasStationsActivity;->finish()V

    .line 30
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/waze/ifs/ui/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 31
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v3, 0x7f0300fa

    invoke-virtual {p0, v3}, Lcom/waze/reports/NearbyGasStationsActivity;->setContentView(I)V

    .line 37
    const v3, 0x7f090058

    invoke-virtual {p0, v3}, Lcom/waze/reports/NearbyGasStationsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/waze/view/title/TitleBar;

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_NEARBY_STATIONS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, p0, v4}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;)V

    .line 38
    new-instance v0, Lcom/waze/settings/SettingValueAdapter;

    invoke-direct {v0, p0}, Lcom/waze/settings/SettingValueAdapter;-><init>(Landroid/content/Context;)V

    .line 39
    .local v0, adapter:Lcom/waze/settings/SettingValueAdapter;
    const v3, 0x7f090674

    invoke-virtual {p0, v3}, Lcom/waze/reports/NearbyGasStationsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 40
    .local v1, list:Landroid/widget/ListView;
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 41
    new-instance v3, Lcom/waze/reports/NearbyGasStationsActivity$1;

    invoke-direct {v3, p0}, Lcom/waze/reports/NearbyGasStationsActivity$1;-><init>(Lcom/waze/reports/NearbyGasStationsActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 49
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v2

    .line 50
    .local v2, nativeManager:Lcom/waze/navigate/DriveToNativeManager;
    new-instance v3, Lcom/waze/reports/NearbyGasStationsActivity$2;

    invoke-direct {v3, p0, v0}, Lcom/waze/reports/NearbyGasStationsActivity$2;-><init>(Lcom/waze/reports/NearbyGasStationsActivity;Lcom/waze/settings/SettingValueAdapter;)V

    invoke-virtual {v2, v3}, Lcom/waze/navigate/DriveToNativeManager;->getNearbyStations(Lcom/waze/navigate/DriveToNativeManager$NearbyStationsListener;)V

    .line 64
    return-void
.end method
