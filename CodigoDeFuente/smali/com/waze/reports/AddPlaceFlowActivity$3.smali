.class Lcom/waze/reports/AddPlaceFlowActivity$3;
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
    iput-object p1, p0, Lcom/waze/reports/AddPlaceFlowActivity$3;->this$0:Lcom/waze/reports/AddPlaceFlowActivity;

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/waze/reports/AddPlaceFlowActivity$3;->this$0:Lcom/waze/reports/AddPlaceFlowActivity;

    #getter for: Lcom/waze/reports/AddPlaceFlowActivity;->mNatMgr:Lcom/waze/NativeManager;
    invoke-static {v0}, Lcom/waze/reports/AddPlaceFlowActivity;->access$0(Lcom/waze/reports/AddPlaceFlowActivity;)Lcom/waze/NativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/reports/AddPlaceFlowActivity$3;->this$0:Lcom/waze/reports/AddPlaceFlowActivity;

    #getter for: Lcom/waze/reports/AddPlaceFlowActivity;->mPhotoPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/waze/reports/AddPlaceFlowActivity;->access$3(Lcom/waze/reports/AddPlaceFlowActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->venueAddImageNTV(Ljava/lang/String;)V

    .line 349
    return-void
.end method
