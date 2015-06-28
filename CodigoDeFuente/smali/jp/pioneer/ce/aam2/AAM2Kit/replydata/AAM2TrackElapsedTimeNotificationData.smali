.class public Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackElapsedTimeNotificationData;
.super Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackInfoReplyDataBase;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(J)V
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, p2}, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackInfoReplyDataBase;-><init>(IJ)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackElapsedTimeNotificationData;->a:I

    return v0
.end method

.method public setElapsedTime(I)V
    .locals 0

    iput p1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackElapsedTimeNotificationData;->a:I

    return-void
.end method
