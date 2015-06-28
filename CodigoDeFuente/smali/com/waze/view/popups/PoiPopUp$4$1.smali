.class Lcom/waze/view/popups/PoiPopUp$4$1;
.super Ljava/lang/Object;
.source "PoiPopUp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/popups/PoiPopUp$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/view/popups/PoiPopUp$4;


# direct methods
.method constructor <init>(Lcom/waze/view/popups/PoiPopUp$4;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/popups/PoiPopUp$4$1;->this$1:Lcom/waze/view/popups/PoiPopUp$4;

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 211
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-static {}, Lcom/waze/view/popups/PoiPopUp;->access$17()I

    move-result v1

    invoke-static {}, Lcom/waze/view/popups/PoiPopUp;->access$18()I

    move-result v2

    invoke-static {}, Lcom/waze/view/popups/PoiPopUp;->access$19()I

    move-result v3

    invoke-static {}, Lcom/waze/view/popups/PoiPopUp;->access$20()Ljava/lang/String;

    move-result-object v4

    .line 212
    invoke-static {}, Lcom/waze/view/popups/PoiPopUp;->access$21()Ljava/lang/String;

    move-result-object v5

    .line 211
    invoke-virtual/range {v0 .. v5}, Lcom/waze/NativeManager;->navigateToExternalPoiNTV(IIILjava/lang/String;Ljava/lang/String;)V

    .line 213
    return-void
.end method
