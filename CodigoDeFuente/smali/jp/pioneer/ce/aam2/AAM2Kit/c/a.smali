.class public Ljp/pioneer/ce/aam2/AAM2Kit/c/a;
.super Ljava/lang/Object;


# static fields
.field private static F:Z

.field private static G:Z

.field private static f:Ljava/lang/String;

.field private static g:Ljp/pioneer/ce/aam2/AAM2Kit/c/a;


# instance fields
.field private A:Landroid/os/Handler;

.field private B:Z

.field private C:Ljava/lang/Runnable;

.field private D:Landroid/content/IntentFilter;

.field private E:Landroid/content/BroadcastReceiver;

.field protected a:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;

.field protected b:Ljp/pioneer/ce/aam2/AAM2Kit/c/d;

.field protected c:Landroid/os/Messenger;

.field final d:Ljava/lang/String;

.field e:Ljp/pioneer/ce/aam2/AAM2Kit/AAM2MainUnitSpecInfo;

.field private h:Z

.field private i:Z

.field private j:Ljp/pioneer/ce/aam2/AAM2Kit/c/y;

.field private k:Ljava/util/ArrayList;

.field private l:Ljava/util/ArrayList;

.field private m:Ljava/util/ArrayList;

.field private n:Ljava/util/ArrayList;

.field private o:Ljava/util/ArrayList;

.field private p:Ljava/util/ArrayList;

.field private q:Ljava/util/ArrayList;

.field private r:Ljava/util/ArrayList;

.field private s:Ljava/util/ArrayList;

.field private t:Ljava/util/ArrayList;

.field private u:Ljava/util/ArrayList;

.field private v:Ljava/util/ArrayList;

.field private w:Ljava/lang/String;

.field private x:Landroid/content/Context;

.field private y:I

