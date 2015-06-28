.class Lcom/waze/view/popups/PoiPopUp$4;
.super Ljava/lang/Object;
.source "PoiPopUp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/popups/PoiPopUp;->onNavigateButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/view/popups/PoiPopUp;

.field private final synthetic val$dtnm:Lcom/waze/navigate/DriveToNativeManager;

.field private final synthetic val$nm:Lcom/waze/NativeManager;


# direct methods
.method constructor <init>(Lcom/waze/view/popups/PoiPopUp;Lcom/waze/navigate/DriveToNativeManager;Lcom/waze/NativeManager;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/popups/PoiPopUp$4;->this$0:Lcom/waze/view/popups/PoiPopUp;

    iput-object p2, p0, Lcom/waze/view/popups/PoiPopUp$4;->val$dtnm:Lcom/waze/navigate/DriveToNativeManager;

    iput-object p3, p0, Lcom/waze/view/popups/PoiPopUp$4;->val$nm:Lcom/waze/NativeManager;

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 205
    iget-object v0, p0, Lcom/waze/view/popups/PoiPopUp$4;->val$dtnm:Lcom/waze/navigate/DriveToNativeManager;

    sget v1, Lcom/waze/navigate/DriveToNativeManager;->UH_SEARCH_ADD_RESULT:I

    iget-object v2, p0, Lcom/waze/view/popups/PoiPopUp$4;->this$0:Lcom/waze/view/popups/PoiPopUp;

    #getter for: Lcom/waze/view/popups/PoiPopUp;->mVenueGetHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/waze/view/popups/PoiPopUp;->access$14(Lcom/waze/view/popups/PoiPopUp;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/waze/navigate/DriveToNativeManager;->unsetUpdateHandler(ILandroid/os/Handler;)V

    .line 206
    iget-object v0, p0, Lcom/waze/view/popups/PoiPopUp$4;->val$nm:Lcom/waze/NativeManager;

    invoke-virtual {v0}, Lcom/waze/NativeManager;->CloseProgressPopup()V

    .line 207
    new-instance v0, Lcom/waze/view/popups/PoiPopUp$4$1;

    invoke-direct {v0, p0}, Lcom/waze/view/popups/PoiPopUp$4$1;-><init>(Lcom/waze/view/popups/PoiPopUp$4;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 215
    invoke-static {}, Lcom/waze/view/popups/PoiPopUp;->access$6()Lcom/waze/LayoutManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/waze/LayoutManager;->callCloseAllPopups(I)V

    .line 216
    return-void
.end method
