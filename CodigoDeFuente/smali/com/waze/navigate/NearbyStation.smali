.class public Lcom/waze/navigate/NearbyStation;
.super Ljava/lang/Object;
.source "NearbyStation.java"


# instance fields
.field public address:Ljava/lang/String;

.field public icon:Ljava/lang/String;

.field public result:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "result"
    .parameter "value"
    .parameter "icon"
    .parameter "Address"

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/waze/navigate/NearbyStation;->result:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/waze/navigate/NearbyStation;->value:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Lcom/waze/navigate/NearbyStation;->icon:Ljava/lang/String;

    .line 12
    iput-object p4, p0, Lcom/waze/navigate/NearbyStation;->address:Ljava/lang/String;

    .line 13
    return-void
.end method
