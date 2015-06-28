.class public Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackInfoReplyData;
.super Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackInfoReplyDataBase;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(J)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackInfoReplyDataBase;-><init>(IJ)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackInfoReplyData;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackInfoReplyData;->b:I

    return v0
.end method

.method public setDurationTime(I)V
    .locals 0

    iput p1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackInfoReplyData;->b:I

    return-void
.end method

.method public setTrackNumber(I)V
    .locals 0

    iput p1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackInfoReplyData;->a:I

    return-void
.end method
