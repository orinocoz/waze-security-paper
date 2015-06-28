.class Lcom/waze/NativeManager$31;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->InviteToMeeting([Ljava/lang/Object;[III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$hashes:[I

.field private final synthetic val$nPhonescount:I

.field private final synthetic val$nType:I

.field private final synthetic val$phones:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;[Ljava/lang/Object;[III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$31;->this$0:Lcom/waze/NativeManager;

    iput-object p2, p0, Lcom/waze/NativeManager$31;->val$phones:[Ljava/lang/Object;

    iput-object p3, p0, Lcom/waze/NativeManager$31;->val$hashes:[I

    iput p4, p0, Lcom/waze/NativeManager$31;->val$nPhonescount:I

    iput p5, p0, Lcom/waze/NativeManager$31;->val$nType:I

    .line 619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 622
    iget-object v0, p0, Lcom/waze/NativeManager$31;->this$0:Lcom/waze/NativeManager;

    iget-object v1, p0, Lcom/waze/NativeManager$31;->val$phones:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/waze/NativeManager$31;->val$hashes:[I

    iget v3, p0, Lcom/waze/NativeManager$31;->val$nPhonescount:I

    iget v4, p0, Lcom/waze/NativeManager$31;->val$nType:I

    #calls: Lcom/waze/NativeManager;->InviteToMeetingNTV([Ljava/lang/Object;[III)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/waze/NativeManager;->access$48(Lcom/waze/NativeManager;[Ljava/lang/Object;[III)V

    .line 623
    return-void
.end method
