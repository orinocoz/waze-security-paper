.class Lcom/waze/LayoutManager$21;
.super Ljava/lang/Object;
.source "LayoutManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/LayoutManager;->openVoiceControlTip()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/LayoutManager;

.field private final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/waze/LayoutManager;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/LayoutManager$21;->this$0:Lcom/waze/LayoutManager;

    iput-object p2, p0, Lcom/waze/LayoutManager$21;->val$dialog:Landroid/app/Dialog;

    .line 1659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1662
    :try_start_0
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    .line 1663
    .local v1, mainActivity:Lcom/waze/MainActivity;
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/waze/settings/SettingsVoiceCommandsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1664
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Lcom/waze/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 1665
    iget-object v2, p0, Lcom/waze/LayoutManager$21;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->cancel()V

    .line 1666
    iget-object v2, p0, Lcom/waze/LayoutManager$21;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1668
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #mainActivity:Lcom/waze/MainActivity;
    :goto_0
    return-void

    .line 1667
    :catch_0
    move-exception v2

    goto :goto_0
.end method
