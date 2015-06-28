.class Lcom/waze/navigate/SearchEngine$3;
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

.field private final synthetic val$sortPreferences:Lcom/waze/navigate/SortPreferences;


# direct methods
.method constructor <init>(Lcom/waze/navigate/SearchEngine;Lcom/waze/navigate/SortPreferences;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/SearchEngine$3;->this$0:Lcom/waze/navigate/SearchEngine;

    iput-object p2, p0, Lcom/waze/navigate/SearchEngine$3;->val$sortPreferences:Lcom/waze/navigate/SortPreferences;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/waze/navigate/AddressItem;Lcom/waze/navigate/AddressItem;)I
    .locals 10
    .parameter "object1"
    .parameter "object2"

    .prologue
    const/4 v5, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x1

    .line 192
    iget-boolean v8, p1, Lcom/waze/navigate/AddressItem;->sponsored:Z

    iget-boolean v9, p2, Lcom/waze/navigate/AddressItem;->sponsored:Z

    if-eq v8, v9, :cond_1

    .line 193
    iget-boolean v5, p1, Lcom/waze/navigate/AddressItem;->sponsored:Z

    if-eqz v5, :cond_0

    move v6, v7

    .line 222
    :cond_0
    :goto_0
    return v6

    .line 199
    :cond_1
    iget-object v8, p1, Lcom/waze/navigate/AddressItem;->brand:Ljava/lang/String;

    if-eqz v8, :cond_2

    iget-object v8, p1, Lcom/waze/navigate/AddressItem;->brand:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    move v0, v5

    .line 200
    .local v0, firstBrandEmpty:Z
    :goto_1
    iget-object v8, p2, Lcom/waze/navigate/AddressItem;->brand:Ljava/lang/String;

    if-eqz v8, :cond_3

    iget-object v8, p2, Lcom/waze/navigate/AddressItem;->brand:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    move v3, v5

    .line 201
    .local v3, secondBrandEmpty:Z
    :goto_2
    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    .line 202
    invoke-virtual {p1}, Lcom/waze/navigate/AddressItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/waze/navigate/AddressItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    goto :goto_0

    .end local v0           #firstBrandEmpty:Z
    .end local v3           #secondBrandEmpty:Z
    :cond_2
    move v0, v6

    .line 199
    goto :goto_1

    .restart local v0       #firstBrandEmpty:Z
    :cond_3
    move v3, v6

    .line 200
    goto :goto_2

    .line 204
    .restart local v3       #secondBrandEmpty:Z
    :cond_4
    if-eqz v0, :cond_5

    if-eqz v3, :cond_0

    .line 207
    :cond_5
    if-nez v0, :cond_6

    if-eqz v3, :cond_6

    move v6, v7

    .line 208
    goto :goto_0

    .line 210
    :cond_6
    iget-object v8, p0, Lcom/waze/navigate/SearchEngine$3;->val$sortPreferences:Lcom/waze/navigate/SortPreferences;

    iget-object v8, v8, Lcom/waze/navigate/SortPreferences;->brand:Ljava/lang/String;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/waze/navigate/SearchEngine$3;->val$sortPreferences:Lcom/waze/navigate/SortPreferences;

    iget-object v8, v8, Lcom/waze/navigate/SortPreferences;->brand:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    move v2, v6

    .line 211
    .local v2, hasFavoriteBrand:Z
    :goto_3
    if-eqz v2, :cond_8

    .line 212
    iget-object v5, p1, Lcom/waze/navigate/AddressItem;->brand:Ljava/lang/String;

    iget-object v8, p0, Lcom/waze/navigate/SearchEngine$3;->val$sortPreferences:Lcom/waze/navigate/SortPreferences;

    iget-object v8, v8, Lcom/waze/navigate/SortPreferences;->brand:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 213
    .local v1, firstIsFavorite:Z
    iget-object v5, p2, Lcom/waze/navigate/AddressItem;->brand:Ljava/lang/String;

    iget-object v8, p0, Lcom/waze/navigate/SearchEngine$3;->val$sortPreferences:Lcom/waze/navigate/SortPreferences;

    iget-object v8, v8, Lcom/waze/navigate/SortPreferences;->brand:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 214
    .local v4, secondIsFavorite:Z
    if-eq v1, v4, :cond_8

    .line 215
    if-eqz v1, :cond_0

    move v6, v7

    .line 216
    goto :goto_0

    .end local v1           #firstIsFavorite:Z
    .end local v2           #hasFavoriteBrand:Z
    .end local v4           #secondIsFavorite:Z
    :cond_7
    move v2, v5

    .line 210
    goto :goto_3

    .line 222
    .restart local v2       #hasFavoriteBrand:Z
    :cond_8
    iget-object v5, p1, Lcom/waze/navigate/AddressItem;->brand:Ljava/lang/String;

    iget-object v6, p2, Lcom/waze/navigate/AddressItem;->brand:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

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

    invoke-virtual {p0, p1, p2}, Lcom/waze/navigate/SearchEngine$3;->compare(Lcom/waze/navigate/AddressItem;Lcom/waze/navigate/AddressItem;)I

    move-result v0

    return v0
.end method
