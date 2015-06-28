.class public Ljp/pioneer/ce/aam2/AAM2Kit/replydata/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)J
    .locals 3

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const-wide/16 v0, -0x1

    :try_start_0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(ILjp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackInfoReplyDataBase;)[B
    .locals 1

    const/4 v0, 0x0

    check-cast v0, [B

    packed-switch p0, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-static {p1}, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/a;->a(Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackInfoReplyDataBase;)[B

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-static {p1}, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/a;->b(Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackInfoReplyDataBase;)[B

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-static {p1}, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/a;->c(Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackInfoReplyDataBase;)[B

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-static {p1}, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/a;->d(Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackInfoReplyDataBase;)[B

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-static {p1}, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/a;->e(Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackInfoReplyDataBase;)[B

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static a(Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackInfoReplyDataBase;)[B
    .locals 4

    instance-of v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackInfoReplyData;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "param class type unmatched"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p0, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackInfoReplyData;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    invoke-virtual {p0}, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackInfoReplyData;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {p0}, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackInfoReplyData;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-virtual {p0}, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackInfoReplyData;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {p0}, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackInfoReplyData;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljp/pioneer/ce/aam2/AAM2Kit/replydata/b;)[B
    .locals 6

    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    instance-of v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackSettingInfoReplyData;

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "param class type unmatched"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p0, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackSettingInfoReplyData;

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    invoke-virtual {p0}, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackSettingInfoReplyData;->d()I

    move-result v1

    if-ne v1, v5, :cond_1

    invoke-virtual {p0}, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackSettingInfoReplyData;->d()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {p0}, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackSettingInfoReplyData;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    :goto_0
    invoke-virtual {p0}, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackSettingInfoReplyData;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    int-to-byte v1, v5

    :goto_1
    invoke-virtual {p0}, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackSettingInfoReplyData;->c()Z

    move-result v4

    if-eqz v4, :cond_4

    or-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    :goto_2
    invoke-virtual {p0}, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackSettingInfoReplyData;->e()Z

    move-result v4

    if-eqz v4, :cond_5

    or-int/lit8 v1, v1, 0x4

    int-to-byte v1, v1

    :goto_3
    invoke-virtual {p0}, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackSettingInfoReplyData;->f()Z

    move-result v4

    if-eqz v4, :cond_6

    or-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    :goto_4
    invoke-virtual {p0}, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackSettingInfoReplyData;->g()Z

    move-result v4

    if-eqz v4, :cond_7

    or-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    :goto_5
    invoke-virtual {p0}, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackSettingInfoReplyData;->h()Z

    move-result v4

    if-eqz v4, :cond_8

    or-int/lit8 v1, v1, 0x20

    int-to-byte v1, v1

    :goto_6
    invoke-virtual {p0}, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackSettingInfoReplyData;->i()Z

    move-result v4

    if-eqz v4, :cond_9

    or-int/lit8 v1, v1, 0x40

    int-to-byte v1, v1

    :goto_7
    invoke-virtual {p0}, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackSettingInfoReplyData;->j()Z

    move-result v4

    if-eqz v4, :cond_a

    or-int/lit8 v1, v1, -0x80

    int-to-byte v1, v1

    :goto_8
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    :cond_1
    :goto_9
    return-object v0

    :cond_2
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    :cond_3
    int-to-byte v1, v4

    goto :goto_1

    :cond_4
    and-int/lit8 v1, v1, -0x1

    int-to-byte v1, v1

    goto :goto_2

    :cond_5
    and-int/lit8 v1, v1, -0x1

    int-to-byte v1, v1

    goto :goto_3

    :cond_6
    and-int/lit8 v1, v1, -0x1

    int-to-byte v1, v1

    goto :goto_4

    :cond_7
    and-int/lit8 v1, v1, -0x1

    int-to-byte v1, v1

    goto :goto_5

    :cond_8
    and-int/lit8 v1, v1, -0x1

    int-to-byte v1, v1

    goto :goto_6

    :cond_9
    and-int/lit8 v1, v1, -0x1

    int-to-byte v1, v1

    goto :goto_7

    :cond_a
    and-int/lit8 v1, v1, -0x1

    int-to-byte v1, v1

    goto :goto_8
.end method

.method public static b(Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackInfoReplyDataBase;)[B
    .locals 7

    instance-of v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackTitleReplyData;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "param class type unmatched"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p0, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackTitleReplyData;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    invoke-virtual {p0}, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackTitleReplyData;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {p0}, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackTitleReplyData;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-virtual {p0}, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackTitleReplyData;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackTitleReplyData;->c()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    const-string v3, "utf8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static c(Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackInfoReplyDataBase;)[B
    .locals 7

    instance-of v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackArtistNameReplyData;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "param class type unmatched"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p0, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackArtistNameReplyData;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    invoke-virtual {p0}, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackArtistNameReplyData;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {p0}, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackArtistNameReplyData;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-virtual {p0}, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackArtistNameReplyData;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackArtistNameReplyData;->c()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    const-string v3, "utf8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static d(Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackInfoReplyDataBase;)[B
    .locals 7

    instance-of v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackAlbumTitleReplyData;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "param class type unmatched"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p0, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackAlbumTitleReplyData;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    invoke-virtual {p0}, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackAlbumTitleReplyData;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {p0}, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackAlbumTitleReplyData;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-virtual {p0}, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackAlbumTitleReplyData;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackAlbumTitleReplyData;->c()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    const-string v3, "utf8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static e(Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackInfoReplyDataBase;)[B
    .locals 4

    instance-of v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackElapsedTimeNotificationData;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "param class type unmatched"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p0, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackElapsedTimeNotificationData;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    invoke-virtual {p0}, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackElapsedTimeNotificationData;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {p0}, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackElapsedTimeNotificationData;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-virtual {p0}, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/AAM2TrackElapsedTimeNotificationData;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method
