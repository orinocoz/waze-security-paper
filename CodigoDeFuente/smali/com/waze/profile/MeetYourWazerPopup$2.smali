.class Lcom/waze/profile/MeetYourWazerPopup$2;
.super Ljava/lang/Object;
.source "MeetYourWazerPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/profile/MeetYourWazerPopup;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/profile/MeetYourWazerPopup;


# direct methods
.method constructor <init>(Lcom/waze/profile/MeetYourWazerPopup;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/profile/MeetYourWazerPopup$2;->this$0:Lcom/waze/profile/MeetYourWazerPopup;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/waze/profile/MeetYourWazerPopup$2;->this$0:Lcom/waze/profile/MeetYourWazerPopup;

    #calls: Lcom/waze/profile/MeetYourWazerPopup;->onContinueClicked()V
    invoke-static {v0}, Lcom/waze/profile/MeetYourWazerPopup;->access$1(Lcom/waze/profile/MeetYourWazerPopup;)V

    .line 105
    return-void
.end method
