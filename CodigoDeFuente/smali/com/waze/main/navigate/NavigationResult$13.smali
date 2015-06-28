.class Lcom/waze/main/navigate/NavigationResult$13;
.super Ljava/lang/Object;
.source "NavigationResult.java"

# interfaces
.implements Lcom/waze/navigate/DriveToNativeManager$LocationDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/main/navigate/NavigationResult;->SendMeeting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/main/navigate/NavigationResult;

.field private final synthetic val$addUids:[I

.field private final synthetic val$inviteIds:[I

.field private final synthetic val$invitePhones:[Ljava/lang/String;

.field private final synthetic val$wazesPhones:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/main/navigate/NavigationResult;[I[Ljava/lang/String;[I[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/main/navigate/NavigationResult$13;->this$0:Lcom/waze/main/navigate/NavigationResult;

    iput-object p2, p0, Lcom/waze/main/navigate/NavigationResult$13;->val$addUids:[I

    iput-object p3, p0, Lcom/waze/main/navigate/NavigationResult$13;->val$invitePhones:[Ljava/lang/String;

    iput-object p4, p0, Lcom/waze/main/navigate/NavigationResult$13;->val$inviteIds:[I

    iput-object p5, p0, Lcom/waze/main/navigate/NavigationResult$13;->val$wazesPhones:[Ljava/lang/String;

    .line 934
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/waze/main/navigate/LocationData;)V
    .locals 18
    .parameter "locationData"

    .prologue
    .line 938
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/waze/main/navigate/LocationData;->locationName:Ljava/lang/String;

    const-string v3, "ShareDrive"

    .line 939
    move-object/from16 v0, p1

    iget v4, v0, Lcom/waze/main/navigate/LocationData;->locationX:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/waze/main/navigate/LocationData;->locationY:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/waze/main/navigate/NavigationResult$13;->val$addUids:[I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/waze/main/navigate/NavigationResult$13;->val$invitePhones:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/waze/main/navigate/NavigationResult$13;->val$inviteIds:[I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/waze/main/navigate/NavigationResult$13;->this$0:Lcom/waze/main/navigate/NavigationResult;

    iget v9, v9, Lcom/waze/main/navigate/NavigationResult;->numAdd:I

    .line 940
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/waze/main/navigate/NavigationResult$13;->this$0:Lcom/waze/main/navigate/NavigationResult;

    iget v10, v10, Lcom/waze/main/navigate/NavigationResult;->numInvite:I

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/waze/main/navigate/NavigationResult$13;->val$wazesPhones:[Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/waze/main/navigate/LocationData;->mStreet:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/waze/main/navigate/LocationData;->mCity:Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/waze/main/navigate/LocationData;->mVenueId:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 938
    invoke-virtual/range {v1 .. v17}, Lcom/waze/NativeManager;->CreateMeetingBulk(Ljava/lang/String;Ljava/lang/String;II[I[Ljava/lang/Object;[IIIZ[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 941
    return-void
.end method
