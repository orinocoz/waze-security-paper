.class Lcom/waze/navigate/AddressPreviewActivity$34;
.super Ljava/lang/Object;
.source "AddressPreviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/AddressPreviewActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/AddressPreviewActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/AddressPreviewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/AddressPreviewActivity$34;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    .line 1769
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1773
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$34;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mScrollView:Lcom/waze/ifs/ui/ObservableScrollView;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity;->access$0(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/ifs/ui/ObservableScrollView;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/waze/navigate/AddressPreviewActivity$34;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mFrameHeight:I
    invoke-static {v2}, Lcom/waze/navigate/AddressPreviewActivity;->access$14(Lcom/waze/navigate/AddressPreviewActivity;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42f0

    iget-object v4, p0, Lcom/waze/navigate/AddressPreviewActivity$34;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mDensity:F
    invoke-static {v4}, Lcom/waze/navigate/AddressPreviewActivity;->access$4(Lcom/waze/navigate/AddressPreviewActivity;)F

    move-result v4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/waze/ifs/ui/ObservableScrollView;->scrollTo(II)V

    .line 1774
    return-void
.end method
