.class public final enum Lcom/facebook/widget/LikeView$HorizontalAlignment;
.super Ljava/lang/Enum;
.source "LikeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/LikeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HorizontalAlignment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/widget/LikeView$HorizontalAlignment;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CENTER:Lcom/facebook/widget/LikeView$HorizontalAlignment;

.field static DEFAULT:Lcom/facebook/widget/LikeView$HorizontalAlignment;

.field private static final synthetic ENUM$VALUES:[Lcom/facebook/widget/LikeView$HorizontalAlignment;

.field public static final enum LEFT:Lcom/facebook/widget/LikeView$HorizontalAlignment;

.field public static final enum RIGHT:Lcom/facebook/widget/LikeView$HorizontalAlignment;


# instance fields
.field private intValue:I

.field private stringValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 103
    new-instance v0, Lcom/facebook/widget/LikeView$HorizontalAlignment;

    const-string v1, "CENTER"

    .line 108
    const-string v2, "center"

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/facebook/widget/LikeView$HorizontalAlignment;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/facebook/widget/LikeView$HorizontalAlignment;->CENTER:Lcom/facebook/widget/LikeView$HorizontalAlignment;

    .line 110
    new-instance v0, Lcom/facebook/widget/LikeView$HorizontalAlignment;

    const-string v1, "LEFT"

    .line 113
    const-string v2, "left"

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/facebook/widget/LikeView$HorizontalAlignment;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/facebook/widget/LikeView$HorizontalAlignment;->LEFT:Lcom/facebook/widget/LikeView$HorizontalAlignment;

    .line 115
    new-instance v0, Lcom/facebook/widget/LikeView$HorizontalAlignment;

    const-string v1, "RIGHT"

    .line 120
    const-string v2, "right"

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/facebook/widget/LikeView$HorizontalAlignment;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/facebook/widget/LikeView$HorizontalAlignment;->RIGHT:Lcom/facebook/widget/LikeView$HorizontalAlignment;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/widget/LikeView$HorizontalAlignment;

    sget-object v1, Lcom/facebook/widget/LikeView$HorizontalAlignment;->CENTER:Lcom/facebook/widget/LikeView$HorizontalAlignment;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/widget/LikeView$HorizontalAlignment;->LEFT:Lcom/facebook/widget/LikeView$HorizontalAlignment;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/widget/LikeView$HorizontalAlignment;->RIGHT:Lcom/facebook/widget/LikeView$HorizontalAlignment;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/widget/LikeView$HorizontalAlignment;->ENUM$VALUES:[Lcom/facebook/widget/LikeView$HorizontalAlignment;

    .line 122
    sget-object v0, Lcom/facebook/widget/LikeView$HorizontalAlignment;->CENTER:Lcom/facebook/widget/LikeView$HorizontalAlignment;

    sput-object v0, Lcom/facebook/widget/LikeView$HorizontalAlignment;->DEFAULT:Lcom/facebook/widget/LikeView$HorizontalAlignment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter "stringValue"
    .parameter "value"

    .prologue
    .line 136
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 137
    iput-object p3, p0, Lcom/facebook/widget/LikeView$HorizontalAlignment;->stringValue:Ljava/lang/String;

    .line 138
    iput p4, p0, Lcom/facebook/widget/LikeView$HorizontalAlignment;->intValue:I

    .line 139
    return-void
.end method

.method static synthetic access$2(Lcom/facebook/widget/LikeView$HorizontalAlignment;)I
    .locals 1
    .parameter

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/facebook/widget/LikeView$HorizontalAlignment;->getValue()I

    move-result v0

    return v0
.end method

.method static fromInt(I)Lcom/facebook/widget/LikeView$HorizontalAlignment;
    .locals 5
    .parameter "enumValue"

    .prologue
    .line 125
    invoke-static {}, Lcom/facebook/widget/LikeView$HorizontalAlignment;->values()[Lcom/facebook/widget/LikeView$HorizontalAlignment;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 131
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 125
    :cond_1
    aget-object v0, v2, v1

    .line 126
    .local v0, horizontalAlignment:Lcom/facebook/widget/LikeView$HorizontalAlignment;
    invoke-direct {v0}, Lcom/facebook/widget/LikeView$HorizontalAlignment;->getValue()I

    move-result v4

    if-eq v4, p0, :cond_0

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getValue()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/facebook/widget/LikeView$HorizontalAlignment;->intValue:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/widget/LikeView$HorizontalAlignment;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/facebook/widget/LikeView$HorizontalAlignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/LikeView$HorizontalAlignment;

    return-object v0
.end method

.method public static values()[Lcom/facebook/widget/LikeView$HorizontalAlignment;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/facebook/widget/LikeView$HorizontalAlignment;->ENUM$VALUES:[Lcom/facebook/widget/LikeView$HorizontalAlignment;

    array-length v1, v0

    new-array v2, v1, [Lcom/facebook/widget/LikeView$HorizontalAlignment;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/facebook/widget/LikeView$HorizontalAlignment;->stringValue:Ljava/lang/String;

    return-object v0
.end method
