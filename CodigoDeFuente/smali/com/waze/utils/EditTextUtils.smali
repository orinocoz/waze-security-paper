.class public Lcom/waze/utils/EditTextUtils;
.super Ljava/lang/Object;
.source "EditTextUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/utils/EditTextUtils$OnTouchListenerDoneListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkTypeLockOnCreate(Landroid/content/Context;Landroid/widget/EditText;)V
    .locals 2
    .parameter "context"
    .parameter "editText"

    .prologue
    .line 41
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    .line 42
    .local v0, lMgr:Lcom/waze/NativeManager;
    new-instance v1, Lcom/waze/utils/EditTextUtils$2;

    invoke-direct {v1, p0, p1}, Lcom/waze/utils/EditTextUtils$2;-><init>(Landroid/content/Context;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->checkTypingLock(Lcom/waze/view/text/TypingLockListener;)V

    .line 49
    return-void
.end method

.method public static closeKeyboard(Landroid/app/Activity;Landroid/view/View;)V
    .locals 3
    .parameter "a"
    .parameter "v"

    .prologue
    .line 52
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 53
    .local v0, mgr:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 54
    return-void
.end method

.method public static getKeyboardLockOnTouchListener(Landroid/content/Context;Landroid/widget/EditText;Lcom/waze/utils/EditTextUtils$OnTouchListenerDoneListener;)Landroid/view/View$OnTouchListener;
    .locals 1
    .parameter "context"
    .parameter "editText"
    .parameter "listener"

    .prologue
    .line 19
    new-instance v0, Lcom/waze/utils/EditTextUtils$1;

    invoke-direct {v0, p2, p0, p1}, Lcom/waze/utils/EditTextUtils$1;-><init>(Lcom/waze/utils/EditTextUtils$OnTouchListenerDoneListener;Landroid/content/Context;Landroid/widget/EditText;)V

    return-object v0
.end method

.method public static openKeyboard(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2
    .parameter "a"
    .parameter "v"

    .prologue
    .line 57
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 58
    .local v0, mgr:Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 59
    return-void
.end method
