.class Lcom/waze/view/popups/DetailsPopUp$2;
.super Ljava/lang/Object;
.source "DetailsPopUp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/popups/DetailsPopUp;->onMoreAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/view/popups/DetailsPopUp;


# direct methods
.method constructor <init>(Lcom/waze/view/popups/DetailsPopUp;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/popups/DetailsPopUp$2;->this$0:Lcom/waze/view/popups/DetailsPopUp;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->wazeUiDetailsPopupNextNTV()V

    .line 75
    return-void
.end method
