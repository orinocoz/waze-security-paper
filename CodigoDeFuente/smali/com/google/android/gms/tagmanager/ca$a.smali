.class Lcom/google/android/gms/tagmanager/ca$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/da$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tagmanager/ca;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic agq:Lcom/google/android/gms/tagmanager/ca;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/ca;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/ca$a;->agq:Lcom/google/android/gms/tagmanager/ca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/tagmanager/ap;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ca$a;->agq:Lcom/google/android/gms/tagmanager/ca;

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/ap;->dg()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/tagmanager/ca;->a(Lcom/google/android/gms/tagmanager/ca;J)V

    return-void
.end method

.method public b(Lcom/google/android/gms/tagmanager/ap;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ca$a;->agq:Lcom/google/android/gms/tagmanager/ca;

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/ap;->dg()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/tagmanager/ca;->a(Lcom/google/android/gms/tagmanager/ca;J)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permanent failure dispatching hitId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/ap;->dg()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->C(Ljava/lang/String;)V

    return-void
.end method

.method public c(Lcom/google/android/gms/tagmanager/ap;)V
    .locals 5

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/ap;->lI()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ca$a;->agq:Lcom/google/android/gms/tagmanager/ca;

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/ap;->dg()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/ca$a;->agq:Lcom/google/android/gms/tagmanager/ca;

    invoke-static {v3}, Lcom/google/android/gms/tagmanager/ca;->a(Lcom/google/android/gms/tagmanager/ca;)Lcom/google/android/gms/internal/ik;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/internal/ik;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/tagmanager/ca;->a(Lcom/google/android/gms/tagmanager/ca;JJ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-wide/32 v2, 0xdbba00

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/ca$a;->agq:Lcom/google/android/gms/tagmanager/ca;

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/ca;->a(Lcom/google/android/gms/tagmanager/ca;)Lcom/google/android/gms/internal/ik;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/ik;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ca$a;->agq:Lcom/google/android/gms/tagmanager/ca;

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/ap;->dg()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/tagmanager/ca;->a(Lcom/google/android/gms/tagmanager/ca;J)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Giving up on failed hitId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/ap;->dg()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->C(Ljava/lang/String;)V

    goto :goto_0
.end method
