.class Ljp/pioneer/ce/aam2/AAM2Kit/c/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Ljp/pioneer/ce/aam2/AAM2Kit/c/a;


# direct methods
.method constructor <init>(Ljp/pioneer/ce/aam2/AAM2Kit/c/a;)V
    .locals 0

    iput-object p1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/y;->a:Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/y;->a:Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a(Ljp/pioneer/ce/aam2/AAM2Kit/c/a;Z)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/y;->a:Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    invoke-static {p2}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/k;->b(Landroid/os/IBinder;)Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;

    move-result-object v1

    iput-object v1, v0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onServiceConnected "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/y;->a:Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    invoke-static {v1}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->d(Ljp/pioneer/ce/aam2/AAM2Kit/c/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/y;->a:Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    iget-object v0, v0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;

    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/y;->a:Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    iget-object v1, v1, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->b:Ljp/pioneer/ce/aam2/AAM2Kit/c/d;

    iget-object v2, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/y;->a:Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    invoke-static {v2}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->d(Ljp/pioneer/ce/aam2/AAM2Kit/c/a;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;->a(Ljp/pioneer/ce/aam2/AAM2Kit/b/a/g;Ljava/lang/String;)V

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/y;->a:Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    iget-object v0, v0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;

    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/y;->a:Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    iget-object v1, v1, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->c:Landroid/os/Messenger;

    invoke-virtual {v1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/y;->a:Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    invoke-static {v2}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->d(Ljp/pioneer/ce/aam2/AAM2Kit/c/a;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;->a(Landroid/os/IBinder;Ljava/lang/String;)V

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/y;->a:Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    iget-object v0, v0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;

    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/y;->a:Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    invoke-static {v1}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->d(Ljp/pioneer/ce/aam2/AAM2Kit/c/a;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1.1.0"

    invoke-interface {v0, v1, v2}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;->b(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/y;->a:Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    invoke-static {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->e(Ljp/pioneer/ce/aam2/AAM2Kit/c/a;)V

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/y;->a:Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    invoke-static {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->f(Ljp/pioneer/ce/aam2/AAM2Kit/c/a;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/y;->a:Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/y;->a:Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    invoke-static {v1}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->f(Ljp/pioneer/ce/aam2/AAM2Kit/c/a;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a(Landroid/content/Context;)V
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

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/y;->a:Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a(Ljp/pioneer/ce/aam2/AAM2Kit/c/a;Z)V

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/y;->a:Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    const/4 v1, 0x0

    iput-object v1, v0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/j;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onServiceDisconnected "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/y;->a:Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    invoke-static {v1}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->d(Ljp/pioneer/ce/aam2/AAM2Kit/c/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/y;->a:Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    invoke-static {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->g(Ljp/pioneer/ce/aam2/AAM2Kit/c/a;)V

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/y;->a:Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    invoke-static {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->f(Ljp/pioneer/ce/aam2/AAM2Kit/c/a;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/y;->a:Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/y;->a:Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    invoke-static {v1}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->f(Ljp/pioneer/ce/aam2/AAM2Kit/c/a;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->e(Landroid/content/Context;)Z

    :cond_0
    return-void
.end method
