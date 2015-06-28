.class public Lcom/waze/samples/JniSampleActivityNativeManager$TimeData;
.super Ljava/lang/Object;
.source "JniSampleActivityNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/samples/JniSampleActivityNativeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeData"
.end annotation


# instance fields
.field public hour:I

.field public min:I

.field public sec:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "i"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
