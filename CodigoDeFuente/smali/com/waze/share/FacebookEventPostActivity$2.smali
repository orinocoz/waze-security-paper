.class Lcom/waze/share/FacebookEventPostActivity$2;
.super Ljava/lang/Object;
.source "FacebookEventPostActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/share/FacebookEventPostActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/share/FacebookEventPostActivity;


# direct methods
.method constructor <init>(Lcom/waze/share/FacebookEventPostActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/share/FacebookEventPostActivity$2;->this$0:Lcom/waze/share/FacebookEventPostActivity;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/waze/share/FacebookEventPostActivity$2;->this$0:Lcom/waze/share/FacebookEventPostActivity;

    #getter for: Lcom/waze/share/FacebookEventPostActivity;->mFbMainData:Lcom/waze/share/ShareFbMainData;
    invoke-static {v0}, Lcom/waze/share/FacebookEventPostActivity;->access$1(Lcom/waze/share/FacebookEventPostActivity;)Lcom/waze/share/ShareFbMainData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/waze/share/ShareFbMainData;->isNavigating:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waze/share/FacebookEventPostActivity$2;->this$0:Lcom/waze/share/FacebookEventPostActivity;

    #getter for: Lcom/waze/share/FacebookEventPostActivity;->bIsAction:Z
    invoke-static {v0}, Lcom/waze/share/FacebookEventPostActivity;->access$2(Lcom/waze/share/FacebookEventPostActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/waze/share/FacebookEventPostActivity$2;->this$0:Lcom/waze/share/FacebookEventPostActivity;

    #calls: Lcom/waze/share/FacebookEventPostActivity;->postAction()V
    invoke-static {v0}, Lcom/waze/share/FacebookEventPostActivity;->access$3(Lcom/waze/share/FacebookEventPostActivity;)V

    .line 64
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/waze/share/FacebookEventPostActivity$2;->this$0:Lcom/waze/share/FacebookEventPostActivity;

    #calls: Lcom/waze/share/FacebookEventPostActivity;->postFeed()V
    invoke-static {v0}, Lcom/waze/share/FacebookEventPostActivity;->access$4(Lcom/waze/share/FacebookEventPostActivity;)V

    goto :goto_0
.end method
