.class Lcom/waze/navigate/DriveToNativeManager$86;
.super Ljava/lang/Object;
.source "DriveToNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/DriveToNativeManager;->setSearchMode(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/DriveToNativeManager;

.field private final synthetic val$bIsSearchBar:Z


# direct methods
.method constructor <init>(Lcom/waze/navigate/DriveToNativeManager;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/DriveToNativeManager$86;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iput-boolean p2, p0, Lcom/waze/navigate/DriveToNativeManager$86;->val$bIsSearchBar:Z

    .line 1853
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1856
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$86;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iget-boolean v1, p0, Lcom/waze/navigate/DriveToNativeManager$86;->val$bIsSearchBar:Z

    #calls: Lcom/waze/navigate/DriveToNativeManager;->setSearchModeNTV(Z)V
    invoke-static {v0, v1}, Lcom/waze/navigate/DriveToNativeManager;->access$81(Lcom/waze/navigate/DriveToNativeManager;Z)V

    .line 1857
    return-void
.end method
