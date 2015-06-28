.class Lcom/waze/view/popups/UserPopUp$6;
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
    iput-object p1, p0, Lcom/waze/view/popups/UserPopUp$6;->this$0:Lcom/waze/view/popups/UserPopUp;

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 390
    iget-object v0, p0, Lcom/waze/view/popups/UserPopUp$6;->this$0:Lcom/waze/view/popups/UserPopUp;

    #calls: Lcom/waze/view/popups/UserPopUp;->onPrvPing()V
    invoke-static {v0}, Lcom/waze/view/popups/UserPopUp;->access$1(Lcom/waze/view/popups/UserPopUp;)V

    .line 391
    return-void
.end method
