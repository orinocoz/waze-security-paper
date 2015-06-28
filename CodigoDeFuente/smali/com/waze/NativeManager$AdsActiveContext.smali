.class public Lcom/waze/NativeManager$AdsActiveContext;
.super Ljava/lang/Object;
.source "NativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/NativeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdsActiveContext"
.end annotation


# instance fields
.field public event_info:Ljava/lang/String;

.field public pin_id:I

.field public promo_id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4846
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
