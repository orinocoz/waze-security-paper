.class Lcom/waze/profile/AccountSignInDetails$3;
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
    iput-object p1, p0, Lcom/waze/profile/AccountSignInDetails$3;->this$0:Lcom/waze/profile/AccountSignInDetails;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/waze/profile/AccountSignInDetails$3;->this$0:Lcom/waze/profile/AccountSignInDetails;

    new-instance v1, Lcom/waze/profile/ImageTaker;

    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v2

    const-string v3, "ProfileImage"

    invoke-direct {v1, v2, v3}, Lcom/waze/profile/ImageTaker;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    #setter for: Lcom/waze/profile/AccountSignInDetails;->mImageTaker:Lcom/waze/profile/ImageTaker;
    invoke-static {v0, v1}, Lcom/waze/profile/AccountSignInDetails;->access$1(Lcom/waze/profile/AccountSignInDetails;Lcom/waze/profile/ImageTaker;)V

    .line 127
    iget-object v0, p0, Lcom/waze/profile/AccountSignInDetails$3;->this$0:Lcom/waze/profile/AccountSignInDetails;

    #getter for: Lcom/waze/profile/AccountSignInDetails;->mImageTaker:Lcom/waze/profile/ImageTaker;
    invoke-static {v0}, Lcom/waze/profile/AccountSignInDetails;->access$2(Lcom/waze/profile/AccountSignInDetails;)Lcom/waze/profile/ImageTaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/profile/ImageTaker;->sendIntent()V

    .line 128
    return-void
.end method
