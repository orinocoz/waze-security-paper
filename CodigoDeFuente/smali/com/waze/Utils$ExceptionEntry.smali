.class public Lcom/waze/Utils$ExceptionEntry;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExceptionEntry"
.end annotation


# static fields
.field public static final COMPARE_ENDS_WITH:I = 0x4

.field public static final COMPARE_END_OF:I = 0x5

.field public static final COMPARE_EQUAL:I = 0x1

.field public static final COMPARE_STARTS_WITH:I = 0x3

.field public static final COMPARE_START_OF:I = 0x2

.field public static final COMPARE_USE_ANOTHER_SIDE:I = 0x0

.field public static final EXCLUDE_ALWAYS:I = 0x0

.field public static final EXCLUDE_IF_EXIST:I = 0x1


# instance fields
.field public mCompareType:I

.field public mEntry:Ljava/lang/String;

.field public mType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "aEntry"
    .parameter "aType"

    .prologue
    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/Utils$ExceptionEntry;->mEntry:Ljava/lang/String;

    .line 343
    const/4 v0, 0x0

    iput v0, p0, Lcom/waze/Utils$ExceptionEntry;->mType:I

    .line 344
    const/4 v0, 0x1

    iput v0, p0, Lcom/waze/Utils$ExceptionEntry;->mCompareType:I

    .line 284
    invoke-virtual {p0, p1, p2}, Lcom/waze/Utils$ExceptionEntry;->setEntry(Ljava/lang/String;I)V

    .line 285
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .parameter "aEntry"
    .parameter "aType"
    .parameter "aCmpType"

    .prologue
    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/Utils$ExceptionEntry;->mEntry:Ljava/lang/String;

    .line 343
    const/4 v0, 0x0

    iput v0, p0, Lcom/waze/Utils$ExceptionEntry;->mType:I

    .line 344
    const/4 v0, 0x1

    iput v0, p0, Lcom/waze/Utils$ExceptionEntry;->mCompareType:I

    .line 288
    invoke-virtual {p0, p1, p2, p3}, Lcom/waze/Utils$ExceptionEntry;->setEntry(Ljava/lang/String;II)V

    .line 289
    return-void
.end method

.method private equalTo(Lcom/waze/Utils$ExceptionEntry;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 318
    iget v0, p0, Lcom/waze/Utils$ExceptionEntry;->mCompareType:I

    if-nez v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/waze/Utils$ExceptionEntry;->mEntry:Ljava/lang/String;

    invoke-direct {p1, v0}, Lcom/waze/Utils$ExceptionEntry;->equalTo(Ljava/lang/String;)Z

    move-result v0

    .line 321
    :goto_0
    return v0

    :cond_0
    iget-object v0, p1, Lcom/waze/Utils$ExceptionEntry;->mEntry:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/waze/Utils$ExceptionEntry;->equalTo(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private equalTo(Ljava/lang/String;)Z
    .locals 3
    .parameter "obj"

    .prologue
    .line 325
    const/4 v0, 0x0

    .line 326
    .local v0, res:Z
    iget v1, p0, Lcom/waze/Utils$ExceptionEntry;->mCompareType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/waze/Utils$ExceptionEntry;->mCompareType:I

    if-nez v1, :cond_1

    .line 327
    :cond_0
    iget-object v1, p0, Lcom/waze/Utils$ExceptionEntry;->mEntry:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 328
    :cond_1
    iget v1, p0, Lcom/waze/Utils$ExceptionEntry;->mCompareType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 329
    iget-object v1, p0, Lcom/waze/Utils$ExceptionEntry;->mEntry:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 330
    :cond_2
    iget v1, p0, Lcom/waze/Utils$ExceptionEntry;->mCompareType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 331
    iget-object v1, p0, Lcom/waze/Utils$ExceptionEntry;->mEntry:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 332
    :cond_3
    iget v1, p0, Lcom/waze/Utils$ExceptionEntry;->mCompareType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 333
    iget-object v1, p0, Lcom/waze/Utils$ExceptionEntry;->mEntry:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 334
    :cond_4
    iget v1, p0, Lcom/waze/Utils$ExceptionEntry;->mCompareType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    .line 335
    iget-object v1, p0, Lcom/waze/Utils$ExceptionEntry;->mEntry:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 337
    :cond_5
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "obj"

    .prologue
    .line 304
    const/4 v0, 0x0

    .line 308
    .local v0, res:Z
    instance-of v1, p1, Lcom/waze/Utils$ExceptionEntry;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 309
    check-cast v1, Lcom/waze/Utils$ExceptionEntry;

    invoke-direct {p0, v1}, Lcom/waze/Utils$ExceptionEntry;->equalTo(Lcom/waze/Utils$ExceptionEntry;)Z

    move-result v0

    .line 311
    :cond_0
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 312
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-direct {p0, p1}, Lcom/waze/Utils$ExceptionEntry;->equalTo(Ljava/lang/String;)Z

    move-result v0

    .line 314
    :cond_1
    return v0
.end method

.method public setEntry(Ljava/lang/String;I)V
    .locals 1
    .parameter "aEntry"
    .parameter "aType"

    .prologue
    .line 293
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/waze/Utils$ExceptionEntry;->mEntry:Ljava/lang/String;

    .line 294
    iput p2, p0, Lcom/waze/Utils$ExceptionEntry;->mType:I

    .line 295
    return-void
.end method

.method public setEntry(Ljava/lang/String;II)V
    .locals 1
    .parameter "aEntry"
    .parameter "aType"
    .parameter "aCmpType"

    .prologue
    .line 298
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/waze/Utils$ExceptionEntry;->mEntry:Ljava/lang/String;

    .line 299
    iput p2, p0, Lcom/waze/Utils$ExceptionEntry;->mType:I

    .line 300
    iput p3, p0, Lcom/waze/Utils$ExceptionEntry;->mCompareType:I

    .line 301
    return-void
.end method
