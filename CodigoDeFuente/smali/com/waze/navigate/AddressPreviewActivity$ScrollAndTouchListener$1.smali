.class Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener$1;
.super Ljava/lang/Object;
.source "AddressPreviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->lockScrollTo(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;

.field private final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;

    iput p2, p0, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener$1;->val$y:I

    .line 2107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2109
    iget-object v1, p0, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->osv:Lcom/waze/ifs/ui/ObservableScrollView;
    invoke-static {v1}, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->access$0(Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;)Lcom/waze/ifs/ui/ObservableScrollView;

    move-result-object v1

    iget v2, p0, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener$1;->val$y:I

    invoke-virtual {v1, v0, v2}, Lcom/waze/ifs/ui/ObservableScrollView;->smoothScrollTo(II)V

    .line 2110
    iget-object v1, p0, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;

    iget v2, p0, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener$1;->val$y:I

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    #setter for: Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->_isMapOpen:Z
    invoke-static {v1, v0}, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->access$1(Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;Z)V

    .line 2111
    return-void
.end method
