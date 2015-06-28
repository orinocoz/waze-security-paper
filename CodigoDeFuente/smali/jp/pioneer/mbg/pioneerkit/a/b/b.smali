.class public Ljp/pioneer/mbg/pioneerkit/a/b/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljp/pioneer/mbg/pioneerkit/a/b/b;


# instance fields
.field private c:Ljp/pioneer/mbg/pioneerkit/a/b/c;

.field private d:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "EventProcess"

    sput-object v0, Ljp/pioneer/mbg/pioneerkit/a/b/b;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Ljp/pioneer/mbg/pioneerkit/a/b/b;->b:Ljp/pioneer/mbg/pioneerkit/a/b/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljp/pioneer/mbg/pioneerkit/a/b/b;->c:Ljp/pioneer/mbg/pioneerkit/a/b/c;

    iput-object v0, p0, Ljp/pioneer/mbg/pioneerkit/a/b/b;->d:Landroid/os/Handler;

    return-void
.end method

.method public static declared-synchronized a()Ljp/pioneer/mbg/pioneerkit/a/b/b;
    .locals 2

    const-class v1, Ljp/pioneer/mbg/pioneerkit/a/b/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ljp/pioneer/mbg/pioneerkit/a/b/b;->b:Ljp/pioneer/mbg/pioneerkit/a/b/b;

    if-nez v0, :cond_0

    new-instance v0, Ljp/pioneer/mbg/pioneerkit/a/b/b;

    invoke-direct {v0}, Ljp/pioneer/mbg/pioneerkit/a/b/b;-><init>()V

    sput-object v0, Ljp/pioneer/mbg/pioneerkit/a/b/b;->b:Ljp/pioneer/mbg/pioneerkit/a/b/b;

    sget-object v0, Ljp/pioneer/mbg/pioneerkit/a/b/b;->b:Ljp/pioneer/mbg/pioneerkit/a/b/b;

    invoke-direct {v0}, Ljp/pioneer/mbg/pioneerkit/a/b/b;->c()V

    :cond_0
    sget-object v0, Ljp/pioneer/mbg/pioneerkit/a/b/b;->b:Ljp/pioneer/mbg/pioneerkit/a/b/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private c()V
    .locals 2

    new-instance v0, Ljp/pioneer/mbg/pioneerkit/a/b/c;

    sget-object v1, Ljp/pioneer/mbg/pioneerkit/a/b/b;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljp/pioneer/mbg/pioneerkit/a/b/c;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljp/pioneer/mbg/pioneerkit/a/b/b;->c:Ljp/pioneer/mbg/pioneerkit/a/b/c;

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/a/b/b;->c:Ljp/pioneer/mbg/pioneerkit/a/b/c;

    invoke-virtual {v0}, Ljp/pioneer/mbg/pioneerkit/a/b/c;->start()V

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/a/b/b;->c:Ljp/pioneer/mbg/pioneerkit/a/b/c;

    invoke-virtual {v0}, Ljp/pioneer/mbg/pioneerkit/a/b/c;->a()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Ljp/pioneer/mbg/pioneerkit/a/b/b;->d:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public b()Landroid/os/Handler;
    .locals 2

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/a/b/b;->d:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "EventProcessManager has not been init!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/a/b/b;->d:Landroid/os/Handler;

    return-object v0
.end method
