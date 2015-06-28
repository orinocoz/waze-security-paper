.class Lcom/waze/NativeManager$60;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->handlePushToken(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$isSet:Z

.field private final synthetic val$updateNow:Z


# direct methods
.method constructor <init>(ZZ)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-boolean p1, p0, Lcom/waze/NativeManager$60;->val$isSet:Z

    iput-boolean p2, p0, Lcom/waze/NativeManager$60;->val$updateNow:Z

    .line 1127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1130
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 1131
    .local v0, nm:Lcom/waze/NativeManager;
    const/4 v1, 0x0

    .line 1132
    .local v1, token:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/waze/NativeManager$60;->val$isSet:Z

    if-eqz v2, :cond_0

    .line 1133
    invoke-static {}, Lcom/waze/push/Registrar;->instance()Lcom/waze/push/Registrar;

    move-result-object v2

    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/waze/push/Registrar;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1134
    :cond_0
    iget-boolean v2, p0, Lcom/waze/NativeManager$60;->val$updateNow:Z

    #calls: Lcom/waze/NativeManager;->SetPushNotificationNTV(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/waze/NativeManager;->access$69(Lcom/waze/NativeManager;Ljava/lang/String;Z)V

    .line 1135
    return-void
.end method
