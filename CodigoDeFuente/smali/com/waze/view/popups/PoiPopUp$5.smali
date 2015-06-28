.class Lcom/waze/view/popups/PoiPopUp$5;
.super Ljava/lang/Object;
.source "PoiPopUp.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/popups/PoiPopUp;->GetView(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIZLjava/lang/String;IILjava/lang/String;Ljava/lang/String;)Landroid/view/View;
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
    iput-object p1, p0, Lcom/waze/view/popups/PoiPopUp$5;->this$0:Lcom/waze/view/popups/PoiPopUp;

    .line 578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 582
    invoke-static {}, Lcom/waze/view/popups/PoiPopUp;->access$6()Lcom/waze/LayoutManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/waze/LayoutManager;->SetPopUpInterrupt(Z)V

    .line 583
    return v1
.end method
