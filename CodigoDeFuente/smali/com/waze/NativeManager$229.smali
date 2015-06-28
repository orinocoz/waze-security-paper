.class Lcom/waze/NativeManager$229;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->SendNetInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$229;->this$0:Lcom/waze/NativeManager;

    .line 6183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 6186
    iget-object v0, p0, Lcom/waze/NativeManager$229;->this$0:Lcom/waze/NativeManager;

    #getter for: Lcom/waze/NativeManager;->m_NetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v0}, Lcom/waze/NativeManager;->access$115(Lcom/waze/NativeManager;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6188
    iget-object v0, p0, Lcom/waze/NativeManager$229;->this$0:Lcom/waze/NativeManager;

    #getter for: Lcom/waze/NativeManager;->m_NetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v0}, Lcom/waze/NativeManager;->access$115(Lcom/waze/NativeManager;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_1

    .line 6190
    const-string v0, "NETWORK_STATE"

    const-string v1, "MODE|MCC|MNC"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CELL|"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/waze/AppService;->getAppResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 6191
    invoke-static {}, Lcom/waze/AppService;->getAppResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6190
    invoke-static {v0, v1, v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6206
    :cond_0
    :goto_0
    return-void

    .line 6193
    :cond_1
    iget-object v0, p0, Lcom/waze/NativeManager$229;->this$0:Lcom/waze/NativeManager;

    #getter for: Lcom/waze/NativeManager;->m_NetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v0}, Lcom/waze/NativeManager;->access$115(Lcom/waze/NativeManager;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 6195
    const-string v0, "NETWORK_STATE"

    const-string v1, "MODE|MCC|MNC"

    const-string v2, "WIFI||"

    invoke-static {v0, v1, v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6197
    :cond_2
    iget-object v0, p0, Lcom/waze/NativeManager$229;->this$0:Lcom/waze/NativeManager;

    #getter for: Lcom/waze/NativeManager;->m_NetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v0}, Lcom/waze/NativeManager;->access$115(Lcom/waze/NativeManager;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 6199
    const-string v0, "NETWORK_STATE"

    const-string v1, "MODE|MCC|MNC"

    const-string v2, "WIMAX||"

    invoke-static {v0, v1, v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6204
    :cond_3
    const-string v0, "NETWORK_STATE"

    const-string v1, "MODE|MCC|MNC"

    const-string v2, "NA||"

    invoke-static {v0, v1, v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
