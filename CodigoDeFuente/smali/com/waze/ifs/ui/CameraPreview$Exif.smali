.class public Lcom/waze/ifs/ui/CameraPreview$Exif;
.super Ljava/lang/Object;
.source "CameraPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/ifs/ui/CameraPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Exif"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 667
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOrientation([B)I
    .locals 15
    .parameter "jpeg"

    .prologue
    const/16 v14, 0x8

    const/4 v3, 0x1

    const/4 v13, 0x4

    const/4 v12, 0x2

    const/4 v9, 0x0

    .line 670
    if-nez p0, :cond_0

    .line 762
    :goto_0
    :pswitch_0
    return v9

    .line 674
    :cond_0
    const/4 v5, 0x0

    .line 675
    .local v5, offset:I
    const/4 v2, 0x0

    .line 678
    .local v2, length:I
    :cond_1
    :goto_1
    add-int/lit8 v10, v5, 0x3

    array-length v11, p0

    if-ge v10, v11, :cond_2

    add-int/lit8 v6, v5, 0x1

    .end local v5           #offset:I
    .local v6, offset:I
    aget-byte v10, p0, v5

    and-int/lit16 v10, v10, 0xff

    const/16 v11, 0xff

    if-eq v10, v11, :cond_3

    move v5, v6

    .line 717
    .end local v6           #offset:I
    .restart local v5       #offset:I
    :cond_2
    :goto_2
    if-le v2, v14, :cond_c

    .line 719
    invoke-static {p0, v5, v13, v9}, Lcom/waze/ifs/ui/CameraPreview$Exif;->pack([BIIZ)I

    move-result v8

    .line 720
    .local v8, tag:I
    const v10, 0x49492a00

    if-eq v8, v10, :cond_8

    const v10, 0x4d4d002a

    if-eq v8, v10, :cond_8

    .line 721
    const-string v10, "Invalid byte order"

    invoke-static {v10}, Lcom/waze/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 679
    .end local v5           #offset:I
    .end local v8           #tag:I
    .restart local v6       #offset:I
    :cond_3
    aget-byte v10, p0, v6

    and-int/lit16 v4, v10, 0xff

    .line 682
    .local v4, marker:I
    const/16 v10, 0xff

    if-ne v4, v10, :cond_4

    move v5, v6

    .line 683
    .end local v6           #offset:I
    .restart local v5       #offset:I
    goto :goto_1

    .line 685
    .end local v5           #offset:I
    .restart local v6       #offset:I
    :cond_4
    add-int/lit8 v5, v6, 0x1

    .line 688
    .end local v6           #offset:I
    .restart local v5       #offset:I
    const/16 v10, 0xd8

    if-eq v4, v10, :cond_1

    if-eq v4, v3, :cond_1

    .line 692
    const/16 v10, 0xd9

    if-eq v4, v10, :cond_2

    const/16 v10, 0xda

    if-eq v4, v10, :cond_2

    .line 697
    invoke-static {p0, v5, v12, v9}, Lcom/waze/ifs/ui/CameraPreview$Exif;->pack([BIIZ)I

    move-result v2

    .line 698
    if-lt v2, v12, :cond_5

    add-int v10, v5, v2

    array-length v11, p0

    if-le v10, v11, :cond_6

    .line 699
    :cond_5
    const-string v10, "Invalid length"

    invoke-static {v10}, Lcom/waze/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 704
    :cond_6
    const/16 v10, 0xe1

    if-ne v4, v10, :cond_7

    if-lt v2, v14, :cond_7

    add-int/lit8 v10, v5, 0x2

    invoke-static {p0, v10, v13, v9}, Lcom/waze/ifs/ui/CameraPreview$Exif;->pack([BIIZ)I

    move-result v10

    const v11, 0x45786966

    if-ne v10, v11, :cond_7

    .line 705
    add-int/lit8 v10, v5, 0x6

    invoke-static {p0, v10, v12, v9}, Lcom/waze/ifs/ui/CameraPreview$Exif;->pack([BIIZ)I

    move-result v10

    if-nez v10, :cond_7

    .line 706
    add-int/lit8 v5, v5, 0x8

    .line 707
    add-int/lit8 v2, v2, -0x8

    .line 708
    goto :goto_2

    .line 712
    :cond_7
    add-int/2addr v5, v2

    .line 713
    const/4 v2, 0x0

    goto :goto_1

    .line 724
    .end local v4           #marker:I
    .restart local v8       #tag:I
    :cond_8
    const v10, 0x49492a00

    if-ne v8, v10, :cond_a

    .line 727
    .local v3, littleEndian:Z
    :goto_3
    add-int/lit8 v10, v5, 0x4

    invoke-static {p0, v10, v13, v3}, Lcom/waze/ifs/ui/CameraPreview$Exif;->pack([BIIZ)I

    move-result v10

    add-int/lit8 v0, v10, 0x2

    .line 728
    .local v0, count:I
    const/16 v10, 0xa

    if-lt v0, v10, :cond_9

    if-le v0, v2, :cond_b

    .line 729
    :cond_9
    const-string v10, "Invalid offset"

    invoke-static {v10}, Lcom/waze/Logger;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0           #count:I
    .end local v3           #littleEndian:Z
    :cond_a
    move v3, v9

    .line 724
    goto :goto_3

    .line 732
    .restart local v0       #count:I
    .restart local v3       #littleEndian:Z
    :cond_b
    add-int/2addr v5, v0

    .line 733
    sub-int/2addr v2, v0

    .line 736
    add-int/lit8 v10, v5, -0x2

    invoke-static {p0, v10, v12, v3}, Lcom/waze/ifs/ui/CameraPreview$Exif;->pack([BIIZ)I

    move-result v0

    move v1, v0

    .line 737
    .end local v0           #count:I
    .local v1, count:I
    :goto_4
    add-int/lit8 v0, v1, -0x1

    .end local v1           #count:I
    .restart local v0       #count:I
    if-lez v1, :cond_c

    const/16 v10, 0xc

    if-ge v2, v10, :cond_d

    .line 761
    .end local v0           #count:I
    .end local v3           #littleEndian:Z
    .end local v8           #tag:I
    :cond_c
    const-string v10, "Orientation not found"

    invoke-static {v10}, Lcom/waze/Logger;->i(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 739
    .restart local v0       #count:I
    .restart local v3       #littleEndian:Z
    .restart local v8       #tag:I
    :cond_d
    invoke-static {p0, v5, v12, v3}, Lcom/waze/ifs/ui/CameraPreview$Exif;->pack([BIIZ)I

    move-result v8

    .line 740
    const/16 v10, 0x112

    if-ne v8, v10, :cond_e

    .line 742
    add-int/lit8 v10, v5, 0x8

    invoke-static {p0, v10, v12, v3}, Lcom/waze/ifs/ui/CameraPreview$Exif;->pack([BIIZ)I

    move-result v7

    .line 743
    .local v7, orientation:I
    packed-switch v7, :pswitch_data_0

    .line 753
    :pswitch_1
    const-string v10, "Unsupported orientation"

    invoke-static {v10}, Lcom/waze/Logger;->i(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 747
    :pswitch_2
    const/16 v9, 0xb4

    goto/16 :goto_0

    .line 749
    :pswitch_3
    const/16 v9, 0x5a

    goto/16 :goto_0

    .line 751
    :pswitch_4
    const/16 v9, 0x10e

    goto/16 :goto_0

    .line 756
    .end local v7           #orientation:I
    :cond_e
    add-int/lit8 v5, v5, 0xc

    .line 757
    add-int/lit8 v2, v2, -0xc

    move v1, v0

    .end local v0           #count:I
    .restart local v1       #count:I
    goto :goto_4

    .line 743
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method private static pack([BIIZ)I
    .locals 5
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"
    .parameter "littleEndian"

    .prologue
    .line 767
    const/4 v1, 0x1

    .line 768
    .local v1, step:I
    if-eqz p3, :cond_0

    .line 769
    add-int/lit8 v3, p2, -0x1

    add-int/2addr p1, v3

    .line 770
    const/4 v1, -0x1

    .line 773
    :cond_0
    const/4 v2, 0x0

    .local v2, value:I
    move v0, p2

    .line 774
    .end local p2
    .local v0, length:I
    :goto_0
    add-int/lit8 p2, v0, -0x1

    .end local v0           #length:I
    .restart local p2
    if-gtz v0, :cond_1

    .line 778
    return v2

    .line 775
    :cond_1
    shl-int/lit8 v3, v2, 0x8

    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0xff

    or-int v2, v3, v4

    .line 776
    add-int/2addr p1, v1

    move v0, p2

    .end local p2
    .restart local v0       #length:I
    goto :goto_0
.end method
