.class final Lcom/vk/im/ui/components/dialogs_header/impl/vk/VkDialogsHeaderVc$1;
.super Lkotlin/jvm/internal/Lambda;
.source "VkDialogsHeaderVc.kt"

# interfaces
.implements Lkotlin/jvm/b/Functions2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/im/ui/components/dialogs_header/impl/vk/VkDialogsHeaderVc;-><init>(Landroid/view/LayoutInflater;Landroidx/appcompat/widget/Toolbar;Lcom/vk/im/ui/components/dialogs_list/SelectionMode;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/Functions2<",
        "Landroid/view/MenuItem;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/im/ui/components/dialogs_header/impl/vk/VkDialogsHeaderVc;


# direct methods
.method constructor <init>(Lcom/vk/im/ui/components/dialogs_header/impl/vk/VkDialogsHeaderVc;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/im/ui/components/dialogs_header/impl/vk/VkDialogsHeaderVc$1;->this$0:Lcom/vk/im/ui/components/dialogs_header/impl/vk/VkDialogsHeaderVc;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MenuItem;)Z
    .locals 3

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const-string v0, "id"

    const-string v1, "favoritesmsg"

    invoke-static {v1, v0}, Lru/vtosters/lite/utils/AndroidUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_3

    const-string v1, "https://vk.me/id"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/vtosters/lite/auth/VKAccountManager;->d()Lcom/vk/auth/api/VKAccount;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vk/auth/api/VKAccount;->D0()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vk/common/links/LinkParser;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;


    goto :goto_0

    :cond_3
    const-string v0, "id"

    const-string v1, "msgupdate"

    invoke-static {v1, v0}, Lru/vtosters/lite/utils/AndroidUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/vk/im/ui/components/dialogs_header/impl/vk/VkDialogsHeaderVc$1;->this$0:Lcom/vk/im/ui/components/dialogs_header/impl/vk/VkDialogsHeaderVc;

    invoke-static {p1}, Lcom/vk/im/ui/components/dialogs_header/impl/vk/VkDialogsHeaderVc;->reload(Lcom/vk/im/ui/components/dialogs_header/impl/vk/VkDialogsHeaderVc;)V

    goto :goto_0

    .line 3
    :cond_2
    sget v0, Lcom/vk/im/ui/h;->add:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/vk/im/ui/components/dialogs_header/impl/vk/VkDialogsHeaderVc$1;->this$0:Lcom/vk/im/ui/components/dialogs_header/impl/vk/VkDialogsHeaderVc;

    invoke-static {p1}, Lcom/vk/im/ui/components/dialogs_header/impl/vk/VkDialogsHeaderVc;->a(Lcom/vk/im/ui/components/dialogs_header/impl/vk/VkDialogsHeaderVc;)V

    goto :goto_0

    .line 3
    :cond_0
    sget v0, Lcom/vk/im/ui/h;->search:I

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/vk/im/ui/components/dialogs_header/impl/vk/VkDialogsHeaderVc$1;->this$0:Lcom/vk/im/ui/components/dialogs_header/impl/vk/VkDialogsHeaderVc;

    invoke-static {p1}, Lcom/vk/im/ui/components/dialogs_header/impl/vk/VkDialogsHeaderVc;->b(Lcom/vk/im/ui/components/dialogs_header/impl/vk/VkDialogsHeaderVc;)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/view/MenuItem;

    invoke-virtual {p0, p1}, Lcom/vk/im/ui/components/dialogs_header/impl/vk/VkDialogsHeaderVc$1;->a(Landroid/view/MenuItem;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
