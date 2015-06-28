.class public interface abstract Lcom/waze/share/ShareFbQueries$ILocationsListCallback;
.super Ljava/lang/Object;
.source "ShareFbQueries.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/share/ShareFbQueries;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ILocationsListCallback"
.end annotation


# virtual methods
.method public abstract onLocationsListResult(Ljava/util/ArrayList;ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/share/ShareFbLocation;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method
