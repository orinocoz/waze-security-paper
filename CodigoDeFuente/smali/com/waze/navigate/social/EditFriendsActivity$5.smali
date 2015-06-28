.class Lcom/waze/navigate/social/EditFriendsActivity$5;
.super Ljava/lang/Object;
.source "EditFriendsActivity.java"

# interfaces
.implements Lcom/waze/autocomplete/ContactsCompletionView$IGetViewForObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/EditFriendsActivity;->friendsListPopulateFriends()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/social/EditFriendsActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/EditFriendsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/EditFriendsActivity$5;->this$0:Lcom/waze/navigate/social/EditFriendsActivity;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getViewForObject(Ljava/lang/Object;)Landroid/view/View;
    .locals 10
    .parameter "object"

    .prologue
    const/4 v9, 0x0

    .line 216
    move-object v7, p1

    check-cast v7, Lcom/waze/user/PersonBase;

    .line 219
    .local v7, p:Lcom/waze/user/PersonBase;
    iget-object v0, p0, Lcom/waze/navigate/social/EditFriendsActivity$5;->this$0:Lcom/waze/navigate/social/EditFriendsActivity;

    #getter for: Lcom/waze/navigate/social/EditFriendsActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;
    invoke-static {v0}, Lcom/waze/navigate/social/EditFriendsActivity;->access$3(Lcom/waze/navigate/social/EditFriendsActivity;)Lcom/waze/autocomplete/ContactsCompletionView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/autocomplete/ContactsCompletionView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 220
    const-string v1, "layout_inflater"

    .line 219
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 222
    .local v6, l:Landroid/view/LayoutInflater;
    const v1, 0x7f030043

    .line 223
    iget-object v0, p0, Lcom/waze/navigate/social/EditFriendsActivity$5;->this$0:Lcom/waze/navigate/social/EditFriendsActivity;

    #getter for: Lcom/waze/navigate/social/EditFriendsActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;
    invoke-static {v0}, Lcom/waze/navigate/social/EditFriendsActivity;->access$3(Lcom/waze/navigate/social/EditFriendsActivity;)Lcom/waze/autocomplete/ContactsCompletionView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/autocomplete/ContactsCompletionView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 222
    invoke-virtual {v6, v1, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 224
    .local v8, view:Landroid/widget/LinearLayout;
    const v0, 0x7f090236

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/waze/user/PersonBase;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    const v0, 0x7f090235

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 227
    .local v3, friendImageInLayout:Landroid/widget/ImageView;
    const v0, 0x7f02011b

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 228
    sget-object v0, Lcom/waze/utils/ImageRepository;->instance:Lcom/waze/utils/ImageRepository;

    invoke-virtual {v7}, Lcom/waze/user/PersonBase;->getImage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 229
    iget-object v5, p0, Lcom/waze/navigate/social/EditFriendsActivity$5;->this$0:Lcom/waze/navigate/social/EditFriendsActivity;

    .line 228
    invoke-virtual/range {v0 .. v5}, Lcom/waze/utils/ImageRepository;->getImage(Ljava/lang/String;ZLandroid/widget/ImageView;Landroid/view/View;Lcom/waze/ifs/ui/ActivityBase;)V

    .line 231
    const v0, 0x7f090234

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9, v9, v9, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 233
    return-object v8
.end method
