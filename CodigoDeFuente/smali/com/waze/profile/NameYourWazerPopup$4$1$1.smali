.class Lcom/waze/profile/NameYourWazerPopup$4$1$1;
.super Ljava/lang/Object;
.source "NameYourWazerPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/profile/NameYourWazerPopup$4$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/waze/profile/NameYourWazerPopup$4$1;


# direct methods
.method constructor <init>(Lcom/waze/profile/NameYourWazerPopup$4$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/profile/NameYourWazerPopup$4$1$1;->this$2:Lcom/waze/profile/NameYourWazerPopup$4$1;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 157
    iget-object v0, p0, Lcom/waze/profile/NameYourWazerPopup$4$1$1;->this$2:Lcom/waze/profile/NameYourWazerPopup$4$1;

    #getter for: Lcom/waze/profile/NameYourWazerPopup$4$1;->this$1:Lcom/waze/profile/NameYourWazerPopup$4;
    invoke-static {v0}, Lcom/waze/profile/NameYourWazerPopup$4$1;->access$0(Lcom/waze/profile/NameYourWazerPopup$4$1;)Lcom/waze/profile/NameYourWazerPopup$4;

    move-result-object v0

    #getter for: Lcom/waze/profile/NameYourWazerPopup$4;->this$0:Lcom/waze/profile/NameYourWazerPopup;
    invoke-static {v0}, Lcom/waze/profile/NameYourWazerPopup$4;->access$1(Lcom/waze/profile/NameYourWazerPopup$4;)Lcom/waze/profile/NameYourWazerPopup;

    move-result-object v0

    #getter for: Lcom/waze/profile/NameYourWazerPopup;->mText:Ljava/lang/String;
    invoke-static {v0}, Lcom/waze/profile/NameYourWazerPopup;->access$4(Lcom/waze/profile/NameYourWazerPopup;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waze/profile/NameYourWazerPopup$4$1$1;->this$2:Lcom/waze/profile/NameYourWazerPopup$4$1;

    #getter for: Lcom/waze/profile/NameYourWazerPopup$4$1;->this$1:Lcom/waze/profile/NameYourWazerPopup$4;
    invoke-static {v0}, Lcom/waze/profile/NameYourWazerPopup$4$1;->access$0(Lcom/waze/profile/NameYourWazerPopup$4$1;)Lcom/waze/profile/NameYourWazerPopup$4;

    move-result-object v0

    #getter for: Lcom/waze/profile/NameYourWazerPopup$4;->this$0:Lcom/waze/profile/NameYourWazerPopup;
    invoke-static {v0}, Lcom/waze/profile/NameYourWazerPopup$4;->access$1(Lcom/waze/profile/NameYourWazerPopup$4;)Lcom/waze/profile/NameYourWazerPopup;

    move-result-object v0

    #getter for: Lcom/waze/profile/NameYourWazerPopup;->mText:Ljava/lang/String;
    invoke-static {v0}, Lcom/waze/profile/NameYourWazerPopup;->access$4(Lcom/waze/profile/NameYourWazerPopup;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/waze/profile/NameYourWazerPopup$4$1$1;->this$2:Lcom/waze/profile/NameYourWazerPopup$4$1;

    #getter for: Lcom/waze/profile/NameYourWazerPopup$4$1;->this$1:Lcom/waze/profile/NameYourWazerPopup$4;
    invoke-static {v0}, Lcom/waze/profile/NameYourWazerPopup$4$1;->access$0(Lcom/waze/profile/NameYourWazerPopup$4$1;)Lcom/waze/profile/NameYourWazerPopup$4;

    move-result-object v0

    #getter for: Lcom/waze/profile/NameYourWazerPopup$4;->this$0:Lcom/waze/profile/NameYourWazerPopup;
    invoke-static {v0}, Lcom/waze/profile/NameYourWazerPopup$4;->access$1(Lcom/waze/profile/NameYourWazerPopup$4;)Lcom/waze/profile/NameYourWazerPopup;

    move-result-object v0

    #getter for: Lcom/waze/profile/NameYourWazerPopup;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v0}, Lcom/waze/profile/NameYourWazerPopup;->access$3(Lcom/waze/profile/NameYourWazerPopup;)Lcom/waze/NativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/profile/NameYourWazerPopup$4$1$1;->this$2:Lcom/waze/profile/NameYourWazerPopup$4$1;

    #getter for: Lcom/waze/profile/NameYourWazerPopup$4$1;->this$1:Lcom/waze/profile/NameYourWazerPopup$4;
    invoke-static {v1}, Lcom/waze/profile/NameYourWazerPopup$4$1;->access$0(Lcom/waze/profile/NameYourWazerPopup$4$1;)Lcom/waze/profile/NameYourWazerPopup$4;

    move-result-object v1

    #getter for: Lcom/waze/profile/NameYourWazerPopup$4;->this$0:Lcom/waze/profile/NameYourWazerPopup;
    invoke-static {v1}, Lcom/waze/profile/NameYourWazerPopup$4;->access$1(Lcom/waze/profile/NameYourWazerPopup$4;)Lcom/waze/profile/NameYourWazerPopup;

    move-result-object v1

    #getter for: Lcom/waze/profile/NameYourWazerPopup;->mText:Ljava/lang/String;
    invoke-static {v1}, Lcom/waze/profile/NameYourWazerPopup;->access$4(Lcom/waze/profile/NameYourWazerPopup;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v2, v1}, Lcom/waze/NativeManager;->SuggestUserNameRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/waze/profile/NameYourWazerPopup$4$1$1;->this$2:Lcom/waze/profile/NameYourWazerPopup$4$1;

    #getter for: Lcom/waze/profile/NameYourWazerPopup$4$1;->this$1:Lcom/waze/profile/NameYourWazerPopup$4;
    invoke-static {v0}, Lcom/waze/profile/NameYourWazerPopup$4$1;->access$0(Lcom/waze/profile/NameYourWazerPopup$4$1;)Lcom/waze/profile/NameYourWazerPopup$4;

    move-result-object v0

    #getter for: Lcom/waze/profile/NameYourWazerPopup$4;->timer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/waze/profile/NameYourWazerPopup$4;->access$0(Lcom/waze/profile/NameYourWazerPopup$4;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 162
    return-void
.end method
