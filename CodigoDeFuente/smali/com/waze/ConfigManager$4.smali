.class Lcom/waze/ConfigManager$4;
.super Ljava/lang/Object;
.source "ConfigManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/ConfigManager;->aboutClick()V
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
    iput-object p1, p0, Lcom/waze/ConfigManager$4;->this$0:Lcom/waze/ConfigManager;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/waze/ConfigManager$4;->this$0:Lcom/waze/ConfigManager;

    #calls: Lcom/waze/ConfigManager;->aboutClickNTV()V
    invoke-static {v0}, Lcom/waze/ConfigManager;->access$5(Lcom/waze/ConfigManager;)V

    .line 103
    return-void
.end method
