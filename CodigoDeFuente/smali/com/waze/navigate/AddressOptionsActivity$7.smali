.class Lcom/waze/navigate/AddressOptionsActivity$7;
.super Ljava/lang/Object;
.source "AddressOptionsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/AddressOptionsActivity;->refreshView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/AddressOptionsActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/AddressOptionsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/AddressOptionsActivity$7;->this$0:Lcom/waze/navigate/AddressOptionsActivity;

    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 456
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 457
    .local v1, phoneNum:Ljava/lang/String;
    const-string v2, "WAZE"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Opening dialer for: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget-object v2, p0, Lcom/waze/navigate/AddressOptionsActivity$7;->this$0:Lcom/waze/navigate/AddressOptionsActivity;

    const-string v3, "ADS_PREVIEW_PHONE_CLICKED"

    #calls: Lcom/waze/navigate/AddressOptionsActivity;->logAnalyticsAds(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/waze/navigate/AddressOptionsActivity;->access$2(Lcom/waze/navigate/AddressOptionsActivity;Ljava/lang/String;)V

    .line 459
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 460
    .local v0, callIntent:Landroid/content/Intent;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tel:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 461
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 462
    iget-object v2, p0, Lcom/waze/navigate/AddressOptionsActivity$7;->this$0:Lcom/waze/navigate/AddressOptionsActivity;

    invoke-virtual {v2, v0}, Lcom/waze/navigate/AddressOptionsActivity;->startActivity(Landroid/content/Intent;)V

    .line 463
    return-void
.end method
