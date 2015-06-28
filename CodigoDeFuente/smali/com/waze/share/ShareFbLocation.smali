.class public Lcom/waze/share/ShareFbLocation;
.super Ljava/lang/Object;
.source "ShareFbLocation.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/waze/share/ShareFbLocation;",
        ">;"
    }
.end annotation


# instance fields
.field public address:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public distance:F

.field public id:Ljava/lang/String;

.field public latitude:D

.field public longitude:D

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/waze/share/ShareFbLocation;)I
    .locals 3
    .parameter "another"

    .prologue
    .line 10
    new-instance v0, Ljava/lang/Float;

    iget v1, p0, Lcom/waze/share/ShareFbLocation;->distance:F

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    .line 11
    .local v0, this_:Ljava/lang/Float;
    new-instance v1, Ljava/lang/Float;

    iget v2, p1, Lcom/waze/share/ShareFbLocation;->distance:F

    invoke-direct {v1, v2}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v0, v1}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    move-result v1

    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/waze/share/ShareFbLocation;

    invoke-virtual {p0, p1}, Lcom/waze/share/ShareFbLocation;->compareTo(Lcom/waze/share/ShareFbLocation;)I

    move-result v0

    return v0
.end method
