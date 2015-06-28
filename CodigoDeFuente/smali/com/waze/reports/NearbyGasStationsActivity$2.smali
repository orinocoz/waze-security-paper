.class Lcom/waze/reports/NearbyGasStationsActivity$2;
.super Ljava/lang/Object;
.source "NearbyGasStationsActivity.java"

# interfaces
.implements Lcom/waze/navigate/DriveToNativeManager$NearbyStationsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/NearbyGasStationsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/NearbyGasStationsActivity;

.field private final synthetic val$adapter:Lcom/waze/settings/SettingValueAdapter;


# direct methods
.method constructor <init>(Lcom/waze/reports/NearbyGasStationsActivity;Lcom/waze/settings/SettingValueAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/NearbyGasStationsActivity$2;->this$0:Lcom/waze/reports/NearbyGasStationsActivity;

    iput-object p2, p0, Lcom/waze/reports/NearbyGasStationsActivity$2;->val$adapter:Lcom/waze/settings/SettingValueAdapter;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete([Lcom/waze/navigate/NearbyStation;)V
    .locals 6
    .parameter "aNearbyStations"

    .prologue
    .line 54
    iget-object v2, p0, Lcom/waze/reports/NearbyGasStationsActivity$2;->this$0:Lcom/waze/reports/NearbyGasStationsActivity;

    iput-object p1, v2, Lcom/waze/reports/NearbyGasStationsActivity;->nearbyStations:[Lcom/waze/navigate/NearbyStation;

    .line 55
    iget-object v2, p0, Lcom/waze/reports/NearbyGasStationsActivity$2;->this$0:Lcom/waze/reports/NearbyGasStationsActivity;

    iget-object v2, v2, Lcom/waze/reports/NearbyGasStationsActivity;->nearbyStations:[Lcom/waze/navigate/NearbyStation;

    array-length v2, v2

    new-array v1, v2, [Lcom/waze/settings/SettingsValue;

    .line 56
    .local v1, values:[Lcom/waze/settings/SettingsValue;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/waze/reports/NearbyGasStationsActivity$2;->this$0:Lcom/waze/reports/NearbyGasStationsActivity;

    iget-object v2, v2, Lcom/waze/reports/NearbyGasStationsActivity;->nearbyStations:[Lcom/waze/navigate/NearbyStation;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 60
    iget-object v2, p0, Lcom/waze/reports/NearbyGasStationsActivity$2;->val$adapter:Lcom/waze/settings/SettingValueAdapter;

    invoke-virtual {v2, v1}, Lcom/waze/settings/SettingValueAdapter;->setValues([Lcom/waze/settings/SettingsValue;)V

    .line 61
    return-void

    .line 57
    :cond_0
    new-instance v2, Lcom/waze/settings/SettingsValue;

    iget-object v3, p0, Lcom/waze/reports/NearbyGasStationsActivity$2;->this$0:Lcom/waze/reports/NearbyGasStationsActivity;

    iget-object v3, v3, Lcom/waze/reports/NearbyGasStationsActivity;->nearbyStations:[Lcom/waze/navigate/NearbyStation;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/waze/navigate/NearbyStation;->result:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/waze/reports/NearbyGasStationsActivity$2;->this$0:Lcom/waze/reports/NearbyGasStationsActivity;

    iget-object v5, v5, Lcom/waze/reports/NearbyGasStationsActivity;->nearbyStations:[Lcom/waze/navigate/NearbyStation;

    aget-object v5, v5, v0

    iget-object v5, v5, Lcom/waze/navigate/NearbyStation;->result:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/waze/reports/NearbyGasStationsActivity$2;->this$0:Lcom/waze/reports/NearbyGasStationsActivity;

    iget-object v5, v5, Lcom/waze/reports/NearbyGasStationsActivity;->nearbyStations:[Lcom/waze/navigate/NearbyStation;

    aget-object v5, v5, v0

    iget-object v5, v5, Lcom/waze/navigate/NearbyStation;->address:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/waze/settings/SettingsValue;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    aput-object v2, v1, v0

    .line 58
    aget-object v2, v1, v0

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/waze/reports/NearbyGasStationsActivity$2;->this$0:Lcom/waze/reports/NearbyGasStationsActivity;

    iget-object v4, v4, Lcom/waze/reports/NearbyGasStationsActivity;->nearbyStations:[Lcom/waze/navigate/NearbyStation;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/waze/navigate/NearbyStation;->icon:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".bin"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/waze/ResManager;->GetSkinDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Lcom/waze/settings/SettingsValue;->icon:Landroid/graphics/drawable/Drawable;

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
