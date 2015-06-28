.class Lcom/waze/NativeLocListener$2;
.super Ljava/lang/Object;
.source "NativeLocListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeLocListener;->onLocationChanged(Landroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeLocListener;

.field private final synthetic val$fixTime:J

.field private final synthetic val$location:Landroid/location/Location;

.field private final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/waze/NativeLocListener;ILandroid/location/Location;J)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeLocListener$2;->this$0:Lcom/waze/NativeLocListener;

    iput p2, p0, Lcom/waze/NativeLocListener$2;->val$status:I

    iput-object p3, p0, Lcom/waze/NativeLocListener$2;->val$location:Landroid/location/Location;

    iput-wide p4, p0, Lcom/waze/NativeLocListener$2;->val$fixTime:J

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 316
    iget-object v0, p0, Lcom/waze/NativeLocListener$2;->this$0:Lcom/waze/NativeLocListener;

    iget v1, p0, Lcom/waze/NativeLocListener$2;->val$status:I

    iget-object v2, p0, Lcom/waze/NativeLocListener$2;->val$location:Landroid/location/Location;

    iget-wide v3, p0, Lcom/waze/NativeLocListener$2;->val$fixTime:J

    iget-object v5, p0, Lcom/waze/NativeLocListener$2;->this$0:Lcom/waze/NativeLocListener;

    #getter for: Lcom/waze/NativeLocListener;->mAccelData:[F
    invoke-static {v5}, Lcom/waze/NativeLocListener;->access$9(Lcom/waze/NativeLocListener;)[F

    move-result-object v5

    iget-object v6, p0, Lcom/waze/NativeLocListener$2;->this$0:Lcom/waze/NativeLocListener;

    #getter for: Lcom/waze/NativeLocListener;->mGyroData:[F
    invoke-static {v6}, Lcom/waze/NativeLocListener;->access$10(Lcom/waze/NativeLocListener;)[F

    move-result-object v6

    iget-object v7, p0, Lcom/waze/NativeLocListener$2;->this$0:Lcom/waze/NativeLocListener;

    #getter for: Lcom/waze/NativeLocListener;->mCompassData:[F
    invoke-static {v7}, Lcom/waze/NativeLocListener;->access$11(Lcom/waze/NativeLocListener;)[F

    move-result-object v7

    #calls: Lcom/waze/NativeLocListener;->UpdateNativeLayer(ILandroid/location/Location;J[F[F[F)V
    invoke-static/range {v0 .. v7}, Lcom/waze/NativeLocListener;->access$12(Lcom/waze/NativeLocListener;ILandroid/location/Location;J[F[F[F)V

    .line 317
    return-void
.end method
