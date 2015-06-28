.class public Lcom/waze/navigate/Product;
.super Ljava/lang/Object;
.source "Product.java"


# instance fields
.field public currency:Ljava/lang/String;

.field public formats:[Ljava/lang/String;

.field public icon:Ljava/lang/String;

.field public labels:[Ljava/lang/String;

.field public lastUpdated:I

.field public name:Ljava/lang/String;

.field public prices:[F

.field public providerId:Ljava/lang/String;

.field public updatedBy:Ljava/lang/String;

.field public venueId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[FILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "providerId"
    .parameter "venueId"
    .parameter "name"
    .parameter "icon"
    .parameter "labels"
    .parameter "formats"
    .parameter "prices"
    .parameter "lastUpdated"
    .parameter "updatedBy"
    .parameter "currency"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/waze/navigate/Product;->providerId:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/waze/navigate/Product;->venueId:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/waze/navigate/Product;->name:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Lcom/waze/navigate/Product;->icon:Ljava/lang/String;

    .line 20
    iput-object p5, p0, Lcom/waze/navigate/Product;->labels:[Ljava/lang/String;

    .line 21
    iput-object p6, p0, Lcom/waze/navigate/Product;->formats:[Ljava/lang/String;

    .line 22
    iput-object p7, p0, Lcom/waze/navigate/Product;->prices:[F

    .line 23
    iput p8, p0, Lcom/waze/navigate/Product;->lastUpdated:I

    .line 24
    iput-object p9, p0, Lcom/waze/navigate/Product;->updatedBy:Ljava/lang/String;

    .line 25
    iput-object p10, p0, Lcom/waze/navigate/Product;->currency:Ljava/lang/String;

    .line 26
    return-void
.end method
