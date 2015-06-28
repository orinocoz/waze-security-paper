.class public Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackInfoReplyDataBase;
.super Ljp/pioneer/ce/aam2/AAM2Kit/replydata/b;


# instance fields
.field private a:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0, p1}, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/b;-><init>(I)V

    invoke-virtual {p0, p2, p3}, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackInfoReplyDataBase;->setTrackToken(J)V

    return-void
.end method


# virtual methods
.method public c()J
    .locals 2

    iget-wide v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackInfoReplyDataBase;->a:J

    return-wide v0
.end method

.method public setTrackToken(J)V
    .locals 0

    iput-wide p1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackInfoReplyDataBase;->a:J

    return-void
.end method
