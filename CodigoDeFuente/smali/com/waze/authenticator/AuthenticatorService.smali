.class public Lcom/waze/authenticator/AuthenticatorService;
.super Landroid/app/Service;
.source "AuthenticatorService.java"


# instance fields
.field private mAuthenticator:Lcom/waze/authenticator/Authenticator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/waze/authenticator/AuthenticatorService;->mAuthenticator:Lcom/waze/authenticator/Authenticator;

    invoke-virtual {v0}, Lcom/waze/authenticator/Authenticator;->getIBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/waze/authenticator/Authenticator;

    invoke-direct {v0, p0}, Lcom/waze/authenticator/Authenticator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/waze/authenticator/AuthenticatorService;->mAuthenticator:Lcom/waze/authenticator/Authenticator;

    .line 18
    return-void
.end method
