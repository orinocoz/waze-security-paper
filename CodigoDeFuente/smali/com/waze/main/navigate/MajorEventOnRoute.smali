.class public Lcom/waze/main/navigate/MajorEventOnRoute;
.super Ljava/lang/Object;
.source "MajorEventOnRoute.java"


# instance fields
.field public alertRouteId:I

.field public alertType:I

.field public description:Ljava/lang/String;

.field public dueto:Ljava/lang/String;

.field public duration:Ljava/lang/String;

.field public reported:Ljava/lang/String;

.field public thanked:Ljava/lang/String;

.field public time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "alertRouteId"
    .parameter "alertType"
    .parameter "description"
    .parameter "time"
    .parameter "dueto"
    .parameter "duration"
    .parameter "thanked"
    .parameter "reported"

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Lcom/waze/main/navigate/MajorEventOnRoute;->alertRouteId:I

    .line 7
    iput p2, p0, Lcom/waze/main/navigate/MajorEventOnRoute;->alertType:I

    .line 8
    iput-object p3, p0, Lcom/waze/main/navigate/MajorEventOnRoute;->description:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Lcom/waze/main/navigate/MajorEventOnRoute;->time:Ljava/lang/String;

    .line 10
    iput-object p5, p0, Lcom/waze/main/navigate/MajorEventOnRoute;->dueto:Ljava/lang/String;

    .line 11
    iput-object p6, p0, Lcom/waze/main/navigate/MajorEventOnRoute;->duration:Ljava/lang/String;

    .line 12
    iput-object p7, p0, Lcom/waze/main/navigate/MajorEventOnRoute;->thanked:Ljava/lang/String;

    .line 13
    iput-object p8, p0, Lcom/waze/main/navigate/MajorEventOnRoute;->reported:Ljava/lang/String;

    .line 14
    return-void
.end method
