.class Lcom/waze/NativeManager$12;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->UpdateSharePermissions(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$ToShow:Z


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$12;->this$0:Lcom/waze/NativeManager;

    iput-boolean p2, p0, Lcom/waze/NativeManager$12;->val$ToShow:Z

    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/waze/NativeManager$12;->this$0:Lcom/waze/NativeManager;

    iget-boolean v1, p0, Lcom/waze/NativeManager$12;->val$ToShow:Z

    #calls: Lcom/waze/NativeManager;->UpdateSharePermissionsNTV(Z)V
    invoke-static {v0, v1}, Lcom/waze/NativeManager;->access$28(Lcom/waze/NativeManager;Z)V

    .line 431
    return-void
.end method
