.class Ljp/pioneer/mbg/pioneerkit/b/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljp/pioneer/mbg/pioneerkit/b/d;

.field private final synthetic b:B

.field private final synthetic c:[B


# direct methods
.method constructor <init>(Ljp/pioneer/mbg/pioneerkit/b/d;B[B)V
    .locals 0

    iput-object p1, p0, Ljp/pioneer/mbg/pioneerkit/b/i;->a:Ljp/pioneer/mbg/pioneerkit/b/d;

    iput-byte p2, p0, Ljp/pioneer/mbg/pioneerkit/b/i;->b:B

    iput-object p3, p0, Ljp/pioneer/mbg/pioneerkit/b/i;->c:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/i;->a:Ljp/pioneer/mbg/pioneerkit/b/d;

    invoke-static {v0}, Ljp/pioneer/mbg/pioneerkit/b/d;->a(Ljp/pioneer/mbg/pioneerkit/b/d;)Ljp/pioneer/mbg/pioneerkit/b/a;

    move-result-object v0

    iget-byte v1, p0, Ljp/pioneer/mbg/pioneerkit/b/i;->b:B

    iget-object v2, p0, Ljp/pioneer/mbg/pioneerkit/b/i;->c:[B

    invoke-virtual {v0, v1, v2}, Ljp/pioneer/mbg/pioneerkit/b/a;->a(B[B)V

    return-void
.end method
