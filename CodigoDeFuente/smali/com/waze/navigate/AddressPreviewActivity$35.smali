.class Lcom/waze/navigate/AddressPreviewActivity$35;
.super Ljava/lang/Object;
.source "AddressPreviewActivity.java"

# interfaces
.implements Lcom/waze/phone/PhoneRequestAccessDialog$PhoneRequestAccessResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/AddressPreviewActivity;->openShareActivity()V
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
    iput-object p1, p0, Lcom/waze/navigate/AddressPreviewActivity$35;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    .line 2262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Z)V
    .locals 1
    .parameter "okToAccess"

    .prologue
    .line 2266
    if-eqz p1, :cond_0

    .line 2267
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$35;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    invoke-virtual {v0}, Lcom/waze/navigate/AddressPreviewActivity;->openShareActivity()V

    .line 2269
    :cond_0
    return-void
.end method
