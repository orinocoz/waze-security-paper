.class Lcom/waze/MsgBox$5;
.super Ljava/lang/Object;
.source "MsgBox.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/MsgBox;->ShowAsrLabel(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/MsgBox;

.field private final synthetic val$enabled:I


# direct methods
.method constructor <init>(Lcom/waze/MsgBox;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/MsgBox$5;->this$0:Lcom/waze/MsgBox;

    iput p2, p0, Lcom/waze/MsgBox$5;->val$enabled:I

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 305
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 310
    :goto_0
    return-void

    .line 308
    :cond_0
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v0

    .line 309
    .local v0, layoutManager:Lcom/waze/LayoutManager;
    iget v1, p0, Lcom/waze/MsgBox$5;->val$enabled:I

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/waze/LayoutManager;->changeVoicePopupState(Z)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method
