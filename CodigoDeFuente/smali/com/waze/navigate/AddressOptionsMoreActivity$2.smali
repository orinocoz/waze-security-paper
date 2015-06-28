.class Lcom/waze/navigate/AddressOptionsMoreActivity$2;
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
    iput-object p1, p0, Lcom/waze/navigate/AddressOptionsMoreActivity$2;->this$0:Lcom/waze/navigate/AddressOptionsMoreActivity;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsMoreActivity$2;->this$0:Lcom/waze/navigate/AddressOptionsMoreActivity;

    #getter for: Lcom/waze/navigate/AddressOptionsMoreActivity;->driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;
    invoke-static {v0}, Lcom/waze/navigate/AddressOptionsMoreActivity;->access$1(Lcom/waze/navigate/AddressOptionsMoreActivity;)Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/navigate/DriveToNativeManager;->setStartPoint()V

    .line 98
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsMoreActivity$2;->this$0:Lcom/waze/navigate/AddressOptionsMoreActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/waze/navigate/AddressOptionsMoreActivity;->setResult(I)V

    .line 99
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsMoreActivity$2;->this$0:Lcom/waze/navigate/AddressOptionsMoreActivity;

    invoke-virtual {v0}, Lcom/waze/navigate/AddressOptionsMoreActivity;->finish()V

    .line 100
    return-void
.end method
