.class public Lcom/waze/main/navigate/EventOnRoute;
.super Ljava/lang/Object;
.source "EventOnRoute.java"


# instance fields
.field public alertId:I

.field public alertRouteId:I

.field public alertSubtype:I

.field public alertType:I

.field public end:I

.field public percentage:I

.field public severity:I

.field public start:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIIIIII)V
    .locals 0
    .parameter "alertId"
    .parameter "alertRouteId"
    .parameter "alertType"
    .parameter "alertSubtype"
    .parameter "severity"
    .parameter "start"
    .parameter "end"
    .parameter "percentage"

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Lcom/waze/main/navigate/EventOnRoute;->alertId:I

    .line 7
    iput p2, p0, Lcom/waze/main/navigate/EventOnRoute;->alertRouteId:I

    .line 8
    iput p3, p0, Lcom/waze/main/navigate/EventOnRoute;->alertType:I

    .line 9
    iput p4, p0, Lcom/waze/main/navigate/EventOnRoute;->alertSubtype:I

    .line 10
    iput p5, p0, Lcom/waze/main/navigate/EventOnRoute;->severity:I

    .line 11
    iput p6, p0, Lcom/waze/main/navigate/EventOnRoute;->start:I

    .line 12
    iput p7, p0, Lcom/waze/main/navigate/EventOnRoute;->end:I

    .line 13
    iput p8, p0, Lcom/waze/main/navigate/EventOnRoute;->percentage:I

    .line 14
    return-void
.end method
