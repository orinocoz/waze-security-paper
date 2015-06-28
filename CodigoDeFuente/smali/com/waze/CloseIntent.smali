.class public Lcom/waze/CloseIntent;
.super Landroid/content/BroadcastReceiver;
.source "CloseIntent.java"


# static fields
.field public static final ActionName:Ljava/lang/String; = "Eliran_Close_Intent"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static Register(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 19
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 20
    .local v0, n:Landroid/content/IntentFilter;
    const-string v1, "Eliran_Close_Intent"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 21
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 23
    new-instance v1, Lcom/waze/CloseIntent;

    invoke-direct {v1}, Lcom/waze/CloseIntent;-><init>()V

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 24
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 13
    :try_start_0
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->StopWaze()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    :goto_0
    return-void

    .line 14
    :catch_0
    move-exception v0

    goto :goto_0
.end method
