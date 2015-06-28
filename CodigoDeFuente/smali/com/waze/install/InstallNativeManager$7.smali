.class Lcom/waze/install/InstallNativeManager$7;
.super Lcom/waze/ifs/async/RunnableUICallback;
.source "InstallNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/install/InstallNativeManager;->setCountry(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/install/InstallNativeManager;

.field private final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/install/InstallNativeManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/install/InstallNativeManager$7;->this$0:Lcom/waze/install/InstallNativeManager;

    iput-object p2, p0, Lcom/waze/install/InstallNativeManager$7;->val$value:Ljava/lang/String;

    .line 263
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableUICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 0

    .prologue
    .line 271
    return-void
.end method

.method public event()V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/waze/install/InstallNativeManager$7;->this$0:Lcom/waze/install/InstallNativeManager;

    iget-object v1, p0, Lcom/waze/install/InstallNativeManager$7;->val$value:Ljava/lang/String;

    #calls: Lcom/waze/install/InstallNativeManager;->setCountryNTV(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/waze/install/InstallNativeManager;->access$6(Lcom/waze/install/InstallNativeManager;Ljava/lang/String;)V

    .line 267
    return-void
.end method
