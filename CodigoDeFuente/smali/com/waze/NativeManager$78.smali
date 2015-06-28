.class Lcom/waze/NativeManager$78;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->OpenSharePopup(Lcom/waze/user/UserData;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$LocationText:Ljava/lang/String;

.field private final synthetic val$data:Lcom/waze/user/UserData;

.field private final synthetic val$layoutMgr:Lcom/waze/LayoutManager;

.field private final synthetic val$nType:I

.field private final synthetic val$sMeeting:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;Lcom/waze/LayoutManager;Lcom/waze/user/UserData;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$78;->this$0:Lcom/waze/NativeManager;

    iput-object p2, p0, Lcom/waze/NativeManager$78;->val$layoutMgr:Lcom/waze/LayoutManager;

    iput-object p3, p0, Lcom/waze/NativeManager$78;->val$data:Lcom/waze/user/UserData;

    iput p4, p0, Lcom/waze/NativeManager$78;->val$nType:I

    iput-object p5, p0, Lcom/waze/NativeManager$78;->val$sMeeting:Ljava/lang/String;

    iput-object p6, p0, Lcom/waze/NativeManager$78;->val$LocationText:Ljava/lang/String;

    .line 1574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1576
    iget-object v0, p0, Lcom/waze/NativeManager$78;->val$layoutMgr:Lcom/waze/LayoutManager;

    iget-object v1, p0, Lcom/waze/NativeManager$78;->val$data:Lcom/waze/user/UserData;

    iget v2, p0, Lcom/waze/NativeManager$78;->val$nType:I

    iget-object v3, p0, Lcom/waze/NativeManager$78;->val$sMeeting:Ljava/lang/String;

    iget-object v4, p0, Lcom/waze/NativeManager$78;->val$LocationText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/waze/LayoutManager;->openSharePopup(Lcom/waze/user/UserData;ILjava/lang/String;Ljava/lang/String;)V

    .line 1577
    return-void
.end method
