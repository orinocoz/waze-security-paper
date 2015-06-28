.class Lcom/waze/share/ShareFbLocationActivity$4;
.super Lcom/waze/ifs/async/RunnableExecutor;
.source "ShareFbLocationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/share/ShareFbLocationActivity;->fetchLocations(Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/share/ShareFbLocationActivity;

.field private final synthetic val$nl:Lcom/waze/NativeLocListener;

.field private final synthetic val$pattern:Ljava/lang/String;

.field private final synthetic val$pos:Lcom/waze/location/Position;

.field private final synthetic val$showProgress:Z


# direct methods
.method constructor <init>(Lcom/waze/share/ShareFbLocationActivity;Landroid/app/Activity;Lcom/waze/location/Position;Lcom/waze/NativeLocListener;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/share/ShareFbLocationActivity$4;->this$0:Lcom/waze/share/ShareFbLocationActivity;

    iput-object p3, p0, Lcom/waze/share/ShareFbLocationActivity$4;->val$pos:Lcom/waze/location/Position;

    iput-object p4, p0, Lcom/waze/share/ShareFbLocationActivity$4;->val$nl:Lcom/waze/NativeLocListener;

    iput-object p5, p0, Lcom/waze/share/ShareFbLocationActivity$4;->val$pattern:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/waze/share/ShareFbLocationActivity$4;->val$showProgress:Z

    .line 99
    invoke-direct {p0, p2}, Lcom/waze/ifs/async/RunnableExecutor;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public event()V
    .locals 5

    .prologue
    .line 102
    invoke-static {}, Lcom/waze/NativeLocListener;->getInstance()Lcom/waze/NativeLocListener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/NativeLocListener;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    .line 103
    .local v0, loc:Landroid/location/Location;
    iget-object v1, p0, Lcom/waze/share/ShareFbLocationActivity$4;->val$pos:Lcom/waze/location/Position;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/waze/location/Position;->latitude:D

    .line 104
    iget-object v1, p0, Lcom/waze/share/ShareFbLocationActivity$4;->val$pos:Lcom/waze/location/Position;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/waze/location/Position;->longitude:D

    .line 105
    iget-object v1, p0, Lcom/waze/share/ShareFbLocationActivity$4;->val$nl:Lcom/waze/NativeLocListener;

    invoke-virtual {v1, p0}, Lcom/waze/NativeLocListener;->unregisterLocListener(Lcom/waze/ifs/async/RunnableExecutor;)V

    .line 106
    iget-object v1, p0, Lcom/waze/share/ShareFbLocationActivity$4;->this$0:Lcom/waze/share/ShareFbLocationActivity;

    iget-object v2, p0, Lcom/waze/share/ShareFbLocationActivity$4;->val$pattern:Ljava/lang/String;

    iget-object v3, p0, Lcom/waze/share/ShareFbLocationActivity$4;->val$pos:Lcom/waze/location/Position;

    iget-boolean v4, p0, Lcom/waze/share/ShareFbLocationActivity$4;->val$showProgress:Z

    #calls: Lcom/waze/share/ShareFbLocationActivity;->requestLocations(Ljava/lang/String;Lcom/waze/location/Position;Z)V
    invoke-static {v1, v2, v3, v4}, Lcom/waze/share/ShareFbLocationActivity;->access$5(Lcom/waze/share/ShareFbLocationActivity;Ljava/lang/String;Lcom/waze/location/Position;Z)V

    .line 107
    return-void
.end method
