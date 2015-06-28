.class Lcom/waze/NativeManager$187;
.super Lcom/waze/ifs/async/RunnableUICallback;
.source "NativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->getDisplayName(Lcom/waze/NativeManager$DisplayNameListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$listener:Lcom/waze/NativeManager$DisplayNameListener;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;Lcom/waze/NativeManager$DisplayNameListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$187;->this$0:Lcom/waze/NativeManager;

    iput-object p2, p0, Lcom/waze/NativeManager$187;->val$listener:Lcom/waze/NativeManager$DisplayNameListener;

    .line 5533
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableUICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 2

    .prologue
    .line 5543
    iget-object v0, p0, Lcom/waze/NativeManager$187;->val$listener:Lcom/waze/NativeManager$DisplayNameListener;

    iget-object v1, p0, Lcom/waze/NativeManager$187;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/waze/NativeManager$DisplayNameListener;->onComplete(Ljava/lang/String;)V

    .line 5544
    return-void
.end method

.method public event()V
    .locals 1

    .prologue
    .line 5538
    iget-object v0, p0, Lcom/waze/NativeManager$187;->this$0:Lcom/waze/NativeManager;

    #calls: Lcom/waze/NativeManager;->getDisplayNameNTV()Ljava/lang/String;
    invoke-static {v0}, Lcom/waze/NativeManager;->access$109(Lcom/waze/NativeManager;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/NativeManager$187;->name:Ljava/lang/String;

    .line 5539
    return-void
.end method
