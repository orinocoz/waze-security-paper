.class Lcom/waze/reports/AddPlaceFlowActivity$4;
.super Ljava/lang/Object;
.source "AddPlaceFlowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/AddPlaceFlowActivity;->photoTaken(Landroid/net/Uri;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/AddPlaceFlowActivity;


# direct methods
.method constructor <init>(Lcom/waze/reports/AddPlaceFlowActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/AddPlaceFlowActivity$4;->this$0:Lcom/waze/reports/AddPlaceFlowActivity;

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/reports/AddPlaceFlowActivity$4;)Lcom/waze/reports/AddPlaceFlowActivity;
    .locals 1
    .parameter

    .prologue
    .line 356
    iget-object v0, p0, Lcom/waze/reports/AddPlaceFlowActivity$4;->this$0:Lcom/waze/reports/AddPlaceFlowActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 360
    iget-object v0, p0, Lcom/waze/reports/AddPlaceFlowActivity$4;->this$0:Lcom/waze/reports/AddPlaceFlowActivity;

    #getter for: Lcom/waze/reports/AddPlaceFlowActivity;->mSearchVenueResults:[Landroid/os/Parcelable;
    invoke-static {v0}, Lcom/waze/reports/AddPlaceFlowActivity;->access$4(Lcom/waze/reports/AddPlaceFlowActivity;)[Landroid/os/Parcelable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/waze/reports/AddPlaceFlowActivity$4;->this$0:Lcom/waze/reports/AddPlaceFlowActivity;

    invoke-virtual {v0}, Lcom/waze/reports/AddPlaceFlowActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/waze/reports/AddPlaceFlowActivity$4;->this$0:Lcom/waze/reports/AddPlaceFlowActivity;

    #getter for: Lcom/waze/reports/AddPlaceFlowActivity;->mNatMgr:Lcom/waze/NativeManager;
    invoke-static {v0}, Lcom/waze/reports/AddPlaceFlowActivity;->access$0(Lcom/waze/reports/AddPlaceFlowActivity;)Lcom/waze/NativeManager;

    move-result-object v0

    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_UHHOHE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 364
    iget-object v1, p0, Lcom/waze/reports/AddPlaceFlowActivity$4;->this$0:Lcom/waze/reports/AddPlaceFlowActivity;

    #getter for: Lcom/waze/reports/AddPlaceFlowActivity;->mNatMgr:Lcom/waze/NativeManager;
    invoke-static {v1}, Lcom/waze/reports/AddPlaceFlowActivity;->access$0(Lcom/waze/reports/AddPlaceFlowActivity;)Lcom/waze/NativeManager;

    move-result-object v1

    .line 365
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_NETWORK_CONNECTION_PROBLEMS__PLEASE_TRY_AGAIN_LATER_:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 366
    const/4 v2, 0x0

    new-instance v3, Lcom/waze/reports/AddPlaceFlowActivity$4$1;

    invoke-direct {v3, p0}, Lcom/waze/reports/AddPlaceFlowActivity$4$1;-><init>(Lcom/waze/reports/AddPlaceFlowActivity$4;)V

    .line 362
    invoke-static {v0, v1, v2, v3}, Lcom/waze/MsgBox;->openMessageBoxWithCallback(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;)V

    .line 375
    :cond_0
    return-void
.end method
