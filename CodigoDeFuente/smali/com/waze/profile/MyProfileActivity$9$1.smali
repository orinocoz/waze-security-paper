.class Lcom/waze/profile/MyProfileActivity$9$1;
.super Ljava/lang/Object;
.source "MyProfileActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/profile/MyProfileActivity$9;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/profile/MyProfileActivity$9;


# direct methods
.method constructor <init>(Lcom/waze/profile/MyProfileActivity$9;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/profile/MyProfileActivity$9$1;->this$1:Lcom/waze/profile/MyProfileActivity$9;

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 287
    iget-object v0, p0, Lcom/waze/profile/MyProfileActivity$9$1;->this$1:Lcom/waze/profile/MyProfileActivity$9;

    #getter for: Lcom/waze/profile/MyProfileActivity$9;->this$0:Lcom/waze/profile/MyProfileActivity;
    invoke-static {v0}, Lcom/waze/profile/MyProfileActivity$9;->access$0(Lcom/waze/profile/MyProfileActivity$9;)Lcom/waze/profile/MyProfileActivity;

    move-result-object v0

    #getter for: Lcom/waze/profile/MyProfileActivity;->mText:Ljava/lang/String;
    invoke-static {v0}, Lcom/waze/profile/MyProfileActivity;->access$11(Lcom/waze/profile/MyProfileActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waze/profile/MyProfileActivity$9$1;->this$1:Lcom/waze/profile/MyProfileActivity$9;

    #getter for: Lcom/waze/profile/MyProfileActivity$9;->this$0:Lcom/waze/profile/MyProfileActivity;
    invoke-static {v0}, Lcom/waze/profile/MyProfileActivity$9;->access$0(Lcom/waze/profile/MyProfileActivity$9;)Lcom/waze/profile/MyProfileActivity;

    move-result-object v0

    #getter for: Lcom/waze/profile/MyProfileActivity;->mText:Ljava/lang/String;
    invoke-static {v0}, Lcom/waze/profile/MyProfileActivity;->access$11(Lcom/waze/profile/MyProfileActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/waze/profile/MyProfileActivity$9$1;->this$1:Lcom/waze/profile/MyProfileActivity$9;

    #getter for: Lcom/waze/profile/MyProfileActivity$9;->this$0:Lcom/waze/profile/MyProfileActivity;
    invoke-static {v0}, Lcom/waze/profile/MyProfileActivity$9;->access$0(Lcom/waze/profile/MyProfileActivity$9;)Lcom/waze/profile/MyProfileActivity;

    move-result-object v0

    #getter for: Lcom/waze/profile/MyProfileActivity;->mNm:Lcom/waze/NativeManager;
    invoke-static {v0}, Lcom/waze/profile/MyProfileActivity;->access$9(Lcom/waze/profile/MyProfileActivity;)Lcom/waze/NativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/profile/MyProfileActivity$9$1;->this$1:Lcom/waze/profile/MyProfileActivity$9;

    #getter for: Lcom/waze/profile/MyProfileActivity$9;->this$0:Lcom/waze/profile/MyProfileActivity;
    invoke-static {v1}, Lcom/waze/profile/MyProfileActivity$9;->access$0(Lcom/waze/profile/MyProfileActivity$9;)Lcom/waze/profile/MyProfileActivity;

    move-result-object v1

    #getter for: Lcom/waze/profile/MyProfileActivity;->mText:Ljava/lang/String;
    invoke-static {v1}, Lcom/waze/profile/MyProfileActivity;->access$11(Lcom/waze/profile/MyProfileActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v2, v1}, Lcom/waze/NativeManager;->SuggestUserNameRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :cond_0
    return-void
.end method
