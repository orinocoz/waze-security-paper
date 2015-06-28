.class Ljp/pioneer/mbg/pioneerkit/b/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljp/pioneer/mbg/pioneerkit/b/d;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Ljp/pioneer/mbg/pioneerkit/b/d;I)V
    .locals 0

    iput-object p1, p0, Ljp/pioneer/mbg/pioneerkit/b/n;->a:Ljp/pioneer/mbg/pioneerkit/b/d;

    iput p2, p0, Ljp/pioneer/mbg/pioneerkit/b/n;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/n;->a:Ljp/pioneer/mbg/pioneerkit/b/d;

    invoke-static {v0}, Ljp/pioneer/mbg/pioneerkit/b/d;->a(Ljp/pioneer/mbg/pioneerkit/b/d;)Ljp/pioneer/mbg/pioneerkit/b/a;

    move-result-object v0

    iget v1, p0, Ljp/pioneer/mbg/pioneerkit/b/n;->b:I

    invoke-virtual {v0, v1}, Ljp/pioneer/mbg/pioneerkit/b/a;->b(I)V

    return-void
.end method
