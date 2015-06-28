.class Lcom/waze/navigate/AddressPreviewActivity$3$1;
.super Ljava/lang/Object;
.source "AddressPreviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/AddressPreviewActivity$3;->onUrlOverride(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/navigate/AddressPreviewActivity$3;

.field private final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/waze/navigate/AddressPreviewActivity$3;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/AddressPreviewActivity$3$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$3;

    iput-object p2, p0, Lcom/waze/navigate/AddressPreviewActivity$3$1;->val$intent:Landroid/content/Intent;

    .line 1921
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1923
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$3$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$3;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity$3;->this$0:Lcom/waze/navigate/AddressPreviewActivity;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity$3;->access$0(Lcom/waze/navigate/AddressPreviewActivity$3;)Lcom/waze/navigate/AddressPreviewActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/navigate/AddressPreviewActivity$3$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/waze/navigate/AddressPreviewActivity;->startActivity(Landroid/content/Intent;)V

    .line 1924
    return-void
.end method
