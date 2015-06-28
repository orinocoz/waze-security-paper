.class Lcom/waze/navigate/DriveToNativeManager$35;
.super Lcom/waze/ifs/async/RunnableUICallback;
.source "DriveToNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/DriveToNativeManager;->getAddressItemAppData(Ljava/lang/String;Lcom/waze/navigate/DriveToNativeManager$ObjectListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private data:Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;

.field final synthetic this$0:Lcom/waze/navigate/DriveToNativeManager;

.field private final synthetic val$id:Ljava/lang/String;

.field private final synthetic val$l:Lcom/waze/navigate/DriveToNativeManager$ObjectListener;


# direct methods
.method constructor <init>(Lcom/waze/navigate/DriveToNativeManager;Ljava/lang/String;Lcom/waze/navigate/DriveToNativeManager$ObjectListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/DriveToNativeManager$35;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iput-object p2, p0, Lcom/waze/navigate/DriveToNativeManager$35;->val$id:Ljava/lang/String;

    iput-object p3, p0, Lcom/waze/navigate/DriveToNativeManager$35;->val$l:Lcom/waze/navigate/DriveToNativeManager$ObjectListener;

    .line 1097
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableUICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 2

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$35;->val$l:Lcom/waze/navigate/DriveToNativeManager$ObjectListener;

    iget-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$35;->data:Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;

    invoke-interface {v0, v1}, Lcom/waze/navigate/DriveToNativeManager$ObjectListener;->onComplete(Ljava/lang/Object;)V

    .line 1112
    return-void
.end method

.method public event()V
    .locals 3

    .prologue
    .line 1103
    :try_start_0
    iget-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$35;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iget-object v2, p0, Lcom/waze/navigate/DriveToNativeManager$35;->val$id:Ljava/lang/String;

    #calls: Lcom/waze/navigate/DriveToNativeManager;->getAddressItemAppDataNTV(Ljava/lang/String;)Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;
    invoke-static {v1, v2}, Lcom/waze/navigate/DriveToNativeManager;->access$32(Lcom/waze/navigate/DriveToNativeManager;Ljava/lang/String;)Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$35;->data:Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1107
    :goto_0
    return-void

    .line 1104
    :catch_0
    move-exception v0

    .line 1105
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$35;->data:Lcom/waze/navigate/DriveToNativeManager$AddressItemAppData;

    goto :goto_0
.end method
