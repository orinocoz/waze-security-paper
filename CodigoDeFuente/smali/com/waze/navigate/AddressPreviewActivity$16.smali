.class Lcom/waze/navigate/AddressPreviewActivity$16;
.super Ljava/lang/Object;
.source "AddressPreviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/AddressPreviewActivity;->refreshView()V
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
    iput-object p1, p0, Lcom/waze/navigate/AddressPreviewActivity$16;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    .line 951
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 954
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$16;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    iget-object v1, p0, Lcom/waze/navigate/AddressPreviewActivity$16;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;
    invoke-static {v1}, Lcom/waze/navigate/AddressPreviewActivity;->access$20(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/NativeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/NativeManager;->logAnalyticsAdsGetActiveContextNTV()Lcom/waze/NativeManager$AdsActiveContext;

    move-result-object v1

    #setter for: Lcom/waze/navigate/AddressPreviewActivity;->mAdsCtx:Lcom/waze/NativeManager$AdsActiveContext;
    invoke-static {v0, v1}, Lcom/waze/navigate/AddressPreviewActivity;->access$23(Lcom/waze/navigate/AddressPreviewActivity;Lcom/waze/NativeManager$AdsActiveContext;)V

    .line 955
    return-void
.end method
