.class Lcom/waze/share/ShareFbActivity$4;
.super Ljava/lang/Object;
.source "ShareFbActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/share/ShareFbActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/share/ShareFbActivity;


# direct methods
.method constructor <init>(Lcom/waze/share/ShareFbActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/share/ShareFbActivity$4;->this$0:Lcom/waze/share/ShareFbActivity;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/waze/share/ShareFbActivity$4;->this$0:Lcom/waze/share/ShareFbActivity;

    #getter for: Lcom/waze/share/ShareFbActivity;->mFbMainData:Lcom/waze/share/ShareFbMainData;
    invoke-static {v0}, Lcom/waze/share/ShareFbActivity;->access$2(Lcom/waze/share/ShareFbActivity;)Lcom/waze/share/ShareFbMainData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/waze/share/ShareFbMainData;->isNavigating:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waze/share/ShareFbActivity$4;->this$0:Lcom/waze/share/ShareFbActivity;

    #getter for: Lcom/waze/share/ShareFbActivity;->bIsAction:Z
    invoke-static {v0}, Lcom/waze/share/ShareFbActivity;->access$3(Lcom/waze/share/ShareFbActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/waze/share/ShareFbActivity$4;->this$0:Lcom/waze/share/ShareFbActivity;

    #calls: Lcom/waze/share/ShareFbActivity;->postAction()V
    invoke-static {v0}, Lcom/waze/share/ShareFbActivity;->access$4(Lcom/waze/share/ShareFbActivity;)V

    .line 79
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/waze/share/ShareFbActivity$4;->this$0:Lcom/waze/share/ShareFbActivity;

    #calls: Lcom/waze/share/ShareFbActivity;->postFeed()V
    invoke-static {v0}, Lcom/waze/share/ShareFbActivity;->access$5(Lcom/waze/share/ShareFbActivity;)V

    goto :goto_0
.end method
