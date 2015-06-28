.class Lcom/waze/share/ShareUtility$3;
.super Ljava/lang/Object;
.source "ShareUtility.java"

# interfaces
.implements Lcom/waze/phone/PhoneRequestAccessDialog$PhoneRequestAccessResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/share/ShareUtility;->shareLocationOrDrive(Lcom/waze/ifs/ui/ActivityBase;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$a:Lcom/waze/ifs/ui/ActivityBase;

.field private final synthetic val$nm:Lcom/waze/NativeManager;

.field private final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/waze/ifs/ui/ActivityBase;ILcom/waze/NativeManager;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/share/ShareUtility$3;->val$a:Lcom/waze/ifs/ui/ActivityBase;

    iput p2, p0, Lcom/waze/share/ShareUtility$3;->val$type:I

    iput-object p3, p0, Lcom/waze/share/ShareUtility$3;->val$nm:Lcom/waze/NativeManager;

    .line 761
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Z)V
    .locals 3
    .parameter "okToAccess"

    .prologue
    .line 765
    if-eqz p1, :cond_0

    .line 767
    iget-object v0, p0, Lcom/waze/share/ShareUtility$3;->val$a:Lcom/waze/ifs/ui/ActivityBase;

    iget v1, p0, Lcom/waze/share/ShareUtility$3;->val$type:I

    iget-object v2, p0, Lcom/waze/share/ShareUtility$3;->val$nm:Lcom/waze/NativeManager;

    #calls: Lcom/waze/share/ShareUtility;->doShareAllowed(Lcom/waze/ifs/ui/ActivityBase;ILcom/waze/NativeManager;)V
    invoke-static {v0, v1, v2}, Lcom/waze/share/ShareUtility;->access$9(Lcom/waze/ifs/ui/ActivityBase;ILcom/waze/NativeManager;)V

    .line 769
    :cond_0
    return-void
.end method
