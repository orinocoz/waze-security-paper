.class Lcom/waze/view/bottom/BottomNotification$6;
.super Ljava/lang/Object;
.source "BottomNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/bottom/BottomNotification;->postNearbyMessage(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/view/bottom/BottomNotification;

.field private final synthetic val$isClosureEnabled:Z

.field private final synthetic val$isFoursquareEnabled:Z

.field private final synthetic val$isRandomUser:Z

.field private final synthetic val$message:Ljava/lang/String;

.field private final synthetic val$messageBody:Ljava/lang/String;

.field private final synthetic val$timeout:I


# direct methods
.method constructor <init>(Lcom/waze/view/bottom/BottomNotification;Ljava/lang/String;Ljava/lang/String;IZZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/bottom/BottomNotification$6;->this$0:Lcom/waze/view/bottom/BottomNotification;

    iput-object p2, p0, Lcom/waze/view/bottom/BottomNotification$6;->val$message:Ljava/lang/String;

    iput-object p3, p0, Lcom/waze/view/bottom/BottomNotification$6;->val$messageBody:Ljava/lang/String;

    iput p4, p0, Lcom/waze/view/bottom/BottomNotification$6;->val$timeout:I

    iput-boolean p5, p0, Lcom/waze/view/bottom/BottomNotification$6;->val$isRandomUser:Z

    iput-boolean p6, p0, Lcom/waze/view/bottom/BottomNotification$6;->val$isFoursquareEnabled:Z

    iput-boolean p7, p0, Lcom/waze/view/bottom/BottomNotification$6;->val$isClosureEnabled:Z

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 272
    iget-object v0, p0, Lcom/waze/view/bottom/BottomNotification$6;->this$0:Lcom/waze/view/bottom/BottomNotification;

    iget-object v1, p0, Lcom/waze/view/bottom/BottomNotification$6;->val$message:Ljava/lang/String;

    iget-object v2, p0, Lcom/waze/view/bottom/BottomNotification$6;->val$messageBody:Ljava/lang/String;

    iget v3, p0, Lcom/waze/view/bottom/BottomNotification$6;->val$timeout:I

    iget-boolean v4, p0, Lcom/waze/view/bottom/BottomNotification$6;->val$isRandomUser:Z

    iget-boolean v5, p0, Lcom/waze/view/bottom/BottomNotification$6;->val$isFoursquareEnabled:Z

    iget-boolean v6, p0, Lcom/waze/view/bottom/BottomNotification$6;->val$isClosureEnabled:Z

    invoke-virtual/range {v0 .. v6}, Lcom/waze/view/bottom/BottomNotification;->setNearByMessage(Ljava/lang/String;Ljava/lang/String;IZZZ)V

    .line 273
    return-void
.end method
