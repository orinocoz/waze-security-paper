.class Lcom/waze/EditBox$2;
.super Ljava/lang/Object;
.source "EditBox.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/EditBox;->Init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/EditBox;


# direct methods
.method constructor <init>(Lcom/waze/EditBox;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/EditBox$2;->this$0:Lcom/waze/EditBox;

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 302
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 299
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .parameter "aSeq"
    .parameter "aStart"
    .parameter "aBefore"
    .parameter "aCount"

    .prologue
    .line 291
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 293
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    .line 294
    .local v0, lMgr:Lcom/waze/NativeManager;
    iget-object v1, p0, Lcom/waze/EditBox$2;->this$0:Lcom/waze/EditBox;

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->EditBoxCheckTypingLock(Lcom/waze/EditBox;)V

    .line 296
    .end local v0           #lMgr:Lcom/waze/NativeManager;
    :cond_0
    return-void
.end method
