.class Lcom/waze/NativeManager$14;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->UploadProfileImage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$ImagePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$14;->this$0:Lcom/waze/NativeManager;

    iput-object p2, p0, Lcom/waze/NativeManager$14;->val$ImagePath:Ljava/lang/String;

    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 448
    iget-object v0, p0, Lcom/waze/NativeManager$14;->this$0:Lcom/waze/NativeManager;

    iget-object v1, p0, Lcom/waze/NativeManager$14;->val$ImagePath:Ljava/lang/String;

    #calls: Lcom/waze/NativeManager;->UploadProfileImageNTV(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/waze/NativeManager;->access$30(Lcom/waze/NativeManager;Ljava/lang/String;)V

    .line 449
    return-void
.end method
