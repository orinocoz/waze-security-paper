.class Lcom/waze/profile/MinimalSignInActivity$2;
.super Ljava/lang/Object;
.source "MinimalSignInActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/profile/MinimalSignInActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/profile/MinimalSignInActivity;


# direct methods
.method constructor <init>(Lcom/waze/profile/MinimalSignInActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/profile/MinimalSignInActivity$2;->this$0:Lcom/waze/profile/MinimalSignInActivity;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/waze/profile/MinimalSignInActivity$2;->this$0:Lcom/waze/profile/MinimalSignInActivity;

    #calls: Lcom/waze/profile/MinimalSignInActivity;->onSignClicked()V
    invoke-static {v0}, Lcom/waze/profile/MinimalSignInActivity;->access$1(Lcom/waze/profile/MinimalSignInActivity;)V

    .line 83
    return-void
.end method
