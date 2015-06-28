.class Lcom/waze/pioneer/PioneerManager$3;
.super Ljava/lang/Object;
.source "PioneerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/pioneer/PioneerManager;->onAAM2ReceiveLocationInfo(Ljp/pioneer/ce/aam2/AAM2Kit/AAM2LocationInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/pioneer/PioneerManager;

.field private final synthetic val$arg0:Ljp/pioneer/ce/aam2/AAM2Kit/AAM2LocationInfo;


# direct methods
.method constructor <init>(Lcom/waze/pioneer/PioneerManager;Ljp/pioneer/ce/aam2/AAM2Kit/AAM2LocationInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/pioneer/PioneerManager$3;->this$0:Lcom/waze/pioneer/PioneerManager;

    iput-object p2, p0, Lcom/waze/pioneer/PioneerManager$3;->val$arg0:Ljp/pioneer/ce/aam2/AAM2Kit/AAM2LocationInfo;

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 394
    iget-object v1, p0, Lcom/waze/pioneer/PioneerManager$3;->this$0:Lcom/waze/pioneer/PioneerManager;

    iget-object v2, p0, Lcom/waze/pioneer/PioneerManager$3;->val$arg0:Ljp/pioneer/ce/aam2/AAM2Kit/AAM2LocationInfo;

    #calls: Lcom/waze/pioneer/PioneerManager;->getAAM2KitNativeLocation(Ljp/pioneer/ce/aam2/AAM2Kit/AAM2LocationInfo;)Lcom/waze/NativeLocListener$NativeLocation;
    invoke-static {v1, v2}, Lcom/waze/pioneer/PioneerManager;->access$1(Lcom/waze/pioneer/PioneerManager;Ljp/pioneer/ce/aam2/AAM2Kit/AAM2LocationInfo;)Lcom/waze/NativeLocListener$NativeLocation;

    move-result-object v8

    .line 395
    .local v8, ntvLoc:Lcom/waze/NativeLocListener$NativeLocation;
    invoke-static {}, Lcom/waze/pioneer/PioneerNativeManager;->getInstance()Lcom/waze/pioneer/PioneerNativeManager;

    move-result-object v0

    .line 397
    .local v0, ntvMgr:Lcom/waze/pioneer/PioneerNativeManager;
    iget v1, v8, Lcom/waze/NativeLocListener$NativeLocation;->mGpsTime:I

    iget v2, v8, Lcom/waze/NativeLocListener$NativeLocation;->mLatitude:I

    iget v3, v8, Lcom/waze/NativeLocListener$NativeLocation;->mLongtitude:I

    iget v4, v8, Lcom/waze/NativeLocListener$NativeLocation;->mAltitude:I

    .line 398
    iget v5, v8, Lcom/waze/NativeLocListener$NativeLocation;->mSpeed:I

    iget v6, v8, Lcom/waze/NativeLocListener$NativeLocation;->mSteering:I

    iget v7, v8, Lcom/waze/NativeLocListener$NativeLocation;->mAccuracy:I

    .line 397
    invoke-virtual/range {v0 .. v7}, Lcom/waze/pioneer/PioneerNativeManager;->LocationCallbackNTV(IIIIIII)V

    .line 399
    return-void
.end method
