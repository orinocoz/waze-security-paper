.class Lcom/waze/NativeManager$184;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->DeleteAccount()V
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
    iput-object p1, p0, Lcom/waze/NativeManager$184;->this$0:Lcom/waze/NativeManager;

    .line 5453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 5456
    iget-object v0, p0, Lcom/waze/NativeManager$184;->this$0:Lcom/waze/NativeManager;

    #calls: Lcom/waze/NativeManager;->DeleteAccountNTV()V
    invoke-static {v0}, Lcom/waze/NativeManager;->access$106(Lcom/waze/NativeManager;)V

    .line 5457
    return-void
.end method
