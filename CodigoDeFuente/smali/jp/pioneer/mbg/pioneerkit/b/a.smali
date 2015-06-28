.class public Ljp/pioneer/mbg/pioneerkit/b/a;
.super Ljava/lang/Object;


# static fields
.field private static D:Z

.field private static f:Ljava/lang/String;

.field private static g:Ljp/pioneer/mbg/pioneerkit/b/a;


# instance fields
.field private A:Ljava/lang/Runnable;

.field private B:Landroid/content/IntentFilter;

.field private C:Landroid/content/BroadcastReceiver;

.field protected a:Ljp/pioneer/mbg/pioneerkit/a/a/j;

.field protected b:Ljp/pioneer/mbg/pioneerkit/b/d;

.field protected c:Landroid/os/Messenger;

.field final d:Ljava/lang/String;

.field e:Ljp/pioneer/mbg/pioneerkit/ExtDeviceSpecInfo;

.field private h:Z

.field private i:Ljp/pioneer/mbg/pioneerkit/b/t;

.field private j:Ljava/util/ArrayList;

.field private k:Ljava/util/ArrayList;

.field private l:Ljava/util/ArrayList;

.field private m:Ljava/util/ArrayList;

.field private n:Ljava/util/ArrayList;

.field private o:Ljava/util/ArrayList;

.field private p:Ljava/util/ArrayList;

.field private q:Ljava/util/ArrayList;

.field private r:Ljava/util/ArrayList;

.field private s:Ljava/util/ArrayList;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Landroid/content/Context;

.field private w:I

.field private x:Landroid/os/HandlerThread;

