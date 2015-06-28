.class public Ljp/pioneer/ce/aam2/AAM2Kit/replydata/b;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x72

    invoke-virtual {p0, v0}, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/b;->a(I)V

    invoke-virtual {p0, p1}, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/b;->b(I)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/b;->a:I

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/b;->b:I

    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/replydata/b;->b:I

    return v0
.end method
