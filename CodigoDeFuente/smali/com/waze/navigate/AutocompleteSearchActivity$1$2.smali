.class Lcom/waze/navigate/AutocompleteSearchActivity$1$2;
.super Ljava/lang/Object;
.source "AutocompleteSearchActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/AutocompleteSearchActivity$1;->getAddressItemArrayCallback([Lcom/waze/navigate/AddressItem;)V
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
.field final synthetic this$1:Lcom/waze/navigate/AutocompleteSearchActivity$1;


# direct methods
.method constructor <init>(Lcom/waze/navigate/AutocompleteSearchActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/AutocompleteSearchActivity$1$2;->this$1:Lcom/waze/navigate/AutocompleteSearchActivity$1;

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/waze/navigate/AddressItem;Lcom/waze/navigate/AddressItem;)I
    .locals 2
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 330
    invoke-virtual {p1}, Lcom/waze/navigate/AddressItem;->getType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2}, Lcom/waze/navigate/AddressItem;->getType()Ljava/lang/Integer;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 332
    :goto_0
    return v0

    .line 331
    :cond_0
    invoke-virtual {p1}, Lcom/waze/navigate/AddressItem;->getType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    .line 332
    :cond_1
    const/4 v0, 0x1

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

    invoke-virtual {p0, p1, p2}, Lcom/waze/navigate/AutocompleteSearchActivity$1$2;->compare(Lcom/waze/navigate/AddressItem;Lcom/waze/navigate/AddressItem;)I

    move-result v0

    return v0
.end method
