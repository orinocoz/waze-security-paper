.class Lcom/waze/NativeManager$29;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->SuggestUserNameInit()V
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
    iput-object p1, p0, Lcom/waze/NativeManager$29;->this$0:Lcom/waze/NativeManager;

    .line 600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/waze/NativeManager$29;->this$0:Lcom/waze/NativeManager;

    #calls: Lcom/waze/NativeManager;->SuggestUserNameInitNTV()V
    invoke-static {v0}, Lcom/waze/NativeManager;->access$46(Lcom/waze/NativeManager;)V

    .line 604
    return-void
.end method
