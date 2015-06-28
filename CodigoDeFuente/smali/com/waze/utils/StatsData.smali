.class public Lcom/waze/utils/StatsData;
.super Ljava/lang/Object;
.source "StatsData.java"


# instance fields
.field public EventName:Ljava/lang/String;

.field public EventValue:[Ljava/lang/String;

.field public UUID:Ljava/lang/String;

.field public mKey:Ljava/lang/String;

.field public mSession:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "mcontext"
    .parameter "Name"
    .parameter "Params"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p2, p0, Lcom/waze/utils/StatsData;->EventName:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/waze/utils/StatsData;->EventValue:[Ljava/lang/String;

    .line 22
    invoke-static {p1}, Lcom/waze/AppUUID;->getInstallationUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/utils/StatsData;->UUID:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public buildCmd()Ljava/lang/String;
    .locals 4

    .prologue
    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Stats,"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/waze/utils/StatsData;->UUID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/waze/utils/StatsData;->EventName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 34
    iget-object v2, p0, Lcom/waze/utils/StatsData;->EventValue:[Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/waze/utils/StatsData;->EventValue:[Ljava/lang/String;

    array-length v2, v2

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, cmd:Ljava/lang/String;
    iget-object v2, p0, Lcom/waze/utils/StatsData;->EventValue:[Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 37
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/waze/utils/StatsData;->EventValue:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 42
    .end local v1           #i:I
    :cond_0
    return-object v0

    .line 34
    .end local v0           #cmd:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 39
    .restart local v0       #cmd:Ljava/lang/String;
    .restart local v1       #i:I
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/waze/utils/StatsData;->EventValue:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 37
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
