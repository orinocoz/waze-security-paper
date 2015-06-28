.class Lcom/waze/share/ShareNativeManager$1;
.super Ljava/lang/Object;
.source "ShareNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/share/ShareNativeManager;->initNativeLayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/share/ShareNativeManager;


# direct methods
.method constructor <init>(Lcom/waze/share/ShareNativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/share/ShareNativeManager$1;->this$0:Lcom/waze/share/ShareNativeManager;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/waze/share/ShareNativeManager$1;->this$0:Lcom/waze/share/ShareNativeManager;

    #calls: Lcom/waze/share/ShareNativeManager;->InitNativeLayerNTV()V
    invoke-static {v0}, Lcom/waze/share/ShareNativeManager;->access$0(Lcom/waze/share/ShareNativeManager;)V

    .line 47
    return-void
.end method
