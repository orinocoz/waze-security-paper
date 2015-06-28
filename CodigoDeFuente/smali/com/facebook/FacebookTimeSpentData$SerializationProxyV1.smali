.class Lcom/facebook/FacebookTimeSpentData$SerializationProxyV1;
.super Ljava/lang/Object;
.source "FacebookTimeSpentData.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/FacebookTimeSpentData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializationProxyV1"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6L


# instance fields
.field private final interruptionCount:I

.field private final lastResumeTime:J

.field private final lastSuspendTime:J

.field private final millisecondsSpentInSession:J


# direct methods
.method constructor <init>(JJJI)V
    .locals 0
    .parameter "lastResumeTime"
    .parameter "lastSuspendTime"
    .parameter "millisecondsSpentInSession"
    .parameter "interruptionCount"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-wide p1, p0, Lcom/facebook/FacebookTimeSpentData$SerializationProxyV1;->lastResumeTime:J

    .line 77
    iput-wide p3, p0, Lcom/facebook/FacebookTimeSpentData$SerializationProxyV1;->lastSuspendTime:J

    .line 78
    iput-wide p5, p0, Lcom/facebook/FacebookTimeSpentData$SerializationProxyV1;->millisecondsSpentInSession:J

    .line 79
    iput p7, p0, Lcom/facebook/FacebookTimeSpentData$SerializationProxyV1;->interruptionCount:I

    .line 80
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 9

    .prologue
    .line 83
    new-instance v0, Lcom/facebook/FacebookTimeSpentData;

    .line 84
    iget-wide v1, p0, Lcom/facebook/FacebookTimeSpentData$SerializationProxyV1;->lastResumeTime:J

    .line 85
    iget-wide v3, p0, Lcom/facebook/FacebookTimeSpentData$SerializationProxyV1;->lastSuspendTime:J

    .line 86
    iget-wide v5, p0, Lcom/facebook/FacebookTimeSpentData$SerializationProxyV1;->millisecondsSpentInSession:J

    .line 87
    iget v7, p0, Lcom/facebook/FacebookTimeSpentData$SerializationProxyV1;->interruptionCount:I

    .line 83
    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/facebook/FacebookTimeSpentData;-><init>(JJJILcom/facebook/FacebookTimeSpentData;)V

    return-object v0
.end method
