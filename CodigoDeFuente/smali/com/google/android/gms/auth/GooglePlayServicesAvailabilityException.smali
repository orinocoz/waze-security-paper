.class public Lcom/google/android/gms/auth/GooglePlayServicesAvailabilityException;
.super Lcom/google/android/gms/auth/UserRecoverableAuthException;


# instance fields
.field private final yV:I


# direct methods
.method constructor <init>(ILjava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .parameter "connectionStatusCode"
    .parameter "msg"
    .parameter "intent"

    .prologue
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/auth/UserRecoverableAuthException;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    iput p1, p0, Lcom/google/android/gms/auth/GooglePlayServicesAvailabilityException;->yV:I

    return-void
.end method


# virtual methods
.method public getConnectionStatusCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/auth/GooglePlayServicesAvailabilityException;->yV:I

    return v0
.end method