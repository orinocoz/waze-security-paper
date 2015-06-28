.class Lcom/waze/utils/EditTextUtils$1;
.super Ljava/lang/Object;
.source "EditTextUtils.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/utils/EditTextUtils;->getKeyboardLockOnTouchListener(Landroid/content/Context;Landroid/widget/EditText;Lcom/waze/utils/EditTextUtils$OnTouchListenerDoneListener;)Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$editText:Landroid/widget/EditText;

.field private final synthetic val$listener:Lcom/waze/utils/EditTextUtils$OnTouchListenerDoneListener;


# direct methods
.method constructor <init>(Lcom/waze/utils/EditTextUtils$OnTouchListenerDoneListener;Landroid/content/Context;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/utils/EditTextUtils$1;->val$listener:Lcom/waze/utils/EditTextUtils$OnTouchListenerDoneListener;

    iput-object p2, p0, Lcom/waze/utils/EditTextUtils$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/waze/utils/EditTextUtils$1;->val$editText:Landroid/widget/EditText;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 22
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    :cond_0
    :goto_0
    return v4

    .line 25
    :cond_1
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    .line 26
    .local v0, lMgr:Lcom/waze/NativeManager;
    new-instance v1, Lcom/waze/utils/EditTextUtils$1$1;

    iget-object v2, p0, Lcom/waze/utils/EditTextUtils$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/waze/utils/EditTextUtils$1;->val$editText:Landroid/widget/EditText;

    invoke-direct {v1, p0, v2, v3}, Lcom/waze/utils/EditTextUtils$1$1;-><init>(Lcom/waze/utils/EditTextUtils$1;Landroid/content/Context;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->checkTypingLock(Lcom/waze/view/text/TypingLockListener;)V

    .line 33
    iget-object v1, p0, Lcom/waze/utils/EditTextUtils$1;->val$listener:Lcom/waze/utils/EditTextUtils$OnTouchListenerDoneListener;

    if-eqz v1, :cond_0

    .line 34
    iget-object v1, p0, Lcom/waze/utils/EditTextUtils$1;->val$listener:Lcom/waze/utils/EditTextUtils$OnTouchListenerDoneListener;

    invoke-interface {v1}, Lcom/waze/utils/EditTextUtils$OnTouchListenerDoneListener;->onDone()V

    goto :goto_0
.end method
