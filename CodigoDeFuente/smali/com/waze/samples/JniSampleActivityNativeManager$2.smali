.class Lcom/waze/samples/JniSampleActivityNativeManager$2;
.super Ljava/lang/Object;
.source "JniSampleActivityNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/samples/JniSampleActivityNativeManager;->initNativeLayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/samples/JniSampleActivityNativeManager;


# direct methods
.method constructor <init>(Lcom/waze/samples/JniSampleActivityNativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/samples/JniSampleActivityNativeManager$2;->this$0:Lcom/waze/samples/JniSampleActivityNativeManager;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/waze/samples/JniSampleActivityNativeManager$2;->this$0:Lcom/waze/samples/JniSampleActivityNativeManager;

    #calls: Lcom/waze/samples/JniSampleActivityNativeManager;->InitNativeLayerNTV()V
    invoke-static {v0}, Lcom/waze/samples/JniSampleActivityNativeManager;->access$1(Lcom/waze/samples/JniSampleActivityNativeManager;)V

    .line 61
    return-void
.end method
