.class public final Lcom/waze/utils/IntentUtils;
.super Ljava/lang/Object;
.source "IntentUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExtrasKeys(Landroid/content/Intent;)[Ljava/lang/String;
    .locals 4
    .parameter "intent"

    .prologue
    .line 12
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 13
    .local v0, extras:Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 14
    .local v2, ks:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 15
    .local v1, ka:[Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 17
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    new-array v1, v3, [Ljava/lang/String;

    .line 19
    invoke-interface {v2, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 21
    :cond_0
    return-object v1
.end method
