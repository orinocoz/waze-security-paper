.class public Lcom/waze/mywaze/social/FoursquareVenue;
.super Ljava/lang/Object;
.source "FoursquareVenue.java"


# instance fields
.field public address:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public distance:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "description"
    .parameter "address"
    .parameter "distance"

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/waze/mywaze/social/FoursquareVenue;->description:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/waze/mywaze/social/FoursquareVenue;->address:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/waze/mywaze/social/FoursquareVenue;->distance:Ljava/lang/String;

    .line 8
    return-void
.end method
