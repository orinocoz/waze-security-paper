.class public final enum Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;
.super Ljava/lang/Enum;
.source "TokenCompleteTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tokenautocomplete/TokenCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TokenDeleteStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Clear:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

.field private static final synthetic ENUM$VALUES:[Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

.field public static final enum PartialCompletion:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

.field public static final enum ToString:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

.field public static final enum _Parent:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    new-instance v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    const-string v1, "_Parent"

    invoke-direct {v0, v1, v2}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;->_Parent:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    .line 56
    new-instance v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    const-string v1, "Clear"

    invoke-direct {v0, v1, v3}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;->Clear:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    .line 57
    new-instance v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    const-string v1, "PartialCompletion"

    invoke-direct {v0, v1, v4}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;->PartialCompletion:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    .line 58
    new-instance v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    const-string v1, "ToString"

    invoke-direct {v0, v1, v5}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;->ToString:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    .line 54
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    sget-object v1, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;->_Parent:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;->Clear:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;->PartialCompletion:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;->ToString:Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    aput-object v1, v0, v5

    sput-object v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;->ENUM$VALUES:[Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    return-object v0
.end method

.method public static values()[Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;->ENUM$VALUES:[Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    array-length v1, v0

    new-array v2, v1, [Lcom/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
