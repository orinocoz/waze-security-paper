.class Lcom/waze/view/popups/PoiPopUp$1;
.super Ljava/lang/Object;
.source "PoiPopUp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/popups/PoiPopUp;->hide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/view/popups/PoiPopUp;


# direct methods
.method constructor <init>(Lcom/waze/view/popups/PoiPopUp;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/popups/PoiPopUp$1;->this$0:Lcom/waze/view/popups/PoiPopUp;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 114
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/view/popups/PoiPopUp$1;->this$0:Lcom/waze/view/popups/PoiPopUp;

    #getter for: Lcom/waze/view/popups/PoiPopUp;->mAnalyticsAdsNotifyClose:Z
    invoke-static {v1}, Lcom/waze/view/popups/PoiPopUp;->access$13(Lcom/waze/view/popups/PoiPopUp;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->externalPoiClosedNTV(Z)V

    .line 115
    return-void
.end method
