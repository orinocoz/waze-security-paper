.class Ljp/pioneer/mbg/pioneerkit/b/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljp/pioneer/mbg/pioneerkit/b/d;


# direct methods
.method constructor <init>(Ljp/pioneer/mbg/pioneerkit/b/d;)V
    .locals 0

    iput-object p1, p0, Ljp/pioneer/mbg/pioneerkit/b/s;->a:Ljp/pioneer/mbg/pioneerkit/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/s;->a:Ljp/pioneer/mbg/pioneerkit/b/d;

    invoke-static {v0}, Ljp/pioneer/mbg/pioneerkit/b/d;->a(Ljp/pioneer/mbg/pioneerkit/b/d;)Ljp/pioneer/mbg/pioneerkit/b/a;

    move-result-object v0

    invoke-static {v0}, Ljp/pioneer/mbg/pioneerkit/b/a;->g(Ljp/pioneer/mbg/pioneerkit/b/a;)V

    return-void
.end method