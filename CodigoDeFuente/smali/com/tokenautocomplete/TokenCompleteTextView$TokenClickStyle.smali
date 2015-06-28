.class public final enum Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;
.super Ljava/lang/Enum;
.source "TokenCompleteTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tokenautocomplete/TokenCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TokenClickStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Delete:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

.field private static final synthetic ENUM$VALUES:[Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

.field public static final enum None:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

.field public static final enum Select:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

.field public static final enum SelectDeselect:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;


# instance fields
.field private mIsSelectable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 63
    new-instance v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    const-string v1, "None"

    invoke-direct {v0, v1, v2, v2}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;->None:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    .line 64
    new-instance v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    const-string v1, "Delete"

    invoke-direct {v0, v1, v3, v2}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;->Delete:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    .line 65
    new-instance v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    const-string v1, "Select"

    invoke-direct {v0, v1, v4, v3}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;->Select:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    .line 66
    new-instance v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    const-string v1, "SelectDeselect"

    invoke-direct {v0, v1, v5, v3}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;->SelectDeselect:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    .line 62
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    sget-object v1, Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;->None:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;->Delete:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;->Select:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;->SelectDeselect:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    aput-object v1, v0, v5

    sput-object v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;->ENUM$VALUES:[Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 1
    .parameter
    .parameter
    .parameter "selectable"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;->mIsSelectable:Z

    .line 70
    iput-boolean p3, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;->mIsSelectable:Z

    .line 71
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    return-object v0
.end method

.method public static values()[Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;->ENUM$VALUES:[Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    array-length v1, v0

    new-array v2, v1, [Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public isSelectable()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;->mIsSelectable:Z

    return v0
.end method
