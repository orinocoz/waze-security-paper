.class Lcom/waze/NativeLocListener$3;
.super Ljava/lang/Object;
.source "NativeLocListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeLocListener;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeLocListener;

.field private final synthetic val$lastLoc:Landroid/location/Location;

.field private final synthetic val$sendTime:J


# direct methods
.method constructor <init>(Lcom/waze/NativeLocListener;Landroid/location/Location;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeLocListener$3;->this$0:Lcom/waze/NativeLocListener;

    iput-object p2, p0, Lcom/waze/NativeLocListener$3;->val$lastLoc:Landroid/location/Location;

    iput-wide p3, p0, Lcom/waze/NativeLocListener$3;->val$sendTime:J

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 393
    iget-object v0, p0, Lcom/waze/NativeLocListener$3;->this$0:Lcom/waze/NativeLocListener;

    iget-object v1, p0, Lcom/waze/NativeLocListener$3;->this$0:Lcom/waze/NativeLocListener;

    #getter for: Lcom/waze/NativeLocListener;->mStatus:I
    invoke-static {v1}, Lcom/waze/NativeLocListener;->access$8(Lcom/waze/NativeLocListener;)I

    move-result v1

    iget-object v2, p0, Lcom/waze/NativeLocListener$3;->val$lastLoc:Landroid/location/Location;

    iget-wide v3, p0, Lcom/waze/NativeLocListener$3;->val$sendTime:J

    iget-object v5, p0, Lcom/waze/NativeLocListener$3;->this$0:Lcom/waze/NativeLocListener;

    #getter for: Lcom/waze/NativeLocListener;->mAccelData:[F
    invoke-static {v5}, Lcom/waze/NativeLocListener;->access$9(Lcom/waze/NativeLocListener;)[F

    move-result-object v5

    iget-object v6, p0, Lcom/waze/NativeLocListener$3;->this$0:Lcom/waze/NativeLocListener;

    #getter for: Lcom/waze/NativeLocListener;->mGyroData:[F
    invoke-static {v6}, Lcom/waze/NativeLocListener;->access$10(Lcom/waze/NativeLocListener;)[F

    move-result-object v6

    iget-object v7, p0, Lcom/waze/NativeLocListener$3;->this$0:Lcom/waze/NativeLocListener;

    #getter for: Lcom/waze/NativeLocListener;->mCompassData:[F
    invoke-static {v7}, Lcom/waze/NativeLocListener;->access$11(Lcom/waze/NativeLocListener;)[F

    move-result-object v7

    #calls: Lcom/waze/NativeLocListener;->UpdateNativeLayer(ILandroid/location/Location;J[F[F[F)V
    invoke-static/range {v0 .. v7}, Lcom/waze/NativeLocListener;->access$12(Lcom/waze/NativeLocListener;ILandroid/location/Location;J[F[F[F)V

    .line 394
    return-void
.end method
