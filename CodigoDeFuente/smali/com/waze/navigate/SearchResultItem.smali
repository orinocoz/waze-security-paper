.class public Lcom/waze/navigate/SearchResultItem;
.super Ljava/lang/Object;
.source "SearchResultItem.java"


# instance fields
.field private address:Ljava/lang/String;

.field private distance:Ljava/lang/String;

.field private freeText:Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/waze/navigate/SearchResultItem;->freeText:Ljava/lang/String;

    .line 9
    const/4 v0, 0x1

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/waze/navigate/SearchResultItem;->address:Ljava/lang/String;

    .line 10
    const/4 v0, 0x2

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/waze/navigate/SearchResultItem;->distance:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/waze/navigate/SearchResultItem;->address:Ljava/lang/String;

    return-object v0
.end method

.method getDistance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/waze/navigate/SearchResultItem;->distance:Ljava/lang/String;

    return-object v0
.end method

.method getFreeText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/waze/navigate/SearchResultItem;->freeText:Ljava/lang/String;

    return-object v0
.end method
