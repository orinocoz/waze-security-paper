.class Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$2$1;
.super Ljava/lang/Object;
.source "AddressOptionsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$2;->onUrlOverride(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$2;

.field private final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$2;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$2$1;->this$2:Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$2;

    iput-object p2, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$2$1;->val$intent:Landroid/content/Intent;

    .line 762
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 764
    invoke-static {}, Lcom/waze/navigate/AddressOptionsActivity;->access$6()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/navigate/AddressOptionsActivity;

    iget-object v1, p0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager$2$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/waze/navigate/AddressOptionsActivity;->startActivity(Landroid/content/Intent;)V

    .line 765
    return-void
.end method
