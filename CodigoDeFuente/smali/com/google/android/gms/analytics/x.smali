.class Lcom/google/android/gms/analytics/x;
.super Ljava/lang/Object;


# instance fields
.field private ws:Ljava/lang/String;

.field private final wt:J

.field private final wu:J

.field private wv:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;JJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "https:"

    iput-object v0, p0, Lcom/google/android/gms/analytics/x;->wv:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/analytics/x;->ws:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/gms/analytics/x;->wt:J

    iput-wide p4, p0, Lcom/google/android/gms/analytics/x;->wu:J

    return-void
.end method


# virtual methods
.method Q(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/x;->ws:Ljava/lang/String;

    return-void
.end method

.method R(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http:"

    iput-object v0, p0, Lcom/google/android/gms/analytics/x;->wv:Ljava/lang/String;

    goto :goto_0
.end method

.method df()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/x;->ws:Ljava/lang/String;

    return-object v0
.end method

.method dg()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/analytics/x;->wt:J

    return-wide v0
.end method

.method dh()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/analytics/x;->wu:J

    return-wide v0
.end method

.method di()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/x;->wv:Ljava/lang/String;

    return-object v0
.end method