.field private z:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "jp.pioneer.ce.aam2service"

    sput-object v0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->f:Ljava/lang/String;

    sput-boolean v1, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->F:Z

    sput-boolean v1, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->G:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->i:Z

    iput-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->j:Ljp/pioneer/ce/aam2/AAM2Kit/c/y;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->k:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->l:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->m:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->n:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->o:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->p:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->q:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->r:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->s:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->t:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->u:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->v:Ljava/util/ArrayList;

    iput-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->w:Ljava/lang/String;

    const-string v0, "PionnerKit"

    iput-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->d:Ljava/lang/String;

    iput-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->x:Landroid/content/Context;

    iput v2, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->y:I

    iput-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->e:Ljp/pioneer/ce/aam2/AAM2Kit/AAM2MainUnitSpecInfo;

    iput-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->z:Landroid/os/HandlerThread;

    iput-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->A:Landroid/os/Handler;

    iput-boolean v2, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->B:Z

    new-instance v0, Ljp/pioneer/ce/aam2/AAM2Kit/c/b;

    invoke-direct {v0, p0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/b;-><init>(Ljp/pioneer/ce/aam2/AAM2Kit/c/a;)V

    iput-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->C:Ljava/lang/Runnable;

    const-string v0, "ExtScreenServiceManager created"

    invoke-static {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a;->a(Ljava/lang/String;)V

    new-instance v0, Ljp/pioneer/ce/aam2/AAM2Kit/c/y;

    invoke-direct {v0, p0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/y;-><init>(Ljp/pioneer/ce/aam2/AAM2Kit/c/a;)V

    iput-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->j:Ljp/pioneer/ce/aam2/AAM2Kit/c/y;

    new-instance v0, Ljp/pioneer/ce/aam2/AAM2Kit/c/d;

    invoke-direct {v0, p0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/d;-><init>(Ljp/pioneer/ce/aam2/AAM2Kit/c/a;)V

    iput-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->b:Ljp/pioneer/ce/aam2/AAM2Kit/c/d;

    new-instance v0, Landroid/os/Messenger;

    invoke-static {}, Ljp/pioneer/ce/aam2/AAM2Kit/b/b/b;->a()Ljp/pioneer/ce/aam2/AAM2Kit/b/b/b;

    move-result-object v1

    invoke-virtual {v1}, Ljp/pioneer/ce/aam2/AAM2Kit/b/b/b;->b()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->c:Landroid/os/Messenger;

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->r:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/pioneer/ce/aam2/AAM2Kit/e;

    invoke-interface {v0, p1}, Ljp/pioneer/ce/aam2/AAM2Kit/e;->a(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method private a(Ljp/pioneer/ce/aam2/AAM2Kit/AAM2MainUnitSpecInfo;)V
    .locals 2

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2RequiredListener;

    invoke-interface {v0, p1}, Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2RequiredListener;->onAAM2StartAdvancedAppMode(Ljp/pioneer/ce/aam2/AAM2Kit/AAM2MainUnitSpecInfo;)V

    goto :goto_0
.end method

.method static synthetic a(Ljp/pioneer/ce/aam2/AAM2Kit/c/a;I)V
    .locals 0

    invoke-direct {p0, p1}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->d(I)V

    return-void
.end method

.method static synthetic a(Ljp/pioneer/ce/aam2/AAM2Kit/c/a;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic a(Ljp/pioneer/ce/aam2/AAM2Kit/c/a;Ljp/pioneer/ce/aam2/AAM2Kit/AAM2MainUnitSpecInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a(Ljp/pioneer/ce/aam2/AAM2Kit/AAM2MainUnitSpecInfo;)V

    return-void
.end method

.method static synthetic a(Ljp/pioneer/ce/aam2/AAM2Kit/c/a;Z)V
    .locals 0

    iput-boolean p1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->h:Z

    return-void
.end method

.method static synthetic a(Ljp/pioneer/ce/aam2/AAM2Kit/c/a;[B)V
    .locals 0

    invoke-direct {p0, p1}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->c([B)V

    return-void
.end method

.method public static a(Z)V
    .locals 0

    sput-boolean p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->G:Z

    return-void
.end method

.method static synthetic a(Ljp/pioneer/ce/aam2/AAM2Kit/c/a;)Z
    .locals 1

    iget-boolean v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->B:Z

    return v0
.end method

.method static synthetic b(Ljp/pioneer/ce/aam2/AAM2Kit/c/a;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->A:Landroid/os/Handler;

    return-object v0
.end method

.method public static declared-synchronized b()Ljp/pioneer/ce/aam2/AAM2Kit/c/a;
    .locals 3

    const-class v1, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->g:Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    if-nez v0, :cond_0

    new-instance v0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    invoke-direct {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;-><init>()V

    sput-object v0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->g:Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ExtScreenServiceManager created "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->g:Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a;->a(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->g:Ljp/pioneer/ce/aam2/AAM2Kit/c/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Ljp/pioneer/ce/aam2/AAM2Kit/c/a;[B)V
    .locals 0

    invoke-direct {p0, p1}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->d([B)V

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.justsystems.atokmobile.service"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.justsystems.atokmobile.tv.service"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.justsystems.atokmobile.pv.service"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.justsystems.atokmobile.mv.service"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.justsystems.atokmobile.mtv.service"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "jp.pioneer.mbg.appradio.carkeyboard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "jp.pioneer.linkwithkeyboard.pb.atok"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.pioneer.keyboard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Ljp/pioneer/ce/aam2/AAM2Kit/c/a;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->C:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static declared-synchronized c()Ljp/pioneer/ce/aam2/AAM2Kit/c/a;
    .locals 2

    const-class v0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->g:Ljp/pioneer/ce/aam2/AAM2Kit/c/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private c([B)V
    .locals 2

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->n:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/pioneer/ce/aam2/AAM2Kit/c;

    invoke-interface {v0, p1}, Ljp/pioneer/ce/aam2/AAM2Kit/c;->a([B)V

    goto :goto_0
.end method

.method static synthetic d(Ljp/pioneer/ce/aam2/AAM2Kit/c/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->w:Ljava/lang/String;

    return-object v0
.end method

.method private d(I)V
    .locals 2

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->q:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2RemoteCtrlListener;

    invoke-interface {v0, p1}, Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2RemoteCtrlListener;->onAAM2ReceiveRemoteCtrl(I)V

    goto :goto_0
.end method

.method private d([B)V
    .locals 2

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->v:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2ExtendedDataListener;

    invoke-interface {v0, p1}, Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2ExtendedDataListener;->onAAM2ReceiveExtendedData([B)V

    goto :goto_0
.end method

.method static synthetic e(Ljp/pioneer/ce/aam2/AAM2Kit/c/a;)V
    .locals 0

    invoke-direct {p0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->n()V

    return-void
.end method

.method static synthetic f(Ljp/pioneer/ce/aam2/AAM2Kit/c/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->x:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Ljp/pioneer/ce/aam2/AAM2Kit/c/a;)V
    .locals 0

    invoke-direct {p0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->m()V

    return-void
.end method

.method private m()V
    .locals 2

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2RequiredListener;

    invoke-interface {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2RequiredListener;->onAAM2StopAdvancedAppMode()V

    goto :goto_0
.end method

.method private n()V
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2RequiredListener;

    invoke-interface {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2RequiredListener;->onAAM2RequireCertification()Ljp/pioneer/ce/aam2/AAM2Kit/AAM2CertifiedInfo;

    move-result-object v1

    :try_start_0
    const-string v4, "handleRequireCertification "

    invoke-static {v4}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a;->a(Ljava/lang/String;)V

    iget-object v4, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;

    if-eqz v4, :cond_4

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "handleRequireCertification "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->w:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "none"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a;->a(Ljava/lang/String;)V

    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;

    iget-object v4, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->w:Ljava/lang/String;

    const-string v5, ""

    const-string v6, ""

    invoke-interface {v1, v4, v5, v6}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    :goto_1
    invoke-interface {v0, v1}, Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2RequiredListener;->onAAM2CertifiedResult(Z)V
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

    invoke-virtual {v1}, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2CertifiedInfo;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2CertifiedInfo;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2CertifiedInfo;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a;->a(Ljava/lang/String;)V

    iget-object v4, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->w:Ljava/lang/String;

    invoke-virtual {v1}, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2CertifiedInfo;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;

    invoke-virtual {v1}, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2CertifiedInfo;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2CertifiedInfo;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2CertifiedInfo;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v5, v6, v1}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_1

    :cond_3
    iget-object v4, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;

    iget-object v5, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->w:Ljava/lang/String;

    invoke-virtual {v1}, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2CertifiedInfo;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2CertifiedInfo;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v5, v6, v1}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
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
    .locals 6

    const/4 v1, 0x1

    const-string v0, "jp.pioneer.mbg.appradio.AppRadioLauncher"

    invoke-virtual {p0, v0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a(Ljava/lang/String;)Z

    move-result v2

    const-string v0, "jp.pioneer.mbgdop.appradio.AppRadioLauncher"

    invoke-virtual {p0, v0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a(Ljava/lang/String;)Z

    move-result v3

    const/4 v0, 0x0

    iget-object v4, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->x:Landroid/content/Context;

    if-eqz v4, :cond_1

    iget-object v4, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->x:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "jp.pioneer.mbg.appradio.AppRadioLauncher"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->x:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "jp.pioneer.mbgdop.appradio.AppRadioLauncher"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    if-nez v2, :cond_2

    if-eqz v3, :cond_4

    :cond_2
    if-nez v0, :cond_4

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;

    if-eqz v0, :cond_5

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;

    invoke-interface {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->x:Landroid/content/Context;

    if-eqz v0, :cond_3

    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "jp.pioneer.mbg.appradio.AppRadioLauncher"

    const-string v3, "jp.pioneer.mbg.appradio.AAM2Service.app.ExtScreenService"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget-object v0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->f:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->x:Landroid/content/Context;

    iget-object v3, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->j:Ljp/pioneer/ce/aam2/AAM2Kit/c/y;

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_3
    :goto_0
    invoke-virtual {p0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->g()V

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->x:Landroid/content/Context;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->x:Landroid/content/Context;

    invoke-virtual {p0, v0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->e(Landroid/content/Context;)Z

    goto :goto_0
.end method

.method protected a(BJ)V
    .locals 2

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->s:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2MediaInfoReqListener;

    invoke-interface {v0, p1, p2, p3}, Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2MediaInfoReqListener;->onAAM2ReceiveTrackInfoRequest(IJ)V

    goto :goto_0
.end method

.method protected a(I)V
    .locals 2

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->k:Ljava/util/ArrayList;

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

    check-cast v0, Ljp/pioneer/ce/aam2/AAM2Kit/d;

    invoke-interface {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/d;->e()V

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/pioneer/ce/aam2/AAM2Kit/d;

    invoke-interface {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/d;->a()V

    :pswitch_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/pioneer/ce/aam2/AAM2Kit/d;

    invoke-interface {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/d;->d()V

    :pswitch_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/pioneer/ce/aam2/AAM2Kit/d;

    invoke-interface {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/d;->c()V

    :pswitch_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/pioneer/ce/aam2/AAM2Kit/d;

    invoke-interface {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/d;->b()V

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

.method protected a(II)V
    .locals 2

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->u:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/pioneer/ce/aam2/AAM2Kit/f;

    invoke-interface {v0, p1, p2}, Ljp/pioneer/ce/aam2/AAM2Kit/f;->a(II)V

    goto :goto_0
.end method

.method public a(JZ)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;

    invoke-interface {v0, p1, p2, p3}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;->a(JZ)V
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

    sget-boolean v0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->F:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->D:Landroid/content/IntentFilter;

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->D:Landroid/content/IntentFilter;

    const-string v1, "jp.pioneer.mbg.appradio.aam2Serivce.BindFilter"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->D:Landroid/content/IntentFilter;

    const-string v1, "android.intent.category.BindFilter"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    new-instance v0, Ljp/pioneer/ce/aam2/AAM2Kit/c/c;

    invoke-direct {v0, p0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/c;-><init>(Ljp/pioneer/ce/aam2/AAM2Kit/c/a;)V

    iput-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->E:Landroid/content/BroadcastReceiver;

    if-eqz p1, :cond_0

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->E:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->D:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    sput-boolean v0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->F:Z

    goto :goto_0
.end method

.method protected a(Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;)V
    .locals 4

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v1, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2LocationInfo;

    invoke-direct {v1}, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2LocationInfo;-><init>()V

    invoke-virtual {p1}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;->e()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2LocationInfo;->c(D)V

    invoke-virtual {p1}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;->g()F

    move-result v0

    invoke-virtual {v1, v0}, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2LocationInfo;->b(F)V

    invoke-virtual {p1}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;->c()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2LocationInfo;->a(D)V

    invoke-virtual {p1}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;->d()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2LocationInfo;->b(D)V

    invoke-virtual {p1}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;->f()F

    move-result v0

    invoke-virtual {v1, v0}, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2LocationInfo;->a(F)V

    invoke-virtual {p1}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2LocationInfo;->a(J)V

    invoke-virtual {p1}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;->b()B

    move-result v0

    invoke-virtual {v1, v0}, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2LocationInfo;->a(I)V

    invoke-virtual {p1}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;->h()B

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2LocationInfo;->a(Z)V

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2LocationListener;

    invoke-interface {v0, v1}, Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2LocationListener;->onAAM2ReceiveLocationInfo(Ljp/pioneer/ce/aam2/AAM2Kit/AAM2LocationInfo;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a([B)V
    .locals 1

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;

    invoke-interface {v0, p1}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;->a([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(B[B)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;

    invoke-interface {v1, p1, p2}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;->a(B[B)V
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

.method public a(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->x:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->x:Landroid/content/Context;

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

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->x:Landroid/content/Context;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x0

    iget-object v2, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->x:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p2, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public a(Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2AppFocusListener;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->t:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;

    iget-object v2, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->b:Ljp/pioneer/ce/aam2/AAM2Kit/c/d;

    iget-object v3, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->w:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;->d(Ljp/pioneer/ce/aam2/AAM2Kit/b/a/g;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->t:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2ExtendedDataListener;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-object v2, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->v:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;->j(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v2, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->v:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->v:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return v0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public a(Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2LocationListener;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->e:Ljp/pioneer/ce/aam2/AAM2Kit/AAM2MainUnitSpecInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->e:Ljp/pioneer/ce/aam2/AAM2Kit/AAM2MainUnitSpecInfo;

    invoke-virtual {v2}, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2MainUnitSpecInfo;->getLocationDevice()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_4

    iget-object v2, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :try_start_0
    iget-object v2, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;

    if-eqz v2, :cond_2

    iget-object v2, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;->e(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    iget-object v2, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public a(Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2MediaInfoReqListener;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-object v2, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->s:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->w:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;

    iget-object v3, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->w:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v2, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->s:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->s:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return v0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public a(Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2RemoteCtrlListener;)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->e:Ljp/pioneer/ce/aam2/AAM2Kit/AAM2MainUnitSpecInfo;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_0

    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;

    iget-object v2, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->b:Ljp/pioneer/ce/aam2/AAM2Kit/c/d;

    iget-object v3, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->w:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;->c(Ljp/pioneer/ce/aam2/AAM2Kit/b/a/g;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public a(Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2RequiredListener;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public a(Ljp/pioneer/ce/aam2/AAM2Kit/c;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->n:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;->n(Z)V
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

.method protected b(I)V
    .locals 2

    iput p1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->y:I

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->p:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/pioneer/ce/aam2/AAM2Kit/a;

    invoke-interface {v0, p1}, Ljp/pioneer/ce/aam2/AAM2Kit/a;->a(I)V

    goto :goto_0
.end method

.method public b(JZ)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;

    invoke-interface {v0, p1, p2, p3}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;->b(JZ)V
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

    sget-boolean v0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->F:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->E:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    sput-boolean v0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->F:Z

    :cond_0
    return-void
.end method

.method protected b(Z)V
    .locals 0

    return-void
.end method

.method public b(Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2AppFocusListener;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->t:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->t:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;

    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->w:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;->e(Ljava/lang/String;)V
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

.method public b(Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2ExtendedDataListener;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->v:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->v:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;->j(Z)Z
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

.method public b(Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2LocationListener;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;->e(Z)V
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

.method public b(Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2MediaInfoReqListener;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->s:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->s:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->w:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;

    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->w:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;->a(Ljava/lang/String;Z)V
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

.method public b(Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2RemoteCtrlListener;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;

    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->w:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;->a(Ljava/lang/String;)V
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

.method public b(Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2RequiredListener;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b([B)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;

    invoke-interface {v1, p1}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;->b([B)V
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

.method protected c(Z)V
    .locals 2

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2RequiredListener;

    invoke-interface {v0, p1}, Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2RequiredListener;->onAAM2ReceiveDriveStopping(Z)V

    goto :goto_0
.end method

.method public c(I)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;

    iget-object v2, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->w:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;->a(Ljava/lang/String;I)V
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
    .locals 4

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->x:Landroid/content/Context;

    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "jp.pioneer.mbg.appradio.AppRadioLauncher"

    const-string v3, "jp.pioneer.mbg.appradio.AAM2Service.app.ExtScreenService"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget-object v0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->f:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "PDPrivateService starts successfully"

    invoke-static {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a;->a(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/abaltatech/weblinkserver/WLServerApp;->getApplication()Lcom/abaltatech/weblinkserver/WLServerApp;

    move-result-object v0

    check-cast v0, Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/AAM2ServerApp;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/AAM2ServerApp;->startWLServer()V

    :cond_2
    invoke-virtual {p0, v1}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->e(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method public d(Landroid/content/Context;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->f(Landroid/content/Context;)V

    :cond_0
    invoke-static {}, Lcom/abaltatech/weblinkserver/WLServerApp;->getApplication()Lcom/abaltatech/weblinkserver/WLServerApp;

    move-result-object v0

    check-cast v0, Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/AAM2ServerApp;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/AAM2ServerApp;->stopWLServer()V

    :cond_1
    return-void
.end method

.method protected d(Z)V
    .locals 2

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2RequiredListener;

    invoke-interface {v0, p1}, Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2RequiredListener;->onAAM2ReceiveParkingSwitch(Z)V

    goto :goto_0
.end method

.method public d()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;

    if-eqz v1, :cond_0

    :try_start_0
    iget-boolean v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->i:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;

    iget-object v2, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->w:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;->b(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected e(Z)V
    .locals 2

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->o:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/pioneer/ce/aam2/AAM2Kit/b;

    invoke-interface {v0, p1}, Ljp/pioneer/ce/aam2/AAM2Kit/b;->a(Z)V

    goto :goto_0
.end method

.method public e()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->i:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;

    invoke-interface {v1}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;->p()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected e(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-boolean v2, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->h:Z

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a(Landroid/content/Context;)V

    instance-of v2, p1, Landroid/app/Service;

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->w:Ljava/lang/String;

    :cond_1
    :goto_1
    iget-object v2, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->w:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->w:Ljava/lang/String;

    const-string v3, "pioneer.permission.appradio.AAM2"

    const-string v4, "pioneer_supported_aam2"

    invoke-virtual {p0, v2, v3, v4}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->w:Ljava/lang/String;

    invoke-direct {p0, v2}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_2
    instance-of v2, p1, Landroid/app/Activity;

    if-nez v2, :cond_3

    instance-of v2, p1, Landroid/app/Application;

    if-eqz v2, :cond_1

    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->w:Ljava/lang/String;

    goto :goto_1

    :cond_4
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "jp.pioneer.mbg.appradio.AppRadioLauncher"

    const-string v4, "jp.pioneer.mbg.appradio.AAM2Service.app.ExtScreenService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    sget-object v4, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->j:Ljp/pioneer/ce/aam2/AAM2Kit/c/y;

    invoke-virtual {p1, v3, v2, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    const-string v1, "bindSppService "

    invoke-static {v1}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a;->a(Ljava/lang/String;)V

    iput-boolean v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->i:Z

    goto :goto_0
.end method

.method protected f(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->h:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;

    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->b:Ljp/pioneer/ce/aam2/AAM2Kit/c/d;

    iget-object v2, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->w:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;->b(Ljp/pioneer/ce/aam2/AAM2Kit/b/a/g;Ljava/lang/String;)V

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;

    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->c:Landroid/os/Messenger;

    invoke-virtual {v1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;->a(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    const-string v0, "unBindSppService "

    invoke-static {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->h:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->j:Ljp/pioneer/ce/aam2/AAM2Kit/c/y;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-virtual {p0, p1}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->b(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    iput-boolean v3, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->i:Z

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method protected f(Z)V
    .locals 2

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->u:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/pioneer/ce/aam2/AAM2Kit/f;

    invoke-interface {v0, p1}, Ljp/pioneer/ce/aam2/AAM2Kit/f;->a(Z)V

    goto :goto_0
.end method

.method public f()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->i:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;

    invoke-interface {v1}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;->g()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected g()V
    .locals 1

    invoke-static {}, Lcom/abaltatech/weblinkserver/WLServerApp;->getApplication()Lcom/abaltatech/weblinkserver/WLServerApp;

    move-result-object v0

    check-cast v0, Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/AAM2ServerApp;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/protocoldispacher/AAM2ServerApp;->startWLServer()V

    :cond_0
    sget-boolean v0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->G:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->x:Landroid/content/Context;

    invoke-static {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2Kit;->a(Landroid/content/Context;)Z

    :cond_1
    return-void
.end method

.method public g(Z)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->x:Landroid/content/Context;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->i:Z

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :try_start_0
    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->x:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v3, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->w:Ljava/lang/String;

    const/16 v4, 0x80

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "aam2_sound_category"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "no_sound"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;

    iget-object v2, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->w:Ljava/lang/String;

    invoke-interface {v1, p1, v2}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;->a(ZLjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v1, v2

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected h()V
    .locals 2

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->u:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/pioneer/ce/aam2/AAM2Kit/f;

    invoke-interface {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/f;->a()V

    goto :goto_0
.end method

.method protected i()V
    .locals 2

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->s:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2MediaInfoReqListener;

    invoke-interface {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2MediaInfoReqListener;->onAAM2ReceiveTrackInfoSettingRequest()V

    goto :goto_0
.end method

.method protected j()V
    .locals 2

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->t:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2AppFocusListener;

    invoke-interface {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2AppFocusListener;->onAAM2StartFocus()V

    goto :goto_0
.end method

.method protected k()V
    .locals 2

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->t:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2AppFocusListener;

    invoke-interface {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2AppFocusListener;->onAAM2StopFocus()V

    goto :goto_0
.end method

.method public l()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->w:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;

    iget-object v2, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->w:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;->f(Ljava/lang/String;)Z
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
