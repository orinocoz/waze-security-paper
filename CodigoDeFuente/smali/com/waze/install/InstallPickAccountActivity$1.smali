.class Lcom/waze/install/InstallPickAccountActivity$1;
.super Ljava/lang/Object;
.source "InstallPickAccountActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/install/InstallPickAccountActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/install/InstallPickAccountActivity;


# direct methods
.method constructor <init>(Lcom/waze/install/InstallPickAccountActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/install/InstallPickAccountActivity$1;->this$0:Lcom/waze/install/InstallPickAccountActivity;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/waze/install/InstallPickAccountActivity$1;->this$0:Lcom/waze/install/InstallPickAccountActivity;

    #calls: Lcom/waze/install/InstallPickAccountActivity;->onDestroy()V
    invoke-static {v0}, Lcom/waze/install/InstallPickAccountActivity;->access$0(Lcom/waze/install/InstallPickAccountActivity;)V

    .line 38
    return-void
.end method
