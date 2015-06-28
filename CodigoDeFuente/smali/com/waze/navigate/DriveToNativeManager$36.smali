.class Lcom/waze/navigate/DriveToNativeManager$36;
.super Ljava/lang/Object;
.source "DriveToNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/DriveToNativeManager;->updateAddressItemAppData(Ljava/lang/String;Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/DriveToNativeManager;

.field private final synthetic val$appData:Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;

.field private final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/navigate/DriveToNativeManager;Ljava/lang/String;Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/DriveToNativeManager$36;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iput-object p2, p0, Lcom/waze/navigate/DriveToNativeManager$36;->val$id:Ljava/lang/String;

    iput-object p3, p0, Lcom/waze/navigate/DriveToNativeManager$36;->val$appData:Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;

    .line 1120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$36;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iget-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$36;->val$id:Ljava/lang/String;

    iget-object v2, p0, Lcom/waze/navigate/DriveToNativeManager$36;->val$appData:Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;

    #calls: Lcom/waze/navigate/DriveToNativeManager;->updateAddressItemAppDataNTV(Ljava/lang/String;Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;)V
    invoke-static {v0, v1, v2}, Lcom/waze/navigate/DriveToNativeManager;->access$33(Lcom/waze/navigate/DriveToNativeManager;Ljava/lang/String;Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;)V

    .line 1125
    return-void
.end method
