.class Lcom/waze/settings/AccountAndLoginActivity$1;
.super Ljava/lang/Object;
.source "AccountAndLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/settings/AccountAndLoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/settings/AccountAndLoginActivity;


# direct methods
.method constructor <init>(Lcom/waze/settings/AccountAndLoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/settings/AccountAndLoginActivity$1;->this$0:Lcom/waze/settings/AccountAndLoginActivity;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/waze/settings/AccountAndLoginActivity$1;->this$0:Lcom/waze/settings/AccountAndLoginActivity;

    #getter for: Lcom/waze/settings/AccountAndLoginActivity;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v0}, Lcom/waze/settings/AccountAndLoginActivity;->access$0(Lcom/waze/settings/AccountAndLoginActivity;)Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->DeleteAccount()V

    .line 79
    return-void
.end method
