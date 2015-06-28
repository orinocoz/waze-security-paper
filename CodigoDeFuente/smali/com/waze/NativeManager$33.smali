.class Lcom/waze/NativeManager$33;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->CreateMeeting(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$City:Ljava/lang/String;

.field private final synthetic val$Country:Ljava/lang/String;

.field private final synthetic val$Street:Ljava/lang/String;

.field private final synthetic val$lat:I

.field private final synthetic val$lon:I

.field private final synthetic val$name:Ljava/lang/String;

.field private final synthetic val$type:Ljava/lang/String;

.field private final synthetic val$venueId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$33;->this$0:Lcom/waze/NativeManager;

    iput-object p2, p0, Lcom/waze/NativeManager$33;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/waze/NativeManager$33;->val$type:Ljava/lang/String;

    iput p4, p0, Lcom/waze/NativeManager$33;->val$lon:I

    iput p5, p0, Lcom/waze/NativeManager$33;->val$lat:I

    iput-object p6, p0, Lcom/waze/NativeManager$33;->val$Street:Ljava/lang/String;

    iput-object p7, p0, Lcom/waze/NativeManager$33;->val$City:Ljava/lang/String;

    iput-object p8, p0, Lcom/waze/NativeManager$33;->val$Country:Ljava/lang/String;

    iput-object p9, p0, Lcom/waze/NativeManager$33;->val$venueId:Ljava/lang/String;

    .line 641
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 644
    iget-object v0, p0, Lcom/waze/NativeManager$33;->this$0:Lcom/waze/NativeManager;

    iget-object v1, p0, Lcom/waze/NativeManager$33;->val$name:Ljava/lang/String;

    iget-object v2, p0, Lcom/waze/NativeManager$33;->val$type:Ljava/lang/String;

    iget v3, p0, Lcom/waze/NativeManager$33;->val$lon:I

    iget v4, p0, Lcom/waze/NativeManager$33;->val$lat:I

    iget-object v5, p0, Lcom/waze/NativeManager$33;->val$Street:Ljava/lang/String;

    iget-object v6, p0, Lcom/waze/NativeManager$33;->val$City:Ljava/lang/String;

    iget-object v7, p0, Lcom/waze/NativeManager$33;->val$Country:Ljava/lang/String;

    iget-object v8, p0, Lcom/waze/NativeManager$33;->val$venueId:Ljava/lang/String;

    #calls: Lcom/waze/NativeManager;->CreateMeetingNTV(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v0 .. v8}, Lcom/waze/NativeManager;->access$50(Lcom/waze/NativeManager;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    return-void
.end method
