.class Lcom/waze/view/popups/PoiPopUp$2;
.super Ljava/lang/Object;
.source "PoiPopUp.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/popups/PoiPopUp;->hideDlg()V
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
    iput-object p1, p0, Lcom/waze/view/popups/PoiPopUp$2;->this$0:Lcom/waze/view/popups/PoiPopUp;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/view/popups/PoiPopUp$2;)Lcom/waze/view/popups/PoiPopUp;
    .locals 1
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/waze/view/popups/PoiPopUp$2;->this$0:Lcom/waze/view/popups/PoiPopUp;

    return-object v0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/waze/view/popups/PoiPopUp$2;->this$0:Lcom/waze/view/popups/PoiPopUp;

    new-instance v1, Lcom/waze/view/popups/PoiPopUp$2$1;

    invoke-direct {v1, p0}, Lcom/waze/view/popups/PoiPopUp$2$1;-><init>(Lcom/waze/view/popups/PoiPopUp$2;)V

    invoke-virtual {v0, v1}, Lcom/waze/view/popups/PoiPopUp;->post(Ljava/lang/Runnable;)Z

    .line 155
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 156
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 157
    return-void
.end method
