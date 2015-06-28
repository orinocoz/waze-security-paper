.class Ljp/pioneer/ce/aam2/AAM2Kit/c/d;
.super Ljp/pioneer/ce/aam2/AAM2Kit/b/a/h;


# instance fields
.field final synthetic a:Ljp/pioneer/ce/aam2/AAM2Kit/c/a;


# direct methods
.method constructor <init>(Ljp/pioneer/ce/aam2/AAM2Kit/c/a;)V
    .locals 0

    iput-object p1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/d;->a:Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    invoke-direct {p0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/h;-><init>()V

    return-void
.end method

.method static synthetic a(Ljp/pioneer/ce/aam2/AAM2Kit/c/d;)Ljp/pioneer/ce/aam2/AAM2Kit/c/a;
    .locals 1

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/d;->a:Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Ljp/pioneer/ce/aam2/AAM2Kit/c/x;

    invoke-direct {v1, p0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/x;-><init>(Ljp/pioneer/ce/aam2/AAM2Kit/c/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(B[B)V
    .locals 4

    invoke-static {p2}, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/a;->a([B)J

    move-result-wide v0

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Ljp/pioneer/ce/aam2/AAM2Kit/c/h;

    invoke-direct {v3, p0, p1, v0, v1}, Ljp/pioneer/ce/aam2/AAM2Kit/c/h;-><init>(Ljp/pioneer/ce/aam2/AAM2Kit/c/d;BJ)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(I)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Ljp/pioneer/ce/aam2/AAM2Kit/c/e;

    invoke-direct {v1, p0, p1}, Ljp/pioneer/ce/aam2/AAM2Kit/c/e;-><init>(Ljp/pioneer/ce/aam2/AAM2Kit/c/d;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(II)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Ljp/pioneer/ce/aam2/AAM2Kit/c/l;

    invoke-direct {v1, p0, p1, p2}, Ljp/pioneer/ce/aam2/AAM2Kit/c/l;-><init>(Ljp/pioneer/ce/aam2/AAM2Kit/c/d;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Landroid/view/KeyEvent;Z)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Ljp/pioneer/ce/aam2/AAM2Kit/c/f;

    invoke-direct {v1, p0, p1}, Ljp/pioneer/ce/aam2/AAM2Kit/c/f;-><init>(Ljp/pioneer/ce/aam2/AAM2Kit/c/d;Landroid/view/MotionEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Landroid/view/MotionEvent;Z)V
    .locals 0

    return-void
.end method

.method public a(Ljp/pioneer/ce/aam2/AAM2Kit/b/a/a;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Ljp/pioneer/ce/aam2/AAM2Kit/c/w;

    invoke-direct {v1, p0, p1}, Ljp/pioneer/ce/aam2/AAM2Kit/c/w;-><init>(Ljp/pioneer/ce/aam2/AAM2Kit/c/d;Ljp/pioneer/ce/aam2/AAM2Kit/b/a/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Ljp/pioneer/ce/aam2/AAM2Kit/c/p;

    invoke-direct {v1, p0, p1}, Ljp/pioneer/ce/aam2/AAM2Kit/c/p;-><init>(Ljp/pioneer/ce/aam2/AAM2Kit/c/d;Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ljp/pioneer/ce/aam2/AAM2Kit/b/a/e;)V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Ljp/pioneer/ce/aam2/AAM2Kit/c/r;

    invoke-direct {v1, p0, p1}, Ljp/pioneer/ce/aam2/AAM2Kit/c/r;-><init>(Ljp/pioneer/ce/aam2/AAM2Kit/c/d;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a([B)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Ljp/pioneer/ce/aam2/AAM2Kit/c/v;

    invoke-direct {v1, p0, p1}, Ljp/pioneer/ce/aam2/AAM2Kit/c/v;-><init>(Ljp/pioneer/ce/aam2/AAM2Kit/c/d;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Ljp/pioneer/ce/aam2/AAM2Kit/c/s;

    invoke-direct {v1, p0, p1}, Ljp/pioneer/ce/aam2/AAM2Kit/c/s;-><init>(Ljp/pioneer/ce/aam2/AAM2Kit/c/d;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Landroid/view/MotionEvent;Z)V
    .locals 0

    return-void
.end method

.method public b(Z)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Ljp/pioneer/ce/aam2/AAM2Kit/c/t;

    invoke-direct {v1, p0, p1}, Ljp/pioneer/ce/aam2/AAM2Kit/c/t;-><init>(Ljp/pioneer/ce/aam2/AAM2Kit/c/d;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b([B)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Ljp/pioneer/ce/aam2/AAM2Kit/c/g;

    invoke-direct {v1, p0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/g;-><init>(Ljp/pioneer/ce/aam2/AAM2Kit/c/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Ljp/pioneer/ce/aam2/AAM2Kit/c/i;

    invoke-direct {v1, p0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/i;-><init>(Ljp/pioneer/ce/aam2/AAM2Kit/c/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c(I)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Ljp/pioneer/ce/aam2/AAM2Kit/c/u;

    invoke-direct {v1, p0, p1}, Ljp/pioneer/ce/aam2/AAM2Kit/c/u;-><init>(Ljp/pioneer/ce/aam2/AAM2Kit/c/d;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c(Z)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Ljp/pioneer/ce/aam2/AAM2Kit/c/k;

    invoke-direct {v1, p0, p1}, Ljp/pioneer/ce/aam2/AAM2Kit/c/k;-><init>(Ljp/pioneer/ce/aam2/AAM2Kit/c/d;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c([B)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Ljp/pioneer/ce/aam2/AAM2Kit/c/q;

    invoke-direct {v1, p0, p1}, Ljp/pioneer/ce/aam2/AAM2Kit/c/q;-><init>(Ljp/pioneer/ce/aam2/AAM2Kit/c/d;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public d()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Ljp/pioneer/ce/aam2/AAM2Kit/c/j;

    invoke-direct {v1, p0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/j;-><init>(Ljp/pioneer/ce/aam2/AAM2Kit/c/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public d(Z)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Ljp/pioneer/ce/aam2/AAM2Kit/c/n;

    invoke-direct {v1, p0, p1}, Ljp/pioneer/ce/aam2/AAM2Kit/c/n;-><init>(Ljp/pioneer/ce/aam2/AAM2Kit/c/d;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public e()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Ljp/pioneer/ce/aam2/AAM2Kit/c/m;

    invoke-direct {v1, p0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/m;-><init>(Ljp/pioneer/ce/aam2/AAM2Kit/c/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public e(Z)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Ljp/pioneer/ce/aam2/AAM2Kit/c/o;

    invoke-direct {v1, p0, p1}, Ljp/pioneer/ce/aam2/AAM2Kit/c/o;-><init>(Ljp/pioneer/ce/aam2/AAM2Kit/c/d;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
