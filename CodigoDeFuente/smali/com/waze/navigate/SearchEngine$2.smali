.class Lcom/waze/navigate/SearchEngine$2;
.super Ljava/lang/Object;
.source "SearchEngine.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/SearchEngine;->sortResults(Lcom/waze/navigate/SortPreferences;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/waze/navigate/AddressItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/SearchEngine;


# direct methods
.method constructor <init>(Lcom/waze/navigate/SearchEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/SearchEngine$2;->this$0:Lcom/waze/navigate/SearchEngine;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/waze/navigate/AddressItem;Lcom/waze/navigate/AddressItem;)I
    .locals 4
    .parameter "object1"
    .parameter "object2"

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 174
    iget-boolean v2, p1, Lcom/waze/navigate/AddressItem;->sponsored:Z

    iget-boolean v3, p2, Lcom/waze/navigate/AddressItem;->sponsored:Z

    if-eq v2, v3, :cond_2

    .line 175
    iget-boolean v2, p1, Lcom/waze/navigate/AddressItem;->sponsored:Z

    if-eqz v2, :cond_1

    .line 184
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 178
    goto :goto_0

    .line 181
    :cond_2
    iget v2, p1, Lcom/waze/navigate/AddressItem;->distanceMeters:I

    iget v3, p2, Lcom/waze/navigate/AddressItem;->distanceMeters:I

    if-le v2, v3, :cond_0

    move v0, v1

    .line 182
    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/waze/navigate/AddressItem;

    check-cast p2, Lcom/waze/navigate/AddressItem;

    invoke-virtual {p0, p1, p2}, Lcom/waze/navigate/SearchEngine$2;->compare(Lcom/waze/navigate/AddressItem;Lcom/waze/navigate/AddressItem;)I

    move-result v0

    return v0
.end method
