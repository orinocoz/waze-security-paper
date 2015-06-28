.class Lcom/waze/navigate/AddressPreviewActivity$7;
.super Ljava/lang/Object;
.source "AddressPreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/AddressPreviewActivity;->setUpActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/AddressPreviewActivity;

.field private final synthetic val$scrollAndTouchListener:Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;


# direct methods
.method constructor <init>(Lcom/waze/navigate/AddressPreviewActivity;Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/AddressPreviewActivity$7;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    iput-object p2, p0, Lcom/waze/navigate/AddressPreviewActivity$7;->val$scrollAndTouchListener:Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 344
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$7;->val$scrollAndTouchListener:Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->_isMapOpen:Z
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->access$3(Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$7;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mScrollView:Lcom/waze/ifs/ui/ObservableScrollView;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity;->access$0(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/ifs/ui/ObservableScrollView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/waze/ifs/ui/ObservableScrollView;->requestDisallowInterceptTouchEvent(Z)V

    .line 348
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 349
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$7;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mScrollView:Lcom/waze/ifs/ui/ObservableScrollView;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity;->access$0(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/ifs/ui/ObservableScrollView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/waze/ifs/ui/ObservableScrollView;->requestDisallowInterceptTouchEvent(Z)V

    .line 352
    :cond_1
    return v1
.end method
