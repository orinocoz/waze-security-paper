.class public Lcom/waze/widget/WazeAppWidgetLocationListener;
.super Ljava/lang/Object;
.source "WazeAppWidgetLocationListener.java"

# interfaces
.implements Landroid/location/LocationListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .parameter "loc"

    .prologue
    .line 13
    const-string v0, "onLocationChanged called"

    invoke-static {v0}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    .line 14
    invoke-static {p1}, Lcom/waze/widget/WidgetManager;->onLocation(Landroid/location/Location;)V

    .line 15
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 21
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 26
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 31
    return-void
.end method
