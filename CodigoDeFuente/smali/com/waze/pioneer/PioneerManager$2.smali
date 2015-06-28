.class Lcom/waze/pioneer/PioneerManager$2;
.super Ljava/lang/Object;
.source "PioneerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/pioneer/PioneerManager;->onReceiveLocationInfo(Ljp/pioneer/mbg/pioneerkit/ExtLocation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/pioneer/PioneerManager;

.field private final synthetic val$loc:Ljp/pioneer/mbg/pioneerkit/ExtLocation;


# direct methods
.method constructor <init>(Lcom/waze/pioneer/PioneerManager;Ljp/pioneer/mbg/pioneerkit/ExtLocation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/pioneer/PioneerManager$2;->this$0:Lcom/waze/pioneer/PioneerManager;

    iput-object p2, p0, Lcom/waze/pioneer/PioneerManager$2;->val$loc:Ljp/pioneer/mbg/pioneerkit/ExtLocation;

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 236
    iget-object v1, p0, Lcom/waze/pioneer/PioneerManager$2;->this$0:Lcom/waze/pioneer/PioneerManager;

    iget-object v2, p0, Lcom/waze/pioneer/PioneerManager$2;->val$loc:Ljp/pioneer/mbg/pioneerkit/ExtLocation;

    #calls: Lcom/waze/pioneer/PioneerManager;->getNativeLocation(Ljp/pioneer/mbg/pioneerkit/ExtLocation;)Lcom/waze/NativeLocListener$NativeLocation;
    invoke-static {v1, v2}, Lcom/waze/pioneer/PioneerManager;->access$0(Lcom/waze/pioneer/PioneerManager;Ljp/pioneer/mbg/pioneerkit/ExtLocation;)Lcom/waze/NativeLocListener$NativeLocation;

    move-result-object v8

    .line 237
    .local v8, ntvLoc:Lcom/waze/NativeLocListener$NativeLocation;
    invoke-static {}, Lcom/waze/pioneer/PioneerNativeManager;->getInstance()Lcom/waze/pioneer/PioneerNativeManager;

    move-result-object v0

    .line 239
    .local v0, ntvMgr:Lcom/waze/pioneer/PioneerNativeManager;
    iget v1, v8, Lcom/waze/NativeLocListener$NativeLocation;->mGpsTime:I

    iget v2, v8, Lcom/waze/NativeLocListener$NativeLocation;->mLatitude:I

    iget v3, v8, Lcom/waze/NativeLocListener$NativeLocation;->mLongtitude:I

    iget v4, v8, Lcom/waze/NativeLocListener$NativeLocation;->mAltitude:I

    .line 240
    iget v5, v8, Lcom/waze/NativeLocListener$NativeLocation;->mSpeed:I

    iget v6, v8, Lcom/waze/NativeLocListener$NativeLocation;->mSteering:I

    iget v7, v8, Lcom/waze/NativeLocListener$NativeLocation;->mAccuracy:I

    .line 239
    invoke-virtual/range {v0 .. v7}, Lcom/waze/pioneer/PioneerNativeManager;->LocationCallbackNTV(IIIIIII)V

    .line 241
    return-void
.end method
