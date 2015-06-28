.class Ljp/pioneer/mbg/pioneerkit/b/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Ljp/pioneer/mbg/pioneerkit/b/a;


# direct methods
.method constructor <init>(Ljp/pioneer/mbg/pioneerkit/b/a;)V
    .locals 0

    iput-object p1, p0, Ljp/pioneer/mbg/pioneerkit/b/t;->a:Ljp/pioneer/mbg/pioneerkit/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/t;->a:Ljp/pioneer/mbg/pioneerkit/b/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljp/pioneer/mbg/pioneerkit/b/a;->a(Ljp/pioneer/mbg/pioneerkit/b/a;Z)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/t;->a:Ljp/pioneer/mbg/pioneerkit/b/a;

    invoke-static {p2}, Ljp/pioneer/mbg/pioneerkit/a/a/k;->b(Landroid/os/IBinder;)Ljp/pioneer/mbg/pioneerkit/a/a/j;

    move-result-object v1

    iput-object v1, v0, Ljp/pioneer/mbg/pioneerkit/b/a;->a:Ljp/pioneer/mbg/pioneerkit/a/a/j;

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onServiceConnected "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljp/pioneer/mbg/pioneerkit/b/t;->a:Ljp/pioneer/mbg/pioneerkit/b/a;

    invoke-static {v1}, Ljp/pioneer/mbg/pioneerkit/b/a;->d(Ljp/pioneer/mbg/pioneerkit/b/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljp/pioneer/mbg/pioneerkit/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/t;->a:Ljp/pioneer/mbg/pioneerkit/b/a;

    iget-object v0, v0, Ljp/pioneer/mbg/pioneerkit/b/a;->a:Ljp/pioneer/mbg/pioneerkit/a/a/j;

    iget-object v1, p0, Ljp/pioneer/mbg/pioneerkit/b/t;->a:Ljp/pioneer/mbg/pioneerkit/b/a;

    iget-object v1, v1, Ljp/pioneer/mbg/pioneerkit/b/a;->b:Ljp/pioneer/mbg/pioneerkit/b/d;

    iget-object v2, p0, Ljp/pioneer/mbg/pioneerkit/b/t;->a:Ljp/pioneer/mbg/pioneerkit/b/a;

    invoke-static {v2}, Ljp/pioneer/mbg/pioneerkit/b/a;->d(Ljp/pioneer/mbg/pioneerkit/b/a;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljp/pioneer/mbg/pioneerkit/a/a/j;->a(Ljp/pioneer/mbg/pioneerkit/a/a/g;Ljava/lang/String;)V

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/t;->a:Ljp/pioneer/mbg/pioneerkit/b/a;

    iget-object v0, v0, Ljp/pioneer/mbg/pioneerkit/b/a;->a:Ljp/pioneer/mbg/pioneerkit/a/a/j;

    iget-object v1, p0, Ljp/pioneer/mbg/pioneerkit/b/t;->a:Ljp/pioneer/mbg/pioneerkit/b/a;

    iget-object v1, v1, Ljp/pioneer/mbg/pioneerkit/b/a;->c:Landroid/os/Messenger;

    invoke-virtual {v1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Ljp/pioneer/mbg/pioneerkit/b/t;->a:Ljp/pioneer/mbg/pioneerkit/b/a;

    invoke-static {v2}, Ljp/pioneer/mbg/pioneerkit/b/a;->d(Ljp/pioneer/mbg/pioneerkit/b/a;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljp/pioneer/mbg/pioneerkit/a/a/j;->a(Landroid/os/IBinder;Ljava/lang/String;)V

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/t;->a:Ljp/pioneer/mbg/pioneerkit/b/a;

    invoke-static {v0}, Ljp/pioneer/mbg/pioneerkit/b/a;->e(Ljp/pioneer/mbg/pioneerkit/b/a;)V

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/t;->a:Ljp/pioneer/mbg/pioneerkit/b/a;

    invoke-static {v0}, Ljp/pioneer/mbg/pioneerkit/b/a;->f(Ljp/pioneer/mbg/pioneerkit/b/a;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/t;->a:Ljp/pioneer/mbg/pioneerkit/b/a;

    iget-object v1, p0, Ljp/pioneer/mbg/pioneerkit/b/t;->a:Ljp/pioneer/mbg/pioneerkit/b/a;

    invoke-static {v1}, Ljp/pioneer/mbg/pioneerkit/b/a;->f(Ljp/pioneer/mbg/pioneerkit/b/a;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljp/pioneer/mbg/pioneerkit/b/a;->a(Landroid/content/Context;)V
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

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/t;->a:Ljp/pioneer/mbg/pioneerkit/b/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljp/pioneer/mbg/pioneerkit/b/a;->a(Ljp/pioneer/mbg/pioneerkit/b/a;Z)V

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/t;->a:Ljp/pioneer/mbg/pioneerkit/b/a;

    const/4 v1, 0x0

    iput-object v1, v0, Ljp/pioneer/mbg/pioneerkit/b/a;->a:Ljp/pioneer/mbg/pioneerkit/a/a/j;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onServiceDisconnected "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljp/pioneer/mbg/pioneerkit/b/t;->a:Ljp/pioneer/mbg/pioneerkit/b/a;

    invoke-static {v1}, Ljp/pioneer/mbg/pioneerkit/b/a;->d(Ljp/pioneer/mbg/pioneerkit/b/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljp/pioneer/mbg/pioneerkit/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/t;->a:Ljp/pioneer/mbg/pioneerkit/b/a;

    invoke-static {v0}, Ljp/pioneer/mbg/pioneerkit/b/a;->g(Ljp/pioneer/mbg/pioneerkit/b/a;)V

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/t;->a:Ljp/pioneer/mbg/pioneerkit/b/a;

    invoke-static {v0}, Ljp/pioneer/mbg/pioneerkit/b/a;->f(Ljp/pioneer/mbg/pioneerkit/b/a;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/t;->a:Ljp/pioneer/mbg/pioneerkit/b/a;

    iget-object v1, p0, Ljp/pioneer/mbg/pioneerkit/b/t;->a:Ljp/pioneer/mbg/pioneerkit/b/a;

    invoke-static {v1}, Ljp/pioneer/mbg/pioneerkit/b/a;->f(Ljp/pioneer/mbg/pioneerkit/b/a;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljp/pioneer/mbg/pioneerkit/b/a;->e(Landroid/content/Context;)Z

    :cond_0
    return-void
.end method
