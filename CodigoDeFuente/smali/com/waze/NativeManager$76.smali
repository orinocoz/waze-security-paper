.class Lcom/waze/NativeManager$76;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->OpenInternalBrowser(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$aTitle:Ljava/lang/String;

.field private final synthetic val$aUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$76;->this$0:Lcom/waze/NativeManager;

    iput-object p2, p0, Lcom/waze/NativeManager$76;->val$aTitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/waze/NativeManager$76;->val$aUrl:Ljava/lang/String;

    .line 1529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1533
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v0

    .line 1534
    .local v0, activity:Lcom/waze/ifs/ui/ActivityBase;
    if-eqz v0, :cond_0

    .line 1536
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/waze/InternalWebBrowser;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1537
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "title"

    iget-object v3, p0, Lcom/waze/NativeManager$76;->val$aTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1538
    const-string v2, "url"

    iget-object v3, p0, Lcom/waze/NativeManager$76;->val$aUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1539
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/waze/ifs/ui/ActivityBase;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1541
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
