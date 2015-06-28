.class Lcom/waze/view/popups/UserPopUp$5;
.super Ljava/lang/Object;
.source "UserPopUp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/popups/UserPopUp;->show(Lcom/waze/user/UserData;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/view/popups/UserPopUp;


# direct methods
.method constructor <init>(Lcom/waze/view/popups/UserPopUp;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/popups/UserPopUp$5;->this$0:Lcom/waze/view/popups/UserPopUp;

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 384
    iget-object v0, p0, Lcom/waze/view/popups/UserPopUp$5;->this$0:Lcom/waze/view/popups/UserPopUp;

    #calls: Lcom/waze/view/popups/UserPopUp;->onPing()V
    invoke-static {v0}, Lcom/waze/view/popups/UserPopUp;->access$0(Lcom/waze/view/popups/UserPopUp;)V

    .line 385
    return-void
.end method
