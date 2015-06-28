.class Lcom/waze/NativeManager$65;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->ConnectivityChanged(ZILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$aConnType:I

.field private final synthetic val$aConnTypeStr:Ljava/lang/String;

.field private final synthetic val$aConnected:Z


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;ZILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$65;->this$0:Lcom/waze/NativeManager;

    iput-boolean p2, p0, Lcom/waze/NativeManager$65;->val$aConnected:Z

    iput p3, p0, Lcom/waze/NativeManager$65;->val$aConnType:I

    iput-object p4, p0, Lcom/waze/NativeManager$65;->val$aConnTypeStr:Ljava/lang/String;

    .line 1319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1321
    iget-object v0, p0, Lcom/waze/NativeManager$65;->this$0:Lcom/waze/NativeManager;

    iget-boolean v1, p0, Lcom/waze/NativeManager$65;->val$aConnected:Z

    iget v2, p0, Lcom/waze/NativeManager$65;->val$aConnType:I

    .line 1322
    iget-object v3, p0, Lcom/waze/NativeManager$65;->val$aConnTypeStr:Ljava/lang/String;

    .line 1321
    #calls: Lcom/waze/NativeManager;->ConnectivityChangedNTV(ZILjava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/waze/NativeManager;->access$71(Lcom/waze/NativeManager;ZILjava/lang/String;)V

    .line 1323
    return-void
.end method
