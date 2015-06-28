.class public Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackSettingInfoReplyData;
.super Ljp/pioneer/ce/aam2/AAM2Kit/replydata/b;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/b;-><init>(I)V

    iput-boolean v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackSettingInfoReplyData;->a:Z

    iput-boolean v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackSettingInfoReplyData;->b:Z

    iput-boolean v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackSettingInfoReplyData;->c:Z

    iput-boolean v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackSettingInfoReplyData;->d:Z

    iput-boolean v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackSettingInfoReplyData;->e:Z

    iput-boolean v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackSettingInfoReplyData;->f:Z

    iput-boolean v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackSettingInfoReplyData;->g:Z

    iput-boolean v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackSettingInfoReplyData;->h:Z

    iput-boolean v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackSettingInfoReplyData;->i:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackSettingInfoReplyData;->a:Z

    return v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackSettingInfoReplyData;->b:Z

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackSettingInfoReplyData;->c:Z

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackSettingInfoReplyData;->d:Z

    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackSettingInfoReplyData;->e:Z

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackSettingInfoReplyData;->f:Z

    return v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackSettingInfoReplyData;->g:Z

    return v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackSettingInfoReplyData;->h:Z

    return v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackSettingInfoReplyData;->i:Z

    return v0
.end method

.method public setHasAlbumTitle(Z)V
    .locals 0

    iput-boolean p1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackSettingInfoReplyData;->e:Z

    return-void
.end method

.method public setHasArtistName(Z)V
    .locals 0

    iput-boolean p1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackSettingInfoReplyData;->d:Z

    return-void
.end method

.method public setHasElapsedTime(Z)V
    .locals 0

    iput-boolean p1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackSettingInfoReplyData;->h:Z

    return-void
.end method

.method public setHasRatingValue(Z)V
    .locals 0

    iput-boolean p1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackSettingInfoReplyData;->i:Z

    return-void
.end method

.method public setHasTrackInformation(Z)V
    .locals 0

    iput-boolean p1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackSettingInfoReplyData;->b:Z

    return-void
.end method

.method public setHasTrackTitle(Z)V
    .locals 0

    iput-boolean p1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackSettingInfoReplyData;->c:Z

    return-void
.end method
