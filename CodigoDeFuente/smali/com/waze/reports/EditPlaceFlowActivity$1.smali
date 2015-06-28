.class Lcom/waze/reports/EditPlaceFlowActivity$1;
.super Ljava/lang/Object;
.source "EditPlaceFlowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/EditPlaceFlowActivity;->photoTaken(Landroid/net/Uri;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/EditPlaceFlowActivity;


# direct methods
.method constructor <init>(Lcom/waze/reports/EditPlaceFlowActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/EditPlaceFlowActivity$1;->this$0:Lcom/waze/reports/EditPlaceFlowActivity;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFlowActivity$1;->this$0:Lcom/waze/reports/EditPlaceFlowActivity;

    #getter for: Lcom/waze/reports/EditPlaceFlowActivity;->mNm:Lcom/waze/NativeManager;
    invoke-static {v0}, Lcom/waze/reports/EditPlaceFlowActivity;->access$0(Lcom/waze/reports/EditPlaceFlowActivity;)Lcom/waze/NativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/reports/EditPlaceFlowActivity$1;->this$0:Lcom/waze/reports/EditPlaceFlowActivity;

    #getter for: Lcom/waze/reports/EditPlaceFlowActivity;->mPhotoPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/waze/reports/EditPlaceFlowActivity;->access$1(Lcom/waze/reports/EditPlaceFlowActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->venueAddImageNTV(Ljava/lang/String;)V

    .line 187
    return-void
.end method
