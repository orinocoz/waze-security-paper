.class public Lcom/waze/navigate/AddressItem$AdvertiserData;
.super Ljava/lang/Object;
.source "AddressItem.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/navigate/AddressItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdvertiserData"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field cookie:Ljava/lang/String;

.field query:Ljava/lang/String;

.field session:I

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
