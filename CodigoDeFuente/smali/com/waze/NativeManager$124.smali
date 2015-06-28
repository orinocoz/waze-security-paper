.class Lcom/waze/NativeManager$124;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->OpenPoi(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIZIILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$Address:Ljava/lang/String;

.field private final synthetic val$Height:I

.field private final synthetic val$ServerID:I

.field private final synthetic val$VenueContext:Ljava/lang/String;

.field private final synthetic val$VenueId:Ljava/lang/String;

.field private final synthetic val$iID:I

.field private final synthetic val$inforUrl:Ljava/lang/String;

.field private final synthetic val$isNavigable:Z

.field private final synthetic val$lat:I

.field private final synthetic val$layoutMgr:Lcom/waze/LayoutManager;

.field private final synthetic val$lon:I

.field private final synthetic val$popupUrl:Ljava/lang/String;

.field private final synthetic val$promotionUrl:Ljava/lang/String;

.field private final synthetic val$seconds:I

.field private final synthetic val$x:I

.field private final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;Lcom/waze/LayoutManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIZLjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/waze/NativeManager$124;->this$0:Lcom/waze/NativeManager;

    iput-object p2, p0, Lcom/waze/NativeManager$124;->val$layoutMgr:Lcom/waze/LayoutManager;

    iput p3, p0, Lcom/waze/NativeManager$124;->val$iID:I

    iput-object p4, p0, Lcom/waze/NativeManager$124;->val$popupUrl:Ljava/lang/String;

    iput-object p5, p0, Lcom/waze/NativeManager$124;->val$inforUrl:Ljava/lang/String;

    iput-object p6, p0, Lcom/waze/NativeManager$124;->val$promotionUrl:Ljava/lang/String;

    iput p7, p0, Lcom/waze/NativeManager$124;->val$x:I

    iput p8, p0, Lcom/waze/NativeManager$124;->val$y:I

    iput p9, p0, Lcom/waze/NativeManager$124;->val$lat:I

    iput p10, p0, Lcom/waze/NativeManager$124;->val$lon:I

    iput p11, p0, Lcom/waze/NativeManager$124;->val$seconds:I

    iput-boolean p12, p0, Lcom/waze/NativeManager$124;->val$isNavigable:Z

    iput-object p13, p0, Lcom/waze/NativeManager$124;->val$Address:Ljava/lang/String;

    iput p14, p0, Lcom/waze/NativeManager$124;->val$Height:I

    move/from16 v0, p15

    iput v0, p0, Lcom/waze/NativeManager$124;->val$ServerID:I

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/waze/NativeManager$124;->val$VenueId:Ljava/lang/String;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/waze/NativeManager$124;->val$VenueContext:Ljava/lang/String;

    .line 2644
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 2646
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/waze/NativeManager$124;->val$layoutMgr:Lcom/waze/LayoutManager;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/waze/NativeManager$124;->val$iID:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/NativeManager$124;->val$popupUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/waze/NativeManager$124;->val$inforUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/waze/NativeManager$124;->val$promotionUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/waze/NativeManager$124;->val$x:I

    .line 2647
    move-object/from16 v0, p0

    iget v7, v0, Lcom/waze/NativeManager$124;->val$y:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/waze/NativeManager$124;->val$lat:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/waze/NativeManager$124;->val$lon:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/waze/NativeManager$124;->val$seconds:I

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/waze/NativeManager$124;->val$isNavigable:Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/waze/NativeManager$124;->val$Address:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/waze/NativeManager$124;->val$Height:I

    .line 2648
    move-object/from16 v0, p0

    iget v14, v0, Lcom/waze/NativeManager$124;->val$ServerID:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/waze/NativeManager$124;->val$VenueId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/NativeManager$124;->val$VenueContext:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 2646
    invoke-virtual/range {v1 .. v16}, Lcom/waze/LayoutManager;->openPoi(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIZLjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 2649
    return-void
.end method
