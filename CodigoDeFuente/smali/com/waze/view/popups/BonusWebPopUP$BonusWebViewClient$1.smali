.class Lcom/waze/view/popups/BonusWebPopUP$BonusWebViewClient$1;
.super Ljava/lang/Object;
.source "BonusWebPopUP.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/popups/BonusWebPopUP$BonusWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/view/popups/BonusWebPopUP$BonusWebViewClient;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/waze/view/popups/BonusWebPopUP$BonusWebViewClient;Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/popups/BonusWebPopUP$BonusWebViewClient$1;->this$1:Lcom/waze/view/popups/BonusWebPopUP$BonusWebViewClient;

    iput-object p2, p0, Lcom/waze/view/popups/BonusWebPopUP$BonusWebViewClient$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/waze/view/popups/BonusWebPopUP$BonusWebViewClient$1;->val$intent:Landroid/content/Intent;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/waze/view/popups/BonusWebPopUP$BonusWebViewClient$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/waze/view/popups/BonusWebPopUP$BonusWebViewClient$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 127
    return-void
.end method
