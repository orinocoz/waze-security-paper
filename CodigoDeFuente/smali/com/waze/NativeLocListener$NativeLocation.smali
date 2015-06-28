.class public Lcom/waze/NativeLocListener$NativeLocation;
.super Ljava/lang/Object;
.source "NativeLocListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/NativeLocListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NativeLocation"
.end annotation


# static fields
.field public static final FIXED_POINT_FACTOR:I = 0xf4240


# instance fields
.field public mAccuracy:I

.field public mAltitude:I

.field public mGpsTime:I

.field public mLatitude:I

.field public mLongtitude:I

.field public mSpeed:I

.field public mSteering:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
