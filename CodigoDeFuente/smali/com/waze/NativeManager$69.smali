.class Lcom/waze/NativeManager$69;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->HandlePickUpRequest(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$IsShareMyRide:Z

.field private final synthetic val$aUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;ZLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$69;->this$0:Lcom/waze/NativeManager;

    iput-boolean p2, p0, Lcom/waze/NativeManager$69;->val$IsShareMyRide:Z

    iput-object p3, p0, Lcom/waze/NativeManager$69;->val$aUrl:Ljava/lang/String;

    .line 1408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1411
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    .line 1412
    .local v0, mainActivity:Lcom/waze/MainActivity;
    iget-boolean v1, p0, Lcom/waze/NativeManager$69;->val$IsShareMyRide:Z

    if-eqz v1, :cond_1

    .line 1416
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v1

    instance-of v1, v1, Lcom/waze/navigate/social/ShareDriveActivity;

    if-eqz v1, :cond_0

    .line 1418
    sget-object v1, Lcom/waze/share/ShareUtility$ShareType;->ShareType_ShareDrive:Lcom/waze/share/ShareUtility$ShareType;

    iget-object v2, p0, Lcom/waze/NativeManager$69;->val$aUrl:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/waze/share/ShareUtility;->BuildShareURL(Lcom/waze/share/ShareUtility$ShareType;Ljava/lang/String;Lcom/waze/navigate/AddressItem;)V

    .line 1429
    :cond_0
    :goto_0
    return-void

    .line 1427
    :cond_1
    iget-object v1, p0, Lcom/waze/NativeManager$69;->val$aUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/waze/MainActivity;->SendPickUp(Ljava/lang/String;)V

    goto :goto_0
.end method
