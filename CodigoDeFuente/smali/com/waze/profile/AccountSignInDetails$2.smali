.class Lcom/waze/profile/AccountSignInDetails$2;
.super Ljava/lang/Object;
.source "AccountSignInDetails.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/profile/AccountSignInDetails;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/profile/AccountSignInDetails;


# direct methods
.method constructor <init>(Lcom/waze/profile/AccountSignInDetails;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/profile/AccountSignInDetails$2;->this$0:Lcom/waze/profile/AccountSignInDetails;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 114
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/waze/profile/AccountSignInDetails$2;->this$0:Lcom/waze/profile/AccountSignInDetails;

    #calls: Lcom/waze/profile/AccountSignInDetails;->onContinueClicked()V
    invoke-static {v0}, Lcom/waze/profile/AccountSignInDetails;->access$0(Lcom/waze/profile/AccountSignInDetails;)V

    .line 116
    const/4 v0, 0x1

    .line 118
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
