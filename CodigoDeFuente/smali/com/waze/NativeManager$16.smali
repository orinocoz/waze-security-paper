.class Lcom/waze/NativeManager$16;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->AuthPhoneNumber(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$Hash:Ljava/lang/String;

.field private final synthetic val$Region:Ljava/lang/String;

.field private final synthetic val$nType:I

.field private final synthetic val$sPhone:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$16;->this$0:Lcom/waze/NativeManager;

    iput-object p2, p0, Lcom/waze/NativeManager$16;->val$sPhone:Ljava/lang/String;

    iput-object p3, p0, Lcom/waze/NativeManager$16;->val$Hash:Ljava/lang/String;

    iput p4, p0, Lcom/waze/NativeManager$16;->val$nType:I

    iput-object p5, p0, Lcom/waze/NativeManager$16;->val$Region:Ljava/lang/String;

    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 468
    iget-object v0, p0, Lcom/waze/NativeManager$16;->this$0:Lcom/waze/NativeManager;

    iget-object v1, p0, Lcom/waze/NativeManager$16;->val$sPhone:Ljava/lang/String;

    iget-object v2, p0, Lcom/waze/NativeManager$16;->val$Hash:Ljava/lang/String;

    iget v3, p0, Lcom/waze/NativeManager$16;->val$nType:I

    iget-object v4, p0, Lcom/waze/NativeManager$16;->val$Region:Ljava/lang/String;

    sget-object v5, Lcom/waze/NativeManager;->mInviteId:Ljava/lang/String;

    #calls: Lcom/waze/NativeManager;->AuthPhoneNumberNTV(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v0 .. v5}, Lcom/waze/NativeManager;->access$32(Lcom/waze/NativeManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 469
    return-void
.end method
