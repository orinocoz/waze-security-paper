.class Lcom/waze/NativeManager$40;
.super Lcom/waze/ifs/async/RunnableUICallback;
.source "NativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->SendBeepBeep(IIIILcom/waze/NativeManager$IResultCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private res:I

.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$Id:I

.field private final synthetic val$iRes:Lcom/waze/NativeManager$IResultCode;

.field private final synthetic val$lat:I

.field private final synthetic val$lon:I

.field private final synthetic val$steering:I


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;IIIILcom/waze/NativeManager$IResultCode;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$40;->this$0:Lcom/waze/NativeManager;

    iput p2, p0, Lcom/waze/NativeManager$40;->val$lat:I

    iput p3, p0, Lcom/waze/NativeManager$40;->val$lon:I

    iput p4, p0, Lcom/waze/NativeManager$40;->val$steering:I

    iput p5, p0, Lcom/waze/NativeManager$40;->val$Id:I

    iput-object p6, p0, Lcom/waze/NativeManager$40;->val$iRes:Lcom/waze/NativeManager$IResultCode;

    .line 711
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableUICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 2

    .prologue
    .line 721
    iget-object v0, p0, Lcom/waze/NativeManager$40;->val$iRes:Lcom/waze/NativeManager$IResultCode;

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/waze/NativeManager$40;->val$iRes:Lcom/waze/NativeManager$IResultCode;

    iget v1, p0, Lcom/waze/NativeManager$40;->res:I

    invoke-interface {v0, v1}, Lcom/waze/NativeManager$IResultCode;->onResult(I)V

    .line 724
    :cond_0
    return-void
.end method

.method public event()V
    .locals 5

    .prologue
    .line 716
    iget-object v0, p0, Lcom/waze/NativeManager$40;->this$0:Lcom/waze/NativeManager;

    iget v1, p0, Lcom/waze/NativeManager$40;->val$lat:I

    iget v2, p0, Lcom/waze/NativeManager$40;->val$lon:I

    iget v3, p0, Lcom/waze/NativeManager$40;->val$steering:I

    iget v4, p0, Lcom/waze/NativeManager$40;->val$Id:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/waze/NativeManager;->sendBeepBeepNTV(IIII)I

    move-result v0

    iput v0, p0, Lcom/waze/NativeManager$40;->res:I

    .line 717
    return-void
.end method
