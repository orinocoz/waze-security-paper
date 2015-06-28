.class public final Lcom/waze/pioneer/PioneerNativeManager;
.super Ljava/lang/Object;
.source "PioneerNativeManager.java"


# static fields
.field private static mInstance:Lcom/waze/pioneer/PioneerNativeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/pioneer/PioneerNativeManager;->mInstance:Lcom/waze/pioneer/PioneerNativeManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native InitNativeLayerNTV()V
.end method

.method public static create()Lcom/waze/pioneer/PioneerNativeManager;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/waze/pioneer/PioneerNativeManager;->mInstance:Lcom/waze/pioneer/PioneerNativeManager;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/waze/pioneer/PioneerNativeManager;

    invoke-direct {v0}, Lcom/waze/pioneer/PioneerNativeManager;-><init>()V

    sput-object v0, Lcom/waze/pioneer/PioneerNativeManager;->mInstance:Lcom/waze/pioneer/PioneerNativeManager;

    .line 22
    sget-object v0, Lcom/waze/pioneer/PioneerNativeManager;->mInstance:Lcom/waze/pioneer/PioneerNativeManager;

    invoke-direct {v0}, Lcom/waze/pioneer/PioneerNativeManager;->InitNativeLayerNTV()V

    .line 24
    :cond_0
    sget-object v0, Lcom/waze/pioneer/PioneerNativeManager;->mInstance:Lcom/waze/pioneer/PioneerNativeManager;

    return-object v0
.end method

.method public static getInstance()Lcom/waze/pioneer/PioneerNativeManager;
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/waze/pioneer/PioneerNativeManager;->create()Lcom/waze/pioneer/PioneerNativeManager;

    .line 30
    sget-object v0, Lcom/waze/pioneer/PioneerNativeManager;->mInstance:Lcom/waze/pioneer/PioneerNativeManager;

    return-object v0
.end method

.method public static onPioneerConnected()V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/waze/pioneer/PioneerNativeManager;->create()Lcom/waze/pioneer/PioneerNativeManager;

    .line 36
    sget-object v0, Lcom/waze/pioneer/PioneerNativeManager;->mInstance:Lcom/waze/pioneer/PioneerNativeManager;

    invoke-direct {v0}, Lcom/waze/pioneer/PioneerNativeManager;->onPioneerConnectedNTV()V

    .line 37
    return-void
.end method

.method private native onPioneerConnectedNTV()V
.end method


# virtual methods
.method public native LocationCallbackNTV(IIIIIII)V
.end method
