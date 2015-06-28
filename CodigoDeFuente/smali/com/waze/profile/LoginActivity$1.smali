.class Lcom/waze/profile/LoginActivity$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/profile/LoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/profile/LoginActivity;


# direct methods
.method constructor <init>(Lcom/waze/profile/LoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/profile/LoginActivity$1;->this$0:Lcom/waze/profile/LoginActivity;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/waze/profile/LoginActivity$1;->this$0:Lcom/waze/profile/LoginActivity;

    #calls: Lcom/waze/profile/LoginActivity;->conclude()V
    invoke-static {v0}, Lcom/waze/profile/LoginActivity;->access$0(Lcom/waze/profile/LoginActivity;)V

    .line 47
    return-void
.end method
