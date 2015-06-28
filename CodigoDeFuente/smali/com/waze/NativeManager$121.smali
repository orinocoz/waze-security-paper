.class Lcom/waze/NativeManager$121;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->openStopPointNavigate(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$showMessage:Z


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$121;->this$0:Lcom/waze/NativeManager;

    iput-boolean p2, p0, Lcom/waze/NativeManager$121;->val$showMessage:Z

    .line 2596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2598
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    .line 2599
    iget-boolean v1, p0, Lcom/waze/NativeManager$121;->val$showMessage:Z

    invoke-virtual {v0, v1}, Lcom/waze/MainActivity;->startStopPointActivity(Z)V

    .line 2600
    return-void
.end method
