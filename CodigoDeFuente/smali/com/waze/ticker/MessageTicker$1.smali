.class Lcom/waze/ticker/MessageTicker$1;
.super Ljava/lang/Object;
.source "MessageTicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/ticker/MessageTicker;->onMessageTickerClose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/ticker/MessageTicker;


# direct methods
.method constructor <init>(Lcom/waze/ticker/MessageTicker;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/ticker/MessageTicker$1;->this$0:Lcom/waze/ticker/MessageTicker;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->TickerClosedNTV()V

    .line 25
    return-void
.end method
