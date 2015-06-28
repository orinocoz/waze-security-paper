.class Lcom/waze/NativeLocListener$1$1;
.super Ljava/lang/Object;
.source "NativeLocListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeLocListener$1;->event()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/NativeLocListener$1;

.field private final synthetic val$lastKnownLocation:Landroid/location/Location;


# direct methods
.method constructor <init>(Lcom/waze/NativeLocListener$1;Landroid/location/Location;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeLocListener$1$1;->this$1:Lcom/waze/NativeLocListener$1;

    iput-object p2, p0, Lcom/waze/NativeLocListener$1$1;->val$lastKnownLocation:Landroid/location/Location;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 146
    iget-object v0, p0, Lcom/waze/NativeLocListener$1$1;->this$1:Lcom/waze/NativeLocListener$1;

    #getter for: Lcom/waze/NativeLocListener$1;->this$0:Lcom/waze/NativeLocListener;
    invoke-static {v0}, Lcom/waze/NativeLocListener$1;->access$0(Lcom/waze/NativeLocListener$1;)Lcom/waze/NativeLocListener;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/NativeLocListener$1$1;->this$1:Lcom/waze/NativeLocListener$1;

    #getter for: Lcom/waze/NativeLocListener$1;->this$0:Lcom/waze/NativeLocListener;
    invoke-static {v1}, Lcom/waze/NativeLocListener$1;->access$0(Lcom/waze/NativeLocListener$1;)Lcom/waze/NativeLocListener;

    move-result-object v1

    #getter for: Lcom/waze/NativeLocListener;->mStatus:I
    invoke-static {v1}, Lcom/waze/NativeLocListener;->access$8(Lcom/waze/NativeLocListener;)I

    move-result v1

    iget-object v2, p0, Lcom/waze/NativeLocListener$1$1;->val$lastKnownLocation:Landroid/location/Location;

    iget-object v3, p0, Lcom/waze/NativeLocListener$1$1;->this$1:Lcom/waze/NativeLocListener$1;

    #getter for: Lcom/waze/NativeLocListener$1;->this$0:Lcom/waze/NativeLocListener;
    invoke-static {v3}, Lcom/waze/NativeLocListener$1;->access$0(Lcom/waze/NativeLocListener$1;)Lcom/waze/NativeLocListener;

    move-result-object v3

    #getter for: Lcom/waze/NativeLocListener;->mLastGpsFixTime:J
    invoke-static {v3}, Lcom/waze/NativeLocListener;->access$1(Lcom/waze/NativeLocListener;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/waze/NativeLocListener$1$1;->this$1:Lcom/waze/NativeLocListener$1;

    #getter for: Lcom/waze/NativeLocListener$1;->this$0:Lcom/waze/NativeLocListener;
    invoke-static {v5}, Lcom/waze/NativeLocListener$1;->access$0(Lcom/waze/NativeLocListener$1;)Lcom/waze/NativeLocListener;

    move-result-object v5

    #getter for: Lcom/waze/NativeLocListener;->mAccelData:[F
    invoke-static {v5}, Lcom/waze/NativeLocListener;->access$9(Lcom/waze/NativeLocListener;)[F

    move-result-object v5

    iget-object v6, p0, Lcom/waze/NativeLocListener$1$1;->this$1:Lcom/waze/NativeLocListener$1;

    #getter for: Lcom/waze/NativeLocListener$1;->this$0:Lcom/waze/NativeLocListener;
    invoke-static {v6}, Lcom/waze/NativeLocListener$1;->access$0(Lcom/waze/NativeLocListener$1;)Lcom/waze/NativeLocListener;

    move-result-object v6

    #getter for: Lcom/waze/NativeLocListener;->mGyroData:[F
    invoke-static {v6}, Lcom/waze/NativeLocListener;->access$10(Lcom/waze/NativeLocListener;)[F

    move-result-object v6

    iget-object v7, p0, Lcom/waze/NativeLocListener$1$1;->this$1:Lcom/waze/NativeLocListener$1;

    #getter for: Lcom/waze/NativeLocListener$1;->this$0:Lcom/waze/NativeLocListener;
    invoke-static {v7}, Lcom/waze/NativeLocListener$1;->access$0(Lcom/waze/NativeLocListener$1;)Lcom/waze/NativeLocListener;

    move-result-object v7

    #getter for: Lcom/waze/NativeLocListener;->mCompassData:[F
    invoke-static {v7}, Lcom/waze/NativeLocListener;->access$11(Lcom/waze/NativeLocListener;)[F

    move-result-object v7

    #calls: Lcom/waze/NativeLocListener;->UpdateNativeLayer(ILandroid/location/Location;J[F[F[F)V
    invoke-static/range {v0 .. v7}, Lcom/waze/NativeLocListener;->access$12(Lcom/waze/NativeLocListener;ILandroid/location/Location;J[F[F[F)V

    .line 147
    return-void
.end method
