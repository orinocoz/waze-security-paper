.class public Ljp/pioneer/mbg/pioneerkit/a/a/m;
.super Ljava/lang/Object;


# static fields
.field private static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Ljp/pioneer/mbg/pioneerkit/a/a/m;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/os/Message;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    sget v0, Ljp/pioneer/mbg/pioneerkit/a/a/m;->a:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "Object"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
