.class public Lcom/waze/voice/VoiceData;
.super Ljava/lang/Object;
.source "VoiceData.java"


# instance fields
.field public Name:Ljava/lang/String;

.field public SecondLine:Ljava/lang/String;

.field public bIsSelected:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "Name"
    .parameter "SecondLine"
    .parameter "IsSelected"

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/waze/voice/VoiceData;->Name:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/waze/voice/VoiceData;->SecondLine:Ljava/lang/String;

    .line 7
    iput-boolean p3, p0, Lcom/waze/voice/VoiceData;->bIsSelected:Z

    .line 8
    return-void
.end method
