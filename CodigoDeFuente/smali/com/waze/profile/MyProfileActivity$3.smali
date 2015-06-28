.class Lcom/waze/profile/MyProfileActivity$3;
.super Ljava/lang/Object;
.source "MyProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/profile/MyProfileActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/profile/MyProfileActivity;


# direct methods
.method constructor <init>(Lcom/waze/profile/MyProfileActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/profile/MyProfileActivity$3;->this$0:Lcom/waze/profile/MyProfileActivity;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/waze/profile/MyProfileActivity$3;->this$0:Lcom/waze/profile/MyProfileActivity;

    #getter for: Lcom/waze/profile/MyProfileActivity;->mImageTaker:Lcom/waze/profile/ImageTaker;
    invoke-static {v0}, Lcom/waze/profile/MyProfileActivity;->access$2(Lcom/waze/profile/MyProfileActivity;)Lcom/waze/profile/ImageTaker;

    move-result-object v0

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/waze/profile/MyProfileActivity$3;->this$0:Lcom/waze/profile/MyProfileActivity;

    .line 162
    new-instance v1, Lcom/waze/profile/ImageTaker;

    iget-object v2, p0, Lcom/waze/profile/MyProfileActivity$3;->this$0:Lcom/waze/profile/MyProfileActivity;

    const-string v3, "ProfileImage"

    invoke-direct {v1, v2, v3}, Lcom/waze/profile/ImageTaker;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 161
    #setter for: Lcom/waze/profile/MyProfileActivity;->mImageTaker:Lcom/waze/profile/ImageTaker;
    invoke-static {v0, v1}, Lcom/waze/profile/MyProfileActivity;->access$3(Lcom/waze/profile/MyProfileActivity;Lcom/waze/profile/ImageTaker;)V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/waze/profile/MyProfileActivity$3;->this$0:Lcom/waze/profile/MyProfileActivity;

    #getter for: Lcom/waze/profile/MyProfileActivity;->mImageTaker:Lcom/waze/profile/ImageTaker;
    invoke-static {v0}, Lcom/waze/profile/MyProfileActivity;->access$2(Lcom/waze/profile/MyProfileActivity;)Lcom/waze/profile/ImageTaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/profile/ImageTaker;->sendIntent()V

    .line 165
    return-void
.end method
