.class Lcom/waze/NativeManager$186;
.super Lcom/waze/ifs/async/RunnableUICallback;
.source "NativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->shouldDisplayGasSettings(Lcom/waze/NativeManager$GasSettingsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$listener:Lcom/waze/NativeManager$GasSettingsListener;

.field private value:Z


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;Lcom/waze/NativeManager$GasSettingsListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$186;->this$0:Lcom/waze/NativeManager;

    iput-object p2, p0, Lcom/waze/NativeManager$186;->val$listener:Lcom/waze/NativeManager$GasSettingsListener;

    .line 5477
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableUICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 2

    .prologue
    .line 5487
    iget-object v0, p0, Lcom/waze/NativeManager$186;->val$listener:Lcom/waze/NativeManager$GasSettingsListener;

    iget-boolean v1, p0, Lcom/waze/NativeManager$186;->value:Z

    invoke-interface {v0, v1}, Lcom/waze/NativeManager$GasSettingsListener;->onComplete(Z)V

    .line 5488
    return-void
.end method

.method public event()V
    .locals 1

    .prologue
    .line 5482
    iget-object v0, p0, Lcom/waze/NativeManager$186;->this$0:Lcom/waze/NativeManager;

    #calls: Lcom/waze/NativeManager;->shouldDisplayGasSettingsNTV()Z
    invoke-static {v0}, Lcom/waze/NativeManager;->access$108(Lcom/waze/NativeManager;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/waze/NativeManager$186;->value:Z

    .line 5483
    return-void
.end method
