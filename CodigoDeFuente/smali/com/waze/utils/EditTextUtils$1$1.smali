.class Lcom/waze/utils/EditTextUtils$1$1;
.super Ljava/lang/Object;
.source "EditTextUtils.java"

# interfaces
.implements Lcom/waze/view/text/TypingLockListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/utils/EditTextUtils$1;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/utils/EditTextUtils$1;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/waze/utils/EditTextUtils$1;Landroid/content/Context;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/utils/EditTextUtils$1$1;->this$1:Lcom/waze/utils/EditTextUtils$1;

    iput-object p2, p0, Lcom/waze/utils/EditTextUtils$1$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/waze/utils/EditTextUtils$1$1;->val$editText:Landroid/widget/EditText;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldLock()V
    .locals 3

    .prologue
    .line 29
    iget-object v1, p0, Lcom/waze/utils/EditTextUtils$1$1;->val$context:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 30
    .local v0, mgr:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/waze/utils/EditTextUtils$1$1;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 31
    return-void
.end method
