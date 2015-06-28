.class public Lcom/waze/install/Lang;
.super Ljava/lang/Object;
.source "Lang.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private lable:Ljava/lang/String;

.field private value:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "l"
    .parameter "v"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p2, p0, Lcom/waze/install/Lang;->value:I

    .line 13
    iput-object p1, p0, Lcom/waze/install/Lang;->lable:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public static getLangArray([Ljava/lang/Object;)[Lcom/waze/install/Lang;
    .locals 3
    .parameter "objArray"

    .prologue
    .line 31
    array-length v2, p0

    new-array v1, v2, [Lcom/waze/install/Lang;

    .line 33
    .local v1, langs:[Lcom/waze/install/Lang;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    .line 37
    return-object v1

    .line 35
    :cond_0
    aget-object v2, p0, v0

    check-cast v2, Lcom/waze/install/Lang;

    aput-object v2, v1, v0

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getLable()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/waze/install/Lang;->lable:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/waze/install/Lang;->value:I

    return v0
.end method

.method public setLable(Ljava/lang/String;)V
    .locals 0
    .parameter "lable"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/waze/install/Lang;->lable:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setValue(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 17
    iput p1, p0, Lcom/waze/install/Lang;->value:I

    .line 18
    return-void
.end method
