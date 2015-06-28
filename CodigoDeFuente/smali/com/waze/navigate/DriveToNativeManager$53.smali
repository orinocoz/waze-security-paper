.class Lcom/waze/navigate/DriveToNativeManager$53;
.super Ljava/lang/Object;
.source "DriveToNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/DriveToNativeManager;->addCalendarEvent(Ljava/lang/String;JJZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/DriveToNativeManager;

.field private final synthetic val$calendarId:Ljava/lang/String;

.field private final synthetic val$displayName:Ljava/lang/String;

.field private final synthetic val$endTime:J

.field private final synthetic val$isAllDay:Z

.field private final synthetic val$isRecurring:Z

.field private final synthetic val$locationStr:Ljava/lang/String;

.field private final synthetic val$name:Ljava/lang/String;

.field private final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/waze/navigate/DriveToNativeManager;Ljava/lang/String;JJZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/waze/navigate/DriveToNativeManager$53;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iput-object p2, p0, Lcom/waze/navigate/DriveToNativeManager$53;->val$calendarId:Ljava/lang/String;

    iput-wide p3, p0, Lcom/waze/navigate/DriveToNativeManager$53;->val$startTime:J

    iput-wide p5, p0, Lcom/waze/navigate/DriveToNativeManager$53;->val$endTime:J

    iput-boolean p7, p0, Lcom/waze/navigate/DriveToNativeManager$53;->val$isAllDay:Z

    iput-boolean p8, p0, Lcom/waze/navigate/DriveToNativeManager$53;->val$isRecurring:Z

    iput-object p9, p0, Lcom/waze/navigate/DriveToNativeManager$53;->val$locationStr:Ljava/lang/String;

    iput-object p10, p0, Lcom/waze/navigate/DriveToNativeManager$53;->val$name:Ljava/lang/String;

    iput-object p11, p0, Lcom/waze/navigate/DriveToNativeManager$53;->val$displayName:Ljava/lang/String;

    .line 1426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 1429
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$53;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iget-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$53;->val$calendarId:Ljava/lang/String;

    iget-wide v2, p0, Lcom/waze/navigate/DriveToNativeManager$53;->val$startTime:J

    iget-wide v4, p0, Lcom/waze/navigate/DriveToNativeManager$53;->val$endTime:J

    iget-boolean v6, p0, Lcom/waze/navigate/DriveToNativeManager$53;->val$isAllDay:Z

    iget-boolean v7, p0, Lcom/waze/navigate/DriveToNativeManager$53;->val$isRecurring:Z

    iget-object v8, p0, Lcom/waze/navigate/DriveToNativeManager$53;->val$locationStr:Ljava/lang/String;

    iget-object v9, p0, Lcom/waze/navigate/DriveToNativeManager$53;->val$name:Ljava/lang/String;

    iget-object v10, p0, Lcom/waze/navigate/DriveToNativeManager$53;->val$displayName:Ljava/lang/String;

    #calls: Lcom/waze/navigate/DriveToNativeManager;->addCalendarEventNTV(Ljava/lang/String;JJZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v0 .. v10}, Lcom/waze/navigate/DriveToNativeManager;->access$49(Lcom/waze/navigate/DriveToNativeManager;Ljava/lang/String;JJZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1430
    return-void
.end method
