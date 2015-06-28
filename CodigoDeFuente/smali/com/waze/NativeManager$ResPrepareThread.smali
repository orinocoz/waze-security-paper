.class final Lcom/waze/NativeManager$ResPrepareThread;
.super Ljava/lang/Thread;
.source "NativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/NativeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ResPrepareThread"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3731
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3734
    const-string v0, "WAZE"

    const-string v1, "Resources prepare thread start"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3735
    invoke-static {}, Lcom/waze/ResManager;->Prepare()V

    .line 3736
    const-string v0, "WAZE"

    const-string v1, "Resources prepare thread finish"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3737
    return-void
.end method
