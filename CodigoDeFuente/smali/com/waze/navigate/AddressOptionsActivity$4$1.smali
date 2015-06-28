.class Lcom/waze/navigate/AddressOptionsActivity$4$1;
.super Ljava/lang/Object;
.source "AddressOptionsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/AddressOptionsActivity$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/navigate/AddressOptionsActivity$4;


# direct methods
.method constructor <init>(Lcom/waze/navigate/AddressOptionsActivity$4;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/AddressOptionsActivity$4$1;->this$1:Lcom/waze/navigate/AddressOptionsActivity$4;

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 330
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity$4$1;->this$1:Lcom/waze/navigate/AddressOptionsActivity$4;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity$4;->this$0:Lcom/waze/navigate/AddressOptionsActivity;
    invoke-static {v0}, Lcom/waze/navigate/AddressOptionsActivity$4;->access$0(Lcom/waze/navigate/AddressOptionsActivity$4;)Lcom/waze/navigate/AddressOptionsActivity;

    move-result-object v0

    #getter for: Lcom/waze/navigate/AddressOptionsActivity;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v0}, Lcom/waze/navigate/AddressOptionsActivity;->access$10(Lcom/waze/navigate/AddressOptionsActivity;)Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->CloseProgressPopup()V

    .line 331
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity$4$1;->this$1:Lcom/waze/navigate/AddressOptionsActivity$4;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity$4;->this$0:Lcom/waze/navigate/AddressOptionsActivity;
    invoke-static {v0}, Lcom/waze/navigate/AddressOptionsActivity$4;->access$0(Lcom/waze/navigate/AddressOptionsActivity$4;)Lcom/waze/navigate/AddressOptionsActivity;

    move-result-object v0

    #getter for: Lcom/waze/navigate/AddressOptionsActivity;->driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;
    invoke-static {v0}, Lcom/waze/navigate/AddressOptionsActivity;->access$0(Lcom/waze/navigate/AddressOptionsActivity;)Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/navigate/AddressOptionsActivity$4$1;->this$1:Lcom/waze/navigate/AddressOptionsActivity$4;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity$4;->this$0:Lcom/waze/navigate/AddressOptionsActivity;
    invoke-static {v1}, Lcom/waze/navigate/AddressOptionsActivity$4;->access$0(Lcom/waze/navigate/AddressOptionsActivity$4;)Lcom/waze/navigate/AddressOptionsActivity;

    move-result-object v1

    #getter for: Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v1}, Lcom/waze/navigate/AddressOptionsActivity;->access$1(Lcom/waze/navigate/AddressOptionsActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/waze/navigate/DriveToNativeManager;->navigate(Lcom/waze/navigate/AddressItem;Lcom/waze/navigate/DriveToNavigateCallback;)V

    .line 332
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity$4$1;->this$1:Lcom/waze/navigate/AddressOptionsActivity$4;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity$4;->this$0:Lcom/waze/navigate/AddressOptionsActivity;
    invoke-static {v0}, Lcom/waze/navigate/AddressOptionsActivity$4;->access$0(Lcom/waze/navigate/AddressOptionsActivity$4;)Lcom/waze/navigate/AddressOptionsActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/waze/navigate/AddressOptionsActivity;->setResult(I)V

    .line 333
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity$4$1;->this$1:Lcom/waze/navigate/AddressOptionsActivity$4;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity$4;->this$0:Lcom/waze/navigate/AddressOptionsActivity;
    invoke-static {v0}, Lcom/waze/navigate/AddressOptionsActivity$4;->access$0(Lcom/waze/navigate/AddressOptionsActivity$4;)Lcom/waze/navigate/AddressOptionsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/navigate/AddressOptionsActivity;->finish()V

    .line 334
    return-void
.end method
