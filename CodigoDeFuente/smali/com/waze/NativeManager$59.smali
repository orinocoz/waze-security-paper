.class Lcom/waze/NativeManager$59;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->SetVoiceActionsStr([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$VoiceActions:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;[Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$59;->this$0:Lcom/waze/NativeManager;

    iput-object p2, p0, Lcom/waze/NativeManager$59;->val$VoiceActions:[Ljava/lang/Object;

    .line 966
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 969
    iget-object v0, p0, Lcom/waze/NativeManager$59;->this$0:Lcom/waze/NativeManager;

    iget-object v1, p0, Lcom/waze/NativeManager$59;->val$VoiceActions:[Ljava/lang/Object;

    #calls: Lcom/waze/NativeManager;->SetVoiceActionStrNTV([Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/waze/NativeManager;->access$68(Lcom/waze/NativeManager;[Ljava/lang/Object;)V

    .line 970
    return-void
.end method
