.class Lcom/waze/profile/SignInActivity$3;
.super Ljava/lang/Object;
.source "SignInActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/profile/SignInActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/profile/SignInActivity;


# direct methods
.method constructor <init>(Lcom/waze/profile/SignInActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/profile/SignInActivity$3;->this$0:Lcom/waze/profile/SignInActivity;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/waze/profile/SignInActivity$3;->this$0:Lcom/waze/profile/SignInActivity;

    #calls: Lcom/waze/profile/SignInActivity;->onRemindClicked()V
    invoke-static {v0}, Lcom/waze/profile/SignInActivity;->access$2(Lcom/waze/profile/SignInActivity;)V

    .line 100
    return-void
.end method
