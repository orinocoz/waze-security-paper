.class Lcom/waze/navigate/DriveToNativeManager$91;
.super Ljava/lang/Object;
.source "DriveToNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/DriveToNativeManager;->getSearchResultsEta(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/DriveToNativeManager;

.field private final synthetic val$provider:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/navigate/DriveToNativeManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/DriveToNativeManager$91;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iput-object p2, p0, Lcom/waze/navigate/DriveToNativeManager$91;->val$provider:Ljava/lang/String;

    .line 1899
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1902
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$91;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iget-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$91;->val$provider:Ljava/lang/String;

    #calls: Lcom/waze/navigate/DriveToNativeManager;->getSearchResultsEtaNTV(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/waze/navigate/DriveToNativeManager;->access$85(Lcom/waze/navigate/DriveToNativeManager;Ljava/lang/String;)V

    .line 1903
    return-void
.end method
