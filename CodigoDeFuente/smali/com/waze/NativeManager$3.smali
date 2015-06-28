.class Lcom/waze/NativeManager$3;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->GetInviteData()V
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
    iput-object p1, p0, Lcom/waze/NativeManager$3;->this$0:Lcom/waze/NativeManager;

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/waze/NativeManager$3;->this$0:Lcom/waze/NativeManager;

    sget-object v1, Lcom/waze/NativeManager;->mInviteId:Ljava/lang/String;

    #calls: Lcom/waze/NativeManager;->GetInviteRequestNTV(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/waze/NativeManager;->access$22(Lcom/waze/NativeManager;Ljava/lang/String;)V

    .line 278
    return-void
.end method
