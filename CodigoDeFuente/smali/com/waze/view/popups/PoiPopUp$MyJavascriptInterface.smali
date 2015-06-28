.class Lcom/waze/view/popups/PoiPopUp$MyJavascriptInterface;
.super Ljava/lang/Object;
.source "PoiPopUp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/view/popups/PoiPopUp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyJavascriptInterface"
.end annotation


# instance fields
.field private activity:Lcom/waze/view/popups/PoiPopUp;


# direct methods
.method public constructor <init>(Lcom/waze/view/popups/PoiPopUp;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    iput-object p1, p0, Lcom/waze/view/popups/PoiPopUp$MyJavascriptInterface;->activity:Lcom/waze/view/popups/PoiPopUp;

    .line 452
    return-void
.end method


# virtual methods
.method public processReturnValue(ILjava/lang/String;)V
    .locals 2
    .parameter "index"
    .parameter "value"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 456
    iget-object v0, p0, Lcom/waze/view/popups/PoiPopUp$MyJavascriptInterface;->activity:Lcom/waze/view/popups/PoiPopUp;

    iget-object v1, p0, Lcom/waze/view/popups/PoiPopUp$MyJavascriptInterface;->activity:Lcom/waze/view/popups/PoiPopUp;

    #getter for: Lcom/waze/view/popups/PoiPopUp;->VOICE_ACTIONS_INDEX:I
    invoke-static {v1}, Lcom/waze/view/popups/PoiPopUp;->access$0(Lcom/waze/view/popups/PoiPopUp;)I

    move-result v1

    #calls: Lcom/waze/view/popups/PoiPopUp;->processJsReturnValue(ILjava/lang/String;)V
    invoke-static {v0, v1, p2}, Lcom/waze/view/popups/PoiPopUp;->access$1(Lcom/waze/view/popups/PoiPopUp;ILjava/lang/String;)V

    .line 457
    return-void
.end method
