.class public final Lcom/google/android/gms/games/event/EventBuffer;
.super Lcom/google/android/gms/common/data/DataBuffer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/data/DataBuffer",
        "<",
        "Lcom/google/android/gms/games/event/Event;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 0
    .parameter "dataHolder"

    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/DataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method


# virtual methods
.method public get(I)Lcom/google/android/gms/games/event/Event;
    .locals 2
    .parameter "position"

    .prologue
    new-instance v0, Lcom/google/android/gms/games/event/EventRef;

    iget-object v1, p0, Lcom/google/android/gms/games/event/EventBuffer;->DD:Lcom/google/android/gms/common/data/DataHolder;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/games/event/EventRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/event/EventBuffer;->get(I)Lcom/google/android/gms/games/event/Event;

    move-result-object v0

    return-object v0
.end method
