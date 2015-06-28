.class Lcom/waze/NativeManager$34;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->CreateMeetingBulk(Ljava/lang/String;Ljava/lang/String;II[I[Ljava/lang/Object;[IIIZ[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
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

.field private final synthetic val$bIsShareWithMap:Z

.field private final synthetic val$bToSave:Z

.field private final synthetic val$hashes:[I

.field private final synthetic val$lat:I

.field private final synthetic val$lon:I

.field private final synthetic val$nCount:I

.field private final synthetic val$nPhonescount:I

.field private final synthetic val$name:Ljava/lang/String;

.field private final synthetic val$phones:[Ljava/lang/Object;

.field private final synthetic val$type:Ljava/lang/String;

.field private final synthetic val$venueId:Ljava/lang/String;

.field private final synthetic val$waze_ids:[I

.field private final synthetic val$wazes_phones:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;Ljava/lang/String;Ljava/lang/String;II[I[Ljava/lang/Object;[IIIZ[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
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
    iput-object p1, p0, Lcom/waze/NativeManager$34;->this$0:Lcom/waze/NativeManager;

    iput-object p2, p0, Lcom/waze/NativeManager$34;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/waze/NativeManager$34;->val$type:Ljava/lang/String;

    iput p4, p0, Lcom/waze/NativeManager$34;->val$lon:I

    iput p5, p0, Lcom/waze/NativeManager$34;->val$lat:I

    iput-object p6, p0, Lcom/waze/NativeManager$34;->val$waze_ids:[I

    iput-object p7, p0, Lcom/waze/NativeManager$34;->val$phones:[Ljava/lang/Object;

    iput-object p8, p0, Lcom/waze/NativeManager$34;->val$hashes:[I

    iput p9, p0, Lcom/waze/NativeManager$34;->val$nCount:I

    iput p10, p0, Lcom/waze/NativeManager$34;->val$nPhonescount:I

    iput-boolean p11, p0, Lcom/waze/NativeManager$34;->val$bIsShareWithMap:Z

    iput-object p12, p0, Lcom/waze/NativeManager$34;->val$wazes_phones:[Ljava/lang/Object;

    iput-object p13, p0, Lcom/waze/NativeManager$34;->val$Street:Ljava/lang/String;

    iput-object p14, p0, Lcom/waze/NativeManager$34;->val$City:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/waze/NativeManager$34;->val$Country:Ljava/lang/String;

    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/waze/NativeManager$34;->val$bToSave:Z

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/waze/NativeManager$34;->val$venueId:Ljava/lang/String;

    .line 654
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 657
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/waze/NativeManager$34;->this$0:Lcom/waze/NativeManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/NativeManager$34;->val$name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/NativeManager$34;->val$type:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/waze/NativeManager$34;->val$lon:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/waze/NativeManager$34;->val$lat:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/waze/NativeManager$34;->val$waze_ids:[I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/waze/NativeManager$34;->val$phones:[Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/waze/NativeManager$34;->val$hashes:[I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/waze/NativeManager$34;->val$nCount:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/waze/NativeManager$34;->val$nPhonescount:I

    .line 658
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/waze/NativeManager$34;->val$bIsShareWithMap:Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/waze/NativeManager$34;->val$wazes_phones:[Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/waze/NativeManager$34;->val$Street:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/waze/NativeManager$34;->val$City:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/waze/NativeManager$34;->val$Country:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/waze/NativeManager$34;->val$bToSave:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/NativeManager$34;->val$venueId:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 657
    #calls: Lcom/waze/NativeManager;->CreateMeetingBulkNTV(Ljava/lang/String;Ljava/lang/String;II[I[Ljava/lang/Object;[IIIZ[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    invoke-static/range {v1 .. v17}, Lcom/waze/NativeManager;->access$51(Lcom/waze/NativeManager;Ljava/lang/String;Ljava/lang/String;II[I[Ljava/lang/Object;[IIIZ[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 659
    return-void
.end method
