.class Lcom/waze/NativeManager$153;
.super Lcom/waze/EditBox$EditBoxCallback;
.source "NativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->ShowEditBox(II[BJII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;J)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$153;->this$0:Lcom/waze/NativeManager;

    .line 3250
    invoke-direct {p0, p2, p3}, Lcom/waze/EditBox$EditBoxCallback;-><init>(J)V

    return-void
.end method


# virtual methods
.method public CallbackDone(ILjava/lang/String;J)V
    .locals 1
    .parameter "aResult"
    .parameter "aText"
    .parameter "aCbContext"

    .prologue
    .line 3253
    iget-object v0, p0, Lcom/waze/NativeManager$153;->this$0:Lcom/waze/NativeManager;

    #calls: Lcom/waze/NativeManager;->EditBoxCallbackNTV(ILjava/lang/String;J)V
    invoke-static {v0, p1, p2, p3, p4}, Lcom/waze/NativeManager;->access$90(Lcom/waze/NativeManager;ILjava/lang/String;J)V

    .line 3254
    return-void
.end method
