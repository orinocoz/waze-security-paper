.class public final Lcom/google/android/gms/common/images/a$b;
.super Lcom/google/android/gms/common/images/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/images/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private Fp:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/common/images/a;-><init>(Landroid/net/Uri;I)V

    invoke-static {p1}, Lcom/google/android/gms/internal/gy;->c(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/common/images/a$b;->Fp:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/common/images/a;-><init>(Landroid/net/Uri;I)V

    invoke-static {p1}, Lcom/google/android/gms/internal/gy;->c(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/common/images/a$b;->Fp:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZZZ)V
    .locals 5

    const/4 v2, 0x0

    if-nez p4, :cond_1

    if-nez p5, :cond_1

    const/4 v0, 0x1

    move v3, v0

    :goto_0
    if-eqz v3, :cond_2

    instance-of v0, p1, Lcom/google/android/gms/internal/gw;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/gw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gw;->fd()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/common/images/a$b;->Fl:I

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/common/images/a$b;->Fl:I

    if-ne v0, v1, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v3, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p3, p4}, Lcom/google/android/gms/common/images/a$b;->b(ZZ)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/common/images/a$b;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/google/android/gms/internal/gu;

    move-result-object v0

    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    instance-of v1, p1, Lcom/google/android/gms/internal/gw;

    if-eqz v1, :cond_3

    check-cast p1, Lcom/google/android/gms/internal/gw;

    if-eqz p5, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/common/images/a$b;->Fj:Lcom/google/android/gms/common/images/a$a;

    iget-object v1, v1, Lcom/google/android/gms/common/images/a$a;->uri:Landroid/net/Uri;

    :goto_3
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/gw;->f(Landroid/net/Uri;)V

    if-eqz v3, :cond_5

    iget v1, p0, Lcom/google/android/gms/common/images/a$b;->Fl:I

    :goto_4
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/gw;->al(I)V

    :cond_3
    if-eqz v4, :cond_0

    check-cast v0, Lcom/google/android/gms/internal/gu;

    const/16 v1, 0xfa

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gu;->startTransition(I)V

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    :cond_5
    move v1, v2

    goto :goto_4

    :cond_6
    move-object v0, p2

    goto :goto_2
.end method


# virtual methods
.method protected a(Landroid/graphics/drawable/Drawable;ZZZ)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/common/images/a$b;->Fp:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/images/a$b;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZZZ)V

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    instance-of v0, p1, Lcom/google/android/gms/common/images/a$b;

    if-nez v0, :cond_0

    .end local p1
    :goto_0
    return v3

    .restart local p1
    :cond_0
    if-ne p0, p1, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/common/images/a$b;

    .end local p1
    iget-object v0, p0, Lcom/google/android/gms/common/images/a$b;->Fp:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/google/android/gms/common/images/a$b;->Fp:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/hl;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    :goto_1
    move v3, v0

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
