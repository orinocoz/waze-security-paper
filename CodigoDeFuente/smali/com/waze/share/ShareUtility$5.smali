.class Lcom/waze/share/ShareUtility$5;
.super Ljava/lang/Object;
.source "ShareUtility.java"

# interfaces
.implements Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/share/ShareUtility;->doShareAllowed(Lcom/waze/ifs/ui/ActivityBase;ILcom/waze/NativeManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 822
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public getAddressItemArrayCallback([Lcom/waze/navigate/AddressItem;)V
    .locals 4
    .parameter "ai"

    .prologue
    const/4 v3, 0x0

    .line 826
    const-string v0, "SHARE_LOCATION_OF"

    .line 827
    const-string v1, "VAUE"

    .line 828
    const-string v2, "WORK"

    .line 826
    invoke-static {v0, v1, v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    if-eqz p1, :cond_0

    .line 830
    sget-object v0, Lcom/waze/share/ShareUtility$ShareType;->ShareType_ShareSelection:Lcom/waze/share/ShareUtility$ShareType;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v0, v3, v1, v3}, Lcom/waze/share/ShareUtility;->OpenShareActivity(Lcom/waze/share/ShareUtility$ShareType;Ljava/lang/String;Lcom/waze/navigate/AddressItem;[Lcom/waze/user/PersonBase;)V

    .line 833
    :cond_0
    return-void
.end method
