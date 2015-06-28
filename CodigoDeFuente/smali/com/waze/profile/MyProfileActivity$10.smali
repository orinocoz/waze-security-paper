.class Lcom/waze/profile/MyProfileActivity$10;
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
    iput-object p1, p0, Lcom/waze/profile/MyProfileActivity$10;->this$0:Lcom/waze/profile/MyProfileActivity;

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 311
    iget-object v0, p0, Lcom/waze/profile/MyProfileActivity$10;->this$0:Lcom/waze/profile/MyProfileActivity;

    #getter for: Lcom/waze/profile/MyProfileActivity;->mUserNameSuggested:Ljava/lang/String;
    invoke-static {v0}, Lcom/waze/profile/MyProfileActivity;->access$13(Lcom/waze/profile/MyProfileActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/waze/profile/MyProfileActivity$10;->this$0:Lcom/waze/profile/MyProfileActivity;

    #getter for: Lcom/waze/profile/MyProfileActivity;->mUserNameEdit:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/waze/profile/MyProfileActivity;->access$14(Lcom/waze/profile/MyProfileActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/profile/MyProfileActivity$10;->this$0:Lcom/waze/profile/MyProfileActivity;

    #getter for: Lcom/waze/profile/MyProfileActivity;->mUserNameSuggested:Ljava/lang/String;
    invoke-static {v1}, Lcom/waze/profile/MyProfileActivity;->access$13(Lcom/waze/profile/MyProfileActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 313
    iget-object v0, p0, Lcom/waze/profile/MyProfileActivity$10;->this$0:Lcom/waze/profile/MyProfileActivity;

    #getter for: Lcom/waze/profile/MyProfileActivity;->mUserNameEdit:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/waze/profile/MyProfileActivity;->access$14(Lcom/waze/profile/MyProfileActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/profile/MyProfileActivity$10;->this$0:Lcom/waze/profile/MyProfileActivity;

    #getter for: Lcom/waze/profile/MyProfileActivity;->mUserNameSuggested:Ljava/lang/String;
    invoke-static {v1}, Lcom/waze/profile/MyProfileActivity;->access$13(Lcom/waze/profile/MyProfileActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 315
    :cond_0
    return-void
.end method
