.class public final enum Lcom/waze/animation/easing/AnimationEasingManager$EaseType;
.super Ljava/lang/Enum;
.source "AnimationEasingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/animation/easing/AnimationEasingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EaseType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/waze/animation/easing/AnimationEasingManager$EaseType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/waze/animation/easing/AnimationEasingManager$EaseType;

.field public static final enum EaseIn:Lcom/waze/animation/easing/AnimationEasingManager$EaseType;

.field public static final enum EaseInOut:Lcom/waze/animation/easing/AnimationEasingManager$EaseType;

.field public static final enum EaseNone:Lcom/waze/animation/easing/AnimationEasingManager$EaseType;

.field public static final enum EaseOut:Lcom/waze/animation/easing/AnimationEasingManager$EaseType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/waze/animation/easing/AnimationEasingManager$EaseType;

    const-string v1, "EaseIn"

    invoke-direct {v0, v1, v2}, Lcom/waze/animation/easing/AnimationEasingManager$EaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/animation/easing/AnimationEasingManager$EaseType;->EaseIn:Lcom/waze/animation/easing/AnimationEasingManager$EaseType;

    new-instance v0, Lcom/waze/animation/easing/AnimationEasingManager$EaseType;

    const-string v1, "EaseOut"

    invoke-direct {v0, v1, v3}, Lcom/waze/animation/easing/AnimationEasingManager$EaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/animation/easing/AnimationEasingManager$EaseType;->EaseOut:Lcom/waze/animation/easing/AnimationEasingManager$EaseType;

    new-instance v0, Lcom/waze/animation/easing/AnimationEasingManager$EaseType;

    const-string v1, "EaseInOut"

    invoke-direct {v0, v1, v4}, Lcom/waze/animation/easing/AnimationEasingManager$EaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/animation/easing/AnimationEasingManager$EaseType;->EaseInOut:Lcom/waze/animation/easing/AnimationEasingManager$EaseType;

    new-instance v0, Lcom/waze/animation/easing/AnimationEasingManager$EaseType;

    const-string v1, "EaseNone"

    invoke-direct {v0, v1, v5}, Lcom/waze/animation/easing/AnimationEasingManager$EaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waze/animation/easing/AnimationEasingManager$EaseType;->EaseNone:Lcom/waze/animation/easing/AnimationEasingManager$EaseType;

    .line 26
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/waze/animation/easing/AnimationEasingManager$EaseType;

    sget-object v1, Lcom/waze/animation/easing/AnimationEasingManager$EaseType;->EaseIn:Lcom/waze/animation/easing/AnimationEasingManager$EaseType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/waze/animation/easing/AnimationEasingManager$EaseType;->EaseOut:Lcom/waze/animation/easing/AnimationEasingManager$EaseType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/waze/animation/easing/AnimationEasingManager$EaseType;->EaseInOut:Lcom/waze/animation/easing/AnimationEasingManager$EaseType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/waze/animation/easing/AnimationEasingManager$EaseType;->EaseNone:Lcom/waze/animation/easing/AnimationEasingManager$EaseType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/waze/animation/easing/AnimationEasingManager$EaseType;->ENUM$VALUES:[Lcom/waze/animation/easing/AnimationEasingManager$EaseType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/waze/animation/easing/AnimationEasingManager$EaseType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/waze/animation/easing/AnimationEasingManager$EaseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/waze/animation/easing/AnimationEasingManager$EaseType;

    return-object v0
.end method

.method public static values()[Lcom/waze/animation/easing/AnimationEasingManager$EaseType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/waze/animation/easing/AnimationEasingManager$EaseType;->ENUM$VALUES:[Lcom/waze/animation/easing/AnimationEasingManager$EaseType;

    array-length v1, v0

    new-array v2, v1, [Lcom/waze/animation/easing/AnimationEasingManager$EaseType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
