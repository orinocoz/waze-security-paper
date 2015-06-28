.class public Lcom/waze/widget/Destination;
.super Ljava/lang/Object;
.source "Destination.java"


# instance fields
.field private mDestLocation:Landroid/location/Location;

.field private mDestName:Ljava/lang/String;

.field private mDestType:Lcom/waze/widget/DestinationType;


# direct methods
.method public constructor <init>(Lcom/waze/widget/DestinationType;Ljava/lang/String;Landroid/location/Location;)V
    .locals 0
    .parameter "type"
    .parameter "name"
    .parameter "location"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/waze/widget/Destination;->mDestType:Lcom/waze/widget/DestinationType;

    .line 19
    iput-object p2, p0, Lcom/waze/widget/Destination;->mDestName:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/waze/widget/Destination;->mDestLocation:Landroid/location/Location;

    .line 21
    return-void
.end method


# virtual methods
.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/waze/widget/Destination;->mDestLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/waze/widget/Destination;->mDestName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/waze/widget/DestinationType;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/waze/widget/Destination;->mDestType:Lcom/waze/widget/DestinationType;

    return-object v0
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/waze/widget/Destination;->mDestLocation:Landroid/location/Location;

    .line 69
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/waze/widget/Destination;->mDestName:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setType(Lcom/waze/widget/DestinationType;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/waze/widget/Destination;->mDestType:Lcom/waze/widget/DestinationType;

    .line 61
    return-void
.end method
