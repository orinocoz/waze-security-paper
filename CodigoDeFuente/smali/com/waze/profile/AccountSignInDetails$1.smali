.class Lcom/waze/profile/AccountSignInDetails$1;
.super Ljava/lang/Object;
.source "AccountSignInDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/waze/profile/AccountSignInDetails$1;->this$0:Lcom/waze/profile/AccountSignInDetails;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/waze/profile/AccountSignInDetails$1;->this$0:Lcom/waze/profile/AccountSignInDetails;

    #calls: Lcom/waze/profile/AccountSignInDetails;->onContinueClicked()V
    invoke-static {v0}, Lcom/waze/profile/AccountSignInDetails;->access$0(Lcom/waze/profile/AccountSignInDetails;)V

    .line 107
    return-void
.end method
