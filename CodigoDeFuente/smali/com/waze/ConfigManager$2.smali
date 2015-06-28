.class Lcom/waze/ConfigManager$2;
.super Ljava/lang/Object;
.source "ConfigManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/ConfigManager;->sendLogsClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/ConfigManager;


# direct methods
.method constructor <init>(Lcom/waze/ConfigManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/ConfigManager$2;->this$0:Lcom/waze/ConfigManager;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/waze/ConfigManager$2;->this$0:Lcom/waze/ConfigManager;

    #calls: Lcom/waze/ConfigManager;->sendLogsClickNTV()V
    invoke-static {v0}, Lcom/waze/ConfigManager;->access$3(Lcom/waze/ConfigManager;)V

    .line 86
    return-void
.end method
