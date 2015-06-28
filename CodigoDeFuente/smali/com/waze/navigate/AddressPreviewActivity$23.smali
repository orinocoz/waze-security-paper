.class Lcom/waze/navigate/AddressPreviewActivity$23;
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
    iput-object p1, p0, Lcom/waze/navigate/AddressPreviewActivity$23;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    .line 1405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1408
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$23;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    invoke-virtual {v0}, Lcom/waze/navigate/AddressPreviewActivity;->openShareActivity()V

    .line 1409
    return-void
.end method
