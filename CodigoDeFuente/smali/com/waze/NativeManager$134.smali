.class Lcom/waze/NativeManager$134;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->venueFlag(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$comment:Ljava/lang/String;

.field private final synthetic val$dupId:Ljava/lang/String;

.field private final synthetic val$type:I

.field private final synthetic val$venueId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$134;->this$0:Lcom/waze/NativeManager;

    iput-object p2, p0, Lcom/waze/NativeManager$134;->val$venueId:Ljava/lang/String;

    iput p3, p0, Lcom/waze/NativeManager$134;->val$type:I

    iput-object p4, p0, Lcom/waze/NativeManager$134;->val$comment:Ljava/lang/String;

    iput-object p5, p0, Lcom/waze/NativeManager$134;->val$dupId:Ljava/lang/String;

    .line 2781
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2783
    iget-object v0, p0, Lcom/waze/NativeManager$134;->this$0:Lcom/waze/NativeManager;

    iget-object v1, p0, Lcom/waze/NativeManager$134;->val$venueId:Ljava/lang/String;

    iget v2, p0, Lcom/waze/NativeManager$134;->val$type:I

    iget-object v3, p0, Lcom/waze/NativeManager$134;->val$comment:Ljava/lang/String;

    iget-object v4, p0, Lcom/waze/NativeManager$134;->val$dupId:Ljava/lang/String;

    #calls: Lcom/waze/NativeManager;->venueFlagNTV(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/waze/NativeManager;->access$83(Lcom/waze/NativeManager;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 2784
    return-void
.end method
