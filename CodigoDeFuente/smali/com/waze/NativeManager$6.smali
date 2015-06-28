.class Lcom/waze/NativeManager$6;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->StopCompass()V
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
    iput-object p1, p0, Lcom/waze/NativeManager$6;->this$0:Lcom/waze/NativeManager;

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 330
    invoke-static {}, Lcom/waze/NativeLocListener;->getInstance()Lcom/waze/NativeLocListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeLocListener;->UnregisterCompass()V

    .line 331
    return-void
.end method
