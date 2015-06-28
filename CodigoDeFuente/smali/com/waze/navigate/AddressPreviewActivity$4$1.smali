.class Lcom/waze/navigate/AddressPreviewActivity$4$1;
.super Ljava/lang/Object;
.source "AddressPreviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/AddressPreviewActivity$4;->event()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/navigate/AddressPreviewActivity$4;

.field private final synthetic val$locationX:I

.field private final synthetic val$locationY:I


# direct methods
.method constructor <init>(Lcom/waze/navigate/AddressPreviewActivity$4;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/AddressPreviewActivity$4$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$4;

    iput p2, p0, Lcom/waze/navigate/AddressPreviewActivity$4$1;->val$locationX:I

    iput p3, p0, Lcom/waze/navigate/AddressPreviewActivity$4$1;->val$locationY:I

    .line 1996
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2000
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$4$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$4;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity$4;->this$0:Lcom/waze/navigate/AddressPreviewActivity;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity$4;->access$0(Lcom/waze/navigate/AddressPreviewActivity$4;)Lcom/waze/navigate/AddressPreviewActivity;

    move-result-object v0

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mDtnMgr:Lcom/waze/navigate/DriveToNativeManager;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity;->access$10(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    iget v1, p0, Lcom/waze/navigate/AddressPreviewActivity$4$1;->val$locationX:I

    iget v2, p0, Lcom/waze/navigate/AddressPreviewActivity$4$1;->val$locationY:I

    const/16 v3, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/waze/navigate/DriveToNativeManager;->zoomOnMap(III)V

    .line 2001
    return-void
.end method
