.class public Lcom/waze/main/navigate/LocationData;
.super Ljava/lang/Object;
.source "LocationData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public destinationName:Ljava/lang/String;

.field public downloadUrl:Ljava/lang/String;

.field public emailLocationUrlPrefix:Ljava/lang/String;

.field public locationEta:Ljava/lang/String;

.field public locationHash:Ljava/lang/String;

.field public locationName:Ljava/lang/String;

.field public locationX:I

.field public locationY:I

.field public mCity:Ljava/lang/String;

.field public mStreet:Ljava/lang/String;

.field public mVenueId:Ljava/lang/String;

.field public smsLocationUrlPrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/waze/main/navigate/LocationData;->mCity:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/waze/main/navigate/LocationData;->mStreet:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "locationName"
    .parameter "destinationName"
    .parameter "locationEta"
    .parameter "smsLocationUrlPrefix"
    .parameter "emailLocationUrlPrefix"
    .parameter "downloadUrl"
    .parameter "locationHash"
    .parameter "locx"
    .parameter "locy"
    .parameter "city"
    .parameter "street"
    .parameter "venueId"

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/waze/main/navigate/LocationData;->mCity:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/waze/main/navigate/LocationData;->mStreet:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/waze/main/navigate/LocationData;->locationName:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/waze/main/navigate/LocationData;->destinationName:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/waze/main/navigate/LocationData;->locationEta:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lcom/waze/main/navigate/LocationData;->smsLocationUrlPrefix:Ljava/lang/String;

    .line 35
    iput-object p5, p0, Lcom/waze/main/navigate/LocationData;->emailLocationUrlPrefix:Ljava/lang/String;

    .line 36
    iput-object p6, p0, Lcom/waze/main/navigate/LocationData;->downloadUrl:Ljava/lang/String;

    .line 37
    iput-object p7, p0, Lcom/waze/main/navigate/LocationData;->locationHash:Ljava/lang/String;

    .line 38
    iput p8, p0, Lcom/waze/main/navigate/LocationData;->locationX:I

    .line 39
    iput p9, p0, Lcom/waze/main/navigate/LocationData;->locationY:I

    .line 40
    iput-object p10, p0, Lcom/waze/main/navigate/LocationData;->mCity:Ljava/lang/String;

    .line 41
    iput-object p11, p0, Lcom/waze/main/navigate/LocationData;->mStreet:Ljava/lang/String;

    .line 42
    iput-object p12, p0, Lcom/waze/main/navigate/LocationData;->mVenueId:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "locationName"
    .parameter "destinationName"
    .parameter "locationEta"
    .parameter "smsLocationUrlPrefix"
    .parameter "emailLocationUrlPrefix"
    .parameter "downloadUrl"
    .parameter "locationHash"
    .parameter "destinationVenueId"

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/waze/main/navigate/LocationData;->mCity:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/waze/main/navigate/LocationData;->mStreet:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/waze/main/navigate/LocationData;->locationName:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/waze/main/navigate/LocationData;->destinationName:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/waze/main/navigate/LocationData;->locationEta:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lcom/waze/main/navigate/LocationData;->smsLocationUrlPrefix:Ljava/lang/String;

    .line 21
    iput-object p5, p0, Lcom/waze/main/navigate/LocationData;->emailLocationUrlPrefix:Ljava/lang/String;

    .line 22
    iput-object p6, p0, Lcom/waze/main/navigate/LocationData;->downloadUrl:Ljava/lang/String;

    .line 23
    iput-object p7, p0, Lcom/waze/main/navigate/LocationData;->locationHash:Ljava/lang/String;

    .line 24
    iput-object p8, p0, Lcom/waze/main/navigate/LocationData;->mVenueId:Ljava/lang/String;

    .line 25
    return-void
.end method
