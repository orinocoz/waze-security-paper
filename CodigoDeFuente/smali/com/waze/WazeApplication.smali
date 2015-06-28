.class public Lcom/waze/WazeApplication;
.super Landroid/app/Application;
.source "WazeApplication.java"


# static fields
.field private static mUIThread:Ljava/lang/Thread;

.field public static final startSW:Lcom/waze/utils/Stopwatch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "APP START"

    invoke-static {v0}, Lcom/waze/utils/Stopwatch;->create(Ljava/lang/String;)Lcom/waze/utils/Stopwatch;

    move-result-object v0

    sput-object v0, Lcom/waze/WazeApplication;->startSW:Lcom/waze/utils/Stopwatch;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static isUIThread()Z
    .locals 2

    .prologue
    .line 25
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/waze/WazeApplication;->mUIThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 13
    sget-object v0, Lcom/waze/WazeApplication;->startSW:Lcom/waze/utils/Stopwatch;

    invoke-virtual {v0}, Lcom/waze/utils/Stopwatch;->start()V

    .line 20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sput-object v0, Lcom/waze/WazeApplication;->mUIThread:Ljava/lang/Thread;

    .line 21
    return-void
.end method
