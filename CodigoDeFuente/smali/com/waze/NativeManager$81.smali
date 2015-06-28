.class Lcom/waze/NativeManager$81;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->asrListen(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$Lang:Ljava/lang/String;

.field private final synthetic val$callback:J


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;JLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$81;->this$0:Lcom/waze/NativeManager;

    iput-wide p2, p0, Lcom/waze/NativeManager$81;->val$callback:J

    iput-object p4, p0, Lcom/waze/NativeManager$81;->val$Lang:Ljava/lang/String;

    .line 1733
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1735
    iget-wide v0, p0, Lcom/waze/NativeManager$81;->val$callback:J

    iget-object v2, p0, Lcom/waze/NativeManager$81;->val$Lang:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/waze/voice/WazeSpeechRecognizer;->start(JLjava/lang/String;)V

    .line 1736
    return-void
.end method
