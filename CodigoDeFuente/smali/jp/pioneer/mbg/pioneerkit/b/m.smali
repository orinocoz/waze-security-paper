.class Ljp/pioneer/mbg/pioneerkit/b/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljp/pioneer/mbg/pioneerkit/b/d;

.field private final synthetic b:Z


# direct methods
.method constructor <init>(Ljp/pioneer/mbg/pioneerkit/b/d;Z)V
    .locals 0

    iput-object p1, p0, Ljp/pioneer/mbg/pioneerkit/b/m;->a:Ljp/pioneer/mbg/pioneerkit/b/d;

    iput-boolean p2, p0, Ljp/pioneer/mbg/pioneerkit/b/m;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/m;->a:Ljp/pioneer/mbg/pioneerkit/b/d;

    invoke-static {v0}, Ljp/pioneer/mbg/pioneerkit/b/d;->a(Ljp/pioneer/mbg/pioneerkit/b/d;)Ljp/pioneer/mbg/pioneerkit/b/a;

    move-result-object v0

    iget-boolean v1, p0, Ljp/pioneer/mbg/pioneerkit/b/m;->b:Z

    invoke-virtual {v0, v1}, Ljp/pioneer/mbg/pioneerkit/b/a;->a(Z)V

    return-void
.end method
