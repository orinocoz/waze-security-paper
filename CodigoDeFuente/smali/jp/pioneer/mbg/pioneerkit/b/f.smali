.class Ljp/pioneer/mbg/pioneerkit/b/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljp/pioneer/mbg/pioneerkit/b/d;

.field private final synthetic b:Landroid/view/MotionEvent;


# direct methods
.method constructor <init>(Ljp/pioneer/mbg/pioneerkit/b/d;Landroid/view/MotionEvent;)V
    .locals 0

    iput-object p1, p0, Ljp/pioneer/mbg/pioneerkit/b/f;->a:Ljp/pioneer/mbg/pioneerkit/b/d;

    iput-object p2, p0, Ljp/pioneer/mbg/pioneerkit/b/f;->b:Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/f;->a:Ljp/pioneer/mbg/pioneerkit/b/d;

    invoke-static {v0}, Ljp/pioneer/mbg/pioneerkit/b/d;->a(Ljp/pioneer/mbg/pioneerkit/b/d;)Ljp/pioneer/mbg/pioneerkit/b/a;

    move-result-object v0

    iget-object v1, p0, Ljp/pioneer/mbg/pioneerkit/b/f;->b:Landroid/view/MotionEvent;

    invoke-static {v0, v1}, Ljp/pioneer/mbg/pioneerkit/b/a;->a(Ljp/pioneer/mbg/pioneerkit/b/a;Landroid/view/MotionEvent;)V

    return-void
.end method
