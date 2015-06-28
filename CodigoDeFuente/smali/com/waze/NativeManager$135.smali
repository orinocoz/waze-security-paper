.class Lcom/waze/NativeManager$135;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->venueFlagImage(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$imageId:Ljava/lang/String;

.field private final synthetic val$type:I

.field private final synthetic val$venueId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$135;->this$0:Lcom/waze/NativeManager;

    iput-object p2, p0, Lcom/waze/NativeManager$135;->val$venueId:Ljava/lang/String;

    iput-object p3, p0, Lcom/waze/NativeManager$135;->val$imageId:Ljava/lang/String;

    iput p4, p0, Lcom/waze/NativeManager$135;->val$type:I

    .line 2789
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2791
    iget-object v0, p0, Lcom/waze/NativeManager$135;->this$0:Lcom/waze/NativeManager;

    iget-object v1, p0, Lcom/waze/NativeManager$135;->val$venueId:Ljava/lang/String;

    iget-object v2, p0, Lcom/waze/NativeManager$135;->val$imageId:Ljava/lang/String;

    iget v3, p0, Lcom/waze/NativeManager$135;->val$type:I

    #calls: Lcom/waze/NativeManager;->venueFlagImageNTV(Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/waze/NativeManager;->access$84(Lcom/waze/NativeManager;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2792
    return-void
.end method
