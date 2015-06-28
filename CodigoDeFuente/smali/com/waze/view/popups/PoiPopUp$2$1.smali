.class Lcom/waze/view/popups/PoiPopUp$2$1;
.super Ljava/lang/Object;
.source "PoiPopUp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/popups/PoiPopUp$2;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/view/popups/PoiPopUp$2;


# direct methods
.method constructor <init>(Lcom/waze/view/popups/PoiPopUp$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/popups/PoiPopUp$2$1;->this$1:Lcom/waze/view/popups/PoiPopUp$2;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/waze/view/popups/PoiPopUp$2$1;->this$1:Lcom/waze/view/popups/PoiPopUp$2;

    #getter for: Lcom/waze/view/popups/PoiPopUp$2;->this$0:Lcom/waze/view/popups/PoiPopUp;
    invoke-static {v0}, Lcom/waze/view/popups/PoiPopUp$2;->access$0(Lcom/waze/view/popups/PoiPopUp$2;)Lcom/waze/view/popups/PoiPopUp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/view/popups/PoiPopUp;->hide()V

    .line 153
    return-void
.end method