.field private y:Landroid/os/Handler;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.extscreen.service"

    sput-object v0, Ljp/pioneer/mbg/pioneerkit/b/a;->f:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Ljp/pioneer/mbg/pioneerkit/b/a;->D:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->i:Ljp/pioneer/mbg/pioneerkit/b/t;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->j:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->k:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->l:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->m:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->n:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->o:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->p:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->q:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->r:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->s:Ljava/util/ArrayList;

    iput-object v1, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->t:Ljava/lang/String;

    iput-object v1, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->u:Ljava/lang/String;

    const-string v0, "PionnerKit"

    iput-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->d:Ljava/lang/String;

    iput-object v1, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->v:Landroid/content/Context;

    iput v2, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->w:I

    iput-object v1, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->e:Ljp/pioneer/mbg/pioneerkit/ExtDeviceSpecInfo;

    iput-object v1, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->x:Landroid/os/HandlerThread;

    iput-object v1, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->y:Landroid/os/Handler;

    iput-boolean v2, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->z:Z

    new-instance v0, Ljp/pioneer/mbg/pioneerkit/b/b;

    invoke-direct {v0, p0}, Ljp/pioneer/mbg/pioneerkit/b/b;-><init>(Ljp/pioneer/mbg/pioneerkit/b/a;)V

    iput-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->A:Ljava/lang/Runnable;

    const-string v0, "ExtScreenServiceManager created"

    invoke-static {v0}, Ljp/pioneer/mbg/pioneerkit/a/a;->a(Ljava/lang/String;)V

    new-instance v0, Ljp/pioneer/mbg/pioneerkit/b/t;

    invoke-direct {v0, p0}, Ljp/pioneer/mbg/pioneerkit/b/t;-><init>(Ljp/pioneer/mbg/pioneerkit/b/a;)V

    iput-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->i:Ljp/pioneer/mbg/pioneerkit/b/t;

    new-instance v0, Ljp/pioneer/mbg/pioneerkit/b/d;

    invoke-direct {v0, p0}, Ljp/pioneer/mbg/pioneerkit/b/d;-><init>(Ljp/pioneer/mbg/pioneerkit/b/a;)V

    iput-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->b:Ljp/pioneer/mbg/pioneerkit/b/d;

    new-instance v0, Landroid/os/Messenger;

    invoke-static {}, Ljp/pioneer/mbg/pioneerkit/a/b/b;->a()Ljp/pioneer/mbg/pioneerkit/a/b/b;

    move-result-object v1

    invoke-virtual {v1}, Ljp/pioneer/mbg/pioneerkit/a/b/b;->b()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->c:Landroid/os/Messenger;

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->q:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/pioneer/mbg/pioneerkit/d;

    invoke-interface {v0, p1}, Ljp/pioneer/mbg/pioneerkit/d;->a(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method private a(Ljp/pioneer/mbg/pioneerkit/ExtDeviceSpecInfo;)V
    .locals 2

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/pioneer/mbg/pioneerkit/IExtRequiredListener;

    invoke-interface {v0, p1}, Ljp/pioneer/mbg/pioneerkit/IExtRequiredListener;->onStartAdvancedAppMode(Ljp/pioneer/mbg/pioneerkit/ExtDeviceSpecInfo;)V

    goto :goto_0
.end method

.method static synthetic a(Ljp/pioneer/mbg/pioneerkit/b/a;I)V
    .locals 0

    invoke-direct {p0, p1}, Ljp/pioneer/mbg/pioneerkit/b/a;->d(I)V

    return-void
.end method

.method static synthetic a(Ljp/pioneer/mbg/pioneerkit/b/a;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Ljp/pioneer/mbg/pioneerkit/b/a;->a(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic a(Ljp/pioneer/mbg/pioneerkit/b/a;Ljp/pioneer/mbg/pioneerkit/ExtDeviceSpecInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Ljp/pioneer/mbg/pioneerkit/b/a;->a(Ljp/pioneer/mbg/pioneerkit/ExtDeviceSpecInfo;)V

    return-void
.end method

.method static synthetic a(Ljp/pioneer/mbg/pioneerkit/b/a;Z)V
    .locals 0

    iput-boolean p1, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->h:Z

    return-void
.end method

.method static synthetic a(Ljp/pioneer/mbg/pioneerkit/b/a;[B)V
    .locals 0

    invoke-direct {p0, p1}, Ljp/pioneer/mbg/pioneerkit/b/a;->b([B)V

    return-void
.end method

.method static synthetic a(Ljp/pioneer/mbg/pioneerkit/b/a;)Z
    .locals 1

    iget-boolean v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->z:Z

    return v0
.end method

.method static synthetic b(Ljp/pioneer/mbg/pioneerkit/b/a;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->y:Landroid/os/Handler;

    return-object v0
.end method

.method public static declared-synchronized b()Ljp/pioneer/mbg/pioneerkit/b/a;
    .locals 3

    const-class v1, Ljp/pioneer/mbg/pioneerkit/b/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ljp/pioneer/mbg/pioneerkit/b/a;->g:Ljp/pioneer/mbg/pioneerkit/b/a;

    if-nez v0, :cond_0

    new-instance v0, Ljp/pioneer/mbg/pioneerkit/b/a;

    invoke-direct {v0}, Ljp/pioneer/mbg/pioneerkit/b/a;-><init>()V

    sput-object v0, Ljp/pioneer/mbg/pioneerkit/b/a;->g:Ljp/pioneer/mbg/pioneerkit/b/a;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ExtScreenServiceManager created "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljp/pioneer/mbg/pioneerkit/b/a;->g:Ljp/pioneer/mbg/pioneerkit/b/a;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljp/pioneer/mbg/pioneerkit/a/a;->a(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Ljp/pioneer/mbg/pioneerkit/b/a;->g:Ljp/pioneer/mbg/pioneerkit/b/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b([B)V
    .locals 2

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/pioneer/mbg/pioneerkit/c;

    invoke-interface {v0, p1}, Ljp/pioneer/mbg/pioneerkit/c;->a([B)V

    goto :goto_0
.end method

.method static synthetic c(Ljp/pioneer/mbg/pioneerkit/b/a;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->A:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static declared-synchronized c()Ljp/pioneer/mbg/pioneerkit/b/a;
    .locals 2

    const-class v0, Ljp/pioneer/mbg/pioneerkit/b/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ljp/pioneer/mbg/pioneerkit/b/a;->g:Ljp/pioneer/mbg/pioneerkit/b/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic d(Ljp/pioneer/mbg/pioneerkit/b/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->t:Ljava/lang/String;

    return-object v0
.end method

.method private d(I)V
    .locals 2

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->p:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/pioneer/mbg/pioneerkit/IExtRemoteCtrlListener;

    invoke-interface {v0, p1}, Ljp/pioneer/mbg/pioneerkit/IExtRemoteCtrlListener;->onReceiveRemoteCtrl(I)V

    goto :goto_0
.end method

.method static synthetic e(Ljp/pioneer/mbg/pioneerkit/b/a;)V
    .locals 0

    invoke-direct {p0}, Ljp/pioneer/mbg/pioneerkit/b/a;->l()V

    return-void
.end method

.method static synthetic f(Ljp/pioneer/mbg/pioneerkit/b/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->v:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Ljp/pioneer/mbg/pioneerkit/b/a;)V
    .locals 0

    invoke-direct {p0}, Ljp/pioneer/mbg/pioneerkit/b/a;->k()V

    return-void
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/pioneer/mbg/pioneerkit/IExtRequiredListener;

    invoke-interface {v0}, Ljp/pioneer/mbg/pioneerkit/IExtRequiredListener;->onStopAdvancedAppMode()V

    goto :goto_0
.end method

.method private l()V
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/pioneer/mbg/pioneerkit/IExtRequiredListener;

    invoke-interface {v0}, Ljp/pioneer/mbg/pioneerkit/IExtRequiredListener;->onRequireCertification()Ljp/pioneer/mbg/pioneerkit/ExtCertifiedInfo;

    move-result-object v1

    :try_start_0
    const-string v4, "handleRequireCertification "

    invoke-static {v4}, Ljp/pioneer/mbg/pioneerkit/a/a;->a(Ljava/lang/String;)V

    iget-object v4, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->a:Ljp/pioneer/mbg/pioneerkit/a/a/j;

    if-eqz v4, :cond_4

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "handleRequireCertification "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->t:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "none"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljp/pioneer/mbg/pioneerkit/a/a;->a(Ljava/lang/String;)V

    iget-object v1, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->a:Ljp/pioneer/mbg/pioneerkit/a/a/j;

    iget-object v4, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->t:Ljava/lang/String;

    const-string v5, ""

    const-string v6, ""

    invoke-interface {v1, v4, v5, v6}, Ljp/pioneer/mbg/pioneerkit/a/a/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    :goto_1
    invoke-interface {v0, v1}, Ljp/pioneer/mbg/pioneerkit/IExtRequiredListener;->onCertifiedResult(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "handleRequireCertification "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljp/pioneer/mbg/pioneerkit/ExtCertifiedInfo;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljp/pioneer/mbg/pioneerkit/ExtCertifiedInfo;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljp/pioneer/mbg/pioneerkit/ExtCertifiedInfo;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljp/pioneer/mbg/pioneerkit/a/a;->a(Ljava/lang/String;)V

    iget-object v4, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->t:Ljava/lang/String;

    invoke-virtual {v1}, Ljp/pioneer/mbg/pioneerkit/ExtCertifiedInfo;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->a:Ljp/pioneer/mbg/pioneerkit/a/a/j;

    invoke-virtual {v1}, Ljp/pioneer/mbg/pioneerkit/ExtCertifiedInfo;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljp/pioneer/mbg/pioneerkit/ExtCertifiedInfo;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Ljp/pioneer/mbg/pioneerkit/ExtCertifiedInfo;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v5, v6, v1}, Ljp/pioneer/mbg/pioneerkit/a/a/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_1

    :cond_3
    iget-object v4, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->a:Ljp/pioneer/mbg/pioneerkit/a/a/j;

    iget-object v5, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->t:Ljava/lang/String;

    invoke-virtual {v1}, Ljp/pioneer/mbg/pioneerkit/ExtCertifiedInfo;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Ljp/pioneer/mbg/pioneerkit/ExtCertifiedInfo;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v5, v6, v1}, Ljp/pioneer/mbg/pioneerkit/a/a/j;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move v1, v2

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 5

    const/4 v1, 0x1

    const-string v0, "jp.pioneer.mbg.appradio.AppRadioLauncher"

    invoke-virtual {p0, v0}, Ljp/pioneer/mbg/pioneerkit/b/a;->a(Ljava/lang/String;)Z

    move-result v2

    const/4 v0, 0x0

    iget-object v3, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->v:Landroid/content/Context;

    if-eqz v3, :cond_0

    iget-object v3, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->v:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "jp.pioneer.mbg.appradio.AppRadioLauncher"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    :cond_0
    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->a:Ljp/pioneer/mbg/pioneerkit/a/a/j;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->a:Ljp/pioneer/mbg/pioneerkit/a/a/j;

    invoke-interface {v0}, Ljp/pioneer/mbg/pioneerkit/a/a/j;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->v:Landroid/content/Context;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v2, Ljp/pioneer/mbg/pioneerkit/b/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->v:Landroid/content/Context;

    iget-object v3, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->i:Ljp/pioneer/mbg/pioneerkit/b/t;

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->v:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->v:Landroid/content/Context;

    invoke-virtual {p0, v0}, Ljp/pioneer/mbg/pioneerkit/b/a;->e(Landroid/content/Context;)Z

    goto :goto_0
.end method

.method protected a(B[B)V
    .locals 2

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->r:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/pioneer/mbg/pioneerkit/IExtMediaInfoReqListener;

    invoke-interface {v0, p1, p2}, Ljp/pioneer/mbg/pioneerkit/IExtMediaInfoReqListener;->onReceiveTrackInfoRequest(I[B)V

    goto :goto_0
.end method

.method protected a(I)V
    .locals 2

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :goto_1
    :pswitch_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/pioneer/mbg/pioneerkit/e;

    invoke-interface {v0}, Ljp/pioneer/mbg/pioneerkit/e;->e()V

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/pioneer/mbg/pioneerkit/e;

    invoke-interface {v0}, Ljp/pioneer/mbg/pioneerkit/e;->a()V

    :pswitch_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/pioneer/mbg/pioneerkit/e;

    invoke-interface {v0}, Ljp/pioneer/mbg/pioneerkit/e;->d()V

    :pswitch_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/pioneer/mbg/pioneerkit/e;

    invoke-interface {v0}, Ljp/pioneer/mbg/pioneerkit/e;->c()V

    :pswitch_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/pioneer/mbg/pioneerkit/e;

    invoke-interface {v0}, Ljp/pioneer/mbg/pioneerkit/e;->b()V

    :pswitch_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xff00
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public a(JZ)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->a:Ljp/pioneer/mbg/pioneerkit/a/a/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->a:Ljp/pioneer/mbg/pioneerkit/a/a/j;

    invoke-interface {v0, p1, p2, p3}, Ljp/pioneer/mbg/pioneerkit/a/a/j;->a(JZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    sget-boolean v0, Ljp/pioneer/mbg/pioneerkit/b/a;->D:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->B:Landroid/content/IntentFilter;

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->B:Landroid/content/IntentFilter;

    const-string v1, "jp.pioneer.mbg.appradio.AppRadioLauncher.BindFilter"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->B:Landroid/content/IntentFilter;

    const-string v1, "android.intent.category.BindFilter"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    new-instance v0, Ljp/pioneer/mbg/pioneerkit/b/c;

    invoke-direct {v0, p0}, Ljp/pioneer/mbg/pioneerkit/b/c;-><init>(Ljp/pioneer/mbg/pioneerkit/b/a;)V

    iput-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->C:Landroid/content/BroadcastReceiver;

    if-eqz p1, :cond_0

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->C:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->B:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    sput-boolean v0, Ljp/pioneer/mbg/pioneerkit/b/a;->D:Z

    goto :goto_0
.end method

.method protected a(Ljp/pioneer/mbg/pioneerkit/a/a/c;)V
    .locals 5

    const/16 v4, 0x46

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v1, Ljp/pioneer/mbg/pioneerkit/ExtLocation;

    invoke-direct {v1}, Ljp/pioneer/mbg/pioneerkit/ExtLocation;-><init>()V

    invoke-virtual {p1}, Ljp/pioneer/mbg/pioneerkit/a/a/c;->e()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljp/pioneer/mbg/pioneerkit/ExtLocation;->c(D)V

    invoke-virtual {p1}, Ljp/pioneer/mbg/pioneerkit/a/a/c;->g()F

    move-result v0

    invoke-virtual {v1, v0}, Ljp/pioneer/mbg/pioneerkit/ExtLocation;->b(F)V

    invoke-virtual {p1}, Ljp/pioneer/mbg/pioneerkit/a/a/c;->c()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljp/pioneer/mbg/pioneerkit/ExtLocation;->a(D)V

    invoke-virtual {p1}, Ljp/pioneer/mbg/pioneerkit/a/a/c;->d()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljp/pioneer/mbg/pioneerkit/ExtLocation;->b(D)V

    invoke-virtual {p1}, Ljp/pioneer/mbg/pioneerkit/a/a/c;->f()F

    move-result v0

    invoke-virtual {v1, v0}, Ljp/pioneer/mbg/pioneerkit/ExtLocation;->a(F)V

    invoke-virtual {p1}, Ljp/pioneer/mbg/pioneerkit/a/a/c;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljp/pioneer/mbg/pioneerkit/ExtLocation;->a(J)V

    invoke-virtual {p1}, Ljp/pioneer/mbg/pioneerkit/a/a/c;->b()B

    move-result v0

    if-ltz v0, :cond_2

    if-ge v0, v4, :cond_2

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljp/pioneer/mbg/pioneerkit/ExtLocation;->a(I)V

    :goto_0
    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/pioneer/mbg/pioneerkit/IExtLocationListener;

    invoke-interface {v0, v1}, Ljp/pioneer/mbg/pioneerkit/IExtLocationListener;->onReceiveLocationInfo(Ljp/pioneer/mbg/pioneerkit/ExtLocation;)V

    goto :goto_1

    :cond_2
    if-lt v0, v4, :cond_3

    const/16 v2, 0xfe

    if-gt v0, v2, :cond_3

    const/16 v0, 0x64

    invoke-virtual {v1, v0}, Ljp/pioneer/mbg/pioneerkit/ExtLocation;->a(I)V

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Ljp/pioneer/mbg/pioneerkit/ExtLocation;->a(I)V

    goto :goto_0
.end method

.method protected a(Z)V
    .locals 2

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/pioneer/mbg/pioneerkit/IExtRequiredListener;

    invoke-interface {v0, p1}, Ljp/pioneer/mbg/pioneerkit/IExtRequiredListener;->onReceiveParkingInfo(Z)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->v:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->v:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public a(Ljp/pioneer/mbg/pioneerkit/IExtAppFocusListener;)Z
    .locals 3

    if-eqz p1, :cond_2

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->a:Ljp/pioneer/mbg/pioneerkit/a/a/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->a:Ljp/pioneer/mbg/pioneerkit/a/a/j;

    iget-object v1, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->b:Ljp/pioneer/mbg/pioneerkit/b/d;

    iget-object v2, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->t:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljp/pioneer/mbg/pioneerkit/a/a/j;->d(Ljp/pioneer/mbg/pioneerkit/a/a/g;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Ljp/pioneer/mbg/pioneerkit/IExtLocationListener;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->e:Ljp/pioneer/mbg/pioneerkit/ExtDeviceSpecInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->e:Ljp/pioneer/mbg/pioneerkit/ExtDeviceSpecInfo;

    invoke-virtual {v2}, Ljp/pioneer/mbg/pioneerkit/ExtDeviceSpecInfo;->getLocationDevice()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-eqz p1, :cond_4

    iget-object v1, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :try_start_0
    iget-object v1, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->a:Ljp/pioneer/mbg/pioneerkit/a/a/j;

    if-eqz v1, :cond_3

    iget-object v1, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->a:Ljp/pioneer/mbg/pioneerkit/a/a/j;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljp/pioneer/mbg/pioneerkit/a/a/j;->e(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    iget-object v1, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public a(Ljp/pioneer/mbg/pioneerkit/IExtRemoteCtrlListener;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->e:Ljp/pioneer/mbg/pioneerkit/ExtDeviceSpecInfo;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->a:Ljp/pioneer/mbg/pioneerkit/a/a/j;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->a:Ljp/pioneer/mbg/pioneerkit/a/a/j;

    iget-object v1, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->b:Ljp/pioneer/mbg/pioneerkit/b/d;

    iget-object v2, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->t:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljp/pioneer/mbg/pioneerkit/a/a/j;->c(Ljp/pioneer/mbg/pioneerkit/a/a/g;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public a(Ljp/pioneer/mbg/pioneerkit/IExtRequiredListener;)Z
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a([B)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->a:Ljp/pioneer/mbg/pioneerkit/a/a/j;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->a:Ljp/pioneer/mbg/pioneerkit/a/a/j;

    invoke-interface {v1, p1}, Ljp/pioneer/mbg/pioneerkit/a/a/j;->b([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected b(I)V
    .locals 2

    iput p1, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->w:I

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->o:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/pioneer/mbg/pioneerkit/a;

    invoke-interface {v0, p1}, Ljp/pioneer/mbg/pioneerkit/a;->a(I)V

    goto :goto_0
.end method

.method public b(JZ)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->a:Ljp/pioneer/mbg/pioneerkit/a/a/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->a:Ljp/pioneer/mbg/pioneerkit/a/a/j;

    invoke-interface {v0, p1, p2, p3}, Ljp/pioneer/mbg/pioneerkit/a/a/j;->b(JZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b(Landroid/content/Context;)V
    .locals 1

    sget-boolean v0, Ljp/pioneer/mbg/pioneerkit/b/a;->D:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->C:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    sput-boolean v0, Ljp/pioneer/mbg/pioneerkit/b/a;->D:Z

    :cond_0
    return-void
.end method

.method protected b(Z)V
    .locals 2

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->n:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/pioneer/mbg/pioneerkit/b;

    invoke-interface {v0, p1}, Ljp/pioneer/mbg/pioneerkit/b;->a(Z)V

    goto :goto_0
.end method

.method public b(B[B)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->a:Ljp/pioneer/mbg/pioneerkit/a/a/j;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->a:Ljp/pioneer/mbg/pioneerkit/a/a/j;

    invoke-interface {v1, p1, p2}, Ljp/pioneer/mbg/pioneerkit/a/a/j;->a(B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->a:Ljp/pioneer/mbg/pioneerkit/a/a/j;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->a:Ljp/pioneer/mbg/pioneerkit/a/a/j;

    invoke-interface {v1, p1}, Ljp/pioneer/mbg/pioneerkit/a/a/j;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public b(Ljp/pioneer/mbg/pioneerkit/IExtAppFocusListener;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->s:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->a:Ljp/pioneer/mbg/pioneerkit/a/a/j;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->a:Ljp/pioneer/mbg/pioneerkit/a/a/j;

    iget-object v1, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->t:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljp/pioneer/mbg/pioneerkit/a/a/j;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public b(Ljp/pioneer/mbg/pioneerkit/IExtLocationListener;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->a:Ljp/pioneer/mbg/pioneerkit/a/a/j;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->a:Ljp/pioneer/mbg/pioneerkit/a/a/j;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljp/pioneer/mbg/pioneerkit/a/a/j;->e(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public b(Ljp/pioneer/mbg/pioneerkit/IExtRemoteCtrlListener;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->p:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->a:Ljp/pioneer/mbg/pioneerkit/a/a/j;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->a:Ljp/pioneer/mbg/pioneerkit/a/a/j;

    iget-object v1, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->t:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljp/pioneer/mbg/pioneerkit/a/a/j;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public b(Ljp/pioneer/mbg/pioneerkit/IExtRequiredListener;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(I)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->a:Ljp/pioneer/mbg/pioneerkit/a/a/j;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->a:Ljp/pioneer/mbg/pioneerkit/a/a/j;

    iget-object v2, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->t:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Ljp/pioneer/mbg/pioneerkit/a/a/j;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public c(Landroid/content/Context;)Z
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->v:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.extscreen.service"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Ljp/pioneer/mbg/pioneerkit/b/a;->e(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method public d(Landroid/content/Context;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljp/pioneer/mbg/pioneerkit/b/a;->f(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->a:Ljp/pioneer/mbg/pioneerkit/a/a/j;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->a:Ljp/pioneer/mbg/pioneerkit/a/a/j;

    iget-object v2, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->t:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljp/pioneer/mbg/pioneerkit/a/a/j;->b(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public e()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->a:Ljp/pioneer/mbg/pioneerkit/a/a/j;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->a:Ljp/pioneer/mbg/pioneerkit/a/a/j;

    invoke-interface {v1}, Ljp/pioneer/mbg/pioneerkit/a/a/j;->g()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected e(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->h:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    instance-of v1, p1, Landroid/app/Service;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->t:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->u:Ljava/lang/String;

    :cond_1
    :goto_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-object v2, Ljp/pioneer/mbg/pioneerkit/b/a;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->i:Ljp/pioneer/mbg/pioneerkit/b/t;

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    instance-of v1, p1, Landroid/app/Activity;

    if-nez v1, :cond_3

    instance-of v1, p1, Landroid/app/Application;

    if-eqz v1, :cond_1

    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->t:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->u:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v1, "bindSppService "

    invoke-static {v1}, Ljp/pioneer/mbg/pioneerkit/a/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected f()V
    .locals 2

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->r:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/pioneer/mbg/pioneerkit/IExtMediaInfoReqListener;

    invoke-interface {v0}, Ljp/pioneer/mbg/pioneerkit/IExtMediaInfoReqListener;->onReceiveAppNameRequest()V

    goto :goto_0
.end method

.method protected f(Landroid/content/Context;)V
    .locals 3

    iget-boolean v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->h:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->a:Ljp/pioneer/mbg/pioneerkit/a/a/j;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->a:Ljp/pioneer/mbg/pioneerkit/a/a/j;

    iget-object v1, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->b:Ljp/pioneer/mbg/pioneerkit/b/d;

    iget-object v2, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->t:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljp/pioneer/mbg/pioneerkit/a/a/j;->b(Ljp/pioneer/mbg/pioneerkit/a/a/g;Ljava/lang/String;)V

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->a:Ljp/pioneer/mbg/pioneerkit/a/a/j;

    iget-object v1, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->c:Landroid/os/Messenger;

    invoke-virtual {v1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljp/pioneer/mbg/pioneerkit/a/a/j;->a(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_1
    const-string v0, "unBindSppService "

    invoke-static {v0}, Ljp/pioneer/mbg/pioneerkit/a/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->h:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->i:Ljp/pioneer/mbg/pioneerkit/b/t;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-virtual {p0, p1}, Ljp/pioneer/mbg/pioneerkit/b/a;->b(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method protected g()V
    .locals 2

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->r:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/pioneer/mbg/pioneerkit/IExtMediaInfoReqListener;

    invoke-interface {v0}, Ljp/pioneer/mbg/pioneerkit/IExtMediaInfoReqListener;->onReceiveTrackInfoSettingRequest()V

    goto :goto_0
.end method

.method protected h()V
    .locals 2

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->s:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/pioneer/mbg/pioneerkit/IExtAppFocusListener;

    invoke-interface {v0}, Ljp/pioneer/mbg/pioneerkit/IExtAppFocusListener;->onStartFocus()V

    goto :goto_0
.end method

.method protected i()V
    .locals 2

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->s:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/pioneer/mbg/pioneerkit/IExtAppFocusListener;

    invoke-interface {v0}, Ljp/pioneer/mbg/pioneerkit/IExtAppFocusListener;->onStopFocus()V

    goto :goto_0
.end method

.method public j()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->a:Ljp/pioneer/mbg/pioneerkit/a/a/j;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->a:Ljp/pioneer/mbg/pioneerkit/a/a/j;

    iget-object v2, p0, Ljp/pioneer/mbg/pioneerkit/b/a;->t:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljp/pioneer/mbg/pioneerkit/a/a/j;->d(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
