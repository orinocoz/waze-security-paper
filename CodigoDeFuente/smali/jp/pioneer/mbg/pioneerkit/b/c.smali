.class Ljp/pioneer/mbg/pioneerkit/b/c;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Ljp/pioneer/mbg/pioneerkit/b/a;


# direct methods
.method constructor <init>(Ljp/pioneer/mbg/pioneerkit/b/a;)V
    .locals 0

    iput-object p1, p0, Ljp/pioneer/mbg/pioneerkit/b/c;->a:Ljp/pioneer/mbg/pioneerkit/b/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/c;->a:Ljp/pioneer/mbg/pioneerkit/b/a;

    invoke-virtual {v0}, Ljp/pioneer/mbg/pioneerkit/b/a;->a()V

    return-void
.end method
