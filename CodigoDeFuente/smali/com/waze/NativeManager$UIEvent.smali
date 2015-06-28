.class public final enum Lcom/waze/NativeManager$UIEvent;
.super Ljava/lang/Enum;
.source "NativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/NativeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UIEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/waze/NativeManager$UIEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/waze/NativeManager$UIEvent;

.field public static final enum UI_EVENT_FORCE_NEW_CANVAS:Lcom/waze/NativeManager$UIEvent;

.field public static final enum UI_EVENT_KEY_DOWN:Lcom/waze/NativeManager$UIEvent;

.field public static final enum UI_EVENT_LOW_MEMORY:Lcom/waze/NativeManager$UIEvent;

.field public static final enum UI_EVENT_NATIVE:Lcom/waze/NativeManager$UIEvent;

.field public static final enum UI_EVENT_SCREENSHOT:Lcom/waze/NativeManager$UIEvent;

.field public static final enum UI_EVENT_START:Lcom/waze/NativeManager$UIEvent;

.field public static final enum UI_EVENT_STARTUP_GPUERROR:Lcom/waze/NativeManager$UIEvent;

.field public static final enum UI_EVENT_STARTUP_NOSDCARD:Lcom/waze/NativeManager$UIEvent;

.field public static final enum UI_EVENT_TOUCH:Lcom/waze/NativeManager$UIEvent;

.field public static final enum UI_PRIORITY_EVENT_NATIVE:Lcom/waze/NativeManager$UIEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 186
    new-instance v0, Lcom/waze/NativeManager$UIEvent;

    const-string v1, "UI_EVENT_START"

    invoke-direct {v0, v1, v3}, Lcom/waze/NativeManager$UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/NativeManager$UIEvent;->UI_EVENT_START:Lcom/waze/NativeManager$UIEvent;

    .line 187
    new-instance v0, Lcom/waze/NativeManager$UIEvent;

    const-string v1, "UI_EVENT_FORCE_NEW_CANVAS"

    invoke-direct {v0, v1, v4}, Lcom/waze/NativeManager$UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/NativeManager$UIEvent;->UI_EVENT_FORCE_NEW_CANVAS:Lcom/waze/NativeManager$UIEvent;

    .line 188
    new-instance v0, Lcom/waze/NativeManager$UIEvent;

    const-string v1, "UI_EVENT_KEY_DOWN"

    invoke-direct {v0, v1, v5}, Lcom/waze/NativeManager$UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/NativeManager$UIEvent;->UI_EVENT_KEY_DOWN:Lcom/waze/NativeManager$UIEvent;

    .line 189
    new-instance v0, Lcom/waze/NativeManager$UIEvent;

    const-string v1, "UI_EVENT_TOUCH"

    invoke-direct {v0, v1, v6}, Lcom/waze/NativeManager$UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/NativeManager$UIEvent;->UI_EVENT_TOUCH:Lcom/waze/NativeManager$UIEvent;

    .line 190
    new-instance v0, Lcom/waze/NativeManager$UIEvent;

    const-string v1, "UI_EVENT_STARTUP_NOSDCARD"

    invoke-direct {v0, v1, v7}, Lcom/waze/NativeManager$UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/NativeManager$UIEvent;->UI_EVENT_STARTUP_NOSDCARD:Lcom/waze/NativeManager$UIEvent;

    .line 191
    new-instance v0, Lcom/waze/NativeManager$UIEvent;

    const-string v1, "UI_EVENT_STARTUP_GPUERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/waze/NativeManager$UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/NativeManager$UIEvent;->UI_EVENT_STARTUP_GPUERROR:Lcom/waze/NativeManager$UIEvent;

    .line 192
    new-instance v0, Lcom/waze/NativeManager$UIEvent;

    const-string v1, "UI_EVENT_LOW_MEMORY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/waze/NativeManager$UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/NativeManager$UIEvent;->UI_EVENT_LOW_MEMORY:Lcom/waze/NativeManager$UIEvent;

    .line 193
    new-instance v0, Lcom/waze/NativeManager$UIEvent;

    const-string v1, "UI_EVENT_SCREENSHOT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/waze/NativeManager$UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/NativeManager$UIEvent;->UI_EVENT_SCREENSHOT:Lcom/waze/NativeManager$UIEvent;

    .line 194
    new-instance v0, Lcom/waze/NativeManager$UIEvent;

    const-string v1, "UI_EVENT_NATIVE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/waze/NativeManager$UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/NativeManager$UIEvent;->UI_EVENT_NATIVE:Lcom/waze/NativeManager$UIEvent;

    new-instance v0, Lcom/waze/NativeManager$UIEvent;

    const-string v1, "UI_PRIORITY_EVENT_NATIVE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/waze/NativeManager$UIEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/NativeManager$UIEvent;->UI_PRIORITY_EVENT_NATIVE:Lcom/waze/NativeManager$UIEvent;

    .line 185
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/waze/NativeManager$UIEvent;

    sget-object v1, Lcom/waze/NativeManager$UIEvent;->UI_EVENT_START:Lcom/waze/NativeManager$UIEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/waze/NativeManager$UIEvent;->UI_EVENT_FORCE_NEW_CANVAS:Lcom/waze/NativeManager$UIEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/waze/NativeManager$UIEvent;->UI_EVENT_KEY_DOWN:Lcom/waze/NativeManager$UIEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/waze/NativeManager$UIEvent;->UI_EVENT_TOUCH:Lcom/waze/NativeManager$UIEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/waze/NativeManager$UIEvent;->UI_EVENT_STARTUP_NOSDCARD:Lcom/waze/NativeManager$UIEvent;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/waze/NativeManager$UIEvent;->UI_EVENT_STARTUP_GPUERROR:Lcom/waze/NativeManager$UIEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/waze/NativeManager$UIEvent;->UI_EVENT_LOW_MEMORY:Lcom/waze/NativeManager$UIEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/waze/NativeManager$UIEvent;->UI_EVENT_SCREENSHOT:Lcom/waze/NativeManager$UIEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/waze/NativeManager$UIEvent;->UI_EVENT_NATIVE:Lcom/waze/NativeManager$UIEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/waze/NativeManager$UIEvent;->UI_PRIORITY_EVENT_NATIVE:Lcom/waze/NativeManager$UIEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/waze/NativeManager$UIEvent;->ENUM$VALUES:[Lcom/waze/NativeManager$UIEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 185
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static FromInt(I)Lcom/waze/NativeManager$UIEvent;
    .locals 1
    .parameter "aCode"

    .prologue
    .line 198
    invoke-static {}, Lcom/waze/NativeManager$UIEvent;->values()[Lcom/waze/NativeManager$UIEvent;

    move-result-object v0

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static ToInt(Lcom/waze/NativeManager$UIEvent;)I
    .locals 1
    .parameter "aEvent"

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/waze/NativeManager$UIEvent;->ordinal()I

    move-result v0

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/waze/NativeManager$UIEvent;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/waze/NativeManager$UIEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/waze/NativeManager$UIEvent;

    return-object v0
.end method

.method public static values()[Lcom/waze/NativeManager$UIEvent;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/waze/NativeManager$UIEvent;->ENUM$VALUES:[Lcom/waze/NativeManager$UIEvent;

    array-length v1, v0

    new-array v2, v1, [Lcom/waze/NativeManager$UIEvent;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
