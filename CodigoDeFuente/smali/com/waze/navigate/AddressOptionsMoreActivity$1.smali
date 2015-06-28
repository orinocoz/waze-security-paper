.class Lcom/waze/navigate/AddressOptionsMoreActivity$1;
.super Ljava/lang/Object;
.source "AddressOptionsMoreActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/AddressOptionsMoreActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/AddressOptionsMoreActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/AddressOptionsMoreActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/AddressOptionsMoreActivity$1;->this$0:Lcom/waze/navigate/AddressOptionsMoreActivity;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 87
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    .line 88
    .local v0, nm:Lcom/waze/navigate/DriveToNativeManager;
    iget-object v3, p0, Lcom/waze/navigate/AddressOptionsMoreActivity$1;->this$0:Lcom/waze/navigate/AddressOptionsMoreActivity;

    #getter for: Lcom/waze/navigate/AddressOptionsMoreActivity;->addressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v3}, Lcom/waze/navigate/AddressOptionsMoreActivity;->access$0(Lcom/waze/navigate/AddressOptionsMoreActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/navigate/AddressItem;->getCategory()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v1, :cond_0

    .line 89
    .local v1, store:Z
    :goto_0
    iget-object v3, p0, Lcom/waze/navigate/AddressOptionsMoreActivity$1;->this$0:Lcom/waze/navigate/AddressOptionsMoreActivity;

    #getter for: Lcom/waze/navigate/AddressOptionsMoreActivity;->addressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v3}, Lcom/waze/navigate/AddressOptionsMoreActivity;->access$0(Lcom/waze/navigate/AddressOptionsMoreActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2, v1}, Lcom/waze/navigate/DriveToNativeManager;->navigate(Lcom/waze/navigate/AddressItem;Lcom/waze/navigate/DriveToNavigateCallback;ZZ)V

    .line 90
    iget-object v2, p0, Lcom/waze/navigate/AddressOptionsMoreActivity$1;->this$0:Lcom/waze/navigate/AddressOptionsMoreActivity;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/waze/navigate/AddressOptionsMoreActivity;->setResult(I)V

    .line 91
    iget-object v2, p0, Lcom/waze/navigate/AddressOptionsMoreActivity$1;->this$0:Lcom/waze/navigate/AddressOptionsMoreActivity;

    invoke-virtual {v2}, Lcom/waze/navigate/AddressOptionsMoreActivity;->finish()V

    .line 92
    return-void

    .end local v1           #store:Z
    :cond_0
    move v1, v2

    .line 88
    goto :goto_0
.end method
