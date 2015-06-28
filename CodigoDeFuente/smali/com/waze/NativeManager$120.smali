.class Lcom/waze/NativeManager$120;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->OpenNavResultPopup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/waze/user/FriendUserData;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$Friend1PictureUrl:Ljava/lang/String;

.field private final synthetic val$Friend2PictureUrl:Ljava/lang/String;

.field private final synthetic val$FriendsDrivingCount:I

.field private final synthetic val$NotifyFriends:[Lcom/waze/user/FriendUserData;

.field private final synthetic val$OnlineFriends:I

.field private final synthetic val$UserPictureUrl:Ljava/lang/String;

.field private final synthetic val$bIsCalculating:Z

.field private final synthetic val$bIsOffline:Z

.field private final synthetic val$distance:Ljava/lang/String;

.field private final synthetic val$distanceUnit:Ljava/lang/String;

.field private final synthetic val$finalTitle:Ljava/lang/String;

.field private final synthetic val$freeText:Ljava/lang/String;

.field private final synthetic val$goodMorning:Ljava/lang/String;

.field private final synthetic val$iRouteLenght:I

.field private final synthetic val$iTimeOut:I

.field private final synthetic val$id:Ljava/lang/String;

.field private final synthetic val$isWaypoint:Z

.field private final synthetic val$is_trip_srv_rsp:Z

.field private final synthetic val$jConfigImage:Ljava/lang/String;

.field private final synthetic val$layoutMgr:Lcom/waze/LayoutManager;

.field private final synthetic val$nId:I

.field private final synthetic val$note:Ljava/lang/String;

.field private final synthetic val$show_disclaimer:Z

.field private final synthetic val$shownAgain:Z

.field private final synthetic val$via:Ljava/lang/String;

.field private final synthetic val$viaToll:Ljava/lang/String;

.field private final synthetic val$waypointDelay:I

.field private final synthetic val$waypointDistance:Ljava/lang/String;

.field private final synthetic val$waypointDistanceUnit:Ljava/lang/String;

.field private final synthetic val$waypointLength:I

.field private final synthetic val$waypointTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;Lcom/waze/LayoutManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/waze/user/FriendUserData;ZZ)V
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
    iput-object p1, p0, Lcom/waze/NativeManager$120;->this$0:Lcom/waze/NativeManager;

    iput-object p2, p0, Lcom/waze/NativeManager$120;->val$layoutMgr:Lcom/waze/LayoutManager;

    iput-object p3, p0, Lcom/waze/NativeManager$120;->val$note:Ljava/lang/String;

    iput-object p4, p0, Lcom/waze/NativeManager$120;->val$goodMorning:Ljava/lang/String;

    iput-object p5, p0, Lcom/waze/NativeManager$120;->val$id:Ljava/lang/String;

    iput-object p6, p0, Lcom/waze/NativeManager$120;->val$distance:Ljava/lang/String;

    iput-object p7, p0, Lcom/waze/NativeManager$120;->val$distanceUnit:Ljava/lang/String;

    iput p8, p0, Lcom/waze/NativeManager$120;->val$iRouteLenght:I

    iput-object p9, p0, Lcom/waze/NativeManager$120;->val$via:Ljava/lang/String;

    iput p10, p0, Lcom/waze/NativeManager$120;->val$iTimeOut:I

    iput-boolean p11, p0, Lcom/waze/NativeManager$120;->val$show_disclaimer:Z

    iput-boolean p12, p0, Lcom/waze/NativeManager$120;->val$isWaypoint:Z

    iput-object p13, p0, Lcom/waze/NativeManager$120;->val$waypointDistance:Ljava/lang/String;

    iput-object p14, p0, Lcom/waze/NativeManager$120;->val$waypointDistanceUnit:Ljava/lang/String;

    move/from16 v0, p15

    iput v0, p0, Lcom/waze/NativeManager$120;->val$waypointLength:I

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/waze/NativeManager$120;->val$waypointTitle:Ljava/lang/String;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/waze/NativeManager$120;->val$finalTitle:Ljava/lang/String;

    move/from16 v0, p18

    iput v0, p0, Lcom/waze/NativeManager$120;->val$waypointDelay:I

    move/from16 v0, p19

    iput-boolean v0, p0, Lcom/waze/NativeManager$120;->val$is_trip_srv_rsp:Z

    move/from16 v0, p20

    iput v0, p0, Lcom/waze/NativeManager$120;->val$nId:I

    move/from16 v0, p21

    iput-boolean v0, p0, Lcom/waze/NativeManager$120;->val$shownAgain:Z

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/waze/NativeManager$120;->val$UserPictureUrl:Ljava/lang/String;

    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/waze/NativeManager$120;->val$Friend1PictureUrl:Ljava/lang/String;

    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/waze/NativeManager$120;->val$Friend2PictureUrl:Ljava/lang/String;

    move/from16 v0, p25

    iput v0, p0, Lcom/waze/NativeManager$120;->val$OnlineFriends:I

    move/from16 v0, p26

    iput v0, p0, Lcom/waze/NativeManager$120;->val$FriendsDrivingCount:I

    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/waze/NativeManager$120;->val$viaToll:Ljava/lang/String;

    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/waze/NativeManager$120;->val$jConfigImage:Ljava/lang/String;

    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/waze/NativeManager$120;->val$freeText:Ljava/lang/String;

    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/waze/NativeManager$120;->val$NotifyFriends:[Lcom/waze/user/FriendUserData;

    move/from16 v0, p31

    iput-boolean v0, p0, Lcom/waze/NativeManager$120;->val$bIsOffline:Z

    move/from16 v0, p32

    iput-boolean v0, p0, Lcom/waze/NativeManager$120;->val$bIsCalculating:Z

    .line 2581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 32

    .prologue
    .line 2583
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/waze/NativeManager$120;->val$layoutMgr:Lcom/waze/LayoutManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/NativeManager$120;->val$note:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/NativeManager$120;->val$goodMorning:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/waze/NativeManager$120;->val$id:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/waze/NativeManager$120;->val$distance:Ljava/lang/String;

    .line 2584
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/waze/NativeManager$120;->val$distanceUnit:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/waze/NativeManager$120;->val$iRouteLenght:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/waze/NativeManager$120;->val$via:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/waze/NativeManager$120;->val$iTimeOut:I

    .line 2585
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/waze/NativeManager$120;->val$show_disclaimer:Z

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/waze/NativeManager$120;->val$isWaypoint:Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/waze/NativeManager$120;->val$waypointDistance:Ljava/lang/String;

    .line 2586
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/waze/NativeManager$120;->val$waypointDistanceUnit:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/waze/NativeManager$120;->val$waypointLength:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/waze/NativeManager$120;->val$waypointTitle:Ljava/lang/String;

    .line 2587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/NativeManager$120;->val$finalTitle:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/NativeManager$120;->val$waypointDelay:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/waze/NativeManager$120;->val$is_trip_srv_rsp:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/NativeManager$120;->val$nId:I

    move/from16 v19, v0

    .line 2588
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/waze/NativeManager$120;->val$shownAgain:Z

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/NativeManager$120;->val$UserPictureUrl:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/NativeManager$120;->val$Friend1PictureUrl:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 2589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/NativeManager$120;->val$Friend2PictureUrl:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/NativeManager$120;->val$OnlineFriends:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/NativeManager$120;->val$FriendsDrivingCount:I

    move/from16 v25, v0

    .line 2590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/NativeManager$120;->val$viaToll:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/NativeManager$120;->val$jConfigImage:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/NativeManager$120;->val$freeText:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/NativeManager$120;->val$NotifyFriends:[Lcom/waze/user/FriendUserData;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/waze/NativeManager$120;->val$bIsOffline:Z

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/waze/NativeManager$120;->val$bIsCalculating:Z

    move/from16 v31, v0

    .line 2583
    invoke-virtual/range {v1 .. v31}, Lcom/waze/LayoutManager;->OpenNavResultPopup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/waze/user/FriendUserData;ZZ)V

    .line 2591
    return-void
.end method
