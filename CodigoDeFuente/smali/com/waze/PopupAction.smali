.class public final enum Lcom/waze/PopupAction;
.super Ljava/lang/Enum;
.source "PopupAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/waze/PopupAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/waze/PopupAction;

.field public static final enum popup_close:Lcom/waze/PopupAction;

.field public static final enum popup_hidden:Lcom/waze/PopupAction;

.field public static final enum popup_shown:Lcom/waze/PopupAction;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/waze/PopupAction;

    const-string v1, "popup_shown"

    invoke-direct {v0, v1, v2}, Lcom/waze/PopupAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/PopupAction;->popup_shown:Lcom/waze/PopupAction;

    .line 5
    new-instance v0, Lcom/waze/PopupAction;

    const-string v1, "popup_hidden"

    invoke-direct {v0, v1, v3}, Lcom/waze/PopupAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/PopupAction;->popup_hidden:Lcom/waze/PopupAction;

    .line 6
    new-instance v0, Lcom/waze/PopupAction;

    const-string v1, "popup_close"

    invoke-direct {v0, v1, v4}, Lcom/waze/PopupAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/PopupAction;->popup_close:Lcom/waze/PopupAction;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/waze/PopupAction;

    sget-object v1, Lcom/waze/PopupAction;->popup_shown:Lcom/waze/PopupAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/waze/PopupAction;->popup_hidden:Lcom/waze/PopupAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/waze/PopupAction;->popup_close:Lcom/waze/PopupAction;

    aput-object v1, v0, v4

    sput-object v0, Lcom/waze/PopupAction;->ENUM$VALUES:[Lcom/waze/PopupAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/waze/PopupAction;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/waze/PopupAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/waze/PopupAction;

    return-object v0
.end method

.method public static values()[Lcom/waze/PopupAction;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/waze/PopupAction;->ENUM$VALUES:[Lcom/waze/PopupAction;

    array-length v1, v0

    new-array v2, v1, [Lcom/waze/PopupAction;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
