.class Lcom/waze/navigate/AddressPreviewActivity$18;
.super Ljava/lang/Object;
.source "AddressPreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/AddressPreviewActivity;->refreshView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/AddressPreviewActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/AddressPreviewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/AddressPreviewActivity$18;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    .line 1034
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 1037
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1038
    .local v1, phoneNum:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Opening dialer for: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/waze/Logger;->d(Ljava/lang/String;)V

    .line 1039
    iget-object v2, p0, Lcom/waze/navigate/AddressPreviewActivity$18;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    const-string v3, "ADS_PREVIEW_PHONE_CLICKED"

    #calls: Lcom/waze/navigate/AddressPreviewActivity;->logAnalyticsAds(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/waze/navigate/AddressPreviewActivity;->access$2(Lcom/waze/navigate/AddressPreviewActivity;Ljava/lang/String;)V

    .line 1040
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1041
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

    .line 1042
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1043
    iget-object v2, p0, Lcom/waze/navigate/AddressPreviewActivity$18;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    invoke-virtual {v2, v0}, Lcom/waze/navigate/AddressPreviewActivity;->startActivity(Landroid/content/Intent;)V

    .line 1044
    return-void
.end method
