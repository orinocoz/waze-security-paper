.class Lcom/waze/navigate/DriveToNativeManager$31;
.super Ljava/lang/Object;
.source "DriveToNativeManager.java"

# interfaces
.implements Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/DriveToNativeManager;->navigateAnalytics(Lcom/waze/navigate/AddressItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/DriveToNativeManager;

.field private final synthetic val$aiToGo:Lcom/waze/navigate/AddressItem;


# direct methods
.method constructor <init>(Lcom/waze/navigate/DriveToNativeManager;Lcom/waze/navigate/AddressItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/DriveToNativeManager$31;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iput-object p2, p0, Lcom/waze/navigate/DriveToNativeManager$31;->val$aiToGo:Lcom/waze/navigate/AddressItem;

    .line 958
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddressItemArrayCallback([Lcom/waze/navigate/AddressItem;)V
    .locals 4
    .parameter "ai"

    .prologue
    .line 960
    const/4 v0, 0x0

    .line 961
    .local v0, i:I
    if-eqz p1, :cond_0

    .line 962
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_1

    .line 972
    :cond_0
    const-string v1, "NAVIGATE"

    .line 973
    const-string v2, "SOURCE"

    .line 974
    const-string v3, "FAVORITE"

    .line 972
    invoke-static {v1, v2, v3}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    :goto_1
    return-void

    .line 963
    :cond_1
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/waze/navigate/AddressItem;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/navigate/DriveToNativeManager$31;->val$aiToGo:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v2}, Lcom/waze/navigate/AddressItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 965
    const-string v1, "NAVIGATE"

    .line 966
    const-string v2, "SOURCE"

    .line 967
    const-string v3, "TOP_FAVORITE"

    .line 965
    invoke-static {v1, v2, v3}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 962
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
