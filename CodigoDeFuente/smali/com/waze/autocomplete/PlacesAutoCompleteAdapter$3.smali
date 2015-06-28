.class Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$3;
.super Ljava/lang/Object;
.source "PlacesAutoCompleteAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;


# direct methods
.method constructor <init>(Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$3;->this$0:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 339
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 340
    iget-object v1, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$3;->this$0:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;

    #getter for: Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->access$9(Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;)Landroid/content/Context;

    move-result-object v1

    .line 342
    const-string v2, "input_method"

    .line 341
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 340
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 344
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter$3;->this$0:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;

    #getter for: Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->mTextBox:Landroid/view/View;
    invoke-static {v1}, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->access$10(Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 343
    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 347
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return v3
.end method
