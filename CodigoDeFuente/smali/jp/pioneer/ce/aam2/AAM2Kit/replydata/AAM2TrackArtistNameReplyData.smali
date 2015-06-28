.class public Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackArtistNameReplyData;
.super Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackInfoReplyDataBase;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(J)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2}, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackInfoReplyDataBase;-><init>(IJ)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackArtistNameReplyData;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setArtistName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackArtistNameReplyData;->a:Ljava/lang/String;

    return-void
.end method
